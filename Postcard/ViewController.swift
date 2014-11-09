//
//  ViewController.swift
//  Postcard
//
//  Created by  Andrea Antonacci on 03/11/14.
//  Copyright (c) 2014 Andrea Antonacci. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var etichettaMessaggio: UILabel!
    @IBOutlet weak var campoInserisciNome: UITextField!
    @IBOutlet weak var campoInserisciMessaggio: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func pressioneBottoneInviaCartolina(sender: UIButton) {
        etichettaMessaggio.hidden = false
        etichettaMessaggio.text = campoInserisciMessaggio.text
        etichettaMessaggio.textColor = UIColor.redColor()
        campoInserisciMessaggio.text = ""
        campoInserisciMessaggio.resignFirstResponder()
        
        mailButton.setTitle("Cartolina Inviata", forState: UIControlState.Normal)
    }

    
}

