//
//  Constants.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

import Foundation
enum Endpoints {
    case mainSearch(String)
    
    var url: URL? {
        switch self {
        case .mainSearch(let query):
            var components = URLComponents(string: "https://www.themealdb.com/api/json/v1/1/search.php")
            let queryItems = [URLQueryItem(name: "s", value: query)]
            components?.queryItems = queryItems
            return components?.url
        }
    }
}
