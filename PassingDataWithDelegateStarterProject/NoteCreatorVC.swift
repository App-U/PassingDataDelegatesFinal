//
//  NoteCreatorVC.swift
//  PassingDataWithDelegateStarterProject
//
//  Created by Donovan Cotter on 12/18/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

import UIKit

class NoteCreatorVC: UIViewController {
    @IBOutlet weak var noteTextView: UITextView!
    
    var delegate: NoteCreatorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func createNotePressed(_ sender: Any) {
        if let noteCreatorDelegate = delegate {
            noteCreatorDelegate.passNote(note: noteTextView.text)
        }
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func cancelPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
