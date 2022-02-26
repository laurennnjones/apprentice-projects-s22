//
//  SettingsView.swift
//  p05-socialmedia
//
//  Created by Lauren Jones on 2/25/22.
//

import Foundation
import SwiftUI

struct SettingsView: View {
    @StateObject var pf = ProfileView()

    var body: some View {
        NavigationView{
            Form {
                Section(header: Text("PROFILE")) {
                    TextField("Name", text: $pf.name)
                    TextField("Username", text: $pf.username)
                    TextField("Profile Picture Address", text: $pf.profileImageAddress)
                }
            }
            Section{
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
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(40)
                }
            }
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
