//
//  ContentView.swift
//  activatemac
//
//  Created by Nick Lopez on 3/30/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Activate macOS")
                .foregroundColor(.white.opacity(0.36))
                .font(Font.custom("SegoeUI", size: 18.8))
            Text("Go to Settings to Activate macOS")
                .foregroundColor(.white.opacity(0.34))
                .font(.system(size: 13.5))
                
        }
        .frame(width: 374, height: 174)
    }
}

#Preview {
    ContentView()
}
