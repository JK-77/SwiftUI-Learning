//
//  ContentView.swift
//  GroupBox
//
//  Created by Jayesh Kriplani on 04/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.pink.gradient.opacity(0.8))
                .ignoresSafeArea()
            
            VStack(spacing: 40) {
                GroupBox {
                    GroupBox {
                        MusicPlayerView()
                    }
                } label: {
                    Label("Now Playing", systemImage: "music.note")
                        .foregroundStyle(.pink)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct MusicPlayerView: View {
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.secondary)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text("Cool Song Title")
                        .font(.headline.bold())
                    
                    Text("Artist Name")
                        .font(.footnote)
                        .foregroundStyle(.secondary)
                }
                Spacer()
            }
            .padding(.bottom, 8)
            
            ProgressView(value: 0.4, total: 1)
                .tint(.secondary)
                .padding(.bottom, 20)
            
            HStack(spacing: 30) {
                Image(systemName: "backward.fill")
                Image(systemName: "pause.fill")
                Image(systemName: "forward.fill")
            }
            .foregroundStyle(.secondary)
            .font(.title)
        }
    }
}
