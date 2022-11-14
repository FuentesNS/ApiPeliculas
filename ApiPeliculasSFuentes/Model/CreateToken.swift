//
//  CreateToken.swift
//  ApiPeliculasSFuentes
//
//  Created by MacBookMBA1 on 11/11/22.
//

import Foundation
// MARK: - Welcome
struct Data: Codable{
    let tokenApi: Token
}

struct DataUser: Codable{
    let tokenApi: UserData
}

struct Token: Codable {
    let success: Bool
    let expires_at: String
    let request_token: String
    
    
}

struct UserData: Codable {
    let usernam: String
    let password: String
    let request_token: String
}

