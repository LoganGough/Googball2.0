//
//  GameViewController.swift
//  Googball2.0
//
//  Created by LOGAN GOUGH on 2/26/25.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    var play : GameScene!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var settingsButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftButton.isHidden = true
        rightButton.isHidden = true
        
        
       
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                play = scene as? GameScene
                //play.startFunc()
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
        
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    
    @IBAction func left(_ sender: Any) {
        play.leftFunc()
    }
    
    
    @IBAction func right(_ sender: Any) {
        play.rightFunc()
    }
    
    @IBAction func playButton(_ sender: Any) {
        
        playButton.isHidden = true
        settingsButton.isHidden = true
        leftButton.isHidden = false
        rightButton.isHidden = false
        play.startFunc()
        
    }
    
}
