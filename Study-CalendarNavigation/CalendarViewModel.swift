//
//  CalendarViewModel.swift
//  Study-CalendarNavigation
//
//  Created by David Malicke on 6/4/22.
//

import Foundation

class CalendarViewModel: ObservableObject {
    
    @Published var dayDates: [Int] = []
    
    func getDays() {
        
        dayDates = dayData
    }
    
}
