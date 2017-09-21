//
//  ViewController.swift
//  HelloWorld
//
//  Created by slcf888 on 2017/9/20.
//  Copyright © 2017年 slcf888. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var myString = "Hello World"
        print(myString)
        
        let a = 1 + 2;
        let b = 3+4
        print(a,b)
        
        let label = UILabel(frame:CGRect(x:10, y:20, width:300, height:100))
        label.text = "wangerting"
        label.textColor = UIColor.red
        label.shadowColor = UIColor.gray
        label.shadowOffset = CGSize(width:1.5, height:1.5)
        label.font = UIFont(name:"Zapfino", size:20) //字体样式
        self.view.addSubview(label)
        
        let lala = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 40))
        lala.text = "开始学习swift"
        lala.textColor = UIColor.red
        self.view.addSubview(lala)
        
        
        
        typealias Feet = Int
        let distance:Feet = 100
        print(distance)
        
        let varC = 3 + 0.14159
        print(varC)
        
        let name = "菜鸟教程"
        let site = "http://www.runoob.com"
        print("\(name)的官网地址为:\(site)")
        print("长度\(site.characters.count)")//字符的单个
        
        var Mystr:String?
        Mystr = "Hello Swift"
        if Mystr != nil {
            print(Mystr)
        }else{
            print("mystring值为nil")
        }
        
        var A = 10
        var B = 20
        print("A * B \(A*B)")
        print("(A == B)\(A != B)")
        A -= 1
        B += 1
        //看不懂的运算
        print("A&B 结果为：\(A&B)")
        print("A|B 结果为：\(A|B)")
        print("A^B 结果为：\(A^B)")
        print("~A 结果为：\(~A)")
        
        print("闭区间运算符")
        for index in 1...5 {
            print("\(index) * 5 = \(index * 5)")
        }
        
        print("半开区间运算符")
        for index in 1..<5 {
            print("\(index) * 5 = \(index * 5)")
        }
        
        var varA = 20
        let constA = 100
        var vrC:Float = 20.0
        var stringA = "\(varA)乘于\(constA)=\(vrC * 100)"
        print(stringA)
        
        
        var unicodeString = "菜鸟教程"
        print("UFT-8 编程：")
        for code in unicodeString.utf8 {
            print("\(code)")
        }
//        label.lineBreakMode = .byTruncatingTail  //隐藏尾部并显示省略号
//        label.lineBreakMode = .byTruncatingMiddle  //隐藏中间部分并显示省略号
//        label.lineBreakMode = .byTruncatingHead  //隐藏头部并显示省略号
//        label.lineBreakMode = .byClipping  //截去多余部分也不显示省略号
//        label.adjustsFontSizeToFitWidth = true //当文字超出标签宽度时，自动调整文字大小，使其不被截断
//        label.numberOfLines = 2  //显示两行文字（默认只显示一行，设为0表示没有行数限制）
//        //设置文本高亮
//        label.isHighlighted = true
//        //设置文本高亮颜色
//        label.highlightedTextColor = UIColor.green
//        //富文本设置
//        let attributeString = NSMutableAttributedString(string:"welcome to hangge.com")
//        //从文本0开始6个字符字体HelveticaNeue-Bold,16号
//        attributeString.addAttribute(NSFontAttributeName,
//                                     value: UIFont(name: "HelveticaNeue-Bold", size: 16)!,
//                                     range: NSMakeRange(0,6))
//        //设置字体颜色
//        attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.blue,
//                                     range: NSMakeRange(0, 3))
//        //设置文字背景颜色
//        attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.green,
//                                     range: NSMakeRange(3,3))
//        label.attributedText = attributeString
            
            
        
        
        
        myButton()
        myImageView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func myButton() {
        let btn = UIButton(type:UIButtonType.system) as UIButton
        btn.frame = CGRect(x: 60, y: 200, width: 50, height: 30)
        btn.backgroundColor = UIColor.lightGray
        btn.addTarget(self, action: #selector(ViewController.click), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
    }
    func click() {
        self.view.backgroundColor = UIColor.green
    }
    
    
    func myImageView() {
        let path = Bundle.main.path(forResource: "www", ofType: "png")
        let imgNormal = UIImage(contentsOfFile:path!)
        let btn = UIButton(type:UIButtonType.custom) as UIButton
        btn.setImage(imgNormal, for: UIControlState.normal)
        btn.frame = CGRect(x:30,y:130,width:30,height:30)
        self.view.addSubview(btn)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

