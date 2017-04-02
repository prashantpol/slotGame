//
//  sreel1.swift
//  SlotMachine
//
//  Created by Prashant Pol on 2017-04-02.
//  Copyright © 2017 Polorg. All rights reserved.
//

import Foundation

import SpriteKit
import GameplayKit

class Sreel1: SKSpriteNode {
    // Constructor / initialize
    init() {
        let texture = SKTexture(image: #imageLiteral(resourceName: "seven"))
        super.init(texture: texture, color: .white, size: CGSize(width: 150, height: 120))
        
        self.position = CGPoint(x: 0, y: -30)
        self.zPosition=1
        self.setScale(0.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class Sreel2: SKSpriteNode {
    // Constructor / initialize
    init() {
        let texture = SKTexture(image: #imageLiteral(resourceName: "seven"))
        super.init(texture: texture, color: .white, size: CGSize(width: 150, height: 120))
        
        self.position = CGPoint(x: -110, y: -30)
        self.zPosition=1
        self.setScale(0.5)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
class Sreel3: SKSpriteNode {
    // Constructor / initialize
    init() {
        let texture = SKTexture(image: #imageLiteral(resourceName: "seven"))
        super.init(texture: texture, color: .white, size: CGSize(width: 150, height: 120))
        
        self.position = CGPoint(x: 109, y: -30)
        self.zPosition=0
        self.setScale(0.5)
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}


class Spin: SKSpriteNode {
    // Constructor / initialize
    init() {
        let texture = SKTexture(image: #imageLiteral(resourceName: "spin"))
        super.init(texture: texture, color: .white, size: CGSize(width: 150, height: 120))
        
        self.position = CGPoint(x: 130, y: -192)
        self.zPosition=1
        self.setScale(0.4)
        self.name="spinbtn"
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}





 
