//
//  DOFlatButton.swift
//  DOFlatButton
//
//  Created by 岡大輔 on 2015/03/01.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

import UIKit


class DOFlatButton :UIButton
{
    internal var faceColor:UIColor
    internal var sideColor:UIColor
    internal var borderColor:UIColor
    
    internal var radius:CGFloat
    internal var margin:CGFloat
    internal var depth:CGFloat
    internal var borderWidth:CGFloat
    
    internal func setFaceColor(faceColor:UIColor,state:UIControlState)
    {
        
    }
    internal func setSideColor(sideColor:UIColor,state:UIControlState)
    {
        
    }
    internal func setBorderColor(borderColor:UIColor,state:UIControlState)
    {
        
    }
    
    internal func faceColorForState(state:UIControlState) -> UIColor
    {
        
    }
    
    internal func sideColorForState(state:UIControlState) -> UIColor
    {
        
    }
    
    internal func borderColorForState(state:UIControlState) -> UIColor
    {
        
    }
    
    override init()
    {
        self.faceColor = UIColor(red: 0.333, green: 0.631, blue: 0.851, alpha: 1.0)
        self.sideColor = UIColor(red: 0.310, green: 0.498, blue: 0.702, alpha: 1.0)
        self.borderColor = UIColor(red: 0.310, green: 0.498, blue: 0.702, alpha: 1.0)
        
        self.radius = 6.0
        self.margin = 4.0
        self.depth = 3.0
        self.borderWidth = 0.0
        
        self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
}
