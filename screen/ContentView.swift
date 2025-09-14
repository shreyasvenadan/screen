//
//  ContentView.swift
//  screen
//
//  Created by Shreyas Venadan on 14/9/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.backgroundC
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                Text("SCREEN")
                    .foregroundColor(.primaryTC)
//                    .font(.custom("Montserrat", size: 25))
//                    .tracking(5)
                
                Text("maybe if you weren't so addicted, you wouldn't need this app")
                    .foregroundColor(.secondaryTC)

                
                Text("GET STARTED")
                    .foregroundColor(.primaryTC)

            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
