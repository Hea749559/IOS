//
//  ViewControllerTwo.swift
//  two
//
//  Created by freaky on 2023/10/15.
//

import UIKit
import SnapKit
class ViewControllerTwo: UIViewController {
    var sss:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.sss=UIView()
        sss.backgroundColor = .white
        view.addSubview(sss)
      
        sss.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview()


        }
        
        
        let tick = UILabel()
        view.addSubview(tick)
        tick.text = "√"
        tick.font = UIFont.systemFont(ofSize: 50)
        tick.textColor = .green
        sss.addSubview(tick)
        tick.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-500)
        }
     
        
        let success = UILabel()
        view.addSubview(success)
        success.text="登录成功"
        success.textColor = .black
        success.font = UIFont.systemFont(ofSize: 25)
        success.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(tick.snp.bottom).offset(65)
        }
    }
    
}
