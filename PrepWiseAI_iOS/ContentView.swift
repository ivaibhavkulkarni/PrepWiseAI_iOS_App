//
//  ContentView.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 13/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                VStack{
                    NavigationLink(destination: DetailCardView()){
                        SummaryCard()
                    }
                    NavigationLink(destination: DetailCardView()){
                        SummaryCard()
                    }
                    NavigationLink(destination: DetailCardView()){
                        SummaryCard()
                    }
                    NavigationLink(destination: DetailCardView()){
                        SummaryCard()
                    }
                    NavigationLink(destination: DetailCardView()){
                        SummaryCard()
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
        }
    }
}

#Preview {
    ContentView()
}
