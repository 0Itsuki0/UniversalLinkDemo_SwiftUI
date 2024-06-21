//
//  UniversalLinkManager.swift
//  NFCTagReader
//
//  Created by Itsuki on 2024/06/20.
//

import SwiftUI

class UniversalLinkManager {
    
    enum Route: Equatable {
        
        case index
        case items(_ id: Int?)
        
        var path: String {
            switch self {
            case .index:
                return "/index"
            case .items(id: _):
                return "/items"
            }
        }
        
        static func == (lhs: Route, rhs: Route) -> Bool{
            return lhs.path == rhs.path
        }
    }
    
    
    static func handleUniversalLink(url: URL) -> Route {
        guard let components = NSURLComponents(url: url, resolvingAgainstBaseURL: true), let path = components.path else {
            return .index
        }

        var itemsId: Int? = nil
        if let queryItems = components.queryItems, let id = queryItems.first(where: { $0.name == "id" })?.value, let idInt = Int(id) {
            itemsId = idInt
        }
        
        guard path == Route.items(itemsId).path else { return .index }
        
        if path == Route.items(itemsId).path {
            return .items(itemsId)
        } else {
            return .index
        }
    }
}
