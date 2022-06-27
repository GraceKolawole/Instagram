//
//  ViewController.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/27/22.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)loginUser:(id)sender {
    let username = usernameLabel.text ?? ""
      let password = passwordLabel.text ?? ""

      PFUser.logInWithUsername(inBackground: username, password: password) { (user: PFUser?, error: Error?) in
           if let error = error {
             print("User log in failed: \(error.localizedDescription)")
           } else {
             print("User logged in successfully")
             // display view controller that needs to shown after successful login
           }
        }
}



@end
