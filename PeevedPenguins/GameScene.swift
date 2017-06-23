//
//  GameScene.swift
//  PeevedPenguins
//
//  Created by Andrew Tsukuda on 6/22/17.
//  Copyright © 2017 Andrew Tsukuda. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    /* game object connections */
    var catapultArm: SKSpriteNode!
    
    override func didMove(to view: SKView) {
        /* Set Reference to catapult arm */
        catapultArm = childNode(withName: "catapultArm") as! SKSpriteNode
        
        // self.scaleMode = .aspectFit
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        // Uncomment to produce bomb
        // var i: Int = 0
        // while i < 100 {
        
        /* Create a penguin */
        let penguin = Penguin()
        
        // Add penguin to this scene
        addChild(penguin)
        
        /* Move Penguin to the catapult bucket area */
        penguin.position.x = catapultArm.position.x + 32
        penguin.position.y = catapultArm.position.y + 50
        
        /* Impulse Vector */
        let launchImpulse = CGVector(dx: 200, dy: 0)
            
        
        /* Apply impulse to penguin */
        penguin.physicsBody?.applyImpulse(launchImpulse)
        
        // i += 1
        //}
    }
    
    override func update(_ currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
        
    }
    
}

// Make a Class method to load levels
class func level(_ levelNumber: Int) -> GameScene? {
    guard let scene = GameScene(fileNamed: )
    
}








