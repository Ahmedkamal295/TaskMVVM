//
//  DetailsVC.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//

import UIKit

class DetailsVC: UIViewController {

    //MARK:- outLet
    @IBOutlet weak var imgPublisher: UIImageView!
    @IBOutlet weak var datePublisher: UILabel!
    @IBOutlet weak var newsTitle: UILabel!
    @IBOutlet weak var namePublisher: UILabel!
    
    //MARK:- variabls
    var model: HomeDocs?
    override func viewDidLoad() {
        super.viewDidLoad()
        getAllData()
    }
    
   
}
