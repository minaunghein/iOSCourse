//
//  ViewController.swift
//  SB
//
//  Created by Min Aung Hein on 23/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }

    
    override func viewWillAppear(_ animated: Bool) {
         
        
        
    }
    
    
    @IBAction func load(_ sender: AnyObject) {
        
        
        let mailActivity = "Test Mail"
        
        let image  = UIImage(named:"logo.png")
        let activityViewController = UIActivityViewController(activityItems: [ image!, mailActivity ], applicationActivities: nil)
        self.navigationController?.present(activityViewController, animated: true, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

