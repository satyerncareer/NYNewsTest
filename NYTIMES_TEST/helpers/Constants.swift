//
//  LPConstants.swift
//  L2P
//
//  Created by Satyen on 24/05/17.
//  Copyright © 2017 appster. All rights reserved.
//

import UIKit



//MARK:- StoryBoards
var kStoryBoardMain = UIStoryboard(name: "Main", bundle: nil)


let api_end_point = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/";
let api_key = "c911383bfbd542c09529c23a4a7599ab"
let headers:[String:String] = ["ContentType":"Application/json"]

enum viewControllerIdentifier:String {
    case NEWS_DETAIL_CONTROLLER = "news_detail_controller"
    var value:String{
        return self.rawValue
    }
}

enum apiMethods: String {
    case all_news = "all-sections/7.json?api-key="
    var value:String{
        return self.rawValue
    }
}






