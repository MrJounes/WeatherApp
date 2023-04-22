//
//  MainPresenter.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

protocol MainPresentationLogic: AnyObject {}

final class MainPresenter {
    weak var view: MainDisplayLogic?
}

extension MainPresenter: MainPresentationLogic {}
