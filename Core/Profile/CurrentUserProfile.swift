//
//  CurrentUserProfile.swift
//  FlowFlicker
//
//  Created by Ahmad Qasim on 2/20/24.
//

import SwiftUI

struct CurrentUserProfile: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    //Profile header view
                    ProfileHeadrView()
//                    Profile Post View
                    
                    PostGridView()
                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfile()
}
