//
//  Apple.swift
//  FoodCollectionViewApp
//
//  Created by Aibek Rakhim on 6/29/17.
//  Copyright © 2017 ibek inc. All rights reserved.
//

import Foundation

struct Product {
    var description: String
    var image: String
    var typeOfDevice: ProductType
    
    init(description: String, image: String, typeOfDevice: ProductType) {
        self.description = description
        self.image = image
        self.typeOfDevice = typeOfDevice
    }
    
    static func load() -> [[Product]] {
        return [
            [Product(description: "All iphone here with sweety prices!", image: "iphones", typeOfDevice: .apple),
            Product(description: "All ipads here with sweety prices!", image: "ipads", typeOfDevice: .apple),
            Product(description: "Elegant iphone 7 red", image: "iphone7red", typeOfDevice: .apple),
            Product(description: "Macbook pro!", image: "macbookpro", typeOfDevice: .apple),
            Product(description: "Macbook air!", image: "macbookair", typeOfDevice: .apple)
            ],
            
            [Product(description: "Samsung A7!", image: "samsunga7", typeOfDevice: .samsung),
             Product(description: "Samsung S7 Edge", image: "samsungs7edge", typeOfDevice: .samsung),
             Product(description: "Samsung s8", image: "samsungs8", typeOfDevice: .samsung),
             ],
            
            [Product(description: "The first version of nokia lumia!", image: "nokia1", typeOfDevice: .nokia),
             Product(description: "The second version of nokia lumia!", image: "nokia2", typeOfDevice: .nokia),
             Product(description: "The third version of nokia lumia!", image: "nokia3", typeOfDevice: .nokia)
            ]
        ]
    }
    
    
}
