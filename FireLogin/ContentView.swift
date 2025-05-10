//
//  ContentView.swift
//  FireLogin
//
//  Created by antonio dante arista rivas on 5/8/25.
//

import SwiftUI
import Firebase
import FirebaseAuth



struct ContentView: View {
    @AppStorage("login_status") var loginStatus: Bool = Auth.auth().currentUser == nil ? false : true
    
    var body: some View {
        if loginStatus {
        HomeView()
        }else {
           LoginView()
        }
        
    }
}

#Preview {
    ContentView()
}
