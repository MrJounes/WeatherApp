//
//  ViewController.swift
//  WeatherApp
//
//  Created by Игорь Дикань on 25.09.2020.
//  Copyright © 2020 Игорь Дикань. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lacationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pressureLabel: UILabel!
    @IBOutlet weak var humidityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var appearentTemperatureLabel: UILabel!
    @IBOutlet weak var refreshButton: UIButton!
    
    @IBAction func refreshButtonTapped(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

