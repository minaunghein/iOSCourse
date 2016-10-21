//
//  FirstVC.swift
//  concurrency
//
//  Created by Min Aung Hein on 9/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class FirstVC: UIViewController {
    @IBAction func runIt(_ sender: AnyObject) {
        
        //Run in Main Thread
        //Loop 100000
        self.statusLabel.text = "Loading..."
        
        //Thread( )
        //GCD ( )
        //Operation ( )
        
        //Data Intensive
        print("-----",Thread.current)
        
        let thread = Thread (target: self, selector: #selector(runInOther), object: nil)
        thread.threadPriority = 0.8
        thread.stackSize = 1024 * 10
        thread.start()
        print("Finish")
    }
    func runInOther()
    {
        for i in 0...1000000{
            
            self.statusLabel.text = "Loading ...\(i)"
        }
        self.statusLabel.text = "Finish"
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     }
