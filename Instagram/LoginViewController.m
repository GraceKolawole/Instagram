//
//  LoginViewController.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/27/22.
//

#import "LoginViewController.h"

@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextFeild;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextFeild;

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)registerUser:(id)sender {
    PFUser *newUser = [PFUser user];
      
      newUser.username = self.usernameTextFeild.text;
      newUser.email = self.emailField.text;
      newUser.password = self.passwordTextFeild.text;
      
      [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * error) {
          if (error != nil) {
              NSLog(@"Error: %@", error.localizedDescription);
          } else {
              NSLog(@"User registered successfully");
              
              // manually segue to logged in view
          }
      }];
}


- (IBAction)loginUser:(id)sender {
    NSString *username = self.usernameTextFeild.text;
        NSString *password = self.passwordTextFeild.text;
        
        [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser * user, NSError *  error) {
            if (error != nil) {
                NSLog(@"User log in failed: %@", error.localizedDescription);
            } else {
                NSLog(@"User logged in successfully");
                
                // display view controller that needs to shown after successful login
            }
        }];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
