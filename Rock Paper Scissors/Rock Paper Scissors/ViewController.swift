//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by JD Smith on 1/28/21.
//  Copyright © 2021 Monsterreporter. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var rock: UIButton!
    
    var functions = ["rock", "paper", "scissors"]
    var computerfunc = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        play()
        // Do any additional setup after loading the view.
    }
    func play(){
        computerfunc += ["rock", "paper", "scissors"]
        computerfunc.shuffle()
    }
    @IBAction func paper(_ sender: Any) {
        computerfunc.shuffle()
        let computerchoose = computerfunc[0]
        if computerchoose == "scissors"{
            
            let ac = UIAlertController(title: "", message: "Computer chose scissors, scissors beats paper; You Lost 😈", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
        }
        if computerchoose == "rock"{
                
            let ac = UIAlertController(title: "", message: "Computer chose scissors, rock beats paper; You Won 😎", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
                
            }
            
        if computerchoose == "paper"{
            
            let ac = UIAlertController(title: "", message: "Computer chose paper, paper ties to paper; It's a tie", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
                
            }
            
    }
    
    @IBAction func scissors(_ sender: Any) {
        computerfunc.shuffle()
        let computerchoose = computerfunc[0]
        if computerchoose == "scissors"{
            
            let ac = UIAlertController(title: "", message: "Computer chose scissors, scissors tie to scissors; It's a tie", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
        }
        if computerchoose == "rock"{
                
            let ac = UIAlertController(title: "", message: "Computer chose rock, rock beats scissors; You Lost 😈", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
                
            }
            
        if computerchoose == "paper"{
            
            let ac = UIAlertController(title: "", message: "Computer chose paper, scissors beat paper; You Won 😎", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
                
            }
    
    


}
    @IBAction func rock(_ sender: Any) {
        
        computerfunc.shuffle()
        let computerchoose = computerfunc[0]
        if computerchoose == "scissors"{
            
            let ac = UIAlertController(title: "", message: "Computer chose scissors, rock beats scissors; You Won 😎", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
        }
        if computerchoose == "rock"{
                
            let ac = UIAlertController(title: "", message: "Computer chose rock, rock ties to rock; It's a tie", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
                
            }
            
        if computerchoose == "paper"{
            
            let ac = UIAlertController(title: "", message: "Computer chose paper, paper beats rock; You Lost 😈", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "Continue", style: .default))
            present(ac, animated: true)
                
            }
        
    }
    
}
