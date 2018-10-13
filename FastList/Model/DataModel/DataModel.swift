//
//  DataModel.swift
//  TemplateProject
//
//  Created by Ravindra Soni on 05/01/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import Foundation
import FoxAPIKit
import JSONParsing

public let DefaultPerPage = 10
public let DefaultFilterPerPage = 30
public typealias APICompletion<T> = (APIResult<T>) -> Void

public class DataModel {
	
    public static let shared: DataModel = DataModel()
    private let userDefaults = UserDefaults.standard
    private init() { }
}
