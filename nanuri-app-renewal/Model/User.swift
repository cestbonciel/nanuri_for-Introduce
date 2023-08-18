//
//  User.swift
//  nanuri-app-renewal
//
//  Created by minimani on 2022/04/04.
//

import Foundation


//struct UserList: Decodable {
//    var count: Int
//    var next: String?
//    var pervious: String?
//    var results: [UserInfo]
//}

struct UserList: Decodable {
    var count: Int
    var next: String?
    var pervious: String?
    var results: [UserInfo]
}


//struct UserInfo: Decodable {
//    var user: [UserData]
//}
struct UserInfo: Decodable {

    var password: String?
    var posts: [String]
    var favoritePosts: [String]
    var lastLogin: String
    var uuid: String
    var email: String
    var nickname: String?
    var isActive: Bool
    var isAdmin: Bool
    var latitude: Double?
    var longitude: Double?
    var address: String?
    var profileUrl: String?
    var authProvider: String?
    
    enum CodingKeys: String, CodingKey {
        case password
		case posts
		case favoritePosts
		case lastLogin
		case uuid
        case email
        case nickname
        case isActive = "is_active"
        case isAdmin = "is_admin"
        case latitude
        case longitude
        case address
        case profile
        case authProvider = "auth_provider"
        case createdAt = "created_at"
        case updatedAt = "updated_at"
    }
	
	init(password: String?, post: [String], favoritePosts: [String], lastLogin: String, uuid: String, email: String, nickname: String?, isActive: Bool, isAdmin: Bool, latitude: Double?, longtitude: Double?, address: String?, profileUrl: String?, authProvider: String?) throws {
		self.password = password
		self.posts = post
		self.favoritePosts = favoritePosts
		self.lastLogin = lastLogin
		self.uuid = uuid
		self.email = email
		self.nickname = nickname
		self.isActive = isActive
		self.isAdmin = isAdmin
		self.latitude = latitude
		self.longitude = longtitude
		self.address = address
		self.profileUrl = profileUrl
		self.authProvider = authProvider
	}
	
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		
		password = try values.decode(String.self, forKey: .password)
		posts = try values.decode(String.self, forKey: .posts)
		favoritePosts = try values.decode([String].self, forKey: .favoritePosts)
		lastLogin = try values.decode(String.self, forKey: .lastLogin)
		uuid = try values.decode(String.self, forKey: .uuid)
		
		
	}

	func encode(to encoder: Encoder) throws {
		var container = encoder.container(keyedBy: CodingKeys.self)
		
		try container.encode(name, forKey: .name)
		try container.encode(checkedStatus, forKey: .checkedStatus)
		try container.encode(link, forKey: .link)
		try container.encode(price, forKey: .price)
		try container.encode(note, forKey: .note)
		//		   try container.encode(image.pngData(), forKey: .image)
	}
}


struct UserPostResponse: Decodable {
    var results: UserInfo
}

