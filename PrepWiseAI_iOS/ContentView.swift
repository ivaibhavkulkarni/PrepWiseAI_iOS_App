//
//  ContentView.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 13/07/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = SessionViewModel()
    
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    if viewModel.isLoading {
                        ProgressView("Loading sessions...")
                            .padding()
                    } else if let errorMessage = viewModel.errorMessage {
                        Text(errorMessage)
                            .foregroundColor(.red)
                            .padding()
                    } else if viewModel.sessions.isEmpty {
                        Text("No sessions available")
                            .foregroundColor(.gray)
                            .padding()
                    } else {
                        ForEach(viewModel.sessions, id: \.description) { session in
                            NavigationLink(destination: DetailCardView()) {
                                SummaryCard(session: session)
                            }
                        }
                    }
                }
                .padding()
            }
            .navigationTitle("PrepWise AI")
            .toolbar{
                ToolbarItem{
                    Button("Add Item", systemImage: "plus"){
                        
                    }
                }
            }
            .background(Color(.systemGroupedBackground))
            .task {
                await viewModel.fetchSessions()
            }
        }
    }
}

#Preview {
    ContentView()
}
