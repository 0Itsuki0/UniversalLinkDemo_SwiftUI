//
//  ContentView.swift
//  universalLinkDemo
//
//  Created by Itsuki on 2024/06/18.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var sceneDelegate: SceneDelegate

    var body: some View {
        ZStack {
            if case let .items(id) = sceneDelegate.route {
                ItemsView(itemsId: id)
            } else {
                IndexView()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(.gray.opacity(0.3))
        .onOpenURL(perform: { (universalLink: URL) in
            sceneDelegate.onContinueBrowsingWebUserActivity(url: universalLink)
        })

    }
}
