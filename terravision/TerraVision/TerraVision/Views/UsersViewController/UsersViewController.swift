//
//  UsersViewController.swift
//  TerraVision
//
//

import UIKit

class UsersViewController: UITableViewController {
    private let alertService = AlertService()
    
    private var users = [User]()
    
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
