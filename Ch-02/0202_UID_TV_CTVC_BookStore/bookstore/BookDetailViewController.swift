//
//  BookDetailViewController.swift
//  bookstore
//
//  Created by Min Aung Hein on 9/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {

    //Modal - user for data tranfer
    var bookInfo:(cover:String,title:String,  desc:String)!
    //View
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookCoverImageView: UIImageView!
    
    @IBOutlet weak var bookDescTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.bookCoverImageView.image = UIImage(named:bookInfo.cover)
        self.bookCoverImageView.focusOnFaces = true
        self.bookTitleLabel.text = bookInfo.title
        
        self.bookDescTextView.text = bookInfo.desc
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
