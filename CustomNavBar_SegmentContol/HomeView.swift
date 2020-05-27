//
//  HomeView.swift
//  CustomNavBar_SegmentContol
//
//  Created by Manjit on 27/05/2020.
//  Copyright © 2020 SegmentContol. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var isHideNavbar: Bool = false
    @State var xOffSet: CGFloat = UIScreen.main.bounds.width
    var body: some View {
        VStack{
            NavigationBar(boolHideNavBar: $isHideNavbar, xOffSet: $xOffSet)
            Spacer()
            ZStack{
                GeometryReader{ g in
                    HStack{
                        ListView(isShownNvbar: self.$isHideNavbar).frame(width:g.frame(in: .global).width)
                        ChatView().frame(width:g.frame(in: .global).width)
                        StatusView().frame(width:g.frame(in: .global).width)
                    }.offset(x: self.xOffSet)
                }
            }.highPriorityGesture(DragGesture().onEnded({ value in
                print("swipe right",value.translation.width)
                print("swipe right",value.location.x)
                if value.translation.width > 0 {
                    print("swipe left")
//                    print("self.selectedIndex", self.selectedIndex)
// do your operation
                } else {
                    print("swipe right")
//                    print("self.selectedIndex", self.selectedIndex)
                // do your opration
                }
                })).animation(.default)
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
