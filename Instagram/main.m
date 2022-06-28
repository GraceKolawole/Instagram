//
//  main.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/27/22.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    NSString * sceneDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        sceneDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, sceneDelegateClassName);
}
