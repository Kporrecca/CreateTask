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
        
        story = self.childNode(withName: "story") as! SKLabelNode
        story2 = self.childNode(withName: "//story2") as! SKLabelNode
        story3 = self.childNode(withName: "//story3") as! SKLabelNode
        story4 = self.childNode(withName: "//story4") as! SKLabelNode
        
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
        story2.text = text2
        story3.text = text3
        story4.text = text4
        leftText.text = left
        rightText.text = right
        
    }


    func encounterOption1() {
        switch encounter {
        case 0:
            self.text = "You wake up in"
            self.text2 = "a cave under a "
            self.text3 = "hill and you "
            self.text4 = "see a path."
            self.left = "Hill"
            self.right = "Path"
            self.encounter = 1
        case 1:
            self.text = "You look around"
            self.text2 = "and see smoke"
            self.text3 = "rising one way"
            self.text4 = "and a tower the other."
            self.left = "Tower"
            self.right = "Smoke"
            self.encounter = 2
        case 2:
            self.text = "You go to the"
            self.text2 = "tower and find"
            self.text3 = "nothing. You "
            self.text4 = "starve to death."
            self.left = "PLAY"
            self.right = "AGAIN"
            self.encounter = 100
        case 3:
            self.text = "You wait and"
            self.text2 = "a group of"
            self.text3 = "travellers appear."
            self.text4 = "They are wary."
            self.left = "Attack"
            self.right = "Befriend"
            self.encounter = 4
        case 4:
            self.text = "You attack them"
            self.text2 = "but you are"
            self.text3 = "overwhelmed"
            self.text4 = "and you die."
            self.left = "PLAY"
            self.right = "AGAIN"
            self.encounter = 100
        case 5:
            self.text = "You get to"
            self.text2 = "a town."
            self.text3 = "Where do"
            self.text4 = "you go?"
            self.left = "Inn"
            self.right = "Square"
            self.encounter = 6
        case 6:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 4
        case 7:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 4
        case 27:
            self.text = "They wish"
            self.text2 = "you luck in"
            self.text3 = "your travels."
            self.text4 = "You leave town."
            self.left = "PLAY"
            self.right = "AGAIN"
            self.encounter = 100
        case 100:
            self.text = "You wake up in"
            self.text2 = "a cave under a"
            self.text3 = "hill and you"
            self.text4 = "see a path."
            self.left = "Hill"
            self.right = "Path"
            self.encounter = 1
        default:
            break
        }
    }
    
    func encounterOption2(){
        switch encounter {
        case 1:
            self.text = "You follow the"
            self.text2 = "path and are"
            self.text3 = "attacked and"
            self.text4 = "killed by bandits."
            self.left = "PLAY"
            self.right = "AGAIN"
            self.encounter = 100
        case 2:
            self.text = "You head to the"
            self.text2 = "smoke and find"
            self.text3 = "a campsite"
            self.text4 = "abandoned."
            self.left = "Wait"
            self.right = "Move On"
            self.encounter = 3
        case 3:
            self.text = "You keep walking"
            self.text2 = "but get lost in"
            self.text3 = "the woods"
            self.text4 = "forever."
            self.left = "PLAY"
            self.right = "AGAIN"
            self.encounter = 100
        case 4:
            self.text = "You befriend"
            self.text2 = "them and join"
            self.text3 = "them. You find"
            self.text4 = "a sword."
            self.left = "Take"
            self.right = "Leave"
            self.encounter = 5
        case 5:
            self.text = "You get to"
            self.text2 = "a town."
            self.text3 = "Where do"
            self.text4 = "you go?"
            self.left = "Inn"
            self.right = "Square"
            self.encounter = 26
        case 7:
            self.text = ""
            self.text2 = ""
            self.text3 = ""
            self.text4 = ""
            self.left = ""
            self.right = ""
            self.encounter = 4
        case 26:
            self.text = "Someone"
            self.text2 = "approaches"
            self.text3 = "you and asks"
            self.text4 = "who you are."
            self.left = "Travellers"
            self.right = "Warriors"
            self.encounter = 27
        case 27:
            self.text = "They call you"
            self.text2 = "a liar. You"
            self.text3 = "don't even"
            self.text4 = "have a sword!"
            self.left = "PLAY"
            self.right = "AGAIN"
            self.encounter = 100
        case 100:
            self.text = "You wake up in"
            self.text2 = "a cave under a"
            self.text3 = "hill and you"
            self.text4 = "see a path."
            self.left = "Hill"
            self.right = "Path"
            self.encounter = 1
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
