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
    var url: String = "https://intra.42.fr"
    @State var selected = "42Intra"
    @Namespace var animation
    
    var body: some View {
        
        HStack {
            HStack(spacing: 0) {
                VStack {
                    Group {
                        HStack {
                            Image("42flip_01")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 40, height: 40)
                            Text("Run Pack")
                                .fontWeight(.bold)
                                .offset(x: -8)
                            Spacer(minLength: 0)
                        }
                        .padding(.top, 5)
                        .padding(.leading)
                        
                        MenuButtons(title: "42Intra", animation: animation, selected: $selected)
                        MenuButtons(title: "Jiphhyeonjeon", animation: animation, selected: $selected)
                        MenuButtons(title: "24Hane", animation: animation, selected: $selected)
                        MenuButtons(title: "80000Coding", animation: animation, selected: $selected)
                        Divider().offset(x: -2)
                        MenuButtons(title: "About", animation: animation, selected: $selected)
                        MenuButtons(title: "Quit", animation: animation, selected: $selected)
                    }

                    Spacer(minLength: 0)
                                        
                    HStack(spacing: 10) {
                        Image("cat_page1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .clipShape(Circle())
                            .offset(x: -15)
                        VStack(alignment: .leading) {
                            Text("junyoo")
                                .font(.caption)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .offset(x: -15)
                            Text("c1r1s1")
                                .font(.caption2)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                .offset(x: -15)
                        }
                    }
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color.white.opacity(0.5))
                        .frame(width: 130, height: 40)
                    )
                    .padding(.bottom, 15)

                }

                Divider()
                    .offset(x: -2)
            }
            .frame(width: 160)
            
            Spacer()
            
            BrowserView(url: url)
        }

        .background(Color.white.opacity(0))
        .frame(width: window!.width / 2, height: window!.height / 2)
    }

    
}

struct WindowView_Previews: PreviewProvider {
    static var previews: some View {
        WindowView()
    }
}
