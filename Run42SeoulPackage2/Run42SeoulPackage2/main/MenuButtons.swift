//
//  MenuButtons.swift
//  Run42SeoulPackage2
//
//  Created by 유정현 on 2023/02/22.
//  Copyright © 2023 Run42. All rights reserved.
//

import SwiftUI

struct MenuButtons: View {
    
    var title: String
    var body: some View {
        
        Button {
            // buttonAction func
        } label: {
            HStack {
                Text(title)
            }
            .padding(.horizontal)
        }
        
    }
//    func RedirectURL(url: String) { print("\(url)") }
//    func LogoList() { print("LogoList") }
//    func About42Pack() { print("About42Pack") }
    
}
