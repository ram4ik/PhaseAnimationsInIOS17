//
//  CenteredViewModifier.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

struct Centered: ViewModifier {
    var height: CGFloat
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
        .frame(height: height)
    }
}

extension View {
    func centered(_ height: CGFloat = 100) -> some View {
        modifier(Centered(height: height))
    }
}
