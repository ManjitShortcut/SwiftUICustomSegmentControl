//
//  CustomSegmentControl.swift
//  CustomNavBar_SegmentContol
//
//  Created by Manjit on 27/05/2020.
//  Copyright © 2020 SegmentContol. All rights reserved.
//

import SwiftUI

struct CustomSegmentControl: View {
    @Binding var selectedIndex: Int
    @Binding var xOffSet: CGFloat

    var body: some View {
        HStack {
            Button(action: {
                self.selectedIndex =  0
                self.xOffSet = UIScreen.main.bounds.width
            }) {
                VStack {
                    Text("Message").foregroundColor(.white).fontWeight(self.selectedIndex  == 0  ? .bold :.none)
                    Capsule().fill(selectedIndex  == 0  ? Color.white: Color.clear).frame(height:4)
                }
            }
            Button(action: {
                self.selectedIndex =  1
                self.xOffSet = 0
            }) {
                VStack {
                    Text("call").foregroundColor(.white).fontWeight(self.selectedIndex  == 1  ? .bold :.none)
                    Capsule().fill(selectedIndex  == 1  ? Color.white: Color.clear).frame(height:4)
                }
            }
            Button(action: {
                self.selectedIndex =  2
                self.xOffSet = -(UIScreen.main.bounds.width)

            }) {
                VStack {
                    Text("Status").foregroundColor(.white).fontWeight(self.selectedIndex  == 2  ? .bold :.none)
                    Capsule().fill(selectedIndex  == 2  ? Color.white: Color.clear).frame(height:4)
                }
            }
        }.padding(10)
    }
}

//struct CustomSegmentControl_Previews: PreviewProvider {
//    @State var seletecdIndex = 0
//    static var previews: some View {
//        CustomSegmentControl($seletecdIndex)
//    }
//}

struct CustomSegmentControl_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
