//
//  MainContracts.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

protocol MainConfigurator: Configurator {
    func configure(with viewController: MainViewController)
}
protocol MainRouter: Router {
    func routeToDetailScreen()
}
protocol MainInteractor: Interactor {
    func viewDidLoad()
    func search(with term: String)
    func routeToDetailScreen()
}
protocol MainPresenter {
    func presentInitialState()
    func updatePresentedState()
    func routeToDetailScreen()
}
protocol MainView: View {
    func updateView()
    func routeToDetailScreen()
}
