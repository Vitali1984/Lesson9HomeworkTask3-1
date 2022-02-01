//
//  StartScreenViewController.swift
//  HomeWorkLesson6
//
//  Created by Виталий on 23.01.22.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    
    @IBAction func onStartButton(_ sender: Any) {
        
        let vc  = ViewController()
        present(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
