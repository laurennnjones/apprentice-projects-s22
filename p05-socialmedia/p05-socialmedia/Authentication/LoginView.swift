//
//  LoginView.swift
//  p05-socialmedia
//
//  Created by Lauren Jones on 2/26/22.
//

import Foundation
import SwiftUI

struct LoginView: View {
    @State var username: String
    @State var password: String
    
    var body: some View{
        VStack{
            Image("bluebird")
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            TextField("Username", text: $username)
            TextField("Password", text: $password)
            Button(action: {
                }) { NavigationLink(destination: CommentView()) {
                    Label("Login", systemImage: "arrow")
                }
            }
        }
    }
}
