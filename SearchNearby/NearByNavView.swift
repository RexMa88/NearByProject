//
//  NearByNavView.swift
//  SearchNearby
//
//  Created by 马超 on 16/2/5.
//  Copyright © 2016年 RexMa. All rights reserved.
//

import UIKit

@objc public protocol NearByNavViewDelegate{
    optional func rightButtonPressed(button : UIButton)
}

let kScreenWidth = UIScreen.mainScreen().bounds.size.width
let kScreenHeight = UIScreen.mainScreen().bounds.size.height

class NearByNavView: UIView {
    var rightButton: UIButton!
    weak var delegate:NearByNavViewDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let font = UIFont.systemFontOfSize(14.0)
        
        rightButton = UIButton.init(type: UIButtonType.Custom)
        rightButton.frame = CGRectMake(kScreenWidth - 50, 20, 40, 40)
        rightButton.exclusiveTouch = true
        rightButton.titleLabel?.font = font
        rightButton.addTarget(self, action: "rightButtonClick", forControlEvents: UIControlEvents.TouchUpInside)
        self.addSubview(rightButton)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func rightButtonClick(sender : AnyObject) {
        delegate?.rightButtonPressed!(sender as! UIButton)
    }
    
    func setRightButtonImage(image : UIImage){
        buttonWithImage(rightButton, image: image)
    }
    
    //MARK:Custom Method
    private func buttonWithTitle(button : UIButton, title : String) {
        button.titleLabel?.text = title
    }
    
    private func buttonWithImage(button : UIButton, image : UIImage) {
        button.setImage(image, forState: UIControlState.Normal)
    }
}
