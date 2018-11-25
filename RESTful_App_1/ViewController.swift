//
//  ViewController.swift
//  RESTful_App_1
//
//  Created by Barrios, Noel on 11/24/18.
//  Copyright © 2018 Barrios, Noel. All rights reserved.
//

import UIKit


//the class where we store the data fetched from the server
class Music {
    // create a new static function called fetch
    static func fetch() {
        print("yup1")
        // the url we want to hit and fetch data from
        let urlString = "https://www.google.com/"
        // create URL instance using the URL initializer that takes the string above
        // Note: we are using optional binding here.
        if let url = URL.init(string: urlString) {
            print("yup2")
            let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                print(String.init(data: data!, encoding: .ascii) ?? "no data")
            })
            task.resume()
        }
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        Music.fetch()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

