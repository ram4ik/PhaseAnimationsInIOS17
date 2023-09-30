//
//  ContentView.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Basic()
                .tabItem {
                    Label("Basics", systemImage: "1.circle.fill")
                }
            PhaseEnumView()
                .tabItem {
                    Label("Phase Enums", systemImage: "2.circle.fill")
                }
            PhaseWithTriggerView()
                .tabItem {
                    Label("Triggers", systemImage: "3.circle.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}
