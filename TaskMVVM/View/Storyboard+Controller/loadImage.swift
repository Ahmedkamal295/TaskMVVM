//
//  UIView+Extentions.swift
//  Najla
//
//  Created by Ahmed kamal on 10/17/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit
import Kingfisher
extension UIImageView{
    func loadImage(_ url : URL?) {
        
        self.kf.setImage(
            with: url,
            placeholder: UIImage(named: "user"),
            options: [
                
                .scaleFactor(UIScreen.main.scale),
                .transition(.fade(1)),
                .cacheOriginalImage
            ])
        
        self.kf.indicatorType = .activity
        
    }
}
