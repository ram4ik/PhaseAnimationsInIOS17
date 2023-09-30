//
//  PhaseEnumView.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

enum AnimationPhase: CaseIterable {
    case beginning, middle, end
    
    var opacity: Double {
        switch self {
            case .beginning: 1.0
            case .middle: 0.5
            case .end: 1.0
        }
    }
    
    var scale: Double {
        switch self {
            case .beginning, .end: 1.0
            case .middle: 0.5
        }
    }
    
    var animation: Animation {
        switch self {
            case .beginning, .end: .bouncy(duration: 0.5)
            case .middle: .easeInOut(duration: 1.0)
        }
    }
}

struct PhaseEnumView: View {
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Text("Example 1")
                        .font(.caption)
                    Image(systemName: "heart.fill")
                        .font(.system(size: 100))
                        .foregroundColor(.red)
                        .phaseAnimator(AnimationPhase.allCases) { content, phase in
                            content
                                .opacity(phase.opacity)
                                .scaleEffect(phase.scale)
                        } animation: { phase in
                            phase.animation
                        }
                        .centered(150)
                }
                Section {
                    Text("Example 2")
                        .font(.caption)
                    Image(systemName: "timelapse")
                        .foregroundStyle(.blue)
                        .frame(height: 100)
                        .centered()
                }
            }
            .navigationTitle("Animation Phases")
        }
    }
}

#Preview {
    PhaseEnumView()
}
