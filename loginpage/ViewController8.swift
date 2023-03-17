import UIKit

class ViewController8: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.loadRequest(URLRequest(url: URL(string:"https://www.snapchat.com")!))
        
    }
}
