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

//使用enum封裝product的項目
enum Product {
    case apple
    case asus
    case garmin
    case fitbit
    case samsung
}

//使用struct定義order的結構
struct Order {
    var price: Float
    var amonut: Int
}
