//
//  CategoryItemsViewController.swift
//  FastList
//
//  Created by Abhishek Thapliyal on 02/10/18.
//  Copyright © 2018 Abhishek Thapliyal. All rights reserved.
//

import UIKit

class CategoryItemsViewController: UIViewController {

    var model: HomeCellModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func configureModel() {
        switch model.type {
        case .simple:
            break
        case .household:
            break
        case .grocery:
            break
        case .plumbing:
            break
        case .wedding:
            break
        }
    }
}
