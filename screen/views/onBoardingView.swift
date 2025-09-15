//
//  onBoarding.swift
//  screen
//
//  Created by Shreyas Venadan on 14/9/2025.
//

import SwiftUI

struct onBoardingView: View {
    var body: some View {
        ZStack {
            
            // Grey Background
            Color.backgroundC
                .ignoresSafeArea()
            
            VStack(spacing: 10) {
                
                // Tiktok asset
                ZStack() {
                    Image("clock")
                        .resizable()
                        .frame(width: 650, height: 650)
                    
                    Image("ellipse")
                        .resizable()
                        .frame(width: 700, height: 700)
                }
                
                // SCREEN
                Text("SCREEN")
                    .foregroundColor(.primaryTC)
                    .font(.custom("Montserrat", size: 25))
                    .fontWeight(.semibold)
                    .tracking(20)
                    .multilineTextAlignment(.center)
                
                //
                Text("maybe if you weren't so addicted, you wouldn't need this app")
                    .foregroundColor(.secondaryTC)
                    .font(.custom("Montserrat", size: 15))
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .frame(maxWidth: 280)
                    .fixedSize(horizontal: false, vertical: true)
                
                
                Spacer()
                Spacer()

                
                Text("GET STARTED")
                    .foregroundColor(.primaryTC)
                    .font(.custom("Montserrat", size: 15))
                    .fontWeight(.medium)
                    .tracking(5)
                    .multilineTextAlignment(.center)

            }
            .padding()
            .offset(y: -70)
        }
    }
}

#Preview {
    onBoardingView()
}

