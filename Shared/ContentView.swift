//
//  ContentView.swift
//  Shared
//
//  Created by TK on 2021/2/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            contentView
                .navigationBarTitleDisplayMode(.inline)
                .navigationTitle(Constant.Text.NavigationTitle)
        }
    }
}

// MARK: - Private helpers

extension ContentView {
    private var contentView: some View {
        VStack(alignment: .leading) {
            headerView
            listView
        }.padding()
    }
    
    private var listView: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                // TODO: Replace dummy models here.
                ForEach(0..<10) { _ in
                    NavigationLink(
                        destination:
                            LazyView(Text("Destination")),
                        label: {
                            MeetupEventCell()
                        })
                }
            }
        }
    }
    
    private var headerView: some View {
        Text(Constant.Text.HeaderTitle)
            .uiFont(Constant.Font.HeaderView)
    }
}

// MARK: - Constant

extension ContentView {
    private enum Constant {
        enum Font {
            static let HeaderView: UIFont = .itHeader
        }
        
        enum Text {
            static let NavigationTitle = "近期活動"
            static let HeaderTitle = "活動紀錄"
        }
    }
}

// MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
