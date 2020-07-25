//
//  ViewController.swift
//  Weight on other planets
//
//  Created by Sahil Tagunde on 26/06/20.
//  Copyright © 2020 sahiltagunde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var textFContainer: UIView!
    @IBOutlet weak var textFView: UIView!
    @IBOutlet weak var weightTextF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        set()
        self.weightTextF.delegate = self
        hideKeyboardWhenTappedAround()
      
    }
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func set(){
        
        textFContainer.layer.cornerRadius = 15
        textFView.layer.cornerRadius = 15
        textFView.layer.maskedCorners = [.layerMinXMinYCorner, .layerMinXMaxYCorner]
 
    }
    
    @IBAction func submitButton(_ sender: Any) {

        if weightTextF.text?.trimmingCharacters(in: .whitespacesAndNewlines) == "" {
          let alert = UIAlertController(title: "Alert!", message: "Please enter Weight.", preferredStyle: UIAlertController.Style.alert)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alert,animated: true,completion: nil)
          }
        else{
                self.performSegue(withIdentifier: "goToSecondVC", sender: self)
        }

}

override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "goToSecondVC"{
                let displayVC = segue.destination as! SecondViewController
                displayVC.getWeight = weightTextF.text!
            }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
               self.view.endEditing(true)
               return true
           }
    }
   
extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tapGesture = UITapGestureRecognizer(target: self,
                         action: #selector(hideKeyboard))
        view.addGestureRecognizer(tapGesture)
    }

    @objc func hideKeyboard() {
        view.endEditing(true)
    }
}

 


