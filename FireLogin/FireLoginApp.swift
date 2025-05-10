//
//  Home.swift
//  FireLogin
//
//  Created by antonio dante arista rivas on 5/8/25.
//

import SwiftUI
import Firebase
import FirebaseAuth



@main
struct FireLoginApp: App {
    
    
    
    init(){
        FirebaseApp.configure()
 
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}

