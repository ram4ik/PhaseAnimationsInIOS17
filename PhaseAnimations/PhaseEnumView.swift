//
//  PhaseEnumView.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

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
