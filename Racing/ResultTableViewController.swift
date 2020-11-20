//
//  ResultTableViewController.swift
//  Racing
//
//  Created by Дмитрий on 19.11.2020.
//

import UIKit
struct resultData {
    var playerName: String
    var resultGame: String
    var timeGame: String
}

var results: [resultData] = []

class ResultTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        results.append(resultData(playerName: "test", resultGame: "test", timeGame: "test"))

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return results.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: "row", for: indexPath) as! ResultTableViewCell
        
        cell.namePlayer.text = results[indexPath.row].playerName
        cell.namePlayer.text = results[indexPath.row].resultGame
        cell.namePlayer.text = results[indexPath.row].timeGame
        
        return cell
        
    }

}
