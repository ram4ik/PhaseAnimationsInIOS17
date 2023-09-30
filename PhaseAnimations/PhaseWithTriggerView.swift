//
//  PhaseWithTriggerView.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

struct PhaseWithTriggerView: View {
    @State private var go = false
    
    var body: some View {
        NavigationStack {
            Image(systemName: "star")
                .font(.system(size: 40))
                .foregroundColor(.yellow)
                .navigationTitle("Phase Trigger")
        }
    }
}

#Preview {
    PhaseWithTriggerView()
}
