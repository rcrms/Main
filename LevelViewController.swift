

import UIKit
import CoreMotion

class LevelViewController: UIViewController {
    var myMotionSensors = CMMotionManager()
    
    @IBOutlet weak var myBubble: BubbleView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myMotionSensors.accelerometerUpdateInterval = 0.2
        // Do any additional setup after loading the view, typically from a nib.
        myMotionSensors.startAccelerometerUpdates(to: OperationQueue.current!) {(accelData, error)
            in
            self.updateAccel(accel: accelData!.acceleration)
            if(error != nil)
            {
                print("\(error)")
            }
        }
    }

    func updateAccel(accel: CMAcceleration) {
        self.myBubble.setCenter(x: accel.x,y: accel.y)
        self.myBubble.setNeedsDisplay()
    }
}

