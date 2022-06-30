//
//  DetailViewController.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/30/22.
//

#import "DetailViewController.h"
#import "FeedViewController.h"
#import "InstagramPostCell.h"
#import "LoginViewController.h"
#import "DateTools.h"
#import "PFImageView.h"
#import "Post.h"
#import "Parse/Parse.h"

@interface DetailViewController ()

@property (nonatomic, strong) NSMutableArray *postsArray;


@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //self.pictureImageView.file = self.post[@"image"];
    

    self.photoImageView.file = self.post[@"image"];
    [self.photoImageView loadInBackground];
    
    self.captionLabel.text = self.post.caption;
    self.nameLabel.text = self.post.author.username;
    self.userLabel.text = self.post.author.username;
    
    self.pictureImageView.file = self.post[@"image"];
    [self.pictureImageView loadInBackground];
    
    self.dateLabel.text = [self.post.createdAt shortTimeAgoSinceNow];

   
    //    self.likeCountLabel.text = [NSString stringWithFormat:@"%@", post.likeCount];
}

@end
