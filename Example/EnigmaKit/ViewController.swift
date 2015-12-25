// The MIT License (MIT)
//
// Copyright (c) 2015 Joakim Gyllström
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import UIKit
import EnigmaKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    let enigma = Enigma()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Enigma(plugboard: Plugboard(), rotors: [Rotor.III, Rotor.IV, Rotor.II], reflector: Reflector.C)
        
        let rotor = Reflector.B
    }
    
    @IBAction func handleButtonPressed(sender: UIButton) {
        guard let text = textField.text else { label.text = ""; return }
        label.text = enigma.encode(text)
    }
}

