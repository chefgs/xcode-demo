//
//  DocumentViewController.swift
//  demo
//
//  Created by Saravanan Gnanaguru on 29/12/23.
//

import UIKit

class DocumentViewController: UIDocumentViewController {

    @IBOutlet weak var documentNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateViewsIfNecessary()
    }

    override func documentDidOpen() {
        super.documentDidOpen()
        self.updateViewsIfNecessary()
    }

    func updateViewsIfNecessary() {
        // Check if the document is open and the view is loaded
        guard let document, !document.documentState.contains(.closed) else { return }
        guard isViewLoaded else { return }

        // Display the content of the document, e.g.:
        self.documentNameLabel.text = document.localizedName
    }

    @IBAction func dismissDocumentViewController() {
        dismiss(animated: true)
    }
}
