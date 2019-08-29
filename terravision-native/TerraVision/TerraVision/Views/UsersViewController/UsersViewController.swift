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
        
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAddButton))
    
        self.navigationItem.rightBarButtonItem = add
        configureDataSource()
        
        didTapAddButton()
    }
    
    
    public func configureDataSource() {
        dataSource = UITableViewDiffableDataSource<Section, User>(tableView: tableView) { (tableView, indexPath, user) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = user.name
            return cell
        }
    }
    
    @IBAction private func didTapAddButton() {
        let alert = alertService.createUserAlert { [weak self] name in
            self?.addNewUser(with: name)
            print(name)
        }
        
        present(alert, animated: true)
    }
    
    private func addNewUser(with name: String) {
        let user = User(name: name)
        users.append(user)
        createSnapshot(from: users)
    }
    
    private func createSnapshot(from users: [User]) {
        var snapshot = NSDiffableDataSourceSnapshot<Section, User>()
        snapshot.appendSections([.main])
        snapshot.appendItems(users)
        dataSource.apply(snapshot, animatingDifferences: true)
        
    }
    
}


extension UsersViewController {
    fileprivate enum Section {
        case main
    }
}




