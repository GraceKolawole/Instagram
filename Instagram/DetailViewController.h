//
//  DetailViewController.h
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/30/22.
//

#import <UIKit/UIKit.h>
#import "PFImageView.h"
#import "Post.h"
//#import "DateTool.h"
NS_ASSUME_NONNULL_BEGIN

@interface DetailViewController : UIViewController
@property (strong, nonatomic) Post *post;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *captionLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UILabel *userLabel;
@property (weak, nonatomic) IBOutlet PFImageView *photoImageView;
@property (weak, nonatomic) IBOutlet PFImageView *pictureImageView;

@end

NS_ASSUME_NONNULL_END
