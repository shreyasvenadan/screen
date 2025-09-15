//
//  customTextField.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//


import SwiftUI


struct customTextField: View {
    
        var placeholder: String
        @Binding var text: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            
            Text(placeholder)
                .textStyle(size: 15, weight: .regular, color: .secondaryTC)
            
            TextField("", text: $text)
                .textStyle(size: 15, weight: .medium, color: .primaryTC)
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.primaryTC.opacity(0.7))
            
        }

    }
}


    
#Preview{
    ZStack {
        Color.black.ignoresSafeArea()
        customTextField(placeholder: "username", text: .constant("shreyasvenadan"))
            .padding()
    }

}
