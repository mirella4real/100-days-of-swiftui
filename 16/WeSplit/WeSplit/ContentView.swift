//
//  ContentView.swift
//  WeSplit
//
//  Created by Mirella Batista on 7/26/21.
//

import SwiftUI

struct ContentView: View {
   
   
    var body: some View {
        Text("Hello World")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


// option + cmd + p is the same as resume
// Swift has a dedicated view type called form. A Form is a scrolling list of static controls or it can include input controls.
// swift has a limitation of 10 child views inside a parent
// Can use Group {} to get past this limitation
// Or can use Section {}, but swift will chunk the sections by adding a space to visually split the groups

// Swift allows us to place anywhere in the scree, but it has a safe area

// cmd + r

// @State is a property wrapper that allows a workaround to fixed limitations of immutable structs
// Views are function of their state
// Two-way binding is marked with $

//ForEach is not affected by the 10 child limitation in views
