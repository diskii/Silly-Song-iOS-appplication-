//
//  ViewController.swift
//  Silly Song
//
//  Created by Jeffrey Young on 2018-02-27.
//  Copyright © 2018 Jeffrey Young. All rights reserved.
//

import UIKit

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
}
class ViewController: UIViewController {
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var lyricsView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: Any) {
        nameField.text = ""
        lyricsView.text = ""
    }
    @IBAction func displayLyrics(_ sender: Any) {
        let stringResult : String = customizeTemplate(nameField.text!)
        lyricsView.text = stringResult
    }
    
}



func shortName(_ name:String) -> Substring {
    let count = name.count - 1
    let index = name.index(name.endIndex, offsetBy:-count)
    let subString : Substring = name[index...] // type: substring..
    return subString
}


func customizeTemplate(_ name:String) -> String {
    let template : String = """
    \(name), \(name), Bo B\(shortName(name))
    Banana Fana Fo F\(shortName(name))
    Me My Mo M\(shortName(name))
    \(name)
    """
    return template
}
