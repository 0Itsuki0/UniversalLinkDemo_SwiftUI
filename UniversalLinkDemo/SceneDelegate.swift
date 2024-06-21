//
//  SceneDelegate.swift
//  universalLinkDemo
//
//  Created by Itsuki on 2024/06/16.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate, ObservableObject {
    @Published var route: UniversalLinkManager.Route = .index

    func scene(_ scene: UIScene, willConnectTo
               session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        
        print("connectionOptions.userActivities: \(connectionOptions.userActivities)")
        guard let userActivity = connectionOptions.userActivities.first,
            userActivity.activityType == NSUserActivityTypeBrowsingWeb,
            let incomingURL = userActivity.webpageURL else {
            return
        }
        
        DispatchQueue.main.async {
            self.route = UniversalLinkManager.handleUniversalLink(url: incomingURL)
        }
    }
    
    func onContinueBrowsingWebUserActivity(url: URL) {
        DispatchQueue.main.async {
            self.route = UniversalLinkManager.handleUniversalLink(url: url)
        }

    }

}
