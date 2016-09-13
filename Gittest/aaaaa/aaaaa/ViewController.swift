//
//  ViewController.swift
//  aaaaa
//
//  Created by Sven Liu on 16/9/12.
//  Copyright © 2016年 Sven Liu. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.printHello("")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func printHello(name : String) {
        
        var student : Student? = Student.init(num: 16, name: "Jack", birthday: "2003-08-05")
        
        print("Hello \(student?.peopleName), age is \(student?.peopleAge)");
    }
    
}

