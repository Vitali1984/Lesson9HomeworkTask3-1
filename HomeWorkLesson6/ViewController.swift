//
//  ViewController.swift
//  HomeWorkLesson6
//
//  Created by Виталий on 13.01.22.
//

import UIKit

class ViewController: UIViewController {
    
    private var button: UIButton!
    
    //MARK: - ViewConrtollerLifeCycle
    //MARK: -
    
    override func loadView() {
        let customView = UIView(frame: UIScreen.main.bounds)
        
        button = UIButton(type: .custom)
        button.backgroundColor = .systemBlue
        button.setTitle("Tap Me", for: .normal)
        button.addTarget(self, action: #selector(onButton), for: .touchUpInside)
        customView.addSubview(button)
        
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
    }
    
    //MARK: - Layout
    //MARK: -
    
    override func viewWillLayoutSubviews() {
        button.frame = createButton()
        button.layer.cornerRadius = 0.5 * button.bounds.size.width
        button.clipsToBounds = true
    }
    
    //MARK: - Action
    //MARK: -
    
    @objc func onButton() {
        button.backgroundColor = getRandomColor()
        button.frame = createButton()
    }
    
    //MARK: - Private Methods
    //MARK: -
    
    func getRandomColor() -> UIColor {
         let red:CGFloat = .random(in: 0...1)
         let green:CGFloat = .random(in: 0...1)
         let blue:CGFloat = .random(in: 0...1)

         return UIColor(red:red, green: green, blue: blue, alpha: 1.0)
    }
    
    func getRandomCordinateX() -> CGFloat {
        let x : CGFloat = .random(in: 0...(view.bounds.width - button.bounds.size.width))
        return x
    }
    
    func getRandomCordinateY() -> CGFloat {
        let y : CGFloat = .random(in: 0...(view.bounds.height - button.bounds.size.width))
        return y
    }
    
    func createButton () -> CGRect {
        let width: CGFloat = 100
        let height: CGFloat = 100
        
        let frame = CGRect(x: getRandomCordinateX(),
                              y: getRandomCordinateY(),
                              width: width,
                              height: height)
        return frame
    }
}

