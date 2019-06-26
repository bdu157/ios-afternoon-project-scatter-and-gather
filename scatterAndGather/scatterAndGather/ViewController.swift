//
//  ViewController.swift
//  scatterAndGather
//
//  Created by Dongwoo Pae on 6/25/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var isScattered: Bool = true
    
    @IBOutlet weak var labelL: UILabel!
    @IBOutlet weak var labela: UILabel!
    @IBOutlet weak var labelm: UILabel!
    @IBOutlet weak var labelb: UILabel!
    @IBOutlet weak var labeld: UILabel!
    @IBOutlet weak var labelaa: UILabel!
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    
    var labelLocations : [CGPoint] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Hello!"
        self.addLabelLocations()
    }

    @IBAction func toggleButtonPressed(_ sender: Any) {

        self.fadingLogo()
        
        if isScattered == true {
        self.scatterLetters()
        } else {
        self.gatherLetters()
        }
    }
    
    func fadingLogo(){
        if isScattered == true {
            UIImageView.animate(withDuration: 2, delay: 0, options: .curveEaseOut, animations: {
                self.logoImageView.alpha = 0
            }, completion: nil)
        } else {
            UIImageView.animate(withDuration: 2, delay: 0, options: .curveEaseOut, animations: {
                self.logoImageView.alpha = 1
            }, completion: nil)
        }
    }
    
    
    func scatterLetters() {
        
        let animBlock = {
            
            //rotation
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.3) {
                self.labelL.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: -360...360)))
                self.labela.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: -360...360)))
                self.labelm.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: -360...360)))
                self.labelb.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: -360...360)))
                self.labeld.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: -360...360)))
                self.labelaa.transform = CGAffineTransform(rotationAngle: CGFloat(Int.random(in: -360...360)))
            }
            
            //position
            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.6) {
                self.labelL.layer.position = CGPoint(x: Int.random(in: 0...300), y: Int.random(in: 0...600))
                self.labela.layer.position = CGPoint(x: Int.random(in: 0...300), y: Int.random(in: 0...600))
                self.labelm.layer.position = CGPoint(x: Int.random(in: 0...300), y: Int.random(in: 0...600))
                self.labelb.layer.position = CGPoint(x: Int.random(in: 0...300), y: Int.random(in: 0...600))
                self.labeld.layer.position = CGPoint(x: Int.random(in: 0...300), y: Int.random(in: 0...600))
                self.labelaa.layer.position = CGPoint(x: Int.random(in: 0...300), y: Int.random(in: 0...600))
            }
        
            //color - textColor
            UIView.addKeyframe(withRelativeStartTime: 0.7, relativeDuration: 0.6) {
                self.labelL.textColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 1)
               self.labela.textColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 1)
                self.labelm.textColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 1)
                self.labelb.textColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 1)
                self.labeld.textColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 1)
                self.labelaa.textColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 1)
            }
            
            //color - backgroundColor
            UIView.addKeyframe(withRelativeStartTime: 0.8, relativeDuration: 0.6) {
                self.labelL.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 0.6)
                self.labela.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 0.6)
                self.labelm.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 0.6)
                self.labelb.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 0.6)
                self.labeld.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255
                )) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 0.6)
                self.labelaa.backgroundColor = UIColor(red: CGFloat(Int.random(in: 0...255)) / 255.0, green: CGFloat(Int.random(in: 0...255)) / 255.0, blue: CGFloat(Int.random(in: 0...255)) / 255.0, alpha: 0.6)
            }
            
        }
        UIView.animateKeyframes(withDuration: 2, delay: 0, options: [], animations: animBlock, completion: nil)
        isScattered = false
    }
    
    func gatherLetters() {
        //rotation reset
        UIView.animate(withDuration: 2, animations: {
            self.labelL.transform = .identity
            self.labela.transform = .identity
            self.labelm.transform = .identity
            self.labelb.transform = .identity
            self.labeld.transform = .identity
            self.labelaa.transform = .identity
        }, completion: nil)
        
        
        //position reset - x and y
        //color reset - backgroundColor/textColor
        let labels = [labelL, labela, labelm, labelb, labeld, labelaa]
        UIView.animate(withDuration: 2, delay: 0, options: .curveLinear, animations: {
                var index = 0
            for x in labels {
                guard let label = x else {return}
                label.textColor = .black
                label.backgroundColor = .clear
                label.alpha = 1
                label.center = self.labelLocations[index]
                index += 1
            }
        }, completion: nil)
        self.isScattered = true
    }

    
    func addLabelLocations() {
        let labels = [labelL, labela, labelm, labelb, labeld, labelaa]
        for x in labels {
            guard let label = x else {return}
            self.labelLocations.append(label.center)
        }
    }
    
}

