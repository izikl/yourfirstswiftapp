//
//  AppDelegate.swift
//  Coffee Timer
//
//  Created by Ash Furrow on 2014-07-26.
//  Copyright (c) 2014 Ash Furrow. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
                            
    var window: UIWindow?

    func method (arg: String!) {
        print(arg)
    }

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject : AnyObject]?) -> Bool {
        print("Application has launched.")
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        print("Application has resigned active.")
    }

    func applicationDidEnterBackground(application: UIApplication) {
        print("Application has entered background.")
    }

    func applicationWillEnterForeground(application: UIApplication) {
        print("Application has entered foreground.")
    }

    func applicationDidBecomeActive(application: UIApplication) {
        print("Application has become active.")
    }

    func applicationWillTerminate(application: UIApplication) {
        print("Application will terminate.")
    }

    func application(application: UIApplication, didReceiveLocalNotification notification: UILocalNotification) {
        print("Application received local notification.")

        let alertController = UIAlertController(title: notification.alertTitle, message: notification.alertBody, preferredStyle: .Alert)

        let okAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
        alertController.addAction(okAction)

        window!.rootViewController!.presentViewController(alertController, animated: true, completion: nil)
    }
}

