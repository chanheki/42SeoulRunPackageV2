//
//  WindowView.swift
//  Run42SeoulPackage2
//
//  Created by 유정현 on 2023/02/22.
//  Copyright © 2023 Run42. All rights reserved.
//

import SwiftUI

struct WindowView: View {
    
    var window = NSScreen.main?.visibleFrame
    
    var body: some View {
        
        HStack {
            HStack(spacing: 0) {
                VStack {
                    HStack {
                        Image(systemName: "42.circle")
                        Text("Run Pack")
                        Spacer(minLength: 0)
                    }
                    .padding(.top)
                    .padding(.leading)
                    
                    MenuButtons(title: "42 Intra")
                    MenuButtons(title: "Jiphhyeonjeon")
                    MenuButtons(title: "24Hane")
                    MenuButtons(title: "80000Coding")
                    Divider()
                    MenuButtons(title: "About")
                    MenuButtons(title: "Quit")
                 
                    Spacer(minLength: 0)

                    HStack(spacing: 10) {
                        RoundedRectangle(cornerRadius: 15)
                            .frame(width: 130, height: 40)
                    }.padding(.bottom, 10)
                }
                Divider()
            }
            .frame(width: 150)
            Spacer()
            RoundedRectangle(cornerRadius: 15)
                .frame(width: window!.width / 1.75, height: window!.height / 1.55)
        }

        .background(Color.black.opacity(0.5))
        .frame(width: window!.width / 1.5, height: window!.height / 1.5)
    }

    
}

struct WindowView_Previews: PreviewProvider {
    static var previews: some View {
        WindowView()
    }
}
