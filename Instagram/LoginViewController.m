//
//  LoginViewController.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/27/22.
//

#import "LoginViewController.h"
#import "Parse/Parse.h"


@interface LoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *usernameTextFeild;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextFeild;
- (IBAction)loginUser:(id)sender;
- (IBAction)registerUser:(id)sender;

@end

@implementation LoginViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)registerUser {

    PFUser *newUser = [PFUser user];
    
    newUser.username = self.usernameTextFeild.text;
    newUser.password = self.passwordTextFeild.text;
    
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
            // Todo - segue
        } else {
            NSLog(@"User registered successfully");
            [self performSegueWithIdentifier:@"FirstSegue" sender:nil];
  
        }
    }];
}

- (void)loginUser {
    NSString *username = self.usernameTextFeild.text;
    NSString *password = self.passwordTextFeild.text;
    
    [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser * user, NSError *  error) {
        if (error != nil) {
            NSLog(@"User log in failed: %@", error.localizedDescription);
           
        } else {
            NSLog(@"User logged in successfully");
            [self performSegueWithIdentifier:@"FirstSegue" sender:nil];
        }
        
    }];
}

- (IBAction)registerUser:(id)sender {
    if([self.usernameTextFeild.text isEqual:@""] || [self.passwordTextFeild.text isEqual:@""] ){
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title"
                                                                               message:@"Message"
                                                                        preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                        style:UIAlertActionStyleCancel
                                                      handler:^(UIAlertAction * _Nonnull action) {
                                                         
                                                      }];
    [alert addAction:cancelAction];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                     }];
    [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:^{
    }];
    
    }
    else{
        [self registerUser];
    }
    
}

- (IBAction)loginUser:(id)sender {
    if ([self.usernameTextFeild.text isEqual:@""] || [self.passwordTextFeild.text isEqual:@""]){

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Title"
                                                                               message:@"Message"
                                                                        preferredStyle:(UIAlertControllerStyleAlert)];
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
                                                        style:UIAlertActionStyleCancel
                                                      handler:^(UIAlertAction * _Nonnull action) {
                                                           
                                                      }];
   
    [alert addAction:cancelAction];

    UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK"
                                                       style:UIAlertActionStyleDefault
                                                     handler:^(UIAlertAction * _Nonnull action) {
                                                     }];
        
        [alert addAction:okAction];
    [self presentViewController:alert animated:YES completion:^{

    }];
        
    }
    else{
        [self loginUser];
    }
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
