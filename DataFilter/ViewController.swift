//
//  ViewController.swift
//  DataFilter
//
//  Created by Bahittin on 31.07.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var searchBar: UISearchBar!
    
    var dataSourceArray = ["mehmet","can","seyhan","ahmet","ayşe","fatma","ali"]
    var filteredArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

