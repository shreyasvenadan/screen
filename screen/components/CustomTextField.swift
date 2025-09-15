//
//  customTextField.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//


import SwiftUI


struct CustomTextField: View {
    
        var placeholder: String
        @Binding var text: String
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            Text(placeholder)
                .font(.custom("Montserrat", size: 15))
                .foregroundColor(.secondaryTC)
            
            TextField("", text: $text)
                .font(.custom("Montserrat", size: 15))
                .foregroundColor(.primaryTC)
                .textInputAutocapitalization(.none)
                .disableAutocorrection(true)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.white.opacity(0.7))
            
        }

    }
}


    
#Preview{
    ZStack {
        Color.black.ignoresSafeArea()
        CustomTextField(placeholder: "username", text: .constant("shreyasvenadan"))
            .padding()
    }

}
