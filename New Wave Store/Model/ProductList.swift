//
//  ProductList.swift
//  New Wave Store
//
//  Created by Nathan Aronson (student LM) on 11/21/22.
//

import Foundation

class ProductList {
    @Published var products: [Product] = [Product(name: "NW-PC", description: "New Wave PC", picture: "NW-PC", price: 3999.99, quantity: 10),
                                          Product(name: "wPhone", description: "wPhone", picture: "wPhone", price: 999.99, quantity: 50),
                                          Product(name: "wPen", description: "wPen", picture: "wPen", price: 4999.99, quantity: 5),
                                          Product(name: "software", description: "Software", picture: "software", price: 149.99, quantity: 75)]
}
