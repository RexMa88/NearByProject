//
//  NearbyController.swift
//  SearchNearby
//
//  Created by 马超 on 16/2/4.
//  Copyright © 2016年 RexMa. All rights reserved.
//

import UIKit

class NearbyController: BaseController, NearByNavViewDelegate {
    var navView: NearByNavView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        // Do any additional setup after loading the view.
        customNavView()
    }
    
    func customNavView() {
        navView = NearByNavView(frame: CGRectMake(0, 0 , kScreenWidth, 64))
        navView?.backgroundColor = UIColor.orangeColor()
        navView?.setRightButtonImage(UIImage(named: "icon_fill_search")!);
        navView?.delegate = self
        self.view.addSubview(navView!)
    }
    
    //MARK:NearByNavViewDelegate
    func rightButtonPressed(button: UIButton) {
        let searchVC = SearchController()
        self.navigationController?.pushViewController(searchVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
