//
//  ViewController.swift
//  NetworkingBeginner
//
//  Created by Min Aung Hein on 9/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var p1Label: UILabel!
    
    @IBOutlet weak var imageView1: UIImageView!
    @IBOutlet weak var p2Label: UILabel!
    
    
    @IBOutlet weak var imageView2: UIImageView!
    
    @IBOutlet weak var p3Label: UILabel!
    
    @IBOutlet weak var imageView3: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func download(_ sender: AnyObject) {
        
        //if only one image to download , use share session
        //for three process use dedicated session
        print(Thread.current)
        let config = URLSessionConfiguration.default
        
        let session1 = URLSession(configuration: config)
        
        let url1 = URL(string:"https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Steve_Jobs_with_red_shawl_edit2.jpg/220px-Steve_Jobs_with_red_shawl_edit2.jpg")
        if url1 != nil
        {
        let task1 = session1.dataTask(with: url1!) { (data, response, error) in
             //Now u got data
            if error != nil { print(error?.localizedDescription);return }
            // if downLoadData != nil
            if  data != nil
            {
                print("Success!")
                print(Thread.current)
                DispatchQueue.main.async {
                    print(Thread.current)
                    let image = UIImage(data: data!)
                    self.imageView1.image = image

                }
                
            }
            
        }
        
        task1.resume()
            
       //Next pic
            let session2 = URLSession(configuration: config)
            
            let url2 = URL(string:"https://pixabay.com/static/uploads/photo/2013/12/31/13/18/foam-236860_960_720.jpg")
            if url2 != nil
            {
                let task2 = session2.dataTask(with: url2!) { (data, response, error) in
                    //Now u got data
                    if error != nil { print(error?.localizedDescription);return }
                    // if downLoadData != nil
                    if  data != nil
                    {
                        print("Success!")
                        print(Thread.current)
                        DispatchQueue.main.async {
                            print(Thread.current)
                            let image = UIImage(data: data!)
                            self.imageView2.image = image
                            
                        }
                        
                    }
                }
                task2.resume()
                }
                
            
            
        }//start to download
        
/*let session2 = URLSession(configuration: config)
 let session3 = URLSession(configuration: config)
 
  let url2 = URL(string: "https://pixabay.com/static/uploads/photo/2013/12/31/13/18/foam-236860_960_720.jpg")
 let url3 = URL(string: "https://pixabay.com/static/uploads/photo/2013/12/31/13/18/foam-236860_960_720.jpg")
*/
 
 
 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

