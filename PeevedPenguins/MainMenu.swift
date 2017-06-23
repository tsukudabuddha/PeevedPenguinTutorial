//
//  MainMenu.swift
//  PeevedPenguins
//
//  Created by Andrew Tsukuda on 6/23/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import SpriteKit

class MainMenu: SKScene {
    
    // UI connections
    var buttonPlay: MSButtonNode!
    
    override func didMove(to view: SKView) {
        /* Setup Scene here */
        
        /* Set UI connections */
        buttonPlay = self.childNode(withName: "buttonPlay") as! MSButtonNode
        
        buttonPlay.selectedHandler = {
            self.loadGame()
        }
    }
    
    func loadGame() {
        
        //print("Game Should Load")
        
        /* 1) Grab reference to our spriteKit view */
        guard let skView = self.view as SKView! else {
            print("Could not get SkView")
            return
        }
        
        /* 2) Load Game Scene */
        guard let scene = GameScene(fileNamed: "GameScene") else {
            print("Could not make GameScene, check the name is spelled correctly")
            return
        }
        
        /* 3) Ensure correct aspect mode */
        scene.scaleMode = .aspectFill
        
        /* Show Debug */
        skView.showsPhysics = true
        skView.showsDrawCount = true
        skView.showsFPS = true
        
        /* 4) Start game scene */
        skView.presentScene(scene)
    }
}
