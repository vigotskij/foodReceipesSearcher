//
//  ViewController.swift
//  foodRecipesSearcher
//
//  Created by Boris Sortino on 17/05/2020.
//  Copyright © 2020 Boris Sortino. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var configurator: MainConfigurator? {
        didSet {
            configurator?.configure(with: self)
        }
    }
    private var viewModel: [MainCellViewModel] = [] {
        didSet {
            DispatchQueue.main.async { [weak self] in
                self?.updateUI()
            }
        }
    }
    weak var router: MainRouter?
    var output: MainInteractor?
    
    // MARK: - Outlets
    @IBOutlet weak var searchBar: UISearchBar? {
        didSet {
            searchBar?.delegate = self
            searchBar?.becomeFirstResponder()
        }
    }
    @IBOutlet weak var tableView: UITableView? {
        didSet {
            tableView?.delegate = self
            tableView?.dataSource = self
            tableView?.register(UINib(nibName: String(describing: MainViewCell.self),
                                      bundle: nil),
                                forCellReuseIdentifier: String(describing: MainViewCell.self))
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configurator = MainConfiguratorImplementation()
        output?.viewDidLoad()
    }
}

extension MainViewController: MainView {
    func updateView(with viewModel: [MainCellViewModel]) {
        self.viewModel = viewModel
    }

    func routeToDetailScreen() {
        router?.routeToDetailScreen()
    }
}

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MainViewCell.self),
                                                       for: indexPath) as? MainViewCell else {
            return UITableViewCell()
        }
        cell.viewModel = self.viewModel[indexPath.row]
        return cell
    }
}

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let selectedRow = viewModel[indexPath.row]
//        output?.routeToDetailScreen(with: selectedRow)
    }
}
private extension MainViewController {
    func updateUI() {
        tableView?.reloadData()
    }
}
extension MainViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        output?.search(with: searchText)
    }
    
    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text else {
            return
        }
        output?.search(with: searchText)
    }
    
    func searchBarShouldEndEditing(_ searchBar: UISearchBar) -> Bool {
        guard let searchText = searchBar.text else {
            return false
        }
        output?.search(with: searchText)
        return true
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = searchBar.text else {
            searchBar.resignFirstResponder()
            return
        }
        output?.search(with: searchText)
        searchBar.resignFirstResponder()
    }
    
}
