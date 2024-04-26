//
//  ViewController.swift
//  mporter_PilotAlphabet
//
//  Created by Michael Ray Porter, Jr on 2/27/24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var Input: UITextField!
    
    @IBOutlet weak var Alphabet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Input.delegate = self

    }

    func AlphabetDict(letter: String){
        
        switch letter{
        case "A":
            Alphabet.text = "Alpha"
        case "B":
            Alphabet.text = "Bravo"
        case "C":
            Alphabet.text = "Charlie"
        case "D":
            Alphabet.text = "Delta"
        case "E":
            Alphabet.text = "Echo"
        case "F":
            Alphabet.text = "Foxtrot"
        case "G":
            Alphabet.text = "Golf"
        case "H":
            Alphabet.text = "Hotel"
        case "I":
            Alphabet.text = "India"
        case "J":
            Alphabet.text = "Juliet"
        case "K":
            Alphabet.text = "Kilo"
        case "L":
            Alphabet.text = "Lima"
        case "M":
            Alphabet.text = "Mike"
        case "N":
            Alphabet.text = "November"
        case "O":
            Alphabet.text = "Oscar"
        case "P":
            Alphabet.text = "Papa"
        case "Q":
            Alphabet.text = "Quebec"
        case "R":
            Alphabet.text = "Romeo"
        case "S":
            Alphabet.text = "Sierra"
        case "T":
            Alphabet.text = "Tango"
        case "U":
            Alphabet.text = "Uniform"
        case "V":
            Alphabet.text = "Victor"
        case "W":
            Alphabet.text = "Whiskey"
        case "X":
            Alphabet.text = "X ray"
        case "Y":
            Alphabet.text = "Yankee"
        case "Z":
            Alphabet.text = "Zulu"
        default:
            Alphabet.text = "Pilot"
        }
        
    }
    
    //user hits the Return key
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //make the keyboard disappear
        //Input.resignFirstResponder()    this line will work just as well
        textField.resignFirstResponder()
        
        if let input = Input.text{//read from text field
            if input.count == 0 || input.count > 1 || input.uppercased() < "A" || input.uppercased() > "Z"{//error
                displayAlert(msgTitle: "Error", msgContent: "You have to enter a letter, dummy.")
            }else{//we have a valid letter
                AlphabetDict(letter: input.uppercased())
            }
        }else{//error
            displayAlert(msgTitle: "Error", msgContent: "You have to enter a letter, dummy.")
        }
        return true
    }
    
    
    
    func displayAlert(msgTitle:String, msgContent:String){
        let alertController = UIAlertController(title: msgTitle, message: msgContent,
                                                preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "Close", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
    }
    

    /*
     1. read the letter in the text field
     2. find the corresponding word in the dictionary
     3. display the word in the label
     */
}

