//
//  PostViewModel.swift
//  p05-socialmedia
//
//  Created by Lauren Jones on 2/25/22.
//

import Foundation
import UIKit
import SwiftUI

class PostViewModel: ObservableObject {
    @Published var commentText = ""
    
    let unlikedImageName = "heart"
    let likedImageName = "heart.fill"
    
    var isLiked = false
    var currentLikeImageName = "heart"
      
//    let unlikedScale: CGFloat = 0.7
//    let likedScale: CGFloat = 1.3

    public func flipLikedState() {
        isLiked = !isLiked
        if (isLiked == false){
            currentLikeImageName = unlikedImageName
        } else {
            currentLikeImageName = likedImageName
        }
    }
    
    public func addComment(){
        if commentText == ""{
            return
        }
    }

//    private func animate() {
//        UIView.animate(withDuration: 0.1, animations: {
//        let newImage = self.isLiked ? self.likedImage : self.unlikedImage
//        let newScale = self.isLiked ? self.likedScale : self.unlikedScale
//        self.transform = self.transform.scaledBy(x: newScale, y: newScale)
//        self.setImage(newImage, for: .normal)
//    }, completion: { _ in
//        UIView.animate(withDuration: 0.1, animations: {
//        })
//    })
//    }
}
