//
//  MainViewController.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

import UIKit

protocol MainDisplayLogic: AnyObject {}

final class MainViewController: UIViewController {
    var presenter: MainPresentationLogic?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        presenter?.viewDidLoad()
    }
}

extension MainViewController: MainDisplayLogic {}
