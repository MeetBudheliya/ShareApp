//
//  ViewController.swift
//  share
//
//  Created by Meet's MAC on 17/05/22.
//

import UIKit
import WebKit

let suiteName = "group.com.meet.share.Extension"
let keyName = "shareURL"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let url = UserDefaults(suiteName: suiteName)?.url(forKey: keyName)
        print("Shared URL Found : " + (url?.absoluteString ?? "Nil"))

        let web = WKWebView()
        web.frame = self.view.safeAreaLayoutGuide.layoutFrame
        self.view.addSubview(web)

        web.load(URLRequest(url: url ?? URL(string: "http://httm.gm.com/")!))
    }


}

