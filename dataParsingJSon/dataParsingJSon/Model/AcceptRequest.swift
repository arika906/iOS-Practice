//
//  AcceptRequest.swift
//  dataParsingJSon
//
//  Created by Arika Afrin Boshra on 6/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import Foundation
import SwiftyJSON

struct AcceptRequest {

    let pk: Int?
    let email: String?
    let username: String?
    let area: String?
    let city: String?
    let bloodGroup: String?
    let age: String?
    let mobileNumber: String?
    let userImage: Any?
    let receverinfo: [Receverinfo]?
    let status: Bool?

    init(_ json: JSON) {
        pk = json["pk"].intValue
        email = json["email"].stringValue
        username = json["username"].stringValue
        area = json["area"].stringValue
        city = json["city"].stringValue
        bloodGroup = json["blood_group"].stringValue
        age = json["age"].stringValue
        mobileNumber = json["mobile_number"].stringValue
        userImage = json["user_image"]
        receverinfo = json["receverinfo"].arrayValue.map { Receverinfo($0) }
        status = json["status"].boolValue
    }

}
