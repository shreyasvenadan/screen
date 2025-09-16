//
//  rootView.swift
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
struct rootView: View {
    
    @State var currentScreen: CurrentScreen = .onboarding

    var body: some View {
        Group {
            
            switch currentScreen{
            
            case .signup:
                signupView(currentScreen: $currentScreen)
                
            case .login:
                loginView()
                
            case .onboarding:
                onBoardingView(currentScreen: $currentScreen)
                
            }
        }
    }
}
