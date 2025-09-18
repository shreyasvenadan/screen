//
//  profileView.swift
//  screen
//
//  Created by Shreyas Venadan on 17/9/2025.
//

import SwiftUI

struct profileView: View {
    
    @Binding var currentScreen: CurrentScreen
    
    @State private var name: String = ""
    @State private var email: String = ""
    
    var body: some View {
        
        
        VStack{
            Text(name)
            Text(email)
        }
        .task {
            await loadProfile()
        }
        
    }
    
    
    private func loadProfile() async {
        
        do {
            
            // get current user
            if let user = SupabaseManager.shared.client.auth.currentUser {
                email = user.email ?? ""
                
                // fetch profile row
                let profile: Profile = try await SupabaseManager.shared.client.database
                    .from("profiles")
                    .select("name")
                    .eq("id", value: user.id.uuidString)
                    .single()
                    .execute()
                    .value
                
                name = profile.name
                
                
            }
        } catch {
            print("failed to load profile: \(error.localizedDescription)")
        }
        
    }
    
}

struct Profile: Decodable {
    let name: String
}

#Preview {
    profileView(currentScreen: .constant(.profile))
}
