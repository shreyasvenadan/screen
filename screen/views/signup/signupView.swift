//
//  signupView.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//

import SwiftUI
import Lottie

struct signupView: View {
    
    @State private var name = ""
    @State private var email    = ""
    @State private var password = ""
    
    @Binding var currentScreen: CurrentScreen

    var body: some View {
        
            
        ZStack  {
            
            // grey background
            Color.backgroundC
                .ignoresSafeArea()
            
            // top right clock asset
            LottieView(animation: .named("clock"))
                .playing(loopMode: .loop)
                .animationSpeed(0.1)
                .offset(x: 250, y: -500)
                .frame(width: 650, height: 650)
                .opacity(0.05)

            // bottom left clock asset
            LottieView(animation: .named("clock"))
                .playing(loopMode: .loop)
                .animationSpeed(0.1)
                .offset(x: -250, y: 500)
                .frame(width: 650, height: 650)
                .opacity(0.05)
            
            
            VStack(spacing: 80) {
                
                // sign up text
                Text("SIGN UP")
                    .textStyle(size: 25, weight: .semibold, color: .primaryTC)
                    .tracking(20)
                    .multilineTextAlignment(.center)
                
                
                // username/password + login vstack
                VStack  {
                    
                    // username + password vstack
                    VStack(spacing: 30) {
                        
                        // name text field
                        customTextField(placeholder: "full name", text: $name)
                        
                        // username text field
                        customTextField(placeholder: "email", text: $email)
                        
                        // password text field
                        customTextField(placeholder: "password", text: $password)
                        
                    }
                    
                    // login redirecting
                    HStack {
                        Text("Already have an account?")
                            .textStyle(size: 15, weight: .regular, color: .secondaryTC)
                        
                        
                        // login button
                        Button(action:  {
                            currentScreen = .login
                        })  {
                            Text("Login")
                                .textStyle(size: 15, weight: .medium, color: .primaryTC)
                                .underline(true)

                        }
                        
                        
                        // spacer to align the text to the left
                        Spacer()
                    }
                }
                
                // sign up confirm button
                Button("SIGN UP")   {
                    Task {
                        do {
                            try await SupabaseManager.shared.signUp(
                                email: email,
                                password: password,
                                name: name
                            )
                            currentScreen = .login
                        } catch {
                            print("Signup failed: \(error.localizedDescription)")
                        }
                    }
                }
                .textStyle(size: 15, weight: .semibold, color: .primaryTC)
                .tracking(5)
                .multilineTextAlignment(.center)
            }
            // to give padding on both sides
            .frame(maxWidth: 325)
            
            
        }
        
    }
}

#Preview { 
    signupView(currentScreen: .constant(.signup))
}
