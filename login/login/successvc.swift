//
//  successvc.swift
//  login
//
//  Created by freaky on 2023/9/22.
//

import UIKit

class successvc: UIViewController {
    var text:String=""
    
    @IBOutlet weak var textlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textlabel.text=text
        

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickexitbutton(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
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
