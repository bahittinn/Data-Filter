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
    var searching:Bool?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setInitFuncs()
    }
    
    func setInitFuncs() {
        tableView.delegate   = self
        tableView.dataSource = self
        searchBar.delegate   = self
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension ViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (searching ?? false) {
            return filteredArray.count
        }else {
            return dataSourceArray.count
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") as! UITableViewCell
        return cell
    }
}

extension ViewController: UISearchBarDelegate {
    
}
