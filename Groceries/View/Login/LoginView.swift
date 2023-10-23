//
//  LoginView.swift
//  Groceries
//
//  Created by Mathias Nonohay on 23/10/2023.
//

import SwiftUI

struct LoginView: View {
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @StateObject var loginViewModel = MainViewModel.shared
//    @ObservedObject var loginViewModel = MainViewModel.shared;
    
    var body: some View {
        ZStack {
            Image("bottom_bg")
                .resizable()
                .scaledToFill()
                .frame(width: .screenWidth, height: .screenHeight)
            
            VStack {
                Image("color_logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .padding(.bottom, .screenWidth * 0.1)
                
                Text("Loging")
                    .font(.customfont(.semibold, fontSize: 26))
                    .foregroundColor(.primaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                
                Text("Enter your emails and password")
                    .font(.customfont(.semibold, fontSize: 16))
                    .foregroundColor(.secondaryText)
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    .padding(.bottom, .screenWidth * 0.1)
                
                LineTextField(text: $loginViewModel.txtEmail, title: "Email", placeholder: "Enter your email address", keyboardType: .emailAddress)
                    .padding(.bottom, .screenWidth * 0.07)
                
                LineSecureField(text: $loginViewModel.txtPassword, isShowPassword: $loginViewModel.isShowPassword, title: "Password", placeholder: "Enter your password")
                    .padding(.bottom, .screenWidth * 0.02)

                Button {
                    
                } label: {
                    Text("Forgot Password?")
                        .font(.customfont(.medium, fontSize: 14))
                        .foregroundColor(.primaryText)
                }
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.bottom, .screenWidth * 0.02)
                
                RoundButton(title: "login") {
                    
                }
                .padding(.bottom, .screenWidth * 0.07)
                
                HStack {
                    Text("Don't have an acccount?")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.primaryText)
                    
                    Text("Signup")
                        .font(.customfont(.semibold, fontSize: 14))
                        .foregroundColor(.primaryApp)
                }
                
                Spacer()
            }
            .padding(.top, .topInsets + 64)
            .padding(.horizontal, 20)
            .padding(.bottom, .bottomInsets)
            
            VStack {
                HStack {
                    Button {
                        mode.wrappedValue.dismiss()
                    } label: {
                        Image("back")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                    }
                    Spacer()
                }
                
                Spacer()
            }
            .padding(.top, .topInsets)
            .padding(.horizontal, 20)
        }
        .background(Color.white)
        .navigationTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

#Preview {
    LoginView()
}
