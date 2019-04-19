//
//  ViewController.swift
//  SortArray
//
//  Created by MAC on 19.04.2019.
//  Copyright © 2019 cagdaseksi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var products:[Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let pro1 = Product()
        pro1.id = 2
        pro1.title = "Product 2"
        products.append(pro1)
        
        let pro2 = Product()
        pro2.id = 1
        pro2.title = "Product 1"
        products.append(pro2)
        
        let pro3 = Product()
        pro3.id = 3
        pro3.title = "Product 3"
        products.append(pro3)
        
        products = products.sorted(by: { $0.id > $1.id })
        
        for item in products {
            print("product: \(item.id) - \(item.title)")
        }
        
    }

    
    

}
class Product {
    var id:Int = Int()
    var title:String = String()
}
