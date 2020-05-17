//
//  MainCellViewModel.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

struct MainCellViewModel {
    let title: String
    
    init(from dataModel: MainDataModel.Meal) {
        title = dataModel.idMeal
    }
}
