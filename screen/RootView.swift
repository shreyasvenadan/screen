//
//  RootView.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//

import SwiftUI

enum CurrentScreen {
    case onboarding
    case signup
    case login
}
struct RootView: View {
    
    @State var currentScreen: CurrentScreen = .onboarding

    var body: some View {
        Group {
            
            switch currentScreen{
            
            case .signup:
                signupView()
                
            case .login:
                loginView()
                
            case .onboarding:
                onBoardingView(currentScreen: $currentScreen)
                
            }
        }
    }
}
