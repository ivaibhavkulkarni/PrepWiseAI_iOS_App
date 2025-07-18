//
//  SummaryCard.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 13/07/25.
//

import SwiftUI

struct SummaryCard: View {
    let session: Session
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 12) {
                // Title
                Text(session.topicsToFocus)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                
                // Tags
                HStack(spacing: 10) {
                    Text("Experience: \(session.experience)")
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(Color.blue.opacity(0.15))
                        .foregroundColor(.blue)
                        .clipShape(Capsule())
                    
                    Label("\(session.questions.count) Q&A", systemImage: "questionmark.circle")
                        .font(.caption)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 6)
                        .background(Color.blue.opacity(0.15))
                        .foregroundColor(.blue)
                        .clipShape(Capsule())
                }
                
                // Last Updated (Placeholder - API doesn't provide this)
                HStack(spacing: 4) {
                    Image(systemName: "calendar")
                        .font(.caption)
                        .foregroundColor(.gray)
                    Text("Last Updated: 12 Jul 2025") // Replace with actual date if available
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                Divider()
            }
            
            Spacer()
            
            // Chevron Button
            Image(systemName: "chevron.right")
                .foregroundColor(.blue)
        }
        .padding(.vertical, 12)
        .padding(.horizontal)
        .background(Color.clear)
    }
}

#Preview {
    SummaryCard(session: Session(
        role: "Developer",
        experience: "1 Year",
        topicsToFocus: "Artificial Intelligence",
        description: "AI session description",
        questions: [
            Question(question: "What is AI?", answer: "Artificial Intelligence is...")
        ]
    ))
}
