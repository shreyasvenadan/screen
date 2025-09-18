//
//  login.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//

import SwiftUI
import Lottie

struct loginView: View {
    
    @State private var email = ""
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
                .offset(x: -250, y: -500)
                .frame(width: 650, height: 650)
                .opacity(0.05)

            // bottom left clock asset
            LottieView(animation: .named("clock"))
                .playing(loopMode: .loop)
                .animationSpeed(0.1)
                .offset(x: 250, y: 500)
                .frame(width: 650, height: 650)
                .opacity(0.05)
            
            
            VStack(spacing: 80) {
                
                // login text
                Text("LOGIN")
                    .textStyle(size: 25, weight: .semibold, color: .primaryTC)
                    .tracking(20)
                    .multilineTextAlignment(.center)
                
                
                // email/password + login vstack
                VStack  {
                    
                    // email + password vstack
                    VStack(spacing: 30) {
                        
                        
                        // email text field
                        customTextField(placeholder: "email", text: $email)
                        
                        // password text field
                        customTextField(placeholder: "password", text: $password)
                        
                    }
                    
                    // sign up redirecting
                    HStack {
                        Text("Don't have an account?")
                            .textStyle(size: 15, weight: .regular, color: .secondaryTC)
                        
                        
                        // sing up button
                        Button(action:  {
                            currentScreen = .signup
                        })  {
                            Text("Sign Up")
                                .textStyle(size: 15, weight: .medium, color: .primaryTC)
                                .underline(true)

                        }
                        
                        
                        // spacer to align the text to the left
                        Spacer()
                    }
                }
                
                // login confirm button
                Button("LOGIN")   {
                    Task {
                        do {
                            try await SupabaseManager.shared.login(
                                email: email,
                                password: password
                            )
                            currentScreen = .profile
                        } catch {
                            print("Error logging in: \(error.localizedDescription)")
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
    loginView(currentScreen: .constant(.login))
}
        
