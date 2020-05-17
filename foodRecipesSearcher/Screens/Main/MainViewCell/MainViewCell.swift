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
            title?.text = viewModel?.title
        }
    }
    // MARK: - Outlets
    @IBOutlet private weak var title: UILabel?
}
