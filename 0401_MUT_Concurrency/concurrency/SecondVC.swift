//
//  FirstVC.swift
//  concurrency
//
//  Created by Min Aung Hein on 9/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func runItByGCD(_ sender: UIButton) {
        
        let queue1 = DispatchQueue(label:"thread1")
        let queue2 = DispatchQueue(label:"thread2")
        let queue3 = DispatchQueue(label:"thread3")
        let queue4 = DispatchQueue(label:"thread4")
        let mainQueue = DispatchQueue.main
        
        queue1.async {
            
            for i in 0...1000000
            {
                let r = 100*i*200
                mainQueue.async {
                    self.statusLabel.textColor = UIColor.green
                    self.statusLabel.text = "Loaing...\(i)"
                }
            }
            mainQueue.async {
                 self.statusLabel.text = "Finish really"
            }
        }
        queue2.async {
            
            for i in 0...1000000
            {
                let r = 100*i*200
                mainQueue.async {
                    self.statusLabel.textColor = UIColor.red
                    self.statusLabel.text = "Loaing...\(i)"
                }
            }
            mainQueue.async {
                self.statusLabel.text = "Finish really"
            }
        }
        queue3.async {
            
            for i in 0...1000000
            {
                let r = 100*i*200
                mainQueue.async {
                    self.statusLabel.textColor = UIColor.blue
                    self.statusLabel.text = "Loaing...\(i)"
                }
            }
            mainQueue.async {
                self.statusLabel.text = "Finish really"
            }
        }
        queue4.async {
            
            for i in 0...1000000
            {
                let r = 100*i*200
                mainQueue.async {
                    self.statusLabel.textColor = UIColor.orange
                    self.statusLabel.text = "Loaing...\(i)"
                }
            }
            mainQueue.async {
                self.statusLabel.text = "Finish really"
            }
        }
        
        self.statusLabel.text = "I am finish but backgroud job is running"
        
        
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
