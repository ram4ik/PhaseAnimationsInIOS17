//
//  Basic.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

struct Basic: View {
    @State private var isDone = false
    @State private var scaleIt = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Animation wit Completion") {
                    Text("iOS 17 Completion Block")
                    Image(systemName: isDone ? "checkmark.square" : "square")
                        .font(.system(size: 60))
                        .scaleEffect(scaleIt ? 1.25 : 1)
                        .centered()
                        .onTapGesture {
                            withAnimation(.easeInOut(duration: 0.25)) {
                                isDone.toggle()
                                scaleIt.toggle()
                            } completion: {
                                withAnimation(.easeInOut(duration: 0.25)) {
                                    scaleIt.toggle()
                                }
                            }
                        }
                }
                Section("Basic Phase Animation") {
                    Text("No action taken by user - Continuous")
                        .font(.caption)
                    HStack {
                        Image(systemName: "hand.thumbsup.fill")
                            .font(.system(size: 60))
                            .phaseAnimator([true, false]) { content, phase in
                                content
                                    .scaleEffect(phase ? 0.5 : 1)
                                    .rotationEffect(.degrees(phase ? 0 : -180))
                            } animation: { _ in
                                    .easeInOut(duration: 0.75)
                            }
                        Text("Hello World")
                            .bold()
                            .padding()
                            .phaseAnimator([1, 2, 3]) { content, phase in
                                content
                                    .foregroundStyle((phase == 1) ? .red : (phase == 2) ? .blue : .green)
                                    .border((phase == 1) ? .red : (phase == 2) ? .blue : .green)
                                    .scaleEffect((phase == 3) ? 1.2 : 1)
                            } animation: { phase in
                                switch phase {
                                    case 1, 2: .smooth(duration: 0.5)
                                    default: .smooth(duration: 1.0)
                                }
                            }
                    }
                }
            }
        }
    }
}

#Preview {
    Basic()
}
