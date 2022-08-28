//
//  ViewController.swift
//  Forex World Clock
//
//  Created by Salty Dog on 8/27/22.
//

import UIKit

class WorldMapViewController: UIViewController {
    
    let worldMapView = WorldMapView()

    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

extension WorldMapViewController {
    private func style() {
        worldMapView.translatesAutoresizingMaskIntoConstraints = false
    }
    private func layout() {
        view.addSubview(worldMapView)
        
        NSLayoutConstraint.activate([
            worldMapView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            worldMapView.topAnchor.constraint(equalToSystemSpacingBelow: view.topAnchor, multiplier: 7),
            worldMapView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: worldMapView.trailingAnchor, multiplier: 1)
            
        ])
    }
}
