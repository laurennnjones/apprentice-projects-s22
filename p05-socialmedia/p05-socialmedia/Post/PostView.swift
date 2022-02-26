//
//  PostView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 1/31/22.
//

import SwiftUI
import UIKit
import Foundation

struct PostView: View {
    @StateObject var vm = PostViewModel()
    let post: Post
    @State var currLikeImageName = "heart"
    @State var commentText = ""
    
    var body: some View {
        VStack(spacing: 15) {
            HStack {
                Image(post.authorImageAddress)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(post.authorName)
                    Text(post.authorUsername)
                        .foregroundColor(.secondary)
                        .font(.callout)
                }
                Spacer()
            }
            
            Text(post.postContent)
                .frame(maxWidth: .infinity, alignment: .leading)
                .onTapGesture(count: 2) {
                    vm.flipLikedState()
                    currLikeImageName = vm.currentLikeImageName
                }
            
            HStack {
                Label("\(post.likeCount)", systemImage: currLikeImageName)
                    //.onTapGesture (count: 3){
                        NavigationLink(destination: CommentView()) {
                        Label("\(post.commentCount)", systemImage: "message")
                        //}
                    }
//                Button(action: {
//                    }) { NavigationLink(destination: CommentView()) {
//                    Label("\(post.commentCount)", systemImage: "message")
//                    }
                //}
            }
            Spacer()
        }
    }
}

struct CommentView: View {
    @StateObject var vm = PostViewModel()
    
    var body: some View {
        NavigationView {
                Form {
                    TextField("Comment", text: $vm.commentText)
                        .multilineTextAlignment(.leading)
                }
            padding()
            .navigationBarTitle("What Do You Want to Share?", displayMode: .inline)
            .navigationBarItems(
                trailing:
                    // SWITCH TO POSTVIEW()
                NavigationLink(destination: CommentView()) {
                Image(systemName: "square.and.arrow.up")
                }
            )
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: .example)
            .bothColorSchemes()
    }
}
