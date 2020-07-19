//
//  CountriesTableViewController2.swift
//  fancytableView
//
//  Created by Fayik Muzammil on 7/19/20.
//  Copyright © 2020 Fayik Muzammil. All rights reserved.
//


import UIKit

struct City {
    var name: String
    var isoCode: String
}

class MyCityTableViewController: UITableViewController {
    var cityList = [
        City(name: "Colombo", isoCode: "at"),
        City(name: "Kandy", isoCode: "at"),
        City(name: "Matara", isoCode: "at"),
        City(name: "Kaluthara", isoCode: "at"),
        City(name: "Kegalle", isoCode: "at"),
    ]
     
    override func viewDidLoad() {
        //NewCustomerCityCell
        let newXib = UINib(nibName: "CustomCityTableViewCell", bundle: nil)
        
        tableView.register(newXib, forCellReuseIdentifier: "NewCustomCityCell")
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  cityList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewCustomCityCell", for: indexPath) as! CustomCityTableViewCell
      
        cell.cityNameLbl.text = cityList[indexPath.row].name
        cell.cityCodeLbl.text = cityList[indexPath.row].isoCode
        return cell
    }
        
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
        }
        
     override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Click \(indexPath.row)")
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,forRowAt indexPath: IndexPath)  {
        if (editingStyle == .delete) {
            cityList.remove(at: indexPath.row)
            tableView.beginUpdates()
            tableView.deleteRows(at: [indexPath], with: .middle)
            tableView.endUpdates()
        }
    }
}


