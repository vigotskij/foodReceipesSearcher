//
//  MainInteractor.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//
import Foundation
final class MainInteractorImplementation {
    private var output: MainPresenter?
    init(output: MainPresenter) {
        self.output = output
    }
    var response: MainDataModel = .init(meals: []) {
        didSet {
            output?.updatePresentedState(with: response.meals)
        }
    }
}
extension MainInteractorImplementation: MainInteractor {
    func viewDidLoad() {
        output?.updatePresentedState(with: [])
    }
    
    func search(with term: String) {
        guard let endpoint = Endpoints.mainSearch(term).url,
            !term.isEmpty else {
            return
        }
        URLSession.shared.retrieveData(with: endpoint) { [weak self] (response: MainDataModel?, error) in
            // MARK: - setting self?.response will trigger the didSet
            if let error = error {
                print(error.localizedDescription)
            }
            self?.response = response ?? MainDataModel(meals: [])
        }
    }
    
    func routeToDetailScreen(with: String) {
        
    }
}
