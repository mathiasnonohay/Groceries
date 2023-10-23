//
//  MainViewModel.swift
//  Groceries
//
//  Created by Mathias Nonohay on 23/10/2023.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPassword: Bool = false
}


