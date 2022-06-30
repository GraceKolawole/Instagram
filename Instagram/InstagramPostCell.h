//
//  InstagramPostCell.h
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/29/22.
//

#import <UIKit/UIKit.h>
#import "Post.h"
#import "Parse/Parse.h"
#import "PFImageView.h"


NS_ASSUME_NONNULL_BEGIN

@interface InstagramPostCell : UITableViewCell

@property (weak, nonatomic) IBOutlet PFImageView *photoImageView;
@property (strong, nonatomic) Post *post;
@property (weak, nonatomic) IBOutlet UILabel *captionTextLabel;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *likeCountLabel;
@property (weak, nonatomic) IBOutlet UIButton *likeButton;

@end

NS_ASSUME_NONNULL_END
