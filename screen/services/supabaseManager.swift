//
//  supabaseManager.swift
//  screen
//
//  Created by Shreyas Venadan on 17/9/2025.
//

import Foundation
import Supabase

class SupabaseManager {
    static let shared = SupabaseManager()
    
    let client: SupabaseClient
    
    private init() {
        self.client = SupabaseClient(
            supabaseURL: URL(string: "https://wrbvlakshjlsohojzqbj.supabase.co")!,
            supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndyYnZsYWtzaGpsc29ob2p6cWJqIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTgwODc5MzIsImV4cCI6MjA3MzY2MzkzMn0.EsbudQh2mBleuBnyFnQ7Ti3_pbWEDoy9kPh8oaUAbsc"
        )
    }
    
    
    
    // MARK: Sign Up
    func signUp(email: String, password: String, name: String) async throws {
        let response = try await client.auth.signUp(
            email: email,
            password: password,
        )
        
        
        let user = response.user
        

        // Store profile data
        try await client.database
            .from("profiles")
            .update([
//                "id": user.id.uuidString,
                "name": name,
            ])
            .eq("id", value: user.id.uuidString)
            .execute()
        }
        
    
    
    
    // MARK: Login
    func login(email: String, password: String) async throws {
        _ = try await client.auth.signIn(
            email: email,
            password: password
        )
    }

}
