//
//  Orange.swift
//  OrangeTree
//
//  Created by Giru on 12/10/18.
//  Copyright © 2018 Jayce Azua. All rights reserved.
//

import SpriteKit

class Orange: SKSpriteNode {
    init() {
        let texture = SKTexture(imageNamed: "Orange")
        let size = texture.size()
        let color = UIColor.clear
        
        super.init(texture: texture, color: color, size: size)
        //  creates a circular physics body that fits the outline of the orange
        physicsBody = SKPhysicsBody(circleOfRadius: size.width / 2 )
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
