//
//  ViewController.swift
//  iOSProficiencyTest
//
//  Created by VishalP on 15/03/20.
//  Copyright © 2020 Vishal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    //MARK:- UI Compenents
    var tableInfoList = UITableView()
    fileprivate let cellId = "cellId"
    
    //MARK:- Data Variables
    var arrayInfoList = [AnyObject]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK:- Set UI for views
    func setUpUIForViews() -> Void {
        let refresh = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.refresh, target: self, action: #selector(fetchDataFromAPI))
        self.navigationItem.rightBarButtonItem  = refresh
        view.backgroundColor = .white
        tableInfoList.delegate = self
        tableInfoList.dataSource = self
        tableInfoList.frame = view.frame
        tableInfoList.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        view.addSubview(tableInfoList)
    }
}

extension HomeViewController:UITableViewDelegate,UITableViewDataSource{
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayInfoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableInfoList.dequeueReusableCell(withIdentifier: cellId) as! InfoTableViewCell
        let obj = arrayInfoList[indexPath.row]
        cell.setData(data: obj)
        return cell
    }
    
}

