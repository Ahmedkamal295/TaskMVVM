//
//  DetailsProductCall.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//

import UIKit
extension DetailsVC {
    
    //MARK:- function viewDidLoad
    func getAllData() {
        
        datePublisher.text = model?.pub_date ?? ""
        newsTitle.text = model?.document_type ?? ""
        if (model?.byline?.person?.count ?? 0) > 0 {
            namePublisher.text = model?.byline?.person?[0].firstname ?? ""
        }

        //MARK:- formatterDate
        let date = Date()
        let formate = date.getFormattedDate(format: "yyyy-MM-dd-HH:mm")
        datePublisher.text = formate
        
        if (model?.multimedia?.count ?? 0) > 0 {
            if  let modelIMG = model?.multimedia?[0].url {
                imgPublisher.loadImage(URL(string: "https://www.nytimes.com/" + modelIMG))
                print("https://www.nytimes.com/" + modelIMG)
            }
        }
        
     
    }
}

