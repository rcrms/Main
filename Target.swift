
import UIKit

class Target: UIView {

    override func draw(_ rect: CGRect)
    {
        let targetRadius = (min(bounds.size.width,bounds.size.height) / 2) - 5
        let center = CGPoint(x: bounds.midX,y: bounds.midY)
       // let circle = UIBezierPath(arcCenter: center, radius: targetRadius, startAngle: 0.0, endAngle:
        //CGFloat(2*Double.pi), clockwise: false)
        let context = UIGraphicsGetCurrentContext()
        context?.setLineWidth(4.0)
        context?.setStrokeColor(UIColor.blue.cgColor)
        let testRect = CGRect(x: 60, y: 170, width: 200, height: 80)
        context?.addEllipse(in: testRect)
        context?.strokePath()
       // let ovalx = UIBezierPath(ovalInRect: CGRectMake(160, 160, 240, 320))
        UIColor.orange.set()
  //      circle.lineWidth = 2
    //    circle.stroke()
        UIColor.black.set()
        let length = targetRadius*0.5
        let rect1 = CGRect(x: bounds.midX, y: bounds.midY+targetRadius*0.1, width: 1, height: length)
        let crosshair1 = UIBezierPath(rect: rect1)
        crosshair1.stroke()
        let rect2 = CGRect(x: bounds.midX, y: bounds.midY-targetRadius*0.6, width: 1, height: length)
        let crosshair2 = UIBezierPath(rect: rect2)
        crosshair2.stroke()
        let rect3 = CGRect(x: bounds.midX-targetRadius*0.6, y: bounds.midY, width: length, height: 1)
        let crosshair3 = UIBezierPath(rect: rect3)
        crosshair3.stroke()
        let rect4 = CGRect(x: bounds.midX+targetRadius*0.1, y: bounds.midY, width: length, height: 1)
        let crosshair4 = UIBezierPath(rect: rect4)
        crosshair4.stroke()
    }


}
