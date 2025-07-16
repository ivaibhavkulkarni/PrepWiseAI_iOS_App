//
//  Session.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 16/07/25.
//

struct Session: Decodable {
    let role: String
    let experience: String
    let topicsToFocus: String
    let description: String
    let questions : [Question]
}

