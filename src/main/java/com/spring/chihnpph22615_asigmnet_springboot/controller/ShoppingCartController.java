package com.spring.chihnpph22615_asigmnet_springboot.controller;

import com.spring.chihnpph22615_asigmnet_springboot.entity.Cart;
import com.spring.chihnpph22615_asigmnet_springboot.entity.CartItem;
import com.spring.chihnpph22615_asigmnet_springboot.entity.Product;
import com.spring.chihnpph22615_asigmnet_springboot.service.ProductService;
import com.spring.chihnpph22615_asigmnet_springboot.service.ShoppingCartService;
import com.spring.chihnpph22615_asigmnet_springboot.service.ShoppingCartServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("shopping-cart")
public class ShoppingCartController {
    @Autowired
    ProductService productService;

    @Autowired
    ShoppingCartServiceImpl cartService;

    @GetMapping("views")
    public String viewCarts(Model model){
        model.addAttribute("CART_ITEMS", cartService.getAllItems());
        return "cart-item";
    }
    @RequestMapping("add/{idProduct}")
    public String addItemToCart(@PathVariable("idProduct") Integer id, @RequestParam("quantity") Integer quantity) {
        Optional<Product> product = productService.findById(id);
        if (product.isPresent()) {
            if (quantity > 0) {
                CartItem itemToAdd = null;
                List<CartItem> cartItems = cartService.getCartItems();

                // Kiểm tra xem sản phẩm đã tồn tại trong giỏ hàng chưa
                for (CartItem item : cartItems) {
                    if (item.getProductId() == product.get().getId()) {
                        itemToAdd = item;
                        break;
                    }
                }

                if (itemToAdd == null) {
                    // Nếu sản phẩm chưa tồn tại trong giỏ hàng, tạo mới đối tượng CartItem và thêm vào giỏ hàng
                    itemToAdd = new CartItem();
                    itemToAdd.setProductId(product.get().getId());
                    itemToAdd.setName(product.get().getName());
                    itemToAdd.setPrice(product.get().getPrice());
                    itemToAdd.setQly(quantity);
//                    itemToAdd.setIma(product.get().getImage());
                    cartService.add(itemToAdd);
                } else {
                    // Nếu sản phẩm đã tồn tại trong giỏ hàng, tăng số lượng theo yêu cầu
                    itemToAdd.setQly(itemToAdd.getQly() + quantity);
                    cartService.update(itemToAdd.getProductId(), itemToAdd.getQly());
                }
            }
        }

        return "redirect:/shopping-cart/views";
    }
}
