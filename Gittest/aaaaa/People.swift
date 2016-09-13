//
//  People.swift
//  aaaaa
//
//  Created by Sven Liu on 16/9/13.
//  Copyright © 2016年 Sven Liu. All rights reserved.
//

import Foundation

class People {
    
    var peopleName : String
    var peopleAge : Int {
        
        if self.peopleBirthday.isEmpty {
            
            return 0
        } else {
            
            let birthdayDateFormatter : NSDateFormatter = NSDateFormatter.init()
            birthdayDateFormatter.dateFormat = "yyyy-MM-dd"
            
            let birthdayDate : NSDate? = birthdayDateFormatter.dateFromString(self.peopleBirthday)
            
            
            return NSCalendar.currentCalendar().ordinalityOfUnit(.Year, inUnit: .Year, forDate: birthdayDate!)
        }
        
    }
    
    var peopleBirthday : String
    var peopleHeight : Double = 0
    var peopleWeight : Double = 0
    
    init() {
        
        self.peopleName = "Unnamed"
        self.peopleBirthday = ""
    }
    
    init?(name : String, birthday : String) {
        
        if name.isEmpty || birthday.isEmpty { return nil }
        
        self.peopleName = name
        self.peopleBirthday = birthday
    }
    
}


class Student : People {
    
    var studentNum : Int = 0
    
    init?(num : Int, name : String, birthday : String) {
        
        super.init(name: name, birthday: birthday)
        self.studentNum = num
    }
}

class teacher : People {
    
    var teacherNum : Int = 0
    
    init?(num : Int, name : String, birthday : String) {
        
        super.init(name: name, birthday: birthday)
        self.teacherNum = num
    }

}