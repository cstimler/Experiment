//
//  ViewController.swift
//  Experiment
//
//  Created by June2020 on 4/4/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func experiment(sender: UIButton) {
        let nextController = UIImagePickerController()
        present(nextController, animated: true, completion: nil)
    }
    
    @IBAction func imageExperiment() {
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        present(controller, animated: true, completion: nil)
    }
    
    @IBAction func alertExperiment() {
        let controller = UIAlertController()
        
        controller.title = "Test Alert"
        controller.message = "This is a test"
        
        // Alert view doesn't have a built in way to dismiss its view so let's make one:
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertAction.Style.default) {
            action in self.dismiss(animated:true, completion: nil)
        }
        
        controller.addAction(okAction)
        
        present(controller, animated: true, completion: nil)
    }


}

