//
//  ProfileView.swift
//  AnimatedUI
//
//  Created by Mac on 13/09/1446 AH.
//

import Foundation
import SwiftUI


struct ProfileView: View {
    var body: some View {
        VStack {
            CustomHeader(title: "Profile")
            Spacer()
            CustomButton(title: "Edit Profile") {
                print("Edit Profile tapped")
            }
            Spacer()
        }
    }
}
