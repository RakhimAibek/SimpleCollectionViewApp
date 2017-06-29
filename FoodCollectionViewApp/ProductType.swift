//
//  TypeOfSections.swift
//  FoodCollectionViewApp
//
//  Created by Aibek Rakhim on 6/28/17.
//  Copyright © 2017 ibek inc. All rights reserved.
//

import Foundation

enum ProductType: String {
    case nokia
    case apple
    case samsung
    
    static var types: [ProductType] {
        return [.nokia, .apple, .samsung]
    }
}
