//
//  UniversalLinkLaunchView.swift
//  universalLinkDemo
//
//  Created by Itsuki on 2024/06/16.
//


import SwiftUI

struct IndexView: View {
    var body: some View {
        (Text("Index View! ") + Text(Image(systemName: "fireworks")))
            .font(.system(size: 24))
            .foregroundStyle(.white)
            .multilineTextAlignment(.center)
            .lineSpacing(10)
            .padding()
            .background(RoundedRectangle(cornerRadius: 16).fill(.black))
            .padding(.all, 30)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(.gray.opacity(0.3))
    }
}


#Preview {
    IndexView()
}
