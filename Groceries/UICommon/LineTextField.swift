//
//  LineTextField.swift
//  Groceries
//
//  Created by Mathias Nonohay on 23/10/2023.
//

import SwiftUI

struct LineTextField: View {
    
    @Binding var text: String
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"
    @State var keyboardType: UIKeyboardType = .default

    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            

            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .frame(height: 40)
            
            Divider()
        }
    }
}

struct LineSecureField: View {
    
    @Binding var text: String
    @Binding var isShowPassword: Bool
    @State var title: String = "Title"
    @State var placeholder: String = "Placeholder"

    
    var body: some View {
        VStack {
            Text(title)
                .font(.customfont(.semibold, fontSize: 16))
                .foregroundColor(.textTitle)
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
            
            if isShowPassword {
                TextField(placeholder, text: $text)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .frame(height:40)
                
            } else {
                SecureField(placeholder, text: $text)
                    .modifier(ShowButton(isShow: $isShowPassword))
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .frame(height:40)
            }
            
            Divider()
        }
    }
}

struct LineTextField_Previews: PreviewProvider {
    @State static var text: String = ""
    
    static var previews: some View {
        LineTextField(text: $text)
            .padding(20)
    }
}
