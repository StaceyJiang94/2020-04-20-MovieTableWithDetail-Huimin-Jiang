//
//  ViewController.swift
//  2020-04-20-MovieTableWithDetail-Huimin-Jiang
//
//  Created by Huimin Jiang on 4/16/20.
//  Copyright © 2020 Huimin Jiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var movieNameArray = ["Brokeback Mountain", "Inception", "Joker", "Lion", "Parasite", "Titanic"]
    
    var movieYearArray = [2005, 2010, 2019, 2016, 2019, 1997]
    
    var directorNameArray = ["Ang Lee", "Christopher Nolan", "Todd Phillips", "Garth Davis", "Bong Joon Ho", "James Cameron"]
    
    var ratingArray = ["7.7/10", "8.8/10", "8.5/10", "8.0/10", "8.6/10", "7.8/10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Show Detail" {
            let destination = segue.destination as! MovieDetailTableViewController
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            destination.movieName = movieNameArray[selectedIndexPath.row]
            destination.movieYear = movieYearArray[selectedIndexPath.row]
            destination.directorName = directorNameArray[selectedIndexPath.row]
            destination.rating = ratingArray[selectedIndexPath.row]
            destination.movieImageName = movieNameArray[selectedIndexPath.row]

        }
    }
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = movieNameArray[indexPath.row]
        cell.detailTextLabel?.text = directorNameArray[indexPath.row]
        return cell
    }
    
    
}
