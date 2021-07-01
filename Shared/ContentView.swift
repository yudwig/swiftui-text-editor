//
//  ContentView.swift
//  
//  
//  Created by yudwig on 2021/07/01
//  
//

import SwiftUI

struct ContentView: View {
    
    @State private var text: String = "place holder."
    
    var body: some View {
        HStack(content: {
            setting
            editor
        })
        .padding()
    }
    
    var setting: some View {
        return Text("settings")
    }
    
    var editor: some View {
        return TextEditor(text: $text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
