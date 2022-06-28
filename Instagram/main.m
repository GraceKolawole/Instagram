//
//  main.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/27/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "LoginViewController.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
