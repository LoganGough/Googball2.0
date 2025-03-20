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
    
    @IBOutlet weak var homeOut: UIButton!
    
    @IBOutlet weak var resetOut: UIImageView!
    
    @IBOutlet weak var levelsButton: UIButton!
    
    @IBOutlet weak var endless: UIButton!
    
    
    @IBOutlet weak var googLabel: UILabel!
    
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
        play.resetfunc()
        playButton.isHidden = true
        settingsButton.isHidden = true
        endless.isHidden = true
        leftButton.isHidden = false
        rightButton.isHidden = false
        homeOut.isHidden = false
        resetOut.isHidden = false
        levelsButton.isHidden = true
        play.isNormal = true
        play.isEndless = false
        play.startFunc()
        googLabel.textColor = UIColor.lightGray
        
    }
    
    
    
    

    
    @IBAction func endlessButton(_ sender: Any) {
        playButton.isHidden = true
        settingsButton.isHidden = true
        endless.isHidden = true
        leftButton.isHidden = false
        rightButton.isHidden = false
        homeOut.isHidden = false
        resetOut.isHidden = false
        levelsButton.isHidden = true
        play.isNormal = false
        play.isEndless = true
        print("Changed isEndless to True")
        play.endlessFunc()
        googLabel.textColor = UIColor.lightGray
    }
    
    @IBAction func homeButton(_ sender: UIButton) {
        
        
        playButton.isHidden = false
        settingsButton.isHidden = false
        endless.isHidden = false
        leftButton.isHidden = true
        rightButton.isHidden = true
        homeOut.isHidden = true
        resetOut.isHidden = true
        levelsButton.isHidden = false
        googLabel.textColor = UIColor.black
        
        play.homeFunc()
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
        play.playTrue()
        if(AppData.boolView){
            if(blah == 1){
                play.level1Func()
                play.levelSet1()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 2){
                play.level2Func()
                play.levelSet2()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 3){
                play.level3Func()
                play.levelSet3()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 4){
                play.level4Func()
                play.levelSet4()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 5){
                play.level5Func()
                play.levelSet5()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 6){
                play.level6Func()
                play.levelSet6()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 7){
                play.level7Func()
                play.levelSet7()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 8){
                play.level8Func()
                play.levelSet8()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 9){
                play.level9Func()
                play.levelSet9()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
            else if(blah == 10){
                play.level10Func()
                play.levelSet10()
                googLabel.textColor = UIColor.lightGray
                startPlay()
            }
        }
        AppData.boolView = false
    }
}
