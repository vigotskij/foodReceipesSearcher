//
//  MainPresenter.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

final class MainPresenterImplementation {
    private var output: MainView?
    init(output: MainView?) {
        self.output = output
    }
}

extension MainPresenterImplementation: MainPresenter {
    func presentInitialState() {
        output?.updateView()
    }
    
    func updatePresentedState() {
        output?.updateView()
    }
    func routeToDetailScreen() {}
}
