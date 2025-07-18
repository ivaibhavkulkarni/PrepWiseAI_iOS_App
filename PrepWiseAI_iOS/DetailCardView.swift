//
//  DetailCardView.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 13/07/25.
//

import SwiftUI

struct QuestionAnswer: Identifiable {
    let id = UUID()
    let question: String
    let answer: String
}

struct DetailCardView: View {
    // Sample data for questions and answers
    let qaPairs: [QuestionAnswer] = [
        QuestionAnswer(question: "What is Artificial Intelligence?", answer: "Artificial Intelligence (AI) refers to the simulation of human intelligence in machines that are programmed to think and learn like humans."),
        QuestionAnswer(question: "What are the types of AI?", answer: "AI can be categorized into Narrow AI, General AI, and Super AI, based on their capabilities and scope of intelligence."),
        QuestionAnswer(question: "What are common AI applications?", answer: "AI is used in various fields such as healthcare, finance, autonomous vehicles, and natural language processing.")
    ]
    
    // State to manage sheet presentation and selected question
    @State private var selectedQuestion: QuestionAnswer? = nil
    
    var body: some View {
        ScrollView {
            VStack(spacing: 16) {
                Text("Detailed Information about Artificial Intelligence")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                    .padding(.top, 16)
                    .padding(.horizontal)
                
                ForEach(qaPairs) { pair in
                    Button(action: {
                        selectedQuestion = pair
                    }) {
                        Text(pair.question)
                            .font(.headline)
                            .foregroundColor(.blue)
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color(.systemBackground))
                            .cornerRadius(10)
                            .shadow(radius: 2)
                    }
                    .padding(.horizontal)
                }
            }
            .padding(.bottom, 16)
        }
        .navigationTitle("AI Details")
        .background(Color(.systemGroupedBackground))
        .sheet(item: $selectedQuestion) { question in
            VStack(spacing: 16) {
                Text(question.question)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .padding(.top, 16)
                
                Text(question.answer)
                    .font(.body)
                    .foregroundColor(.primary)
                    .padding(.horizontal)
                
                Spacer()
                
                Button("Close") {
                    selectedQuestion = nil
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.bottom, 16)
            }
            .background(Color(.systemBackground))
            .cornerRadius(10)
            .padding()
            .interactiveDismissDisabled() // Prevents drag-to-dismiss
        }
    }
}

#Preview {
    DetailCardView()
}
