//
//  ViewController.swift
//  TableViewSample
//
//  Created by doan.van.toan on 10/23/18.
//  Copyright © 2018 doan.van.toan. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate{

    @IBOutlet weak var tableViewContact: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        initViews()
        showContacts(contacts: getContacts())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func initViews(){
        let nib = UINib.init(nibName: ContactTableDataSource.Const.CELL_ID, bundle: nil)
        tableViewContact.register(nib, forCellReuseIdentifier: ContactTableDataSource.Const.CELL_ID)
    }
    
    private func showContacts(contacts: [Contact]){
        tableViewContact.delegate = self
        tableViewContact.dataSource = ContactTableDataSource(contacts: contacts)
    }
    
    private func getContacts() -> [Contact] {
        var result = [Contact]()
        for _ in 1...8 {
            result.append(Contact(name: "Doan Van Toan", phone: "0123 456 789", avatar: "123@asdas"))
        }
        return result
    }
}

