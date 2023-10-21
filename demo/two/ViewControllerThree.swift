//
//  ViewControllerthree.swift
//  two
//
//  Created by freaky on 2023/10/19.
//

import UIKit
import SnapKit
class ViewControllerthree: UIViewController {
    var ttt:UIView!
    
    @objc func registerclick(sender:UIButton!){
        let viewcontrollerfour = ViewControllerFour()
        self.navigationController?.pushViewController(viewcontrollerfour, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.ttt=UIView()
        ttt.backgroundColor = .white
        view.addSubview(ttt)
        ttt.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
            make.width.equalToSuperview()
            make.height.equalToSuperview()
        }
        

        let logIn=UILabel()
        logIn.text = "注册"
        logIn.font = UIFont.systemFont(ofSize: 25)
        logIn.textColor = .black
        ttt.addSubview(logIn)

        
        logIn.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(110)
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
        }
        
        let userNameInput = UITextField()
        let passwordInput=UITextField()
        ttt.addSubview(passwordInput)
        view.addSubview(userNameInput)
        userNameInput.borderStyle=UITextField.BorderStyle.roundedRect
        userNameInput.textColor=UIColor.gray
        userNameInput.backgroundColor=UIColor.white
        userNameInput.textAlignment=NSTextAlignment.center
        userNameInput.font=UIFont.boldSystemFont(ofSize: 20)
        userNameInput.placeholder="请输入用户名"
        ttt.addSubview(userNameInput)
        
        userNameInput.snp.makeConstraints {make in
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-16)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-50)
            make.height.equalTo(40)
        }
        
        
        
        passwordInput.borderStyle=UITextField.BorderStyle.roundedRect
        passwordInput.textColor=UIColor.gray
        passwordInput.backgroundColor=UIColor.white
        passwordInput.textAlignment=NSTextAlignment.center
        passwordInput.font=UIFont.boldSystemFont(ofSize: 20)
        passwordInput.placeholder="请输入密码"
        ttt.addSubview(passwordInput)
        
        
        //密码约束
        passwordInput.snp.makeConstraints { make in
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-16)
            make.top.equalTo(userNameInput.snp.bottom).offset(20)
            make.height.equalTo(40)
        }
        

        
        
        let register = UIButton()
        register.setTitle("立即注册", for: .normal)
        register.backgroundColor = .blue
        register.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        register.layer.cornerRadius = 5
        register.addTarget(self, action:#selector(registerclick), for:.touchUpInside)
        register.setTitleColor(.white, for: .normal)
        register.setTitleColor(.gray, for: .highlighted)
        ttt.addSubview(register)

        
        register.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.top.equalTo(passwordInput.snp.bottom).offset(30)
            make.left.equalTo(view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(view.safeAreaLayoutGuide.snp.right).offset(-16)
            make.height.equalTo(42)
        }
        
        
        
        
    }
    
    
    
}
