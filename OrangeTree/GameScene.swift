import SpriteKit

class GameScene: SKScene {
    var orangeTree: SKSpriteNode!
    var orange: Orange?
    
    override func didMove(to view: SKView) {
        // connect game objects
        orangeTree = (childNode(withName: "tree") as! SKSpriteNode)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Get the location of the touch on the screen
        let touch = touches.first!
        let location = touch.location(in: self)
        // check if the touch was on the orange tree
        if atPoint(location).name == "tree" {
            // create the orange and add it to the scene at the touch location
            orange = Orange()
            orange?.position = location
            addChild(orange!)
            // give the orange an impulse to make it fly!
            let vector = CGVector(dx: 100, dy: 0)
            orange?.physicsBody?.applyImpulse(vector)
        }

        
    }
    
}
