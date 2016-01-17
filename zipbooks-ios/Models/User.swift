//
//  User.swift
//  zipbooks-ios
//
//  Created by Francesco Pretelli on 11/01/16.
//  Copyright © 2016 Francesco Pretelli. All rights reserved.
//

import RealmSwift
import ObjectMapper

import Foundation

class User : Object, Mappable {
    
    dynamic var email:String = ""
    dynamic var name:String  = ""
    
    required convenience init?(_ map: Map) {
        self.init()
    }
    
    /*override static func primaryKey() -> String? {
        return "intID"
    }*/
    
    func mapping(map: Map) {
        email <- map["email"]
        name <- map["name"]
    }
}




class AuthObject : Object, Mappable {
    
    dynamic var token:String = ""
    dynamic var user:User?
    
    required convenience init?(_ map: Map) {
        self.init()
    }
    
    /*override static func primaryKey() -> String? {
    return "intID"
    }*/
    
    func mapping(map: Map) {
    token <- map["token"]
    user <- map["user"]
    }
}

