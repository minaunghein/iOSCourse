//
//  ViewController.swift
//  macaw
//
//  Created by Min Aung Hein on 29/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit
import Macaw

class SVGView {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(node: SVGParser.parse(path: "1316328"), coder: aDecoder)
    }
    
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

