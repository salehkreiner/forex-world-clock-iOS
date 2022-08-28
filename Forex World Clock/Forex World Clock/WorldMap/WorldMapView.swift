//
//  WorldMapView.swift
//  Forex World Clock
//
//  Created by Salty Dog on 8/27/22.
//

import Foundation
import UIKit

class WorldMapView: UIView {
    
    let reportTitle = UITextField()
    let newYorkTime = UITextField()
    let londonTime = UITextField()
    let frankfurtTime = UITextField()
    let sydneyTime = UITextField()
    let tokyoTime = UITextField()
    let yourTime = UITextField()
    
    let titleFont = UIFont(name: "Helvetica Neue", size: 28)
    let bodyFont = UIFont(name: "Helvetica Neue", size: 23)
    let localTimeFont = UIFont(name: "Helvetica Neue", size: 25)
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 255)
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
        newYorkTime.text = "New York: 3:00a.m."
        newYorkTime.textColor = UIColor.lightGray
        newYorkTime.font = bodyFont

        
        londonTime.translatesAutoresizingMaskIntoConstraints = false
        londonTime.text = "London: 8:00a.m."
        londonTime.textColor = UIColor.lightGray
        londonTime.font = bodyFont

        
        frankfurtTime.translatesAutoresizingMaskIntoConstraints = false
        frankfurtTime.text = "Frankfurt: 9:00a.m."
        frankfurtTime.textColor = UIColor.lightGray
        frankfurtTime.font = bodyFont

        
        sydneyTime.translatesAutoresizingMaskIntoConstraints = false
        sydneyTime.text = "Sydney: 3:00p.m."
        sydneyTime.textColor = UIColor.lightGray
        sydneyTime.font = bodyFont

        
        tokyoTime.translatesAutoresizingMaskIntoConstraints = false
        tokyoTime.text = "Tokyo: 4:00p.m."
        tokyoTime.textColor = UIColor.lightGray
        tokyoTime.font = bodyFont
        
        yourTime.translatesAutoresizingMaskIntoConstraints = false
        yourTime.text = "Local Time: 12:00a.m."
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
}
