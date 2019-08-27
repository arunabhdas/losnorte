//
//  UsersViewController.swift
//  TerraVision
//
//

import UIKit

class UsersViewController: UITableViewController {
    private let alertService = AlertService()
    
    private var users = [User]()
    
    private var dataSource: UITableViewDiffableDataSource<Section, User>!

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction private func didTapAddButton() {
        let alert = alertService.createUserAlert { (name) in
            print(name)
        }
        
        present(alert, animated: true)
    }
    
}


extension UsersViewController {
    fileprivate enum Section {
        case main
    }
}




