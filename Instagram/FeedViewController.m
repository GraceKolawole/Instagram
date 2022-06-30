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
#import "InstagramPostCell.h"
#import "Post.h"
#import "AppDelegate.h"
#import "PFImageView.h"
#import "DateTools.h"
#import "DetailViewController.h"


@interface FeedViewController ()<UITableViewDataSource, UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *postsArray;
@property (strong, nonatomic) Post *post;
@property (nonatomic, strong) UIRefreshControl *refreshControl;
@property (strong, nonatomic) Post *profilepicture;

@end

@implementation FeedViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.refreshControl = [[UIRefreshControl alloc] init];

    self.tableView.dataSource = self;
    self.tableView.delegate = self;

    [self.refreshControl addTarget:self action: @selector(beginRefresh:) forControlEvents:UIControlEventValueChanged];
    [self.tableView insertSubview:self.refreshControl atIndex:0];

    // Server fetch
    PFQuery *postQuery = [Post query];
    [postQuery orderByDescending:@"createdAt"];
    [postQuery includeKey:@"author"];
    postQuery.limit = 20;

    [postQuery findObjectsInBackgroundWithBlock:^(NSArray<Post *> * _Nullable posts, NSError * _Nullable error) {
        if (posts) {
            self.postsArray = (NSMutableArray *)posts;
            [self.tableView reloadData];
        }
        else {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
}
-(void)beginRefresh: (UIRefreshControl *)UIRefreshControl {
    
    [self.refreshControl beginRefreshing];
    
    
    // get the current user
    // set the user image
    // set the property

    PFQuery *postQuery = [Post query];
    [postQuery orderByDescending:@"createdAt"];
    [postQuery includeKey:@"author"];
    postQuery.limit = 20;

    [postQuery findObjectsInBackgroundWithBlock:^(NSArray<Post *> * _Nullable posts, NSError * _Nullable error) {
        if (posts) {
            self.postsArray = (NSMutableArray *)posts;
            [self.tableView reloadData];
        }
        else {
            NSLog(@"%@", error.localizedDescription);
        }
    }];
    [self.refreshControl endRefreshing];
    
}
- (IBAction)didTapLogout:(id)sender {
    
    SceneDelegate *sceneDelegate = (SceneDelegate *)self.view.window.windowScene.delegate;

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    LoginViewController *loginViewController = [storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    
    sceneDelegate.window.rootViewController = loginViewController;
    
    [PFUser logOutInBackgroundWithBlock:^(NSError * _Nullable error) {
        // PFUser.current() will now be nil
    }];
    //[self performSegueWithIdentifier:@"FirstSegue" sender:nil];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    InstagramPostCell *cell = [tableView dequeueReusableCellWithIdentifier:@"InstagramPostCell"];
    
    Post *post = self.postsArray[indexPath.row];
    
    cell.post = post;
    
    cell.photoImageView.file = post[@"image"];
    [cell.photoImageView loadInBackground];
    
    cell.pictureImageView.file = post[@"image"];
    [cell.pictureImageView loadInBackground];
    
    cell.captionTextLabel.text = post.caption;
    cell.userLabel.text = post.author.username;
    cell.nameLabel.text =  post.author.username;
    
    cell.dateLabel.text = [post.createdAt shortTimeAgoSinceNow];
    cell.likeCountLabel.text = [NSString stringWithFormat:@"%@", post.likeCount];
//    cell.photoImageView.file = post.image;
    return cell;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.postsArray count];
}



//// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    NSLog(@"In the prepareForSegue");
    if ([[segue identifier] isEqualToString:@"DetailsSegue"]) {
        NSLog(@"This is the detail segue");
        InstagramPostCell *cell = (InstagramPostCell *)sender;
        Post *post = cell.post;
        DetailViewController *detailVC = [segue destinationViewController];
        detailVC.post = post;
    }
}

@end
