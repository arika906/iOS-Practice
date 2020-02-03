//
//  RootClass.swift
//
//  Generated using https://jsonmaster.github.io
//  Created on January 29, 2020
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
