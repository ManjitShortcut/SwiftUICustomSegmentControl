//
//  ListView.swift
//  CustomNavBar_SegmentContol
//
//  Created by Manjit on 27/05/2020.
//  Copyright © 2020 SegmentContol. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    @Binding var isShownNvbar:Bool
    let readerList = [
        ReaderPlatForm(readerPlatFormName: "iOS"),
        ReaderPlatForm(readerPlatFormName: "Andriod"),
        ReaderPlatForm(readerPlatFormName: "Windows"),
        ReaderPlatForm(readerPlatFormName: "AWS"),
        ReaderPlatForm(readerPlatFormName: "Azure"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),
        ReaderPlatForm(readerPlatFormName: "Google Could"),

    ]
    var body: some View {
            List(self.readerList) {list in
                if self.readerList.first == list {
                    ReaderTypeRow(name:list.readerPlatFormName).onAppear(){
//                        self.isShownNvbar = false

//                        withAnimation {
//                        }
                    }.onDisappear(){
//                        self.isShownNvbar = true

                        
                    }
                } else{
                      ReaderTypeRow(name:list.readerPlatFormName)
                }
        }
    }
}


import Foundation
struct ReaderPlatForm: Identifiable, Equatable {
    let platFromImage: String = ""
    let id = UUID()
    let readerPlatFormName: String
}

struct ReaderTypeRow: View {
    let name: String
    var body: some View {
        HStack {
            Text(name)
        }
    }
}
struct ReaderTypeRow_Previews: PreviewProvider {
    static var previews: some View {
        ReaderTypeRow(name: "test")
    }
}
