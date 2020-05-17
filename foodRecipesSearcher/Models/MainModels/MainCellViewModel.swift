//
//  MainCellViewModel.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//
import UIKit
struct MainCellViewModel {
    let title: String
    let thumbString: String
    let category: String
    
    private var thumbURL: URL? {
        URL(string: thumbString)
    }
    var compressedImage: UIImage?
    init(from dataModel: MainDataModel.Meal) {
        title = dataModel.mealNameString ?? "Untitled"
        thumbString = dataModel.mealThumbString ?? ""
        category = dataModel.category ?? "Uncategorized"
        
        guard let url = thumbURL,
            let data = try? Data(contentsOf: url),
            let image = UIImage(data: data),
            let compressedImageData = image.jpegData(compressionQuality: 0) else {
                compressedImage = nil
                return
        }
        compressedImage = UIImage(data: compressedImageData)
    }
}
