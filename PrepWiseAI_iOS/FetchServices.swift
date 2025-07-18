//
//  FetchServices.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 16/07/25.
//

import Foundation

struct FetchServices {
    
    private enum FetchError: Error {
        case badResponse
    }
    
    private let baseURL = URL(string: "https://prepwise-ai-ios-api.onrender.com/api")!
    
    func fetchSessions() async throws -> [Session] {
        
        // Build Fetch URL
        let sessionURL = baseURL.appending(path: "session/my-sessions")
        let fetchURL = sessionURL
        
        // Fetch data
        let (data, response) = try await URLSession.shared.data(from: fetchURL)
        
        // Handle Response
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw FetchError.badResponse
        }
        
        // Decode data
        let decoded = try JSONDecoder().decode(SessionResponse.self, from: data)
        
        // Return Session
        return decoded.sessions
        
    }
}

