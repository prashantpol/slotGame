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
      var totalcredit: SKLabelNode!
      var winnerpaid:SKLabelNode!
      var betlable:SKLabelNode!
    var result:SKLabelNode!
    var money=1000
    var win=0
    var betamount=10
    var jackpot=5000
    var playerpaid=0
    
    var reelOne :Sreel1?
    var reeltwo :Sreel2?
    var reelThree :Sreel3?
    var timeleft=3
    var timer = Timer()
    let action: SKAction = SKAction.playSoundFileNamed("sound.wav", waitForCompletion: true)
    
    var images: [UIImage] = [#imageLiteral(resourceName: "bell"), #imageLiteral(resourceName: "orange"), #imageLiteral(resourceName: "grapes"), #imageLiteral(resourceName: "cherry"), #imageLiteral(resourceName: "banana"), #imageLiteral(resourceName: "bar"), #imageLiteral(resourceName: "seven")]

    var spinButton: SKNode! = nil
    var betButton: SKNode! = nil
    var reel1: SKSpriteNode! = nil

    var reel2: SKNode! = nil

    var reel3: SKNode! = nil

    
    override func didMove(to view: SKView) {
        addBG()
        addSpin()
        addBet10()
        addBet25()
        addBet50()
        
        reelOne = Sreel1()
        reelOne?.zPosition=1;
        self.addChild(reelOne!)
        
        reeltwo=Sreel2()
        reeltwo?.zPosition=1;
        self.addChild(reeltwo!)
        
        
        
        reelThree=Sreel3()
        reelThree?.zPosition=1;
        self.addChild(reelThree!)
        
      //  addReel1(imagename: "banana")
//        addReel2(imagename: "orange")
//        addReel3(imagename: "seven")
        
        
        //setting lables
        
 
        result = SKLabelNode(fontNamed: "Helvetica Neue")
        result.text = "Spin Now"
        result.fontColor = SKColor(red: 114/255, green: 255/255, blue: 0/255, alpha: 1.0)
        result.fontSize = 20
        result.position = CGPoint(x: 2, y: 80)
        result.zPosition=1
        self.addChild(result)
        
        
        
        
        totalcredit = SKLabelNode(fontNamed: "Helvetica Neue")
        totalcredit.text = "1000"
        totalcredit.fontColor = SKColor(red: 114/255, green: 255/255, blue: 0/255, alpha: 1.0)
        totalcredit.fontSize = 25
        totalcredit.position = CGPoint(x: -110, y: -125)
        totalcredit.zPosition=1
        self.addChild(totalcredit)
        
        
        winnerpaid = SKLabelNode(fontNamed: "Helvetica Neue")
        winnerpaid.text = "0"
        winnerpaid.fontSize = 25
         winnerpaid.zPosition=1
        winnerpaid.fontColor = SKColor(red: 114/255, green: 255/255, blue: 0/255, alpha: 1.0)

        winnerpaid.position = CGPoint(x: 100, y: -125)
        self.addChild(winnerpaid)
        
        betlable = SKLabelNode(fontNamed: "Helvetica Neue")
        betlable.text = "10"
        betlable.fontSize = 25
        betlable.zPosition=1
        betlable.fontColor = SKColor(red: 114/255, green: 255/255, blue: 0/255, alpha: 1.0)

        betlable.position = CGPoint(x: 0, y: -125)
        self.addChild(betlable)
        
        
     //   self.addChild(totalcredit!)
        
       
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
        spinButton.name="spinbtn"
        self.addChild(spinButton)
        
        
    }
    //add Bet Button
    func addBet10()
    {
        let bettexture=SKTexture(imageNamed:"bet10")
        betButton=SKSpriteNode(texture: bettexture)
       
        betButton.position = CGPoint(x: -120, y: -192)
        betButton.zPosition=1
        betButton.name="bet10"
         self.addChild(betButton)
        
    }
    
    func addBet25()
    {
        let bettexture=SKTexture(imageNamed:"bet25")
        betButton=SKSpriteNode(texture: bettexture)
        
        betButton.position = CGPoint(x: -70, y: -192)
        betButton.zPosition=1
        betButton.name="bet25"
        
 
        self.addChild(betButton)
        
    }
    func addBet50()
    {
        let bettexture=SKTexture(imageNamed:"bet50")
        betButton=SKSpriteNode(texture: bettexture)
        
        betButton.position = CGPoint(x: -20, y: -192)
        betButton.zPosition=1
        betButton.name="bet50"
 
        self.addChild(betButton)
        
    }
    
    //add Reel

    func addReel1(imagename : String)
    {
        let reel1txt=SKTexture(imageNamed:imagename)
        reel1=SKSpriteNode(texture: reel1txt)
        
        reel1.position = CGPoint(x: 0, y: -30)
        reel1.zPosition=1
        reel1.setScale(0.5)

        self.addChild(reel1)
    }
    
    
    func addReel2(imagename : String)
    {
        let reel2text=SKTexture(imageNamed:imagename)
        reel2=SKSpriteNode(texture: reel2text)
        
        reel2.position = CGPoint(x: -110, y: -30)
        reel2.zPosition=1
        reel2.setScale(0.5)

        self.addChild(reel2)
    }
    
    
    
    func addReel3(imagename : String)
    {
        let reel3txt=SKTexture(imageNamed:imagename)
        reel3=SKSpriteNode(texture: reel3txt)
        
        reel3.position = CGPoint(x: 109, y: -30)
        reel3.zPosition=1
        reel3.setScale(0.5)

        self.addChild(reel3)
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
       
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
       //print(pos)
       print("test")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
      //  print("began")
        
        
        let btntextture=SKTexture(imageNamed:"spin_pressed")
        spinButton=SKSpriteNode(texture: btntextture)
        self.addChild(spinButton)
        
        var touch = touches as!  Set<UITouch>
        var location = touch.first!.location(in: self)
        var node = self.atPoint(location)
        
        // If next button is touched, start transition to second scene
        if (node.name == "spinbtn") {
          
            spin()
           // print ("yes")
        }
        else if(node.name == "bet10" )
        {
            betamount=10
            betlable.text="10"

        }
        else if(node.name == "bet25" )
        {
            betamount=25
            betlable.text="25"

        }
        else if(node.name == "bet50" )
        {
            betamount=50
            betlable.text="50"

        }
    }
 
    func winningsound()
    {
        scene?.removeAllActions()
        scene?.run(SKAction.playSoundFileNamed("cheering", waitForCompletion: true))
    }
    
    func spin(){

        timer=Timer.scheduledTimer(timeInterval: 0, target: self, selector: "updateTimer", userInfo: nil, repeats: true)
        
       //  self.run(action, withKey:"sound")
        //scene?.run(SKAction.playSoundFileNamed("sound", waitForCompletion: false))
        
        let one = Int(arc4random_uniform(UInt32(images.count)))
       // reel1?.texture = SKTexture(image: images[one])
        
        let reel1imagename=images[one]
        let n1=getImagename(number: one)
        reelOne?.texture = SKTexture(image: images[one])

       // addReel1(imagename: n1)
     //   self.addChild(reel1)
        
        //addReel1(imagename: n1 as! String)
        
        let two = Int(arc4random_uniform(UInt32(images.count)))
        //reel2?.texture = SKTexture(image: images[two])
        let reel2imagename=images[two]
        let n2=getImagename(number: two)
        reeltwo?.texture = SKTexture(image: images[two])

        
        //addReel2(imagename: n2 as! String)
        
        let three = Int(arc4random_uniform(UInt32(images.count)))
        
         reelThree?.texture = SKTexture(image: images[three])
        
        
        if(timeleft==0)
        {
             scene?.removeAllActions()
         
            
        }
        
        checkBet(one: one, two: two, three: three)
        
      

    }
    
    
    //unusedfunction
    
    func updateTimer()
    {
//        print("-------------------")
//        print(timeleft)
        if(timeleft>0)
        {
           
           // scene?.run(SKAction.playSoundFileNamed("sound", waitForCompletion: true))
            
            timeleft=timeleft-1
        }
        else{
           // print("here")
            //self.removeAction(forKey: "sound")
            timer.invalidate()
            timeleft=3
        }
    }
    
    
    func checkBet(one : Int, two : Int, three : Int){
        
        if(one == two && two == three){
            print("JACKPOT")
            scene?.run(SKAction.playSoundFileNamed("jackpotwinner", waitForCompletion: true))
            scene?.run(SKAction.playSoundFileNamed("firework", waitForCompletion: true))
            playerpaid=playerpaid+jackpot
            money=money+jackpot;
            totalcredit.text=String(money)
            
            winnerpaid.text = String(playerpaid)
            
            result.text=String("JACKPOT")
//            slotMachineSprite?.jackpotLabel.text = "You Won"
//            winnings = winnings + jackpot
//            playerBet = 0
//            playerMoney = playerMoney + jackpot
//            
//            slotMachineSprite?.betLabel.text = "0"
//            slotMachineSprite?.winLabel.text = String(winnings)
//            slotMachineSprite?.totalLabel.text = String(playerMoney)
        } else if(one == two || two == three || one == three){
            money=money+betamount
            result.text=String("Winner")
            totalcredit.text=String(money)
            playerpaid=playerpaid+50;
            winnerpaid.text = String(playerpaid)

            winningsound()
//            winnings = winnings + 50
//            playerBet = 0
//            playerMoney = playerMoney + 50
//            
//            slotMachineSprite?.betLabel.text = "0"
//            slotMachineSprite?.winLabel.text = String(winnings)
//            slotMachineSprite?.totalLabel.text = String(playerMoney)
        }else{
            
            money=money-betamount
            result.text=String("Try Again")
            playerpaid=playerpaid-betamount;
            winnerpaid.text=String(playerpaid)
            totalcredit.text=String(money)
        }
    }
    
    func getImagename(number : Int) -> String
    {
        var name=""
        if(number==0)
        {
            name="bell"
           // print("over here")
        }
        else if(number==1)
        {
            name="orange"
        }
        else if(number==2)
        {
            name="grapes"
        }
        else if(number==3)
        {
            name="cherry"
        }
        else if(number==4)
        {
            name="banana"
        }
        else if(number==5)
        {
            name="bar"
        }
        else if(number==6)
        {
            name="seven"
        }
        return name
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
 
     }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("--------------------")

     }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("cancled")

     }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
