//
//  SummaryCard.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 13/07/25.
//

import SwiftUI

struct SummaryCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            // Title
            Text("Artificial Intelligence")
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundStyle(.black)
            
            // Tags
            HStack(spacing: 10) {
                Text("Experience: 1 Year")
                    .font(.caption)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(Color.blue.opacity(0.15))
                    .foregroundColor(.blue)
                    .clipShape(Capsule())
                
                Label("10 Q&A", systemImage: "questionmark.circle")
                    .font(.caption)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(Color.purple.opacity(0.15))
                    .foregroundColor(.purple)
                    .clipShape(Capsule())
            }
            
            // Last Updated
            HStack(spacing: 4) {
                Image(systemName: "calendar")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text("Last Updated: 12 Jul 2025")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .frame(width: 370, height: 135, alignment: .topLeading)
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.08), radius: 8, x: 0, y: 4)
    }
}

#Preview {
    SummaryCard()
}
