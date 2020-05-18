//
//  DetailContracts.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

protocol DetailConfigurator: Configurator {
    func configure(with viewController: DetailViewController)
}
protocol DetailRouter: Router {
    func dismiss()
}
protocol DetailInteractor: Interactor {
    func viewDidLoad()
}
protocol DetailPresenter: Presenter {
    func presentData()
}
protocol DetailView: View {
    func updateView()
}
