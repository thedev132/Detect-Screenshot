//
//  ViewController.swift
//  DetectScreenshot
//
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        detectScreenShot {
            print("Screenshoted")
        }
        
    }

    func detectScreenShot(action: @escaping () -> ()) {
        let mainQueue = OperationQueue.main
        NotificationCenter.default.addObserver(forName: UIApplication.userDidTakeScreenshotNotification, object: nil, queue: mainQueue) { notification in
            action()
        }
    }

}

