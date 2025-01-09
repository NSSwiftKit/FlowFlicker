//
//  TestView.swift
//  FlowFlicker
//
//  Created by Ahmad Qasim on 2/21/24.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    @State var player = AVPlayer()
    var videoUrl: String = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4"
    var body: some View {
        
        VideoPlayer(player: AVPlayer(url:  URL(string: videoUrl)!))
//            .frame(height: 400)
//        VideoPlayer(player: player)
//            .onAppear() {
//                player = AVPlayer(url: URL(string: videoUrl)!)
//            }
    }
}
#Preview {
    VideoPlayerView(player: AVPlayer(), videoUrl: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")
}

//struct VideoPlayerView: View {
//    private let videoURL: URL
//    @State private var player: AVPlayer?
//    
//    init(videoURL: URL) {
//        self.videoURL = videoURL
//    }
//    
//    var body: some View {
//        VStack {
//            if let player = player {
//                VideoPlayer(player: player) {
//                    VStack {
//                        Text("Video")
//                            .foregroundColor(.white)
//                            .font(.headline)
//                    }
//                    .padding()
//                    .background(Color.black.opacity(0.7))
//                    .cornerRadius(10)
//                }
//            } else {
//                Text("Loading video...")
//            }
//        }
//        .onAppear {
//            do {
//                self.player = try AVPlayer(url: videoURL)
//            } catch {
//                print("Error loading video:", error.localizedDescription)
//            }
//        }
//        .edgesIgnoringSafeArea(.all)
//    }
//}
//
//struct VideoPlayerView_Previews: PreviewProvider {
//    static var previews: some View {
//        VideoPlayerView(videoURL: URL(string: "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4")!)
//    }
//}
