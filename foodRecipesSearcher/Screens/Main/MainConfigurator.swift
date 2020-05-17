//
//  MainConfigurator.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

final class MainConfiguratorImplementation: MainConfigurator {
    func configure(with viewController: MainViewController) {
        guard let mainView = viewController as? MainView else {
            return
        }
        let presenter: MainPresenter = MainPresenterImplementation(output: mainView)
        let interactor: MainInteractor = MainInteractorImplementation(output: presenter)
        let router = MainRouterImplementation(viewController: viewController)
        viewController.router = router
        viewController.output = interactor
    }
}