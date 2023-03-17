import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var continueButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setContitnueButton()

    }
    func setContitnueButton(){
        continueButton.layer.cornerRadius = 30
        continueButton.layer.masksToBounds = true
    }
    @IBAction func continueButtonAction(_ sender: UIButton) {
        naviget()
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(navigation, animated: true)
    }
    
}
