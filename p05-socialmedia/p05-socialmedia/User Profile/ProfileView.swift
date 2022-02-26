//
//  ProfileView.swift
//  p05-socialmedia
//
//  Created by Samuel Shi on 2/2/22.
//

import SwiftUI
import Foundation
import UIKit

struct ProfileView: View {
    @StateObject var hmfv = HomeFeedViewModel()
    @StateObject var pvm = ProfileViewModel()

    var body: some View {
        VStack(){
            userInfoView()
            
            List {
                ForEach(hmfv.posts) { post in
                    PostView(post: post)
                }
            }
            .listStyle(.plain)
        }
    }
}

struct userInfoView: View {
    @StateObject var pvm = ProfileViewModel()
    
    var body: some View {
    HStack {
        //padding(10)
        Image(pvm.profileImageAddress)
            .resizable()
            .frame(width: 75, height: 75)
            .clipShape(Circle())
        
        VStack(alignment: .leading) {
            Text(pvm.name)
                .fontWeight(.bold)
                
            Text(pvm.username)
                .foregroundColor(.secondary)
                .font(.callout)
                .fontWeight(.semibold)
        }
        //Spacer()
        NavigationLink(destination: SettingsView()) {
            Image(systemName: "square.and.arrow.up")
        }
//        Button(action: {
//        }) { NavigationLink(destination: SettingsView()) {
//                Image(systemName: "square.and.arrow.up")
//        }}
        //padding(10)
        }
    }
}

struct SettingsView: View {
    @StateObject var pvm = ProfileViewModel()

    var body: some View {
        //NavigationView{
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Name", text: $pvm.name)
                    TextField("Username", text: $pvm.username)
                    TextField("Profile Picture Address", text: $pvm.profileImageAddress)
                }
                //Section{
                    Button(action: {
                        print("account deleted")
                        // deletes account
                    }) {
                        HStack {
                            Image(systemName: "trash")
                                .font(.title)
                            Text("Delete Account")
                                .fontWeight(.semibold)
                                .font(.title)
                        }
                        .padding(10)
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(40)
                    }
                //}
            }
            .navigationBarTitle("Settings")
        //}
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
