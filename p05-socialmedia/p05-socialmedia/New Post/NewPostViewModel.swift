//
//  NewPostViewModel.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/17/22.
//

import Foundation

class NewPostViewModel: ObservableObject {
    @Published var currentText: String = ""
    
    func makePost() {
        let post = Post(id: UUID(),
                        authorName: "Lauren Jones",
                        authorUsername: "lojo",
                        authorImageAddress: "lojo",
                        datePosted: Date(),
                        postContent: currentText,
                        likeCount: 400,
                        commentCount: 20)
        PostsService.makePost(post: post)
        currentText = ""
    }
}
