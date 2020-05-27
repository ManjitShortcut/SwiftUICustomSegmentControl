//
//  ChatView.swift
//  CustomNavBar_SegmentContol
//
//  Created by Manjit on 27/05/2020.
//  Copyright © 2020 SegmentContol. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
          GeometryReader {_ in
                  VStack {
                       Text("Hello, Chat view!")
            }.background(Color.yellow)
              }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
