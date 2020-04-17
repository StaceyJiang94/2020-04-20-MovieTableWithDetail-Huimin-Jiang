//
//  MovieDetailTableViewController.swift
//  2020-04-20-MovieTableWithDetail-Huimin-Jiang
//
//  Created by Huimin Jiang on 4/16/20.
//  Copyright © 2020 Huimin Jiang. All rights reserved.
//

import UIKit

class MovieDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var movieNameYearLabel: UILabel!
    
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var directorNameLabel: UILabel!
    
    @IBOutlet weak var movieRatingLabel: UILabel!
    
    var movieName: String!
    var movieYear: Int!
    var movieImageName: String!
    var directorName: String!
    var rating: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        movieNameYearLabel.text = "\(movieName!) [\(movieYear!)]"
        movieImageView.image = UIImage(named: movieImageName)
        directorNameLabel.text = directorName
        movieRatingLabel.text = rating

    }

}
