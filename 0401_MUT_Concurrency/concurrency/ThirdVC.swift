//
//  FirstVC.swift
//  concurrency
//
//  Created by Min Aung Hein on 9/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {

    
    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func runOpeationQueue(_ sender: UIButton) {
        
        let op1 = OperationQueue()
        let opMain = OperationQueue.main
        
        op1.addOperation {
            for i in 0...100000
            {
                //Do other thing
                print(i)
                opMain.addOperation {
                     self.statusLabel.text = "Loading ...\(i)"
                }
                
            }
            opMain.addOperation {
                self.statusLabel.text = "Really Finish"
            }
            
            
        }
        
        
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
