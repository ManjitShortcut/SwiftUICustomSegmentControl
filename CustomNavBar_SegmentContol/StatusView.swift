//
//  StatusView.swift
//  CustomNavBar_SegmentContol
//
//  Created by Manjit on 27/05/2020.
//  Copyright © 2020 SegmentContol. All rights reserved.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        GeometryReader {_ in
            VStack {
                 Text("Hello, status view!")
            }.background(Color.red)
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
