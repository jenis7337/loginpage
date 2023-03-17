
import UIKit

class ViewController4: UIViewController {

  
    @IBOutlet weak var continueAcceptButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
setcontinueAcceptButton()
       
    }
    @IBAction func continueAcceptButtonAction(_ sender: UIButton) {
        naviget()
    }
    func setcontinueAcceptButton(){
        continueAcceptButton.layer.cornerRadius = 30
        continueAcceptButton.layer.masksToBounds = true
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController7") as! ViewController7
        navigationController?.pushViewController(navigation, animated: true)
    }

}
