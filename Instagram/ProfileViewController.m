//
//  ProfileViewController.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/30/22.
//

#import "ProfileViewController.h"
#import "DetailViewController.h"
#import "FeedViewController.h"
#import "InstagramPostCell.h"
#import "LoginViewController.h"
#import "DateTools.h"
#import "PFImageView.h"
#import "Post.h"
#import "Parse/Parse.h"
#import "SceneDelegate.h"

@interface ProfileViewController ()
@property (nonatomic, strong) NSMutableArray *postsArray;
@end

@implementation ProfileViewController

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    self.photoImageView.file = self.post[@"image"];
//    [self.photoImageView loadInBackground];
//    self.userLabel.text = self.post.author.username;
//    
//}
- (IBAction)didTapBack:(id)sender {
    SceneDelegate *sceneDelegate = (SceneDelegate *)self.view.window.windowScene.delegate;

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    FeedViewController *feedViewController = [storyboard instantiateViewControllerWithIdentifier:@"FeedViewController"];
    
    sceneDelegate.window.rootViewController = feedViewController;
    
    [PFUser logOutInBackgroundWithBlock:^(NSError * _Nullable error) {
        // PFUser.current() will now be nil
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
