//
//  LoginView.swift
//  FireLogin
//
//  Created by antonio dante arista rivas on 5/8/25.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    @State var errorMessage = ""
    @State var isLoading = false
    
    @AppStorage("login_status") var loginStatus: Bool = Auth.auth().currentUser == nil ? false : true
    
    func login(){
        isLoading.toggle()
        
        Auth.auth().signIn(withEmail: email, password: password){
            (result, error) in
            if error != nil {
                print("error: \(String(describing: error?.localizedDescription))")
                errorMessage = error?.localizedDescription ?? "Unkown Error"
                isLoading.toggle()
            }else{
                print("succes: \(String(describing: result))")
                loginStatus = true
            }
        }
        

    }
    
    var body: some View {
        VStack {
            TextField("Email", text: $email)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
           
                Button(action: { login() }){
                    if isLoading {
                        ProgressView()
                    }else {
                     Text("Sign in")
                    }
                }.disabled(email.isEmpty)
            
            }.padding()
            
    }
}

#Preview {
    LoginView()
}
