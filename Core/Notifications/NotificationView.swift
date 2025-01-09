//
//  NotificationView.swift
//  FlowFlicker
//
//  Created by Ahmad Qasim on 2/20/24.
//

import SwiftUI
 
struct NotificationView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 24) {
                    ForEach(0 ..< 12 ) {user in
                      Notificationcell()
                    }
                }
            }
            .navigationTitle("Notification")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
            
        }
    }
}

#Preview {
    NotificationView()
}
