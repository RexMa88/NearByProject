//
//  DrinkingController.swift
//  SearchNearby
//
//  Created by 马超 on 16/2/4.
//  Copyright © 2016年 RexMa. All rights reserved.
//

import UIKit

class DrinkingController: BaseController{

    var navBarView : NearByNavView?
    var dataArray : NSMutableArray?
    var tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //navBarView
        constanNavBar()
        //tableView
        constantTableView()
    }

    /**
     创建navBar
     */
    func constanNavBar(){
        navBarView = NearByNavView(frame: CGRectMake(0, 0 , kScreenWidth, 64.0))
        navBarView?.backgroundColor = UIColor.orangeColor()
        self.view.addSubview(navBarView!)
    }
    
    func constantTableView(){
        tableView = UITableView(frame: CGRectMake(0, 64.0, kScreenWidth, kScreenHeight - CGRectGetMaxY((navBarView?.frame)!) - 49.0), style: UITableViewStyle.Plain)
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.separatorStyle = .SingleLine
        tableView?.registerNib(UINib.init(nibName: "DrinkCell", bundle: nil), forCellReuseIdentifier: DrinkCellIdentifier)
        tableView?.rowHeight = 90.0
        self.view.addSubview(tableView!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension DrinkingController : UITableViewDataSource{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(DrinkCellIdentifier, forIndexPath: indexPath) as! DrinkCell
        cell.nameLabel.text = "RexMa"
        return cell
    }
}

extension DrinkingController : UITableViewDelegate{
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}
