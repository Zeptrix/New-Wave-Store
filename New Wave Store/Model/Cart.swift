//
//  Cart.swift
//  New Wave Store
//
//  Created by Nathan Aronson (student LM) on 12/1/22.
//

import Foundation

class Cart {
    
    var products: ProductList = ProductList()
    var total: Double {
        // iterate through the items in productList and multiply each quantity times price
        
        var t: Double = 0.0
        
        for product in products.products {
            t += product.price * Double(product.quantity)
        }
        
        return t
    }
    
}
