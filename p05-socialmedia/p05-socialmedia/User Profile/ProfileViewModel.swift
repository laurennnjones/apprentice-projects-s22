//
//  ProfileViewModel.swift
//  p05-socialmedia
//
//  Created by Lauren Jones on 2/25/22.
//

import SwiftUI
import Foundation
import UIKit

class ProfileViewModel: ObservableObject {
    var name: String = "App Team Carolina"
    var username: String = "appteamcarolina"
    var profileImageAddress: String = "appteam" // will eventually be url
    
    var userPosts: [Post] = PostList.defaultPosts
}
