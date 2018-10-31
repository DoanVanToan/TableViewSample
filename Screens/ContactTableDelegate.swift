//
//  ContactTableDelegate.swift
//  TableViewSample
//
//  Created by doan.van.toan on 10/30/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class ContactTableDelegate: ContractTableHelper, UITableViewDelegate {
    
    private var controller: UIViewController
    
    init(contacts: [Contact], controller: UIViewController) {
        self.controller = controller
        super.init(contacts: contacts)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        showSelectedRow(index: indexPath.row)
        
    }
    
    private func showSelectedRow(index: Int){
        let selectedContact = contacts[index]
        let alerControoler = UIAlertController(title: "Contact selected",
                                               message: selectedContact.name ,
                                               preferredStyle: UIAlertControllerStyle.alert)
        alerControoler.addAction(
            UIAlertAction(title: "OK",
                          style: UIAlertActionStyle.default,
                          handler: { (UIAlertAction) in alerControoler.dismiss(animated: true, completion: nil)}
            )
        )
        controller.present(alerControoler, animated: true, completion: nil)
    }
}
