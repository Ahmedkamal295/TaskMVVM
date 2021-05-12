//
//  CellHome.swift
//  TaskMVVM
//
//  Created by Ahmed kamal on 5/12/21.
//

import UIKit

class CellHome: UITableViewCell {

    @IBOutlet weak var newsTitleLbl: UILabel!
    @IBOutlet weak var imgPublisher: UIImageView!
    @IBOutlet weak var namePublisherLbl: UILabel!
    @IBOutlet weak var datePublisherLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
