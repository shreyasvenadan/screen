//
//  signupView.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//

import SwiftUI

struct signupView: View {
    
    @State private var username = ""
    @State private var password = ""
    
    var currentScreen = RootView().$currentScreen
    
    var body: some View {
        
        NavigationStack {
            
            ZStack  {
                
                // grey background
                Color.backgroundC
                    .ignoresSafeArea()
                
                
                VStack(spacing: 80) {
                    
                    // login text
                    Text("SIGN UP")
                        .textStyle(size: 25, weight: .semibold, color: .primaryTC)
                        .tracking(20)
                        .multilineTextAlignment(.center)
                    
                    
                    // username/password + login vstack
                    VStack  {
                        
                        // username + password vstack
                        VStack(spacing: 30) {
                            
                            // username text field
                            customTextField(placeholder: "username", text: $username)
                            
                            // password text field
                            customTextField(placeholder: "password", text: $password)
                            
                        }
                        
                        // sign up redirecting
                        HStack {
                            Text("Already have an account?")
                                .textStyle(size: 15, weight: .regular, color: .secondaryTC)
                            
                            
                        
                            
                            Text("Login")
                                .textStyle(size: 15, weight: .medium, color: .primaryTC )
                                .underline(true)
                            
                            
                            
                            // spacer to align the text to the left
                            Spacer()
                        }
                    }
                    
                    // login confirm button
                    Text("SIGN UP")
                        .textStyle(size: 15, weight: .semibold, color: .primaryTC)
                        .tracking(5)
                        .multilineTextAlignment(.center)
                    
                    
                    
                }
                // to give padding on both sides
                .frame(maxWidth: 325)
                
                
            }
        }
        
    }
}

#Preview {
    signupView()
}
