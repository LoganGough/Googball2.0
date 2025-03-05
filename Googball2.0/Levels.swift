//
//  Levels.swift
//  Googball2.0
//
//  Created by LOGAN GOUGH on 3/5/25.
//

import Foundation


class Levels{
    
        var level: Int
        var levelComplete: Bool
        var ballPositionx: Int
        var ballPositiony: Int
        var camPositionx: Int
        var camPositiony: Int
        
    init(level: Int, levelComplete: Bool, ballPositionx: Int, ballPositiony: Int, camPositionx: Int, camPositiony: Int) {
            self.level = level
            self.levelComplete = levelComplete
            self.ballPositionx = ballPositionx
            self.ballPositiony = ballPositiony
            self.camPositionx = camPositionx
            self.camPositiony = camPositiony
        }
    
    
    
}
