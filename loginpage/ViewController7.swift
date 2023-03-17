import UIKit

class ViewController7: UIViewController {

    @IBOutlet weak var confirmButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setconfirmButton()
        

    }
    @IBAction func confirmButtonAction(_ sender: UIButton) {
        showAlert(title: "")
        naviget()
    }
    func setconfirmButton(){
        confirmButton.layer.cornerRadius = 30
        confirmButton.layer.masksToBounds = true
    }
    func naviget(){
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigation, animated: true)
    }
    func showAlert(title:String){
        let alert = UIAlertController(title: "Notice", message: "New Password is Successsful", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default,handler: { _ in
            self.naviget()
        }))
        alert.addAction(UIAlertAction(title: "Ok", style: .destructive))
        present(alert, animated: true)
        
    }
    
 
}
