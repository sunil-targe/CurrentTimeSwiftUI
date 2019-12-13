//
//  ContentView.swift
//  CurrentTimeSwiftUI
//
//  Created by Sunil Targe on 2019/12/13.
//  Copyright © 2019 suniltarge.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var currentTime = getCurrentTime()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        Text(currentTime)
        .font(.system(.largeTitle))
        .foregroundColor(.gray)
        .onReceive(timer) { _ in
            self.currentTime = getCurrentTime()
        }
    }
}

func getCurrentTime() -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "h:mm:ss a"
    let dateString = formatter.string(from: Date())
    return dateString
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
