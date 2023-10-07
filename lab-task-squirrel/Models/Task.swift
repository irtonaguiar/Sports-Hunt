//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Take a selfie at your favorite Stadium 🏟",
                 description: "Time to capture a stadium-sized selfie at your favorite sports arena. Say cheese and let the games begin!"),
            Task(title: "Buy a beverage at a local Sports Bar 🍺",
                 description: "TIme to score some refreshment points at your local Sports Bar. Head there and find your favorite beverage."),
            Task(title: "Meet a famous Sports Athlete ⭐",
                 description: "Get read for a legenderay meet-and-greet adventure as you aim to high-five your favorite sports superstar!"),
            Task(title: "Find a sports mural 🖼️",
                 description: "Score a goal by snapping a pic at your favorite sports mural, and let the world see your champion-level photography skills!"),
            Task(title: "Attend watch party event 🎉",
                 description: "Join the ultimate fan gathering, cheer on your team, and soak in the electrifying moment with your friends.")
        ]
    }
}
