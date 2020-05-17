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
    func updatePresentedState(with data: [MainDataModel.Meal]) {
        let transformedData = data.map { MainCellViewModel(from: $0)}
        output?.updateView(with: transformedData)
    }
    func routeToDetailScreen() {}
}
