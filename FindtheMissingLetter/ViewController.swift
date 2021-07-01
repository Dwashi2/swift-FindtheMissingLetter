//
//  ViewController.swift
//  FindtheMissingLetter
//
//  Created by Daniel Washington Ignacio on 01/07/21.
//

/*
 Create a function that takes an array of increasing letters and return the missing letter.

 Examples

 missingLetter(["a", "b", "c", "e", "f", "g"]) ➞ "d"

 missingLetter(["O", "Q", "R", "S"]) ➞ "P"

 missingLetter(["t", "u", "v", "w", "x", "z"]) ➞ "y"

 missingLetter(["m", "o"]) ➞ "n"
 Notes

 Tests will always have exactly one letter missing.
 The length of the test array will always be at least two.
 Tests will be in one particular case (upper or lower but never both).
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(self.missingLetter(["a", "b", "c", "e", "f", "g"]))
        print(self.missingLetter(["O", "Q", "R", "S"]))
        print(self.missingLetter(["t", "u", "v", "w", "x", "z"]))
        print(self.missingLetter(["m", "o"]))
    }

    func missingLetter(_ arr: [Character]) -> Character {
        let alphabet: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
        let checkUpp = arr.first?.isUppercase ?? true
        let ini = arr.first?.lowercased() ?? " "
        var count: Int = 0
        for n in alphabet{
            if n == Character(ini) {
                break
            }
            count = count + 1
            
        }
        if checkUpp == true {
            for n in 0..<arr.count{
                if alphabet[count+n] != Character(arr[n].lowercased()){
                    return Character(alphabet[count+n].uppercased())
                }
            }
        }
        else{
            for n in 0..<arr.count{
                if alphabet[count+n] != arr[n]{
                    return alphabet[count+n]
                }
            }
        }
        return Character("a")
    }

}

