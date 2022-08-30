//
//  WorldMapView.swift
//  Forex World Clock
//
//  Created by Salty Dog on 8/27/22.
//

import Foundation
import UIKit

class WorldMapView: UIView {
    var timer = Timer()
    
    var localTimeZoneAbbreviation: String { return TimeZone.current.abbreviation() ?? "" }//
    let currentTime = Date()
    let formatter = DateFormatter()
    
    var timeStringConversion = Int(0)
    
    let reportTitle = UITextField()
    let newYorkTime = UILabel()
    let londonTime = UILabel()
    let frankfurtTime = UILabel()
    let sydneyTime = UILabel()
    let tokyoTime = UILabel()
    let yourTime = UILabel()
    
    let titleFont = UIFont(name: "Helvetica Neue", size: 28)
    let bodyFont = UIFont(name: "Helvetica Neue", size: 23)
    let localTimeFont = UIFont(name: "Helvetica Neue", size: 25)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            let date = Date()
            
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "h:mm a"
            
            let currentTime = dateFormatter.string(from: date)
            let seconds = TimeZone.current.secondsFromGMT()
            let hours = seconds/3600
            let minutes = abs(seconds/60) % 60
            
            let tz = String(format: "%+.2d:%.2d", hours, minutes)
            
            print(seconds)
            print(seconds/60)
            print(tz)

            self.localTimeZoneAdjuster()//===============================
            
            self.newYorkTime.text = "New York: " + currentTime
            self.londonTime.text = "London: " + currentTime
            self.frankfurtTime.text = "Frankfurt: " + currentTime
            self.sydneyTime.text = "Sydney: " + currentTime
            self.tokyoTime.text = "Tokyo: " + currentTime
            self.yourTime.text = "Local time: " + currentTime
        }
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 240, height: 255)
    }
}

extension WorldMapView {
    
    func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .blue
        
        reportTitle.translatesAutoresizingMaskIntoConstraints = false
        reportTitle.text = "World Markets"
        reportTitle.textColor = UIColor.lightGray
        reportTitle.font = titleFont

        newYorkTime.translatesAutoresizingMaskIntoConstraints = false
        newYorkTime.textColor = UIColor.lightGray
        newYorkTime.font = bodyFont

        londonTime.translatesAutoresizingMaskIntoConstraints = false
        londonTime.textColor = UIColor.lightGray
        londonTime.font = bodyFont

        frankfurtTime.translatesAutoresizingMaskIntoConstraints = false
        frankfurtTime.textColor = UIColor.lightGray
        frankfurtTime.font = bodyFont

        sydneyTime.translatesAutoresizingMaskIntoConstraints = false
        sydneyTime.textColor = UIColor.lightGray
        sydneyTime.font = bodyFont

        tokyoTime.translatesAutoresizingMaskIntoConstraints = false
        tokyoTime.textColor = UIColor.lightGray
        tokyoTime.font = bodyFont
        
        yourTime.translatesAutoresizingMaskIntoConstraints = false
        yourTime.textColor = UIColor.lightGray
        yourTime.font = localTimeFont
    }
    
    func layout() {
        addSubview(reportTitle)
        addSubview(newYorkTime)
        addSubview(londonTime)
        addSubview(frankfurtTime)
        addSubview(sydneyTime)
        addSubview(tokyoTime)
        addSubview(yourTime)
        
        NSLayoutConstraint.activate([
            reportTitle.centerXAnchor.constraint(equalTo: centerXAnchor),
            reportTitle.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 38),
            newYorkTime.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            newYorkTime.topAnchor.constraint(equalToSystemSpacingBelow: reportTitle.bottomAnchor, multiplier: 4),
            londonTime.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            londonTime.topAnchor.constraint(equalToSystemSpacingBelow: newYorkTime.bottomAnchor, multiplier: 1),
            frankfurtTime.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            frankfurtTime.topAnchor.constraint(equalToSystemSpacingBelow: londonTime.bottomAnchor, multiplier: 1),
            sydneyTime.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            sydneyTime.topAnchor.constraint(equalToSystemSpacingBelow: frankfurtTime.bottomAnchor, multiplier: 1),
            tokyoTime.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            tokyoTime.topAnchor.constraint(equalToSystemSpacingBelow: sydneyTime.bottomAnchor, multiplier: 1),
            yourTime.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 2),
            yourTime.topAnchor.constraint(equalToSystemSpacingBelow: tokyoTime.bottomAnchor, multiplier: 4)
        ])
    }
    
    func localTimeZoneAdjuster() {
        //print(localTimeZoneAbbreviation.secondsFromGMT())
    }
    
}
