//
//  Definition.swift
//  dictionary
//
//  Created by Min Aung Hein on 4/10/16.
//  Copyright © 2016 smag. All rights reserved.
//

import Foundation


class Definition

{
    var sn:Int
    var _id:Int
    var en:String!
    var s:String!
    var mm:String!
    
    init(sn:Int,id:Int, en:String, kind:String, mm:String)
    {
        self.sn = sn
        self._id  = id
        self.en = en
        self.s = kind
        self.mm  = mm
    }
}
