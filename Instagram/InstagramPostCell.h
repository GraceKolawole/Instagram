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


@end

NS_ASSUME_NONNULL_END
