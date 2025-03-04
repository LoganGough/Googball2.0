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
    let cam = SKCameraNode()
    var level1Complete = true
    var level2Complete = false
    var level3Complete = false
    var level = 1
    
    
    
    
    override func didMove(to view: SKView) {
        self.camera = cam
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        
        physicsWorld.contactDelegate = self
    
    }
    override func update(_ currentTime: TimeInterval) {
        ball.physicsBody?.velocity.dy = 200
        
        
        if(level == 1 && level1Complete == false){
            level1()
            level1Complete = true
        }
        if(level == 2 && level2Complete == false){
            level2()
            level2Complete = true
        }
        if(level == 3 && level3Complete == false){
            level3()
            level3Complete = true
        }
        
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        level += 1
    }
    
    
    func rightFunc(){
        ball.position = CGPoint(x: ball.position.x + 30, y: ball.position.y)
    }
    func leftFunc(){
        ball.position = CGPoint(x: ball.position.x - 30, y: ball.position.y)
    }
    
    
    
    func level1(){
        ball.position = CGPoint(x: 1440, y: -640)
        cam.position = CGPoint(x: 1440, y: -80)
    }
    func level2(){
        ball.position = CGPoint(x: 3200, y: -640)
        cam.position = CGPoint(x: 3200, y: -80)
    }
    func level3(){
        ball.position = CGPoint(x: 4880, y: -720)
        cam.position = CGPoint(x: 4880, y: -80)
    }
    func startFunc(){
        cam.position = CGPoint(x: 1440, y: -80)
        ball.position = CGPoint(x: 1440, y: -640)
    }
}
