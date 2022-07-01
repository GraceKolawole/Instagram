//
//  ProfileViewController.h
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/30/22.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "FeedViewController.h"
#import "InstagramPostCell.h"
#import "LoginViewController.h"
#import "DateTools.h"
#import "PFImageView.h"
#import "Post.h"
#import "Parse/Parse.h"
#import "DetailViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface ProfileViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet PFImageView *photoImageView;
@property (weak, nonatomic) IBOutlet PFImageView *pictureImageView;


@end

NS_ASSUME_NONNULL_END
