//
//  ContactTableViewCell.swift
//  TableViewSample
//
//  Created by doan.van.toan on 10/24/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet private weak var labelPhone: UILabel!
    @IBOutlet private weak var labelName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func bindView(contact: Contact) {
        labelName.text = contact.name
        labelPhone.text = contact.phone
    }
    
}
