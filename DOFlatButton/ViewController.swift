//
//  ViewController.swift
//  DOFlatButton
//
//  Created by 岡大輔 on 2015/03/01.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var button1:DOFlatButton = DOFlatButton.buttonWithType(UIButtonType.Custom) as DOFlatButton
        
        button1.frame = CGRectMake(60, 164 - 20 - 40, 200, 60);
        
        button1.faceColor = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)
        button1.sideColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)
        button1.radius = 8.0
        button1.margin = 4.0
        button1.depth  = 3.0
        
        button1.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        button1.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        button1.setTitle("DOFlatButton", forState: UIControlState.Normal)
        
        self.view.addSubview(button1)
        
        var button2 = DOFlatButton.buttonWithType(UIButtonType.Custom) as DOFlatButton
        button2.frame = CGRectMake(60, 224 - 20, 200, 60)
        button2.faceColor = UIColor(red: 243.0/255.0, green: 152.0/255.0, blue: 0, alpha: 1.0)
        button2.sideColor = UIColor(red: 170.0/255.0, green: 105.0/255.0, blue: 0, alpha: 1.0)
        //button2.radius =
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

