//
//  PhaseWithTriggerView.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

enum PhaseState: Int, CaseIterable {
    case first, second, third, fourth
    
    var color: Color {
        switch self {
            case .first: .yellow
            case .second: .orange
            default: .red
        }
    }
    
    var rotation: Double {
        -1 * Double(self.rawValue * 90)
    }
    
    var scale: Double {
        Double(self.rawValue + 1)
    }
}

struct PhaseWithTriggerView: View {
    @State private var start = false
    
    var body: some View {
        NavigationStack {
            Image(systemName: "star")
                .font(.system(size: 40))
                .phaseAnimator(PhaseState.allCases, trigger: start) { content, phase in
                    content
                        .foregroundStyle(phase.color)
                        .scaleEffect(phase.scale)
                        .rotationEffect(.degrees(phase.rotation))
                } animation: { _ in
                        .bouncy(duration: 1.0)
                }
                .navigationTitle("Phase Trigger")
                .onTapGesture {
                    start.toggle()
                }
        }
    }
}

#Preview {
    PhaseWithTriggerView()
}
