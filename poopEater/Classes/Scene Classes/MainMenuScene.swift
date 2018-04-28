//
//  MainMenuScene.swift
//  poopEater
//
//  Created by Safeen Azad on 4/28/18.
//  Copyright © 2018 Safeen. All rights reserved.
//

import SpriteKit

class MainMenuScene: SKScene {

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)

            if atPoint(location).name == "Start" {

                if let scene = GameplayScene(fileNamed: "Gameplay") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill

                    // Present the scene
                    view!.presentScene(scene, transition: SKTransition.moveIn(with: .up , duration: TimeInterval(1)))
                }

            }
        }
    }

}
