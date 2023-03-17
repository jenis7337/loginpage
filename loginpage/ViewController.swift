import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        setLoginButton()
        
    }

    @IBAction func signUpButton(_ sender: UIButton) {
        naviget3()
    }
    @IBAction func forgotPasswordAction(_ sender: UIButton) {
        naviget2()
    }
    @IBAction func loginButtonAction(_ sender: UIButton) {
        
        if userNameTextField.text == "" && passwordTextField.text == ""{
            showAlert(title: "Please Enter Your Username & Password")
        }
        else if userNameTextField.text == ""{
            showAlert(title: "Please Enter Your Username")
            }
        else if passwordTextField.text == ""{
            showAlert(title: "Please Enter Your password")
            }
        if userNameTextField.text == "jennu_navadiya" && passwordTextField.text == "12345"{
            naviget()
        }
        else{
            passwordAlert()
        }
    }
    func setLoginButton(){
        loginButton.layer.cornerRadius = 20
        loginButton.layer.masksToBounds = true
    }
    func showAlert(title:String){
        let alert = UIAlertController(title: "Error", message: title, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        alert.addAction(UIAlertAction(title: "Cancel", style: .destructive))
        present(alert, animated: true)
        
    }
    func passwordAlert(){
        let alert = UIAlertController(title: "Incorrect Password", message: "The Password You Entered Incorrect . Please Try Again", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController8") as! ViewController8
        navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget2(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3") as! ViewController3
        navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget3(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController4") as! ViewController4
        navigationController?.pushViewController(navigation, animated: true)
    }
}

