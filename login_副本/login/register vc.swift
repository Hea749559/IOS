//
//  register vc.swift
//  login
//
//  Created by freaky on 2023/9/22.
//

import UIKit

class register_vc: UIViewController {
    @IBOutlet weak var errorlabel: UILabel!
    @IBOutlet weak var usernametextfield: UITextField!
    
    @IBOutlet weak var passwordtextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func clickloginbutton(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
