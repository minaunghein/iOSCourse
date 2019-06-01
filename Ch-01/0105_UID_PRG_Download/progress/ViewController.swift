//
//  ViewController.swift
//  progress
//
//  Created by Min Aung Hein on 28/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var progress:Float = 0.0
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var progView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func startDownload(_ sender: AnyObject) {
        
        progress += 0.10
        
        self.progView.progress = progress
        if progress > 0
        {
            statusLabel.text = "Downloading..."
        }
        if progress >= 1.0
        {
            statusLabel.text = "Completed."
        }
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

