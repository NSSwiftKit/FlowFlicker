//
//  Notificationcell.swift
//  FlowFlicker
//
//  Created by Ahmad Qasim on 2/20/24.
//

import SwiftUI

struct Notificationcell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 28,height: 28)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("User 123")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text(" Liked One of your posts. ")
                    .font(.footnote) +
                 
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            Rectangle()
                .frame(width: 48,height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
            
        }.padding(.horizontal)
    }
}

#Preview {
    Notificationcell()
}
