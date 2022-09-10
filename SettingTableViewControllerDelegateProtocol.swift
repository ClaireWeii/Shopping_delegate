//
//  SettingTableViewControllerDelegateProtocol.swift
//  Shopping
//
//  Created by huang on 2022/8/29.
//

import Foundation

protocol SettingTableViewControllerDelegate: AnyObject {
    func amount(product: Product, all:String)
    func list(product: Product, all:[Order])
}

enum Product {
    case apple
    case asus
    case garmin
    case fitbit
    case samsung
}

struct Order {
    var price: Float
    var amonut: Int
}
