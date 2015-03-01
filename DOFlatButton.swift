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
    internal var faceColor:NSMutableDictionary?
    internal var sideColor:UIColor?{
        set{
            self.sideColor = newValue
        }
        get{
            return self.faceColorForState(self.state)
        }
    }
    internal var borderColor:UIColor?{
        set{
            self.setBorderColor(self.borderColor!, state: state)
        }
        get{
            return self.borderColorForState(state)
        }
    }
    
    internal var radius:CGFloat?
    internal var margin:CGFloat?
    internal var depth:CGFloat?
    internal var borderWidth:CGFloat?
    
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
    
    override func encodeWithCoder(aCoder: NSCoder) {
        
    }
    
    required convenience init(coder aDecoder: NSCoder) {
        self.init()
        self.dofb_init()
    }
    
    override init(){
        super.init()
        self.dofb_init()
    }
    
    func dofb_init()
    {
        self.faceColor = NSMutableDictionary
        
        self.faceColor = UIColor(red: 0.333, green: 0.631, blue: 0.851, alpha: 1.0)
        self.sideColor = UIColor(red: 0.310, green: 0.498, blue: 0.702, alpha: 1.0)
        self.borderColor = UIColor(red: 0.310, green: 0.498, blue: 0.702, alpha: 1.0)
        
        self.radius = 6.0
        self.margin = 4.0
        self.depth = 3.0
        self.borderWidth = 0.0
        
        self.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
    }
    
    override func layoutSubviews()
    {
        var frame:CGRect = self.titleLabel!.frame
        frame.origin.y = frame.origin.y - self.margin!/2
        
        var imageViewFrame:CGRect = self.imageView!.frame
        imageViewFrame.origin.y = imageViewFrame.origin.y - self.margin!/2
        
        if(self.state == UIControlState.Selected || self.state == UIControlState.Highlighted){
            frame.origin.y = frame.origin.y + self.depth!
            imageViewFrame.origin.y = imageViewFrame.origin.y + self.depth!
        }
        
        self.titleLabel?.frame = frame
        self.imageView?.frame = imageViewFrame
    }
    
    override var frame:CGRect{
        get{
            return super.frame
        }
        set{
            super.frame = newValue
            self.setNeedsDisplay()
        }
    }
    
    var Highlighted:Bool{
        set{
            super.highlighted = newValue
            self.setNeedsDisplay()
        }
        get{
            return super.highlighted
        }
        
    }
    override var selected:Bool{
        set{
            super.selected = newValue
            self.setNeedsDisplay()
        }
        get{
            return self.selected
        }
    }
    
    override var enabled:Bool{
        set{
            super.enabled = newValue
            self.setNeedsDisplay()
        }
        get{
            return super.highlighted
        }
    }
    
    func setFaceColor(faceColor:UIColor){
        self.setFaceColor(faceColor, state: UIControlState.Normal)
        self.setFaceColor(faceColor, state: UIControlState.Highlighted)
        self.setFaceColor(faceColor, state: UIControlState.Selected)
        self.setFaceColor(faceColor, state: UIControlState.Disabled)
    }
    
    func setBorderColor(borderColor:UIColor){
        self.setBorderColor(borderColor, state: UIControlState.Normal)
        self.setBorderColor(borderColor, state: UIControlState.Highlighted)
        self.setBorderColor(borderColor, state: UIControlState.Selected)
        self.setBorderColor(borderColor, state: UIControlState.Disabled)
    }
    
    func setFaceColor(surfaceColor:UIColor,state:UIControlState)
    {
        self.faceColorForState[state] = surfaceColor
    }
    
    
    
}

