//
//  ViewController.swift
//  simplestack
//
//  Created by Min Aung Hein on 22/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clintonLabel: UILabel!

    @IBOutlet weak var trumpLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func voteClinton(_ sender: UIStepper) {
        
        clintonLabel.text = String(Int(sender.value * 100))
        
    }
    @IBAction func voteDonald(_ sender: UIStepper) {
        trumpLabel.text = String(Int(sender.value * 100))
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

