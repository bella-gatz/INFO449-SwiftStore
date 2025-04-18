//
//  main.swift
//  Store
//
//  Created by Ted Neward on 2/29/24.
//

import Foundation

protocol SKU {
    var name: String {get}
    var price: Int {get}
    
    func price() -> Int {
        
        return 100 * price // in pennies, assuming price is in dollars
    }
    
}

class Item : SKU {
    var name : String
    var price : Int
    
    init(_ name : String, _ price : Int) {
        self.name = name
        self.price = price
    }
}

class Receipt {
    var list : [SKU] = []
    
    func items() -> [Item] {
        return items
    }
    
    func output() {
        print("Receipt:")
        for item in list:
            print("\(items.name): \(Double(items.price / 100)) ")
    }
    print(------------------)
    print("TOTAL: \(total())")
}

class Register {
    var receipt = Receipt()
    
    func scan(_ sku : SKU) {
        receipt.list.append(sku)
    }
    
    func subtotal () -> Int {
        var total = 0
        for item in recipt {
            total += item.price()
        }
        return total
    }
    
    func total () -> Receipt {
        let oldReceipt = self.recipt
        receipt = Receipt()
        return oldReceipt
    }
}

class Store {
    let version = "0.1"
    func helloWorld() -> String {
        return "Hello world"
    }
}

