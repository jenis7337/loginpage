import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController6") as! ViewController6
        navigationController?.pushViewController(navigation, animated: true)
    }
    @IBAction func continueButtonAction(_ sender: UIButton) {
        naviget()
    }
}
