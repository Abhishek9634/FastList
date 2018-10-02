//
//  HomeViewController.swift
//  FastList
//
//  Created by Abhishek Thapliyal on 02/10/18.
//  Copyright © 2018 Abhishek Thapliyal. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    private var cellItems: [HomeCellModel] = []
    private struct Segue {
        static let CategoryItems = "CategoryItemsViewSegueId"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.setupModel()
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    private func setupUI() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil),
                                forCellReuseIdentifier: "HomeTableViewCell")
    }
    
    private func setupModel() {
        self.cellItems = [
            HomeCellModel(type: .simple),
            HomeCellModel(type: .household),
            HomeCellModel(type: .grocery),
            HomeCellModel(type: .plumbing),
            HomeCellModel(type: .wedding)
        ]
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView,
                   numberOfRowsInSection section: Int) -> Int {
        return self.cellItems.count
    }
    
    func tableView(_ tableView: UITableView,
                   cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "HomeTableViewCell"
        ) as! HomeTableViewCell
        cell.item = self.cellItems[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView,
                   didSelectRowAt indexPath: IndexPath) {
        let model = self.cellItems[indexPath.row]
        self.performSegue(withIdentifier: Segue.CategoryItems, sender: model)
    }
}

extension HomeViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch (segue.identifier, segue.destination, sender) {
        case (Segue.CategoryItems,
              let vc as CategoryItemsViewController,
              let model as HomeCellModel):
            vc.model = model
        default:
            return
        }
        super.prepare(for: segue, sender: sender)
    }
}
