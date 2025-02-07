//
//  Mission.swift
//  Moonshot
//
//  Created by Ellie on 9/19/24.
//

import Foundation


struct Mission: Codable, Hashable, Identifiable {
    var displayName: String {
        "Apollo \(id)"
    }
    var image: String {
        "apollo\(id)"
    }
    var formattedLaunchDate: String {
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
    struct CrewRole: Codable, Hashable {
        let name: String
        let role: String
    }
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
}
