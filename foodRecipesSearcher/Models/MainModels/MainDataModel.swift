//
//  MainDataModel.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//
struct MainDataModel: Decodable {
    let meals: [Meal]
    
    struct Meal: Decodable {
        let idMeal: String
    }
}

