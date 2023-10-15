//
//  ViewController.swift
//  two
//
//  Created by freaky on 2023/10/13.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    var container:UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.container=UIView()
        container.backgroundColor = .white
        view.addSubview(container)
        
        let password=UITextField()
        
        //最上方登录
        let login=UILabel()
        login.text = "登录"
        login.font = UIFont.systemFont(ofSize: 25)
        login.textColor = .black
        container.addSubview(login)
        
        //最上方登录约束
        login.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
        }
        
        //用户名
        let username=UITextField()
        username.borderStyle=UITextField.BorderStyle.roundedRect
        username.textColor=UIColor.gray
        username.backgroundColor=UIColor.white
        username.textAlignment=NSTextAlignment.center
        username.font=UIFont.boldSystemFont(ofSize: 20)
        username.placeholder="请输入用户名"
        container.addSubview(username)
        container.addSubview(password)
        
        //用户名约束
        username.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(password.snp.top).offset(-20)
            make.height.equalTo(40)
        }
        
        
        //密码
        password.borderStyle=UITextField.BorderStyle.roundedRect
        password.textColor=UIColor.gray
        password.backgroundColor=UIColor.white
        password.textAlignment=NSTextAlignment.center
        password.font=UIFont.boldSystemFont(ofSize: 20)
        password.placeholder="请输入密码"
        container.addSubview(password)
        container.addSubview(phoneloginbutton)
        
        //密码约束
        password.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(phoneloginbutton.snp.top).offset(-30)
            make.height.equalTo(40)
        }
        
        //app应用图标
        let logoview=UIImageView()
        logoview.image=UIImage(named: "logo")
        container.addSubview(logoview)
        container.addSubview(phoneloginbutton)
        container.addSubview(primarybutton)
        
        //“没有账号”文本设置
        let agrementlabelview = UILabel()
        agrementlabelview.text = "没有账号？"
        agrementlabelview.font = UIFont.systemFont(ofSize: 20)
        agrementlabelview.textColor = .black
        container.addSubview(agrementlabelview)
        
        //根容器
        container.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-16)        }
        
        //app图片约束
        logoview.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalTo(150)
            make.centerX.equalToSuperview()
        }
        
        //文本框
        agrementlabelview.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(73)
            make.top.equalToSuperview().offset(480)
        }
        
        //现在注册按钮的约束
        primarybutton.snp.makeConstraints { make in
            make.left.equalTo(agrementlabelview.snp.right).offset(15)
            make.top.equalTo(agrementlabelview.snp.top)
            make.bottom.equalTo(agrementlabelview.snp.bottom)

          
        }
        
        
        //登录按钮约束
        phoneloginbutton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            make.bottom.equalTo(agrementlabelview.snp.top).offset(-30)
        }
    }
    @objc func phoneloginclick(_ sender:UIButton){
        
    }
    
    //登录按钮字体
    lazy var phoneloginbutton: UIButton = {
        let r = UIButton(type: .system)
        r.setTitle("登录", for: .normal)
        r.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        r.addTarget(self, action: #selector(phoneloginclick(_:)), for: .touchUpInside)
        r.backgroundColor = .blue
        r.layer.cornerRadius = 5
        r.setTitleColor(.white, for: .normal)
        r.setTitleColor(.gray, for: .highlighted)
        return r
        
    }()
    @objc func primaryclick(_ sender:UIButton){
    }
    
    
    //现在注册
    lazy var primarybutton:UIButton={
        let r = UIButton(type: .system)
        r.setTitle("现在注册", for: .normal)
        r.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        r.addTarget(self, action: #selector(primaryclick(_:)), for: .touchUpInside)
        r.backgroundColor = .clear
        r.setTitleColor(.blue, for: .normal)
        r.setTitleColor(.gray, for: .highlighted)
        return r
        
    }()
    

    
}
