//
//  Basic.swift
//  PhaseAnimations
//
//  Created by Ramill Ibragimov on 9/30/23.
//

import SwiftUI

struct Basic: View {
    @State private var isDone = false
    
    var body: some View {
        NavigationStack {
            Form {
                Section("Animation wit Completion") {
                    Text("iOS 17 Completion Block")
                    Image(systemName: isDone ? "checkmark.square" : "square")
                        .font(.system(size: 60))
                        .centered()
                        .onTapGesture {
                            isDone.toggle()
                        }
                }
                Section("Basic Phase Animation") {
                    Text("No action taken by user - Continuous")
                        .font(.caption)
                    HStack {
                        Image(systemName: "hand.thumbs.fill")
                            .font(.system(size: 60))
                        Text("Hello World")
                            .bold()
                            .padding()
                            .foregroundStyle(.red)
                            .border(.red)
                    }
                }
            }
        }
    }
}

#Preview {
    Basic()
}
