//
//  Product.swift
//  New Wave Store
//
//  Created by Nathan Aronson (student LM) on 11/21/22.
//

import Foundation

class Product {
    
    var name: String
    var description: String
    var picture: String
    var price: Double
    var quantity: Int

    init(name: String = "", description: String = "", picture: String = "", price: Double = 0, quantity: Int = 0) {
        self.name = name
        self.description = description
        self.picture = picture
        self.price = price
        self.quantity = quantity
    }
}
