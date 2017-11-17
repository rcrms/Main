

import UIKit

class BubbleView: UIView {
    var currAccelX = 0.0
    var currAccelY = 0.0


    override func draw(_ rect: CGRect)
    {
        let midX = bounds.midX
        let midY = bounds.midY
        let width = bounds.size.width
        let height = bounds.size.height
        let scaleFact = min(width,height)
        let bigRadius = ((scaleFact / 2) - 5)
        let bubbleRadius = ((scaleFact / 2) - 5)*0.1
        
        //let center = CGPoint(x: CGFloat(-currAccelX)*bigRadius+midX,y: CGFloat(-
        //currAccelY)*bigRadius+midY)
        
        let center = CGPoint(x: 150, y:200)
        let circle = UIBezierPath(arcCenter: center, radius: bubbleRadius, startAngle: 0.0, endAngle: CGFloat(2*Double.pi), clockwise: false)
        UIColor.black.set()
        UIColor.green.setFill()
        circle.lineWidth = 1
        circle.fill()
        circle.stroke()
    }
    
    public func setCenter(x: Double, y: Double) {
        if (x >= -0.5) && (x <= 0.5)
        {
            currAccelX = x*2
        }
        if (y >= -0.5) && (y <= 0.5)
        {
            currAccelY = -y*2
        }
    }


}
