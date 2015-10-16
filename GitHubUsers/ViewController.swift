//
//  ViewController.swift
//  GitHubUsers
//
//  Created by PPoborca on 10/14/15.
//  Copyright (c) 2015 PPoborca. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        makeGetRequest();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeGetRequest(){
        var url : String = "https://api.github.com/users"
        var request : NSMutableURLRequest = NSMutableURLRequest()
        request.URL = NSURL(string: url)
        request.HTTPMethod = "GET"
        request.timeoutInterval = 120

        NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue(), completionHandler:{ (response:NSURLResponse!, data: NSData!, error: NSError!) -> Void in

            var error: NSError?
            if data != nil {
            var test  =  NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary?
            }
            var asdfs = 123;
        })
    }

}

