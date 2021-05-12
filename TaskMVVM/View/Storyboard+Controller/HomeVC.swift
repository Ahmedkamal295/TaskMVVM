//
//  HomeVC.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//

import UIKit

class HomeVC: UIViewController {
   
    //MARK:- outLet
    @IBOutlet weak var tableView: UITableView!
    //MARK:- variable
    var homeArray = [HomeDocs]()
    let activityIndicatorView = UIActivityIndicatorView(style: .large)
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    //MARK:- actions
}

