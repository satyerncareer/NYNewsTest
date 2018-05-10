//
//  LPNetwork.swift
//  L2P
//
//  Created by Ganesh Tiwari on 30/05/17.
//  Copyright © 2017 appster. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import SwiftyJSON
import Reachability

class Network: NSObject {

    //MARK: - Making network call using alamofire
    class func apiRequestCall(method: HTTPMethod, apiURL:String,parameters:[String: Any],headers:[String:String], completionHandler: (@escaping (Data?, NSError?) -> Void)) {
        
        var encoding:ParameterEncoding = JSONEncoding.default;
        if method == .get
        {
            encoding = URLEncoding.default
        }
        
        Alamofire.request(apiURL, method: method, parameters: parameters, encoding: encoding, headers: headers)
            .responseJSON { response in
                
                switch(response.result) {
                case .success(_):
                    if let data = response.data{
                        completionHandler(data, nil);
                        
                    }
                case .failure(_): break
                    //NOTE: - Need to implement failed here
                }
        }
    }
    
    
}
