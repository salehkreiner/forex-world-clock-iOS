//
//  TimeCalculator.swift
//  Forex World Clock
//
//  Created by Salty Dog on 8/28/22.
//
/*
import Foundation
import UIKit

var localTimeZoneAbbreviation: String { return TimeZone.current.abbreviation() ?? "" }
var date = Date()
var calendar = Calendar.current
var hour = calendar.component(. hour, from: date)
var minutes = calendar.component(. minute, from: date)

var timeStringConversion = Int(0)


class TimeCalculator {
    var hourString = String(hour)
    var minutesString = String(minutes)
    var ampm = String("")
    
    init(frame: CGRect) {
        
        style()
        layout()
    }
    
    func time24to12() {
        if (hour > 12) {
            timeStringConversion = Int(hourString)!
            self.ampm="pm"
            hourString = String(timeStringConversion)
        } else {
            ampm="am"
        }
    }
}
*/
