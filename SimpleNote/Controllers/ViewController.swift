//
//  ViewController.swift
//  SimpleNote
//
//  Created by Gustavo Carvalho on 06/04/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var noteField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let savedData = UserDefaults.standard.string(forKey: "@saved_note") {
            noteField.text = savedData;
        }
    }
    
    @IBAction func onSaveNote(_ sender: UIButton) {
        UserDefaults.standard.set(noteField.text, forKey: "@saved_note")
        
        let alert = UIAlertController(title: "Note saved", message: "The note was saved successfully", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        
        present(alert, animated: true, completion: nil)
    }
}

