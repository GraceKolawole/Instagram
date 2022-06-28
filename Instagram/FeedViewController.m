//
//  FeedViewController.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/27/22.
//

#import "FeedViewController.h"
#import "Parse/Parse.h"
#import "SceneDelegate.h"
#import "LoginViewController.h"

@interface FeedViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation FeedViewController

- (IBAction)didTapLogout:(id)sender {
    
    SceneDelegate *sceneDelegate = (SceneDelegate *)self.view.window.windowScene.delegate;

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoginViewController *loginViewController = [storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    
    sceneDelegate.window.rootViewController = loginViewController;
    
    [PFUser logOutInBackgroundWithBlock:^(NSError * _Nullable error) {
        // PFUser.current() will now be nil
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
