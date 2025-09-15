//
//  textStyling.swift
//  screen
//
//  Created by Shreyas Venadan on 15/9/2025.
//

import SwiftUI

extension View {
    public func textStyle(size: CGFloat, weight: Font.Weight, color: Color) -> some View {
        
        self.font(.custom("Montserrat", size: size))
            .fontWeight(weight)
            .foregroundColor(color)
        
        
    }
}
