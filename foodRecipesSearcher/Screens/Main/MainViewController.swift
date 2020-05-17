//
//  ViewController.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var configurator: MainConfigurator? {
        didSet {
            configurator?.configure(with: self)
        }
    }
    weak var router: MainRouter?
    var output: MainInteractor?

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator = MainConfiguratorImplementation()
        output?.viewDidLoad()
    }
}

extension MainViewController: MainView {
    func updateView() {
        
    }
    
    func routeToDetailScreen() {
        router?.routeToDetailScreen()
    }
}

