//
//  GameScene.swift
//  SlotMachine
//
//  Created by Prashant Pol on 2017-04-01.
//  Copyright © 2017 Polorg. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var images: [UIImage] = [#imageLiteral(resourceName: "bell"), #imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "grapes"), #imageLiteral(resourceName: "cherry"), #imageLiteral(resourceName: "banana"), #imageLiteral(resourceName: "bar"), #imageLiteral(resourceName: "seven")]

    var spinButton: SKNode! = nil
    var betButton: SKNode! = nil

    
    override func didMove(to view: SKView) {
      addBG()
      addSpin()
        addBet1()
  
       
    }
    
    
    func addBG()
    {
        let bg=SKSpriteNode(imageNamed: "bg")
        bg.zPosition=0
        addChild(bg)
    }
    
    //add spin button
    func addSpin()
    {
        let btntextture=SKTexture(imageNamed:"spin")
        spinButton=SKSpriteNode(texture: btntextture)
        
        //  button = SKSpriteNode(color: SKColor.brown, size: CGSize(width: 200, height: 404))
        // Put it in the center of the scene
        //         button.position = CGPoint(x: 260, y: 260)
        spinButton.position = CGPoint(x: 130, y: -192)
        spinButton.zPosition=1
        spinButton.setScale(0.7)
        self.addChild(spinButton)
        
    }
    //add Bet Button
    func addBet1()
    {
        let bettexture=SKTexture(imageNamed:"bet1")
        betButton=SKSpriteNode(texture: bettexture)
       
        betButton.position = CGPoint(x: -120, y: -192)
        betButton.zPosition=1
         self.addChild(betButton)
        
    }
    
    //add Reel 

    func addReel1()
    {
        
    }
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
 
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
     }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
     }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
     }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
