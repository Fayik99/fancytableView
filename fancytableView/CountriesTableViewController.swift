//
//  CountriesTableViewController.swift
//  fancytableView
//
//  Created by Fayik Muzammil on 7/13/20.
//  Copyright © 2020 Fayik Muzammil. All rights reserved.
//

import UIKit

class CountriesTableViewController: UITableViewController {

    let countries = [
        Country(code: "lk", name: "Sri Lanka"),
        Country(code: "at", name: "Australia"),
        Country(code: "fr", name: "France"),
        Country(code: "de", name: "Germany")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return countries.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "CountryCell2", for: indexPath)

        cell.textLabel?.text = countries[indexPath.row].name
        cell.detailTextLabel?.text = countries[indexPath.row].code
        cell2.textLabel?.text = countries[indexPath.row].name
        
        if(indexPath.row%2 == 0) {
            return cell
        } else {
            return cell2
        }
    }
}
