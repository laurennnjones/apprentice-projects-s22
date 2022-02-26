//
//  HomeFeedView.swift
//  p05-socialmedia
//
//  Created by Lauren Jones on 2/25/22.
//

import Foundation
import SwiftUI

struct HomeFeedView: View {
    @StateObject var hfvm = HomeFeedViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(hfvm.posts) { post in
                    PostView(post: post)
                }
            }
            .listStyle(.plain)
            .navigationTitle("bluebird")
        }
        .onAppear(perform: {
            hfvm.fetchPosts()
        })
    }
}

struct HomeFeedView_Previews: PreviewProvider {
    static var previews: some View {
        HomeFeedView().bothColorSchemes()
    }
}
