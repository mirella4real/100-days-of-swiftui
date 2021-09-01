//
//  ContentView.swift
//  WeSplit
//
//  Created by Mirella Batista on 8/27/21.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    
    //picker
    let students = ["Harry", "Hermoine", "Ron"]
    @State private var selectedStudent = 0
    
    var body: some View {
        NavigationView {
            
            Form {
                VStack {
                    Picker("Select your student", selection: $selectedStudent) {
                        ForEach(0 ..< students.count){
                            Text(self.students[$0])
                        }
                    }
                    Text("You chose: Student # \(students[selectedStudent])")
                }
                
                Section {
                    TextField("Enter your name", text: $name)
                    Text("My name is \(name)")
                }
                Section {
                    Button("Tap count: \(tapCount)"){
                        self.tapCount += 1
                    }
                }
                
                ForEach(0 ..< 12){ number in
                    Text("Row \(number)")
                }
                ForEach(0 ..< 13){
                    Text("Row \($0)")
                }
                
                Group {
                Text("Hello, group!")
                Text("Hello, world!")
                Text("Hello, world!")
                }
                Section {
                Text("Hello, section!")
                Text("Hello, world!")
                Text("Hello, world!")
                }
            }
            .navigationBarTitle("SwiftUI", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

/*
 Form
 
 Forms are scrolling lists of static controls, like text and images, but can include interactive controls like text fields, toggle switches, buttons and more
 
    Swift UI has a limit of 10 items added to a form
 
        Using a ForEach loop allows you to bypass the 10 limit
 
    Group:  More than ten items should be added inside a Group - does not create visible separation
 
    Section: section splits into visual groups
 
    Safe area: By default SwiftUI components are placed in the safe area
 
        scrolling froms need to stay in the safe area, so you need to put the form inside a NavigationView
 
 VIEWS are a FUNCTION OF THEIR STATE
 
    @State is designed for simple properties that are stored in one view. Apple recommends those props be private
 
    @State lets us modify view structs so the view can update according to program chantes
 
    two-way binding: $ bind a text field so it shows the value of the property, but alos bind it so that any changes to the text are updated in the property
 */
 
