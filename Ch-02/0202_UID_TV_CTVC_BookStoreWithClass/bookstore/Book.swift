//
//  Book.swift
//  bookstore
//
//  Created by Min Aung Hein on 23/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import Foundation

class Book{
    
    private var _title:String
    private var _desc:String
    private var _cover:String
    
    var title:String {  return _title }
    var desc:String { return _desc }
    var cover:String { return _cover }
    
    init(title:String, desc:String, cover:String)
    {
       self._title = title
       self._desc = desc
       self._cover = cover
    }
    
}
