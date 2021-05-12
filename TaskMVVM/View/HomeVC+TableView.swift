//
//  HomeVC+TableView.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//
import UIKit
extension HomeVC {

    //MARK:- function viewDidLoad
    func setupTableView() {
        view.addSubview(activityIndicatorView)
        activityIndicatorView.frame = view.bounds
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CellHome", bundle: nil), forCellReuseIdentifier: "CellHome")
        getHome()
    }
}

//MARK:- extensions Home tableView functions
extension HomeVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellHome", for: indexPath) as! CellHome
        
        let model = homeArray[indexPath.row]
        cell.newsTitleLbl.text = model.document_type
        cell.datePublisherLbl.text = model.pub_date
        
        let modelName = homeArray[indexPath.row].byline
        cell.namePublisherLbl.text = modelName?.original
        
        //MARK:- formatterDate
        let date = Date()
        let formate = date.getFormattedDate(format: "yyyy-MM-dd-HH:mm")
        cell.datePublisherLbl.text = formate

        //https://www.nytimes.com/images/2021/05/11/world/11israel-gaza-video-new/11israel-gaza-video-new-popup.jpg
        
        if (homeArray[indexPath.row].multimedia?.count ?? 0) > 0 {
            if  let modelIMG = homeArray[indexPath.row].multimedia?[0].url {
                 cell.imgPublisher.loadImage(URL(string: "https://www.nytimes.com/" + modelIMG ))

                print("https://www.nytimes.com/" + modelIMG)
            }
        }
        
     
        return  cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Details", bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        vc.model = homeArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

//MARK:- call API Services
extension HomeVC {

    func getHome(){
        self.activityIndicatorView.startAnimating()
            ApiServices.instance.getPosts(methodType: .get, parameters: nil, url: "https://api.nytimes.com/svc/search/v2/articlesearch.json?q=gaza&api-key=wmfsOqs1xa7fZkr0ydDBoyMPhrvVOxLF") { (data : HomeModel?, String) in
            self.activityIndicatorView.removeFromSuperview()

            if String != nil {

                self.validation(alertTite: "error", alertMessage: String!)

            }else {

                guard let data = data else {
                    return
                }
                print(data)
                self.homeArray = data.response?.docs ?? []
                self.tableView.reloadData()

            }

        }

    }
}

//MARK:- extension formatterDate
extension Date {
   func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
