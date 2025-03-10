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
    var level = 0
    var levelArray = [Levels]()
    var makeLevels = true
    var endlessWall1: SKSpriteNode!
    var endlessWall2: SKSpriteNode!
    var endlessWall3: SKSpriteNode!
    var endlessWall4: SKSpriteNode!
    var endlessWall5: SKSpriteNode!
    var endlessWall6: SKSpriteNode!
    var endlessWall7: SKSpriteNode!
    var endlessWall8: SKSpriteNode!
    var endlessWall9: SKSpriteNode!


    var level1 = Levels(level: 1, levelComplete: false, ballPositionx: 1440, ballPositiony: -640, camPositionx: 1440, camPositiony: -80)
    
    var level2 = Levels(level: 2, levelComplete: false, ballPositionx: 3200, ballPositiony: -640, camPositionx: 3200, camPositiony: -80)
    
    var level3 = Levels(level: 3, levelComplete: false, ballPositionx: 4880, ballPositiony: -720, camPositionx: 4880, camPositiony: -80)
    
    var level4 = Levels(level: 4, levelComplete: false, ballPositionx: 6560, ballPositiony: -640, camPositionx: 6560, camPositiony: -80)
    var endless = Levels(level: 0, levelComplete: false, ballPositionx: -3840, ballPositiony: -1120, camPositionx: -3840, camPositiony: -640)
    
    
    
    
    
    override func didMove(to view: SKView) {
        self.camera = cam
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        endlessWall1 = self.childNode(withName: "endlessWall1") as! SKSpriteNode
        physicsWorld.contactDelegate = self
    
    }
    override func update(_ currentTime: TimeInterval) {
        ball.physicsBody?.velocity.dy = 200
        
        if(level1.levelComplete == false && level == 1){
            ball.position = CGPoint(x: level1.ballPositionx, y: level1.ballPositiony)
            cam.position = CGPoint(x: level1.camPositionx, y: level1.camPositiony)
            level1.levelComplete = true
        }
        else if(level2.levelComplete == false && level == 2){
            ball.position = CGPoint(x: level2.ballPositionx, y: level2.ballPositiony)
            cam.position = CGPoint(x: level2.camPositionx, y: level2.camPositiony)
            level2.levelComplete = true
        }
        else if(level3.levelComplete == false && level == 3){
            ball.position = CGPoint(x: level3.ballPositionx, y: level3.ballPositiony)
            cam.position = CGPoint(x: level3.camPositionx, y: level3.camPositiony)
            level3.levelComplete = true
        }
        else if(level4.levelComplete == false && level == 4){
            ball.position = CGPoint(x: level4.ballPositionx, y: level4.ballPositiony)
            cam.position = CGPoint(x: level4.camPositionx, y: level4.camPositiony)
            level4.levelComplete = true
        }
        
        
        
       
        
        
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        level += 1
    }
    
    
    func rightFunc(){
        ball.position = CGPoint(x: ball.position.x + 40, y: ball.position.y)
    }
    func leftFunc(){
        ball.position = CGPoint(x: ball.position.x - 40, y: ball.position.y)
    }
    
    func startFunc(){
        level += 1
    }
    func resetfunc(){
        level = 1
        level1.levelComplete = false
        level2.levelComplete = false
        level3.levelComplete = false
        level4.levelComplete = false
    }
    func homeFunc(){
        cam.position = CGPoint(x: 0, y: 0)
    }
    func endlessFunc(){
        ball.physicsBody?.velocity.dy = 0
        endlessWall1.physicsBody?.velocity.dy = -200
        cam.position = CGPoint(x: -3840, y: 3200)
        print(cam.position)
    }
    func level1Func(){
        ball.position = CGPoint(x: level1.ballPositionx, y: level1.ballPositiony)
        cam.position = CGPoint(x: level1.camPositionx, y: level1.camPositiony)
    }
    func level2Func(){
        ball.position = CGPoint(x: level2.ballPositionx, y: level2.ballPositiony)
        cam.position = CGPoint(x: level2.camPositionx, y: level2.camPositiony)
    }
    func level3Func(){
        ball.position = CGPoint(x: level3.ballPositionx, y: level3.ballPositiony)
        cam.position = CGPoint(x: level3.camPositionx, y: level3.camPositiony)
    }
    func level4Func(){
        ball.position = CGPoint(x: level4.ballPositionx, y: level4.ballPositiony)
        cam.position = CGPoint(x: level4.camPositionx, y: level4.camPositiony)
    }
    
}
