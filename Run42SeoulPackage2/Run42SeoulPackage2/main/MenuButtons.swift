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
    var animation: Namespace.ID
	let urlmodel = URLModel()
	@Binding var selected: String
	@Binding var url: String
    
	var body: some View {
		Button {
			withAnimation(.spring()) {
				selected = title
				url = urlmodel.URLdict[title] ?? "42Intra"
			}
		} label: {
			HStack {
				
				Text(title)
					.fontWeight(selected == title ? .bold : .none)
					.foregroundColor(selected == title ? Color.white : Color.white.opacity(0.5))
					.animation(.none)
				Spacer()
				ZStack {
					Capsule()
						.fill(Color.clear)
						.frame(width: 3, height: 18)
					if selected == title {
						Capsule()
							.fill(Color.white)
							.frame(width: 3, height: 18)
							.matchedGeometryEffect(id: "Tab", in: animation)
					}
				}
			}
			.padding(.leading)
		}
		.buttonStyle(PlainButtonStyle())
		
	}
//    func RedirectURL(url: String) { print("\(url)") }
//    func LogoList() { print("LogoList") }
//    func About42Pack() { print("About42Pack") }
	
}
