//
//  ContentView.swift
//  Study-CalendarNavigation
//
//  Created by David Malicke on 6/3/22.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        NavigationView {
            VStack {
                HStack(alignment: .center) {
                    Text("S")
                    Text("M")
                    Text("T")
                    Text("W")
                    Text("T")
                    Text("F")
                    Text("S")
                }
                HStack(alignment:.center, spacing: 10) {
                    Text("1")
                    Text("2")
                    Text("3")
                    Text("4")
                    Text("5")
                    Text("6")
                    Text("7")
                }
                Text("Saturday June 3, 2022")
                Divider()
                
                Spacer()
                
            }
        }
    }
}

struct DayView: View {
    
    var body: some View {
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
