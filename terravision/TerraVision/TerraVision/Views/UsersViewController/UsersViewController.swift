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
        configureDataSource()
    }
    
    
    public func configureDataSource() {
        dataSource = UITableViewDiffableDataSource<Section, User>(tableView: tableView) { (tableView, indexPath, user) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = user.name
            return cell
        }
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




