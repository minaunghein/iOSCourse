//
//  HomeViewController.swift
//  bookstore
//
//  Created by Min Aung Hein on 8/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var bookList = [Book]()
    
    //MARK: 1
    override func viewDidLoad() {
        super.viewDidLoad()

         setup()
    }
    
    func setup()
    {
        for i in 0...17
        {
            let book =    Book(title:"Cooking Book\(i+1)", desc:"This book explain everying how to cook recipe from various cateries.By Famouse Chef from Myanmar and from Oversea.By Famouse Chef from Myanmar and from Oversea.By Famouse Chef from Myanmar and from Oversea.By Famouse Chef from Myanmar and from Oversea.By Famouse Chef from Myanmar and from Oversea.By Famouse Chef from Myanmar", cover:"book\(i+1).png")
              bookList.append(book)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return bookList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //First get the old from memory, to reuse old cell
        var cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell") as? BookTableViewCell
        if cell == nil
            //NO, so get new one
        {
            cell = BookTableViewCell()
        }
        
        let theBook = bookList[indexPath.row]
        cell?.bookTitleLabel.text = theBook.title
        cell?.picture.image = UIImage(named: theBook.cover)
        cell?.picture.focusOnFaces = true
        cell?.bookDescLabel.text = theBook.desc
        return cell!
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        let index = indexPath.row
        performSegue(withIdentifier: "BookDetailViewController", sender: index )
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "BookDetailViewController"
        {
            let bdVC = segue.destination as! BookDetailViewController
            
            bdVC.theBook = bookList[sender as!  Int]
        }
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
