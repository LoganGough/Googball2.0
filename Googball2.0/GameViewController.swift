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
    
    @IBOutlet weak var homeOut: UIImageView!
    
    @IBOutlet weak var resetOut: UIImageView!
    
    @IBOutlet weak var levelsButton: UIButton!
    
    @IBOutlet weak var endless: UIButton!
    
    
    var blah = AppData.currentLevel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        leftButton.isHidden = true
        rightButton.isHidden = true
        homeOut.isHidden = true
        resetOut.isHidden = true
        
        
        
        
        
       
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
        endless.isHidden = true
        leftButton.isHidden = false
        rightButton.isHidden = false
        homeOut.isHidden = false
        resetOut.isHidden = false
        levelsButton.isHidden = true
        play.startFunc()
        
    }
    
    
    
    

    
    @IBAction func endlessButton(_ sender: Any) {
        playButton.isHidden = true
        settingsButton.isHidden = true
        endless.isHidden = true
        leftButton.isHidden = false
        rightButton.isHidden = false
        homeOut.isHidden = false
        resetOut.isHidden = false
        play.endlessFunc()
    }
        
    @IBAction func homeTap(_ sender: UITapGestureRecognizer) {
        playButton.isHidden = false
        settingsButton.isHidden = false
        endless.isHidden = false
        leftButton.isHidden = true
        rightButton.isHidden = true
        homeOut.isHidden = true
        resetOut.isHidden = true
        
        play.homeFunc()
    }

    
    
    @IBAction func resetTap(_ sender: UITapGestureRecognizer) {
        play.resetfunc()
    }
    func startPlay(){
        playButton.isHidden = true
        settingsButton.isHidden = true
        endless.isHidden = true
        leftButton.isHidden = false
        rightButton.isHidden = false
        homeOut.isHidden = false
        resetOut.isHidden = false
        levelsButton.isHidden = true
    }
    override func viewDidAppear(_ animated: Bool) {
        if(AppData.boolView){
            if(blah == 1){
                play.level1Func()
                startPlay()
            }
            else if(blah == 2){
                play.level2Func()
                startPlay()
            }
            else if(blah == 3){
                play.level3Func()
                startPlay()
            }
            else if(blah == 4){
                play.level4Func()
                startPlay()
            }
        }
        AppData.boolView = false
    }
}
