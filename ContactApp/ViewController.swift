
import UIKit
import ContactsUI

class ViewController: UIViewController , CNContactPickerDelegate {
    
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        
        let picker = CNContactPickerViewController()
        picker.delegate = self
        picker.modalPresentationStyle = .fullScreen
        self.present(picker, animated: true, completion: nil)
    }
    
    func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
        contacts.forEach { contanct in
            
            let phoneNumber = contanct.phoneNumbers.first
            numberTextField.text = phoneNumber?.value.stringValue
        }
    }
}

