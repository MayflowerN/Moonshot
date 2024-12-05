//
//  RectangleDividerView.swift
//  Moonshot
//
//  Created by Ellie on 9/22/24.
//

import SwiftUI

struct RectangleDividerView: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    RectangleDividerView()
}
