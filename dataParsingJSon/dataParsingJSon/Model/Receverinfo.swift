//
//  Receverinfo.swift
//  dataParsingJSon
//
//  Created by Arika Afrin Boshra on 6/2/20.
//  Copyright © 2020 com.arika.boshra@gmail. All rights reserved.
//

import Foundation
import SwiftyJSON

struct Receverinfo {

    let pk: Int?
    let message: String?
    let donationLocation: String?
    let status: Bool?
    let receverid: Int?
    let senderid: Int?
    let senderNumber: String?
    let senderLocation: String?

    init(_ json: JSON) {
        pk = json["pk"].intValue
        message = json["message"].stringValue
        donationLocation = json["donationLocation"].stringValue
        status = json["status"].boolValue
        receverid = json["receverid"].intValue
        senderid = json["senderid"].intValue
        senderNumber = json["senderNumber"].stringValue
        senderLocation = json["senderLocation"].stringValue
    }

}

