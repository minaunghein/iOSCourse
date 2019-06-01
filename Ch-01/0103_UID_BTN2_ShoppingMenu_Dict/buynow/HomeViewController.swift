//
//  HomeViewController.swift
//  buynow
//
//  Created by Min Aung Hein on 29/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit
//MVC MVC MVC MVC
class HomeViewController: UIViewController {
    
    //Model
    var productPrice:[String:Float] = ["Egg":150.0,"Chicken":2000,
                        "Orange":100,"Apple":500,
                        "Carrot":250,"Book":2000]
    
    var totalPrice:Float = 0.0
    
    
    
    @IBOutlet weak var ttlAmtLabel: UILabel!
    
    
    
    
    
    @IBAction func pressApple(_ sender: UIButton) {
        print("Apple is clicked")
        let price  = productPrice["Apple"]! //! option to non-option
        totalPrice = totalPrice + price //update model
        ttlAmtLabel.text =   "Total Amount: \(totalPrice)"
    }
    
    @IBAction func pressCarrot(_ sender: AnyObject) {
        print("Carrot is clicked")
        let price  = productPrice["Carrot"]! //! option to non-option
        totalPrice = totalPrice + price //update model
        ttlAmtLabel.text =   "Total Amount: \(totalPrice)"
    }
    @IBAction func pressBook(_ sender: AnyObject) {
        print("Book is clicked")
        let price  = productPrice["Book"]! //! option to non-option
        totalPrice = totalPrice + price //update model
        ttlAmtLabel.text =   "Total Amount: \(totalPrice)"
        
    }
    @IBAction func pressOrange(_ sender: UIButton) {
        print("Orange is clicked")
        let price  = productPrice["Orange"]! //! option to non-option
        totalPrice = totalPrice + price //update model
        ttlAmtLabel.text =   "Total Amount: \(totalPrice)"
        
    }
    @IBAction func pressEgg(_ sender: UIButton) {
        
        //Do something for pressing egg
        print("Egg is clicked")
        
        let price  = productPrice["Egg"]! //! option to non-option
        totalPrice = totalPrice + price //update model
        ttlAmtLabel.text =   "Total Amount: \(totalPrice)" //update view
        
        
    }
    
    @IBAction func pressChicken(_ sender: AnyObject) {
       //Do something for pressing chicken
        print("Chicken is clicked")
        let price  = productPrice["Chicken"]! //! option to non-option
        totalPrice = totalPrice + price //update model
        ttlAmtLabel.text =   "Total Amount: \(totalPrice)"

        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
