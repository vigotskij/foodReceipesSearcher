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
        let mealThumbString: String?
        let mealNameString: String?
        let category: String?
        
        enum CodingKeys: String, CodingKey {
            case idMeal
            case mealThumbString = "strMealThumb"
            case mealNameString = "strMeal"
            case category = "strCategory"
        }
    }
}

