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
    @State private var color: Color
    @State private var fontSize = 15.0
    @State private var isEditingFontSize: Bool = false
    
    init() {
        color = Color(red: 0, green: 0, blue: 1.0)
    }
    
    var body: some View {
        VStack(content: {
            setting
            editor
        })
        .padding()
    }
    
    var setting: some View {
        VStack(content: {
            Text("settings").multilineTextAlignment(.leading)
            ColorPicker("Foreground color", selection: $color)
            Text("Font size")
            Slider(
                value: $fontSize,
                in: 5...50,
                step: 5,
                onEditingChanged: { editing in
                    isEditingFontSize = editing
                }
           )
        })
    }
    
    var editor: some View {
        return TextEditor(text: $text)
            .foregroundColor(color)
            .font(.custom("HelveticaNeue", size: CGFloat(fontSize)))

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.init()
        ContentView()
    }
}
