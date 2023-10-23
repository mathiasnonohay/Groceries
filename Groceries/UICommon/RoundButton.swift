//
//  RoundButton.swift
//  Groceries
//
//  Created by Mathias Nonohay on 23/10/2023.
//

import SwiftUI

struct RoundButton: View {
    
    @State var title: String = "Title"
    var didTap: (() -> ())? /*Damn, this is weird to write like this*/
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text(title)
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0.0, maxWidth: .infinity, minHeight: 60.0, maxHeight: 60.0)
        .background(Color.primaryApp)
        .cornerRadius(20.0)
    }
}

#Preview {
    RoundButton()
}
