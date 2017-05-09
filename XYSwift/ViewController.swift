//
//  ViewController.swift
//  XYSwift
//
//  Created by 闫世超 on 2017/5/9.
//  Copyright © 2017年 闫世超. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //宏定义
    let XYScreenH = UIScreen.main.bounds.size.height
    let XYScreenW = UIScreen.main.bounds.size.width
    
    var lable : UILabel?
    
    
    func RGBCOLOR(r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor
    {
        return UIColor(red: (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
    }
    
    func CGRECT(x:CGFloat,y:CGFloat,w:CGFloat,h:CGFloat) -> CGRect {
        return CGRect(x:x,y:y,width:w,height:h)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews();
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func addViews() {
        
        let imageView = UIImageView(frame:self.view.bounds)
        imageView.backgroundColor = RGBCOLOR(r: 10, 10, 10)
        imageView.image = UIImage(named:"1")
        self.view.addSubview(imageView)
        
        
        
        let but = UIButton(type: UIButtonType.custom)
        but.frame = CGRECT(x: (XYScreenW - 200)/2, y: XYScreenH - 200, w: 200, h: 40)
        but.backgroundColor = RGBCOLOR(r: 227, 23, 13)
        but.setTitle("下一页", for: UIControlState.normal)
        but.tag = 10
        but.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        but.layer.cornerRadius = 20;
        but.layer.masksToBounds = true
        but.addTarget(self, action: #selector(buttonClick(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(but)
        

        self.lable = UILabel(frame:CGRECT(x:30, y: (XYScreenH - 100)/2, w: XYScreenW - 60, h: 100))
        lable?.backgroundColor = RGBCOLOR(r: 34, 139, 34)
        lable?.text = "今天天气怎么样"
        lable?.font = UIFont.systemFont(ofSize: 10)
        lable?.textColor = UIColor.white
        lable?.lineBreakMode = NSLineBreakMode.byWordWrapping
        lable?.numberOfLines = 0
        lable?.textAlignment = NSTextAlignment.center
        self.view.addSubview(lable!)
        
    }

    
    func buttonClick(sender:UIButton) {
        
        print(sender.tag);
        print(sender.titleLabel?.text as Any)
        if sender.titleLabel?.text != "确定" {
            print("确定")
        }
        else{
             print("不确定")
        }
        
        switch sender.tag {
        case 10:
             print("10")
            break
            
        case 11:
             print("11")
            break
        
        case 12:
             print("12")
            break
            
        case 13:
             print("13")
            break
        default:
            break
        }
        
        let VC = XYViewController()
        VC.name = self.lable?.text
        //闭包传值
        VC.bbchange = {(title:String) in
            self.lable?.text = title
        }
        
        self.present(VC, animated: true, completion: nil)
        
    }
    
    
    
}

