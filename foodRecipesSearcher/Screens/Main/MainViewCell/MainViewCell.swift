//
//  MainViewCell.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//
import UIKit
final class MainViewCell: UITableViewCell {
    var viewModel: MainCellViewModel? {
        didSet {
            titleLabel?.text = viewModel?.title
            categoryLabel?.text = viewModel?.category
            mealThumbImageView?.image = viewModel?.compressedImage
        }
    }
    // MARK: - Outlets
    @IBOutlet private weak var titleLabel: UILabel?
    @IBOutlet private weak var categoryLabel: UILabel?
    @IBOutlet private weak var mealThumbImageView: UIImageView?
}
