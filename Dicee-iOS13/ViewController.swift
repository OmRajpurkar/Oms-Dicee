import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDiceFace()
    }
    
    //MARK: - Roll Button Methods

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        changeDiceFace()
    }
    
    func changeDiceFace(){
        diceImageView1.image = UIImage(named: diceArray.randomElement()!)
        diceImageView2.image = UIImage(named: diceArray.randomElement()!)
    }
    
    // Shake Gesture
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeDiceFace()
    }
    
}

