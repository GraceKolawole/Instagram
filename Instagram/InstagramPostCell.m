//
//  InstagramPostCell.m
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/29/22.
//

#import "InstagramPostCell.h"

@implementation InstagramPostCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (IBAction)didTaplike:(id)sender {
//
//    if (self.post.favorited){
//        self.post.favorited =NO;
//        self.post.favoriteCount -=1;
//        //todo : update fav text
//        [self.likeButton setImage:[UIImage imageNamed:@"favor-icon"] forState:UIControlStateNormal];
//
//        NSString *favoriteCount = [NSString stringWithFormat:@"%d", self.post.likeCount];
//                [self.likeCount setTitle:favoriteCount forState:UIControlStateNormal];
//
//    }
//
//    else{
//        self.post.favorited =YES;
//        self.post.likeCount +=1;
//        //todo : update fav text
//        [self.likeButton setImage:[UIImage imageNamed:@"favor-icon-red"] forState:UIControlStateNormal];
//
//        NSString *likeCount = [NSString stringWithFormat:@"%d", self.post.likeCount];
//                [self.likeButton setTitle:likeCount forState:UIControlStateNormal];
//    }
}
    
@end
