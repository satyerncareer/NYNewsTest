//
//  NewsList+extension.swift
//  NYTIMES_TEST
//
//  Created by Satyen on 10/05/18.
//  Copyright © 2018 NYTIMES_TEST. All rights reserved.
//

import UIKit
import SwiftyJSON

extension NewsMedia {
    //MARK: - Loading model
    func getNewsList(handler: (@escaping ([News]?, NSError?) -> Void)) {
        let url = api_end_point + apiMethods.all_news.value + api_key
        Network.apiRequestCall(method: .get, apiURL: url, parameters: [:], headers: headers) { (response, error) in
                let decoder = JSONDecoder();
                let json = JSON(response!)
                let encoded = try? JSONEncoder().encode(json["results"])
                if let data = encoded {
                    let newsMedia = try? decoder.decode([News].self, from: data)
                    handler(newsMedia, nil)
                }else{
                    handler(nil,error);
                }
        }
    }
}
