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
        let viewController = UIViewController()
        let navigationcontroller = UINavigationController(rootViewController: viewController)// 创建你的初始视图控制器


        
        let password=UITextField()
        
        //最上方登录
        let logIn=UILabel()
        logIn.text = "登录"
        logIn.font = UIFont.systemFont(ofSize: 25)
        logIn.textColor = .black
        container.addSubview(logIn)
        
        //最上方登录约束
        logIn.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
        }
        
        //用户名
        let userName=UITextField()
        userName.borderStyle=UITextField.BorderStyle.roundedRect
        userName.textColor=UIColor.gray
        userName.backgroundColor=UIColor.white
        userName.textAlignment=NSTextAlignment.center
        userName.font=UIFont.boldSystemFont(ofSize: 20)
        userName.placeholder="请输入用户名"
        container.addSubview(userName)
        container.addSubview(password)
        
        //用户名约束
        userName.snp.makeConstraints { make in
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
        container.addSubview(phoneLoginButton)
        
        //密码约束
        password.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.bottom.equalTo(phoneLoginButton.snp.top).offset(-30)
            make.height.equalTo(40)
        }
        
        //app应用图标
        let logoView=UIImageView()
        logoView.image=UIImage(named: "logo")
        container.addSubview(logoView)
        container.addSubview(phoneLoginButton)
        container.addSubview(primaryButton)
        
        //“没有账号”文本设置
        let agrementLabelView = UILabel()
        agrementLabelView.text = "没有账号？"
        agrementLabelView.font = UIFont.systemFont(ofSize: 20)
        agrementLabelView.textColor = .black
        container.addSubview(agrementLabelView)
        
        //根容器
        container.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-16)
            make.left.equalTo(self.view.safeAreaLayoutGuide.snp.left).offset(16)
            make.right.equalTo(self.view.safeAreaLayoutGuide.snp.right).offset(-16)        }
        
        //app图片约束
        logoView.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.top.equalTo(150)
            make.centerX.equalToSuperview()
        }
        
        //文本框
        agrementLabelView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(73)
            make.top.equalToSuperview().offset(480)
        }
        
        //现在注册按钮的约束
        primaryButton.snp.makeConstraints { make in
            make.left.equalTo(agrementLabelView.snp.right).offset(15)
            make.top.equalTo(agrementLabelView.snp.top)
            make.bottom.equalTo(agrementLabelView.snp.bottom)

          
        }
        
        
        //登录按钮约束
        phoneLoginButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(42)
            make.bottom.equalTo(agrementLabelView.snp.top).offset(-30)
        }
    }
    
    @objc func phoneLoginClick(sender:UIButton!) {
        let viewcontrollerTwo = ViewControllerTwo()
            self.navigationController?.pushViewController(viewcontrollerTwo, animated: true)

}

    //登录按钮字体
    lazy var phoneLoginButton: UIButton = {
        let r = UIButton(type: .system)
        r.setTitle("登录", for: .normal)
        r.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        r.addTarget(self, action: #selector(phoneLoginClick), for: .touchUpInside)
        r.backgroundColor = .blue
        r.layer.cornerRadius = 5
        r.setTitleColor(.white, for: .normal)
        r.setTitleColor(.gray, for: .highlighted)
        return r
        
    }()
    
    @objc func primaryClick(sender:UIButton!){
        let viewcontrollerThree = ViewControllerthree()
        self.navigationController?.pushViewController(viewcontrollerThree, animated: true)
    }
    
    
    //现在注册
    lazy var primaryButton:UIButton={
        let r = UIButton(type: .system)
        r.setTitle("现在注册", for: .normal)
        r.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        r.addTarget(self, action: #selector(primaryClick), for: .touchUpInside)
        r.backgroundColor = .clear
        r.setTitleColor(.blue, for: .normal)
        r.setTitleColor(.gray, for: .highlighted)
        return r
        
    }()
    

    
}
