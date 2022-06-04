//
//  ContentView.swift
//  Study-CalendarNavigation
//
//  Created by David Malicke on 6/3/22.
//

import SwiftUI

struct CalendarView: View {
    
    @StateObject var vm = CalendarViewModel()
    
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
                //FOR EACH GOES HERE, THEN WHEN CLICKED IT DISPLAYS THE ASSOCIATED DAYVIEW
                HStack(alignment:.center, spacing: 10) {
                    ForEach(vm.dayDates, id: \.self) { date in
                        Text("\(date)")
                    }
                }
                Divider()
                Spacer()
                
            }
            .onAppear {
                vm.getDays()
            }
        }
    }
}

struct DayView: View {
    
    var dayDate: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack{
                Spacer()
                Text("\(dayDate)")
                Spacer()
            }
            Text("9 AM")
            Rectangle()
                .frame(width: 300, height: 2, alignment: .center)
            Text("10 AM")
            Rectangle()
                .frame(width: 300, height: 2, alignment: .center)
            Text("11 AM")
            Rectangle()
                .frame(width: 300, height: 2, alignment: .center)
            Text("Noon")
            Rectangle()
                .frame(width: 300, height: 2, alignment: .center)
        }
        .padding(.leading)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
