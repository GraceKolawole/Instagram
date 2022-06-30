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
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    InstagramPostCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InstagramPostCell"];
    
    Post *post = self.postsArray[indexPath.row];
    
    cell.post = post;
    
    cell.pictureImageView.file = post[@"image"];
    [cell.pictureImageView loadInBackground];

    
    cell.captionTextLabel.text = post.caption;
    cell.nameLabel.text = post.author.username;
    cell.userLabel.text = post.author.username;
    
    cell.dateLabel.text = [post.createdAt shortTimeAgoSinceNow];
    cell.likeCountLabel.text = [NSString stringWithFormat:@"%@", post.likeCount];
//    cell.photoImageView.file = post.image;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.postsArray count];
}

@end
