//
//  ItemsView.swift
//  NFCTagReader
//
//  Created by Itsuki on 2024/06/20.
//

import SwiftUI

struct ItemsView: View {
    var itemsId: Int?
    
    var body: some View {
        VStack(spacing: 40) {
            (Text("Items View! ") + Text(Image(systemName: "fireworks")))
                .font(.system(size: 24))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
                .lineSpacing(10)
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 16).fill(.black))
            
            if let itemsId = itemsId {
                Text("ID: \(itemsId)")
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .lineSpacing(10)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 16).fill(.black))
            }

        }
        .fixedSize()
        .padding(.all, 30)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(.gray.opacity(0.3))
    }
}


#Preview {
    ItemsView(itemsId: 1)
}
