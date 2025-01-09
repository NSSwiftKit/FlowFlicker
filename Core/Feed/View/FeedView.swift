//
//  FeedView.swift
//  FlowFlicker
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrolPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ZStack {
            if !viewModel.posts.isEmpty {
                ScrollView {
                    LazyVStack(spacing: 0) {
                        ForEach(viewModel.posts ){ post in
                            FeedCell(post: post, player: player).id(post.id)
                                .onAppear{playinitialVideoifNecessary() }
                        }
                    }.scrollTargetLayout()
                }.onAppear{ player.play() }
                    .scrollTargetBehavior(.paging)
                    .scrollPosition(id: $scrolPosition )
                    .ignoresSafeArea()
                    .onChange(of: scrolPosition ) { oldValue, newValue in
                        playVideoOnChangeScrolPosition(postID: newValue)
                    }
            }
        }
    }
    
    func playinitialVideoifNecessary() {
        guard scrolPosition == nil,
              let post = viewModel.posts.first,
              player.currentItem == nil else {  return }
        let playerItem = AVPlayerItem(url: URL(string: post.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
    
    func playVideoOnChangeScrolPosition(postID: String?)
    {
        guard let currentPost = viewModel.posts.first(where: {$0.id == postID}) else {return}
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: URL(string: currentPost.videoUrl)!)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
