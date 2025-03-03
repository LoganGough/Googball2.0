//
//  GameScene.swift
//  Googball2.0
//
//  Created by LOGAN GOUGH on 2/26/25.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var ball: SKSpriteNode!
    var background: SKSpriteNode!
    let cam = SKCameraNode()
    
    override func didMove(to view: SKView) {
        self.camera = cam
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        ball.physicsBody?.velocity.dy = 200
        
        physicsWorld.contactDelegate = self

        }
    override func update(_ currentTime: TimeInterval) {
        ball.physicsBody?.velocity.dy = 200

        
        
    }
    
    
}
