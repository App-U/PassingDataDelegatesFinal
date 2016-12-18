//
//  NoteViewerVC.swift
//  PassingDataWithDelegateStarterProject
//
//  Created by Donovan Cotter on 12/18/16.
//  Copyright © 2016 DonovanCotter. All rights reserved.
//

import UIKit

protocol NoteCreatorDelegate {
    func passNote(note: String)
}

class NoteViewerVC: UIViewController, NoteCreatorDelegate {
    @IBOutlet weak var noteTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func passNote(note: String) {
        noteTextView.text = note
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as? NoteCreatorVC
        destinationVC?.delegate = self
    }
    

}
