//
//  SessionResponse.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 18/07/25.
//

struct SessionResponse: Decodable {
    let success: Bool
    let sessions: [Session]
}

