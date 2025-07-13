//
//  DetailCardView.swift
//  PrepWiseAI_iOS
//
//  Created by Vaibhav kulkarni on 13/07/25.
//

import SwiftUI

struct DetailCardView: View {
    var body: some View {
        VStack {
            
            Text("Detailed information about Artificial Intelligence")
                .font(.body)
                .foregroundColor(.gray)
                .padding()
            
        }
        .navigationTitle("Details")
    }
}

#Preview {
    DetailCardView()
}
