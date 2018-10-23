//
//  ContactTableViewCell.swift
//  TableViewSample
//
//  Created by doan.van.toan on 10/23/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {
    private @IBOutlet weak var imageAvatar: UIImageView!
    private @IBOutlet weak var lablePhone: UILabel!
    private @IBOutlet weak var lableName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bindView(contact: Contact){
        self.lableName.text = contact.name
        self.lablePhone.text = contact.phone
    }
}
