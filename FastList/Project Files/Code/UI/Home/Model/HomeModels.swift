//
//  HomeModels.swift
//  FastList
//
//  Created by Abhishek Thapliyal on 02/10/18.
//  Copyright © 2018 Abhishek Thapliyal. All rights reserved.
//

import Foundation

struct SectionModel {
    
    var headerModel: Any?
    var cellModels: [Any] = []
    var footerModel: Any?
    
    init(headerModel: Any? = nil,
         cellModels: [Any] = [],
         footerModel: Any? = nil) {
        self.headerModel = headerModel
        self.cellModels = cellModels
        self.footerModel = footerModel
    }
}

enum HomeItem: Int {
    
    case simple = 0
    case household
    case grocery
    case plumbing
    case wedding
    
    var title: String {
        switch self {
        case .simple:
            return "Simple"
        case .household:
            return "HouseHold"
        case .grocery:
            return "Grocery"
        case .plumbing:
            return "Plumbing"
        case .wedding:
            return "Wedding"
        }
    }
}

struct HomeCellModel {
    var type: HomeItem
}
