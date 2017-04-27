//
//  GameScene.swift
//  The Magnificent You
//
//  Copyright © 2017 The Gummy Bear Fireworks Company. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    var story: SKLabelNode!
    var story2: SKLabelNode!
    var story3: SKLabelNode!
    var story4: SKLabelNode!
    
    var leftText: SKLabelNode!
    var rightText: SKLabelNode!
    
    var leftButton: MSButtonNode!
    var rightButton: MSButtonNode!
    
    var text: String = "THE MAGNIFICENT YOU"
    var text2: String = ""
    var text3: String = "This is YOUR story."
    var text4: String = ""
    
    var left: String = "LET'S GO"
    var right: String = "LET'S GO"
    
    var encounter: Int = 0
    
    override func didMove(to view: SKView) {
        story = self.childNode(withName: "//Story") as! SKLabelNode
        story2 = self.childNode(withName: "//Story2") as! SKLabelNode
        story3 = self.childNode(withName: "//Story3") as! SKLabelNode
        story4 = self.childNode(withName: "//Story4") as! SKLabelNode
        
        leftText = self.childNode(withName: "//leftText") as! SKLabelNode
        rightText = self.childNode(withName: "//rightText") as! SKLabelNode
        
        leftButton = self.childNode(withName: "//leftButton") as! MSButtonNode
        rightButton = self.childNode(withName: "//rightButton") as! MSButtonNode
        
        leftButton.selectedHandler = { [unowned self] in
            self.encounterOption1()
        }
        rightButton.selectedHandler = { [unowned self] in
            self.encounterOption2()
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        story.text = text
        story2.text = text
        story3.text = text
        story4.text = text
        leftText.text = left
        rightText.text = right
        
    }


    func encounterOption1() {
        switch encounter {
        case 0:
            self.text = "You wake up."
            self.text2 = "You're in a cave."
            self.text3 = ""
            self.text4 = ""
            self.left = "Leave the cave."
            self.right = "Go back to sleep."
            self.encounter = 1
        case 1:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 2
        case 2:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 3
        case 3:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 4
            
        default:
            break
        }
    }
    
    func encounterOption2(){
        switch encounter {
        case 1:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 100
        default:
            break
    }
    
        }
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
        }
