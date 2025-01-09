//
//  FeedViewModel.swift
//  FlowFlicker
//
//  Created by Ahmad Qasim on 2/20/24.
//

import Foundation

class FeedViewModel: ObservableObject {
    @Published var posts = [Post]()
    
    let videURls = [
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
        "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerFun.mp4"
    ]
//https://www.youtube.com/watch?v=CnZKM9tFg7I
    init(){
        fetchPosts()
    }
 
    
    func fetchPosts() {
        self.posts = [
            .init(id: NSUUID().uuidString, videoUrl: videURls[0]),
            .init(id: NSUUID().uuidString, videoUrl: videURls[1]),
            .init(id: NSUUID().uuidString, videoUrl: videURls[2]),
            .init(id: NSUUID().uuidString, videoUrl: videURls[3]),
        ]
    }
}
