//
//  Hike.swift
//  Hiking
//
//  Created by Diego Jurfest Ceccon on 03/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import Foundation

struct Hike {
    let name: String
    let imageUrl: String
    let miles: Double
}

extension Hike {
    static func all() -> [Hike] {
        return [
            Hike(name: "Salmonberry trail", imageUrl: "sal", miles: 6),
            Hike(name: "Tom, Dich and Harry Mountain", imageUrl: "tom", miles: 5.8),
            Hike(name: "Tamanawas Falls", imageUrl: "tam", miles: 5)
        ]
    }
}
