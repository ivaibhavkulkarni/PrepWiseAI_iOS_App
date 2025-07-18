//
//  SessionViewModel.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 18/07/25.
//

import Foundation
import SwiftUI

@MainActor
class SessionViewModel: ObservableObject {
    @Published var sessions: [Session] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private let fetchServices = FetchServices()
    
    func fetchSessions() async {
        isLoading = true
        errorMessage = nil
        
        do {
            let fetchedSessions = try await fetchServices.fetchSessions()
            self.sessions = fetchedSessions
        } catch {
            self.errorMessage = "Failed to fetch sessions: \(error.localizedDescription)"
        }
        
        isLoading = false
    }
}
