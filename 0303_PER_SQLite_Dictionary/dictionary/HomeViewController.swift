//
//  HomeViewController.swift
//  dictionary
//
//  Created by Min Aung Hein on 4/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController ,
UITableViewDelegate , UITableViewDataSource , UISearchBarDelegate{

     let db = SQLiteDB.sharedInstance //copy to document fld to make writable / readable
    
    @IBOutlet weak var mySearchBar: UISearchBar!
    var isSearching = false
    
    var definition = [ Definition  ]()
    var definitionSearching = [ Definition  ]()
    
    @IBOutlet weak var tableView: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.isSearching == true {
            return self.definitionSearching.count
        }else {
            return self.definition.count
        }
    }
    
    
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =      tableView.dequeueReusableCell(withIdentifier: "DictTableViewCell", for: indexPath) as? DictTableViewCell
       
        var def:Definition!
        if self.isSearching == true {
            def =  self.definitionSearching[indexPath.row]
        }else {
            def = self.definition[indexPath.row]
        }
        
        
        cell!.configureCell(def  )
        
       
          return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       mySearchBar.delegate = self
       setup()
        
        // Do any additional setup after loading the view.
    }
    
    func setup()
    {
        //1.Read from dict.db by using sqlite cmd
        //2.Store into definition array
        //3.Reload to refresh
        
        let rows = db.query(sql: "SELECT * FROM dictionary") //1
        var i = 0
        for row in rows //2
        {
            
            //as row is dictionary, so use fieldname  as key
            let id = row["_id"] as! Int
            let en = row["en"] as! String
            let mm = row["mm"] as! String
            let kind = row["s"] as! String
            
            let def = Definition(sn:i, id:id  , en:en, kind:kind, mm:mm)
            self.definition.append(def)
            i += 1
        }
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: - UISearchBar delegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        if self.mySearchBar.text!.isEmpty {
            
            // set searching false
            self.isSearching = false
            
            // reload table view
            self.tableView.reloadData()
            
        }else{
            
            // set searghing true
            self.isSearching = true
            
            // empty searching array
            self.definitionSearching.removeAll(keepingCapacity: false)
            
            // find matching item and add it to the searcing array
            for i in 0..<self.definition.count {
                
                let listItem : String = self.definition[i].en
                if listItem.lowercased().range(of: self.mySearchBar.text!.lowercased()) != nil {
                    print(self.definition[i].en)
                    self.definitionSearching.append(self.definition[i])
                }
            }
            
            self.tableView.reloadData()
        }
        
    }
    
    // hide kwyboard when search button clicked
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.mySearchBar.resignFirstResponder()
    }
    
    // hide keyboard when cancel button clicked
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.mySearchBar.text = ""
        self.mySearchBar.resignFirstResponder()
        
        self.tableView.reloadData()
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
