import UIKit

class ViewController5: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signupButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setloginButton()
        setsignupButton()
       
        
    }
    func setloginButton(){
        loginButton.layer.cornerRadius = 20
        loginButton.layer.masksToBounds = true
    }
    func setsignupButton(){
        signupButton.layer.cornerRadius = 20
        signupButton.layer.masksToBounds = true
    }
    
        @IBAction func loginButtonAction(_ sender: UIButton) {
            naviget()
    }
    
    @IBAction func signupButtonAction(_ sender: UIButton) {
        naviget2()
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(navigation, animated: true)
    }
}
