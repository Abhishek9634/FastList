//
//  FastListAPIClient.swift
//  TemplateProject
//
//  Created by Ravindra Soni on 06/01/17.
//  Copyright © 2017 Nickelfox. All rights reserved.
//

import Foundation
import FoxAPIKit

class FastListAPIClient: APIClient<AuthHeaders, ErrorResponse> {

	static let shared = FastListAPIClient()
	
    override init() {
        super.init()
        enableLogs = true
    }
    
    override func authenticationHeaders(response: HTTPURLResponse) -> AuthHeaders? {
        return self.authHeaders
    }
}
