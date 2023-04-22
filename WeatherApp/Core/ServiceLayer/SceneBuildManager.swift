//
//  SceneBuildManager.swift
//  WeatherApp
//
//  Created by Igor Dikan on 22.04.2023.
//

protocol SceneBuildManagable {
    func buildMainScene() -> MainViewController
}

final class SceneBuildManager {  
    private lazy var decoderManager = DecoderManager()
    private lazy var networkManager = NetworkManager(decoderManager: decoderManager)
    private lazy var apiManager = APIManger(
        networkManager: networkManager,
        decoderManager: decoderManager
    )
    private lazy var locationManager = LocationManager()
}

extension SceneBuildManager: SceneBuildManagable {
    func buildMainScene() -> MainViewController {
        let viewController = MainViewController()
        let presenter = MainPresenter(
            apiManager: apiManager,
            locationManager: locationManager
        )
        
        viewController.presenter = presenter
        presenter.view = viewController
        
        return viewController
    }
}
