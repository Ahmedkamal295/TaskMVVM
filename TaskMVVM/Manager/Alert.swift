//
//  Alert.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//

import Foundation
import UIKit
import Kingfisher
extension UIViewController {
    
    //MARK:- function goVC form viewController to viewController -> push
    func goVC(Storyboard: String , VC: String) {
        let storyboard = UIStoryboard(name: Storyboard, bundle: nil)
        let vc  = storyboard.instantiateViewController(withIdentifier: VC)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    //MARK:- function validation handel error
    func validation(alertTite: String, alertMessage: String) {
        let alert = UIAlertController(title: alertTite, message: alertMessage, preferredStyle: .alert)
        let okAlertButton = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(okAlertButton)
        present(alert, animated: true, completion: nil)
    }
    
    //MARK:- function dismiss Button viewController
    func dismiss() {
        navigationController?.popViewController(animated: true)
    }
}
