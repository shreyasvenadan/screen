//
//  onBoarding.swift
//  screen
//
//  Created by Shreyas Venadan on 14/9/2025.
//

import SwiftUI
import Lottie

struct onBoardingView: View {
    
    @Binding var currentScreen: CurrentScreen

    var body: some View {
        ZStack {
            
            // grey background
            Color.backgroundC
                .ignoresSafeArea()
            
            // assest and text vstack
            VStack(spacing: 15) {
                
                // clock-like asset
                ZStack() {
                    
                    // clock asset
                    LottieView(animation: .named("clock"))
                        .playing(loopMode: .loop)
                        .animationSpeed(0.25)
                        .frame(width: 650, height: 650)
                    
                    // grey glow ellipse
                    Image("ellipse")
                        .resizable()
                        .frame(width: 700, height: 700)
                }
                
                // text vstack
                VStack(spacing: 10)  {
                    
                    // screen title text
                    Text("SCREEN")
                        .textStyle(size: 25, weight: .semibold, color: .primaryTC)
                        .tracking(20)
                        .multilineTextAlignment(.center)
                    
                    // description
                    Text("maybe if you weren't so addicted, you wouldn't need this app")
                        .textStyle(size: 15, weight: .medium, color: .secondaryTC)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                        .frame(maxWidth: 280)
                        .fixedSize(horizontal: false, vertical: true)
                    
                }
                
                Spacer()

                // get started button
                Button(action:  {
                    currentScreen = .login
                })  {
                    Text("GET STARTED")
                        .textStyle(size: 15, weight: .semibold, color: .primaryTC)
                        .tracking(5)
                        .multilineTextAlignment(.center)
                }
                
                

            }
            .padding()
            
            // offset so the clock-like asset can go up
            .offset(y: -70)
        }
    }
}

#Preview {
    onBoardingView(currentScreen: .constant(.onboarding))
}

