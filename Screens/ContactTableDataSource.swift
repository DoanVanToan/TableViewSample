//
//  ContactTableDataSource.swift
//  TableViewSample
//
//  Created by doan.van.toan on 10/23/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import Foundation
import UIKit

class ContactTableDataSource: NSObject, UITableViewDataSource{
    struct Const{
        static let CELL_ID = "ContactTableViewCell"
    }
    
    private var contacts: [Contact]
    
    init(contacts: [Contact]) {
        self.contacts = contacts
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Const.CELL_ID, for: indexPath) as! ContactTableViewCell
        cell.bindView(contact: getContactAt(index: indexPath.row))
        return cell
    }
    
    private func getContactAt(index: Int) -> Contact {
        return self.contacts[index]
    }
    
}
