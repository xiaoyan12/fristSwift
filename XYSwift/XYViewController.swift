//
//  XYViewController.swift
//  XYSwift
//
//  Created by 闫世超 on 2017/5/9.
//  Copyright © 2017年 闫世超. All rights reserved.
//

import UIKit

class XYViewController: UIViewController ,UITextViewDelegate{

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var textView: UITextView!
    
    var name:String?
    
    var bbchange :((_ title:String)->Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.textView.delegate = self
        self.textView.text = name
        
        self.textView.layer.borderWidth = 1;
        self.textView.layer.borderColor = UIColor.gray.cgColor
        
        self.textView.layer.cornerRadius = 6;
        self.textView.layer.masksToBounds = true;
        button.setTitle("返回", for: UIControlState.normal)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClick(_ sender: UIButton) {
        if self.textView.text != name && self.textView.text != "" {
            bbchange?(self.textView.text!)
            self.dismiss(animated: true, completion: nil)
        }else{
            button.setTitle("请修改一下~", for: UIControlState.normal)
        }
        
        
    }

    
    func getString(string:String){
        name = string
    }
    
    
    func textViewDidChange(_ textView: UITextView) {
        button.setTitle("返回", for: UIControlState.normal)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
