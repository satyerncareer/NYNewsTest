//
//  News.swift
//  NYTIMES_TEST
//
//  Created by Satyen on 10/05/18.
//  Copyright © 2018 NYTIMES_TEST. All rights reserved.
//

import UIKit

struct News: Codable {
    var url:String?
    var byline:String?
    var title: String?
    var published_date:String?
    var source:String?
    var type:String?
}
