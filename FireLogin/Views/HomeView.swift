//
//  HomeView.swift
//  FireLogin
//
//  Created by antonio dante arista rivas on 5/8/25.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct HomeView: View {
    @AppStorage("login_status") var loginStatus: Bool = Auth.auth().currentUser == nil ? false : true
    
    
    func signout(){
        try? Auth.auth().signOut()
        loginStatus = false
    }
    
    var body: some View {
        
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Text("Hello \(String(describing: $user.email))")
            Button(action:  { signout() }){
                Text("Sign out")
            }
        }
        
    }
}

#Preview {
    HomeView()
}
