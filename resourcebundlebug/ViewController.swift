//
//  ViewController.swift
//  resourcebundlebug
//
//  Created by Ilya Bersenev on 06/06/2019.
//  Copyright © 2019 cocoapods-test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let bundle = Bundle(for: ViewController.self)
        let currentBundlePath = bundle.resourcePath! as NSString
        let resourcesBundlePath = currentBundlePath.appendingPathComponent("ResourcepodResources.bundle")
        let resourcesBundle = Bundle(path: resourcesBundlePath)!

        let dataUrl = resourcesBundle.url(forResource: "data.txt", withExtension: nil)!
        let data = try! String(contentsOf: dataUrl)

        let label = UILabel(frame: CGRect(x: 10, y: 100, width: 200, height: 50))
        label.text = data

        view.addSubview(label)
    }


}

