//
//  NavigationBar.swift
//  CustomNavBar_SegmentContol
//
//  Created by Manjit on 27/05/2020.
//  Copyright © 2020 SegmentContol. All rights reserved.
//

import SwiftUI

struct NavigationBar: View {
    @State var seletectIndex: Int = 0
    @Binding var boolHideNavBar: Bool
    @Binding var xOffSet: CGFloat

    var body: some View {
        VStack(spacing: 0) {
            if boolHideNavBar == false {
                HStack {
                    Text("HeaderTitlt").font(.title).fontWeight(.bold).foregroundColor(Color.white)
                    Spacer(minLength: 0)
                    HStack(spacing: 15){
                        Button(action: {
                        }) {
                            Image(systemName: "magnifyingglass").resizable().frame(width: 18, height: 18).foregroundColor(Color.white)
                        }
                        Button(action: {
                                      }) {
                                        Image(systemName: "camera").resizable().frame(width: 18, height: 18).foregroundColor(Color.white)
                                      }
                    }
                    
                }

            }
            CustomSegmentControl(selectedIndex: $seletectIndex,xOffSet:$xOffSet)
        }.padding(.horizontal)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0+10).background(Color.green)
    }
}

//struct NavigationBar_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBar(seletectIndex: 1, boolHideNavBar: false)
//    }
//}
