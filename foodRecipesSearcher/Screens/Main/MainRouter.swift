//
//  MainRouter.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

final class MainRouterImplementation {
    private var viewController: MainViewController
    
    init(viewController: MainViewController) {
        self.viewController = viewController
    }
}
extension MainRouterImplementation: MainRouter {
    func routeToDetailScreen() {
        let detailViewController = DetailViewController()
        detailViewController.configurator = DetailConfiguratorImplementation()
        viewController.present(detailViewController, animated: true, completion: nil)
    }
}
