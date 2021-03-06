//
//  Post.h
//  Instagram
//
//  Created by Oluwanifemi Kolawole on 6/28/22.
//

#import "PFObject.h"
#import "Parse/Parse.h"

NS_ASSUME_NONNULL_BEGIN

@interface Post : PFObject<PFSubclassing>

@property (nonatomic, strong) NSString *postID;
@property (nonatomic, strong) NSString *userID;
@property (nonatomic, strong) PFUser *author;

@property (nonatomic, strong) NSNumber *likeCount;
@property (nonatomic, strong) PFFileObject *image;
@property (nonatomic, strong) NSNumber *commentCount;
@property (nonatomic, strong) NSString *caption;
@property (nonatomic, strong) NSDate *createdAt;

+ (void) postUserImage: ( UIImage * _Nullable )image withCaption: ( NSString * _Nullable )caption withCompletion: (PFBooleanResultBlock  _Nullable)completion;

@end

NS_ASSUME_NONNULL_END
