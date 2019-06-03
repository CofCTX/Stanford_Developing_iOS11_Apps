//
//  DemoURL.swift
//  Cassini
//
//  Created by Rahimi, Meena Nichole (Student) on 5/28/19.
//  Copyright © 2019 Rahimi, Meena Nichole (Student). All rights reserved.
//

import Foundation

struct DemoURLs
{
    static let stanford = Bundle.main.url(forResource: "demo", withExtension: "jpg")
 //   static let stanford = URL(string: https://en.wikipedia.org/wiki/File:CoCharleston_seal.png)
    
    static var NASA: Dictionary<String,URL> = {
        let NASAURLStrings = [
            "Cassini" : "https://www.jpl.nasa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "https://www.nasa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "https://www.nasa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
