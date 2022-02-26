//
//  SignUpView.swift
//  p05-socialmedia
//
//  Created by Lauren Jones on 2/26/22.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    @State var username: String
    @State var name: String
    @State var password: String
    @State var confirmPassword: String
    
    var body: some View{
        VStack{
            Image("bluebird")
                .resizable()
                .frame(width: 75, height: 75)
                .clipShape(Circle())
            TextField("Username", text: $username)
            TextField("Name", text: $name)
            TextField("Password", text: $password)
            TextField("Confirm Password", text: $confirmPassword)
        }
    }
}

