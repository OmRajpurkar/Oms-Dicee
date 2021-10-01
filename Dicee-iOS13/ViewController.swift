import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        let diceArray = ["DiceOne","DiceTwo","DiceThree","DiceFour","DiceFive","DiceSix"]
        
        diceImageView1.image = UIImage(named: diceArray.randomElement()!)
        diceImageView2.image = UIImage(named: diceArray.randomElement()!)
        
    }
    
}

