import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var addCoffeee: UIButton!
    @IBOutlet weak var addMilkk: UIButton!
    @IBOutlet weak var addWaterr: UIButton!
    @IBOutlet weak var statusBar: UILabel!
    
    let mainCoffeeMachine = CoffeeMachinee(water: 100, coffee: 100, milk: 100)
    
    @IBAction func didPressAddCoffee(_ sender: UIButton) {
        mainCoffeeMachine.addCoffee(amount: 100)
    }
    @IBAction func didPressAddMilk(_ sender: UIButton) {
        mainCoffeeMachine.addMilk(amount: 100)
    }
    @IBAction func didPressAddWater(_ sender: UIButton) {
        mainCoffeeMachine.addWater(amount: 100)
    }
    
    @IBAction func didPressAddEspreso(_ sender: UIButton) {
        let result = mainCoffeeMachine.makeEspresso()
        statusBar.text = result
    }
    
    @IBAction func didPressAmericano(_ sender: UIButton) {
        let result = mainCoffeeMachine.makeAmericano()
        statusBar.text = result
    }
    
    @IBAction func didPressMakeLatte(_ sender: UIButton) {
        let result = mainCoffeeMachine.makeLatte()
        statusBar.text = result
    }
    
    
    
    
}

