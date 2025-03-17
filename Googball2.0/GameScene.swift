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
    var endlessBall: SKSpriteNode!
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
    var endlessWall10: SKSpriteNode!
    var endlessWall11: SKSpriteNode!
    var endlessWall12: SKSpriteNode!
    var endlessWall13: SKSpriteNode!
    var endlessWall14: SKSpriteNode!
    var endlessWall15: SKSpriteNode!
    var endlessWall16: SKSpriteNode!
    var endlessWall17: SKSpriteNode!
    var endlessWall18: SKSpriteNode!
    var endlessWall19: SKSpriteNode!
    var endlessWall20: SKSpriteNode!


    let resetPositionY: CGFloat = 5120
    let resetThresholdY: CGFloat = -2800
    var isEndless: Bool = false
    var isNormal: Bool = false


    var level1 = Levels(level: 1, levelComplete: false, ballPositionx: 1440, ballPositiony: -640, camPositionx: 1440, camPositiony: -80)
    
    var level2 = Levels(level: 2, levelComplete: false, ballPositionx: 3200, ballPositiony: -640, camPositionx: 3200, camPositiony: -80)
    
    var level3 = Levels(level: 3, levelComplete: false, ballPositionx: 4880, ballPositiony: -720, camPositionx: 4880, camPositiony: -80)
    
    var level4 = Levels(level: 4, levelComplete: false, ballPositionx: 6560, ballPositiony: -640, camPositionx: 6560, camPositiony: -80)
    var endless = Levels(level: 0, levelComplete: false, ballPositionx: -3840, ballPositiony: -1120, camPositionx: -3840, camPositiony: -640)
    
    
    
    
    override func didMove(to view: SKView) {
        self.camera = cam
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        endlessBall = self.childNode(withName: "endlessBall") as! SKSpriteNode
        endlessWall1 = self.childNode(withName: "endlessWall1") as! SKSpriteNode
        endlessWall2 = self.childNode(withName: "endlessWall2") as! SKSpriteNode
        endlessWall3 = self.childNode(withName: "endlessWall3") as! SKSpriteNode
        endlessWall4 = self.childNode(withName: "endlessWall4") as! SKSpriteNode
        endlessWall5 = self.childNode(withName: "endlessWall5") as! SKSpriteNode
        endlessWall6 = self.childNode(withName: "endlessWall6") as! SKSpriteNode
        endlessWall7 = self.childNode(withName: "endlessWall7") as! SKSpriteNode
        endlessWall8 = self.childNode(withName: "endlessWall8") as! SKSpriteNode
        endlessWall9 = self.childNode(withName: "endlessWall9") as! SKSpriteNode
        endlessWall10 = self.childNode(withName: "endlessWall10") as! SKSpriteNode
        endlessWall11 = self.childNode(withName: "endlessWall11") as! SKSpriteNode
        endlessWall12 = self.childNode(withName: "endlessWall12") as! SKSpriteNode
        endlessWall13 = self.childNode(withName: "endlessWall13") as! SKSpriteNode
        endlessWall14 = self.childNode(withName: "endlessWall14") as! SKSpriteNode
        endlessWall15 = self.childNode(withName: "endlessWall15") as! SKSpriteNode
        endlessWall16 = self.childNode(withName: "endlessWall16") as! SKSpriteNode
        endlessWall17 = self.childNode(withName: "endlessWall17") as! SKSpriteNode
        endlessWall18 = self.childNode(withName: "endlessWall18") as! SKSpriteNode
        endlessWall19 = self.childNode(withName: "endlessWall19") as! SKSpriteNode
        endlessWall20 = self.childNode(withName: "endlessWall20") as! SKSpriteNode

        physicsWorld.contactDelegate = self
    
    }
    override func update(_ currentTime: TimeInterval) {
        ball.physicsBody?.velocity.dy = 200
        ball.physicsBody?.velocity.dx = 0
        endlessBall.physicsBody?.velocity.dx = 0
        
       if isNormal == true{
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
        
        
        if isEndless == true{
            endlessUpdate()
            //print("Updating Endless")
            endlessWall1.physicsBody?.velocity.dy = -200
            endlessWall2.physicsBody?.velocity.dy = -200
            endlessWall3.physicsBody?.velocity.dy = -200
            endlessWall4.physicsBody?.velocity.dy = -200
            endlessWall5.physicsBody?.velocity.dy = -200
            endlessWall6.physicsBody?.velocity.dy = -200
            endlessWall7.physicsBody?.velocity.dy = -200
            endlessWall8.physicsBody?.velocity.dy = -200
            endlessWall9.physicsBody?.velocity.dy = -200
            endlessWall10.physicsBody?.velocity.dy = -200
            endlessWall11.physicsBody?.velocity.dy = -200
            endlessWall12.physicsBody?.velocity.dy = -200
            endlessWall13.physicsBody?.velocity.dy = -200
            endlessWall14.physicsBody?.velocity.dy = -200
            endlessWall15.physicsBody?.velocity.dy = -200
            endlessWall16.physicsBody?.velocity.dy = -200
            endlessWall17.physicsBody?.velocity.dy = -200
            endlessWall18.physicsBody?.velocity.dy = -200
            endlessWall19.physicsBody?.velocity.dy = -200
            endlessWall20.physicsBody?.velocity.dy = -200

            endlessBall.physicsBody?.velocity.dy = 0
            endlessBall.position.y = -1280
            


        }
        
       
        
        
    }
    func playTrue(){
        isNormal = true
        isEndless = false
    }
    
    func didBegin(_ contact: SKPhysicsContact) {
        if contact.bodyA.node?.name == "ball" && contact.bodyB.node?.name == "red"{
            level += 1
        }
        if contact.bodyB.node?.name == "ball" && contact.bodyA.node?.name == "red"{
            level += 1
        }
        if contact.bodyA.node?.name == "ball" && contact.bodyB.node?.name == "reset"{
            levelDeath()
            print("hitting")
            
        }
        if contact.bodyB.node?.name == "ball" && contact.bodyA.node?.name == "reset"{
            levelDeath()
            print("hitting")
            
            
        }
        
        
       
    }
    
    
    func rightFunc(){
        if isNormal == true && isEndless == false{
            ball.position = CGPoint(x: ball.position.x + 40, y: ball.position.y)
        }else if isNormal == false && isEndless == true{
            endlessBall.position = CGPoint(x: endlessBall.position.x + 40, y: endlessBall.position.y)
        } else{
            print("ERROR")
        }
    }
    func leftFunc(){
        if isNormal == true && isEndless == false{
            ball.position = CGPoint(x: ball.position.x - 40, y: ball.position.y)
        }else if isNormal == false && isEndless == true{
            endlessBall.position = CGPoint(x: endlessBall.position.x - 40, y: endlessBall.position.y)
        }else{
            print("ERROR")
        }
    }
    
    func startFunc(){
        level += 1
    }
    func resetfunc(){
        level = 0
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
        let wallSpeed: CGFloat = -200
        endlessWall1.physicsBody?.angularDamping = 0

        

        endlessWall1.physicsBody?.velocity.dy = wallSpeed
        endlessWall2.physicsBody?.velocity.dy = wallSpeed
        endlessWall3.physicsBody?.velocity.dy = wallSpeed
        endlessWall4.physicsBody?.velocity.dy = wallSpeed
        endlessWall5.physicsBody?.velocity.dy = wallSpeed
        endlessWall6.physicsBody?.velocity.dy = wallSpeed
        endlessWall8.physicsBody?.velocity.dy = wallSpeed
        endlessWall9.physicsBody?.velocity.dy = wallSpeed
        endlessWall10.physicsBody?.velocity.dy = wallSpeed
        endlessWall11.physicsBody?.velocity.dy = wallSpeed
        endlessWall12.physicsBody?.velocity.dy = wallSpeed
        endlessWall13.physicsBody?.velocity.dy = wallSpeed
        endlessWall14.physicsBody?.velocity.dy = wallSpeed
        endlessWall7.physicsBody?.velocity.dy = wallSpeed
        endlessWall15.physicsBody?.velocity.dy = wallSpeed
        endlessWall16.physicsBody?.velocity.dy = wallSpeed
        endlessWall17.physicsBody?.velocity.dy = wallSpeed
        endlessWall18.physicsBody?.velocity.dy = wallSpeed
        endlessWall19.physicsBody?.velocity.dy = wallSpeed
        endlessWall20.physicsBody?.velocity.dy = wallSpeed



        cam.position = CGPoint(x: -3840, y: -1280)
        endlessBall.position = CGPoint(x: -3840, y: -1280)
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
    func endlessUpdate(){
        // Reset each wall individually while preserving order
        // Reset each wall individually while preserving order
        if endlessWall1.position.y <= resetThresholdY {
            endlessWall1.position.y = resetPositionY
        }

        if endlessWall2.position.y <= resetThresholdY {
            endlessWall2.position.y = resetPositionY
        }

        if endlessWall3.position.y <= resetThresholdY {
            endlessWall3.position.y = resetPositionY
        }

        if endlessWall4.position.y <= resetThresholdY {
            endlessWall4.position.y = resetPositionY
        }

        if endlessWall5.position.y <= resetThresholdY {
            endlessWall5.position.y = resetPositionY
        }

        if endlessWall6.position.y <= resetThresholdY {
            endlessWall6.position.y = resetPositionY
        }

        if endlessWall7.position.y <= resetThresholdY {
            endlessWall7.position.y = resetPositionY
        }

        if endlessWall8.position.y <= resetThresholdY {
            endlessWall8.position.y = resetPositionY
        }

        if endlessWall9.position.y <= resetThresholdY {
            endlessWall9.position.y = resetPositionY
        }

        if endlessWall10.position.y <= resetThresholdY {
            endlessWall10.position.y = resetPositionY
        }

        if endlessWall11.position.y <= resetThresholdY {
            endlessWall11.position.y = resetPositionY
        }

        if endlessWall12.position.y <= resetThresholdY {
            endlessWall12.position.y = resetPositionY
        }

        if endlessWall13.position.y <= resetThresholdY {
            endlessWall13.position.y = resetPositionY
        }

        if endlessWall14.position.y <= resetThresholdY {
            endlessWall14.position.y = resetPositionY
        }
        if endlessWall15.position.y <= resetThresholdY {
            endlessWall15.position.y = resetPositionY
        }
        if endlessWall16.position.y <= resetThresholdY {
            endlessWall16.position.y = resetPositionY
        }
        if endlessWall17.position.y <= resetThresholdY {
            endlessWall17.position.y = resetPositionY
        }
        if endlessWall18.position.y <= resetThresholdY {
            endlessWall18.position.y = resetPositionY
        }
        if endlessWall19.position.y <= resetThresholdY {
            endlessWall19.position.y = resetPositionY
        }
        if endlessWall20.position.y <= resetThresholdY {
            endlessWall20.position.y = resetPositionY
        }
    }
    func levelDeath(){
        if(level == 1){
            let reset = SKAction.move(to: CGPoint(x: level1.ballPositionx, y: level1.ballPositiony), duration: 0)
            ball.run(reset)
            
            
        }
        else if(level == 2){
            let reset = SKAction.move(to: CGPoint(x: level2.ballPositionx, y: level2.ballPositiony), duration: 0)
            ball.run(reset)
        }
        else if(level == 3){
            let reset = SKAction.move(to: CGPoint(x: level3.ballPositionx, y: level3.ballPositiony), duration: 0)
            ball.run(reset)
        }

        else if(level == 4){
            let reset = SKAction.move(to: CGPoint(x: level4.ballPositionx, y: level4.ballPositiony), duration: 0)
            ball.run(reset)
        }

    }
}
