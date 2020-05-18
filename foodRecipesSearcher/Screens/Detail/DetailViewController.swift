//
//  DetailViewController.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

import UIKit
final class DetailViewController: UIViewController {
    weak var router: DetailRouter?
    var output: DetailInteractor?
    var configurator: DetailConfigurator? {
        didSet {
            configurator?.configure(with: self)
        }
    }
    // MARK: - Outlets
    @IBOutlet private weak var mealTitleLabel: UILabel?
    @IBOutlet private weak var mealInstructionLabel: UILabel?
    @IBOutlet private weak var mealImageView: UIImageView?
    // MARK: - View model
    private var viewModel: String? {
        didSet {
            updateUI()
        }
    }
}
extension DetailViewController: DetailView {
    func updateView() {
        
    }
}
private extension DetailViewController {
    func updateUI() {}
}
// MARK: - Life cycle
extension DetailViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }
}
