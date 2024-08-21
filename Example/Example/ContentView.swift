//
//  ContentView.swift
//  Example
//
//  Created by B0276971 on 21/08/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = AbhiTheSaviour()
    
    var body: some View {
        VStack {
            Spacer()
            Text("🫵")
                .font(.largeTitle)
            Spacer()
            Text(viewModel.token)
                .font(.title)
            Spacer()
            Button("Set Push Token") {
                viewModel.setPushToken()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
