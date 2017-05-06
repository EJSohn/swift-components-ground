//
//  ViewController.swift
//  ComponentGround
//
//  Created by 손은주 on 2017. 5. 6..
//  Copyright © 2017년 ejsohn. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    let arr_color: [UIColor] = [UIColor.red, UIColor.blue, UIColor.green, UIColor.purple, UIColor.brown]
    var screenWidth: CGFloat?
    var screenHeight: CGFloat?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Don't need optional binding.
        self.screenWidth = self.scrollView.bounds.size.width
        self.screenHeight = self.scrollView.bounds.size.height
        
        self.initScrollView()
    }

    //MARK: ## view init ##
    func initScrollView() {
        self.scrollView.isPagingEnabled = true
        self.scrollView.showsVerticalScrollIndicator = false
        self.scrollView.showsHorizontalScrollIndicator = false
        
        // Make scrollview has 2 contents
        self.scrollView.contentSize = CGSize(width: self.screenWidth!*2.0, height: self.screenHeight!)
        
        // Add subviews of scrollview
        let registerView: RegisterView = RegisterView(frame: CGRect(x: 0.0, y: 0.0, width: self.screenWidth!, height: self.screenHeight!))
        let loginView: LoginView = LoginView(frame: CGRect(x: self.screenWidth!, y: 0.0, width: self.screenWidth!, height: self.screenHeight!))
        
        self.scrollView.addSubview(registerView)
        self.scrollView.addSubview(loginView)
    }
    
    //MARK: ## Scroll to left ##
    func scrollToLeft(animated : Bool){
        let toPosition: CGPoint = CGPoint(x: 0.0, y: 0.0)
        self.scrollView.setContentOffset(toPosition, animated: true)
    }
    
    //MARK: ## Scroll to right ##
    func scrollToRight(animated: Bool){
        let toPosition: CGPoint = CGPoint(x: self.screenWidth!, y: 0.0)
        self.scrollView.setContentOffset(toPosition, animated: true)
    }
    
    //MARK: ## ScrollView Delegate ##
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
    }
    
    @IBAction func RegisterBtnPressed(_ sender: UIButton) {
        self.scrollToLeft(animated: true)
    }
    
    @IBAction func LoginBtnPressed(_ sender: UIButton) {
        self.scrollToRight(animated: true)
    }
    
}

