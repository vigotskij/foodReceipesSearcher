//
//  MainInteractor.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

final class MainInteractorImplementation {
    private var output: MainPresenter?
    init(output: MainPresenter) {
        self.output = output
    }
}
extension MainInteractorImplementation: MainInteractor {
    func viewDidLoad() {
        output?.presentInitialState()
    }
    
    func search(with term: String) {
        
    }
    
    func routeToDetailScreen() {
        
    }
    
    
}
