#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Post.h"
#import "Parse.h"
@import Parse;

NS_ASSUME_NONNULL_BEGIN

@interface InstagramTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *postComment;
@property (strong, nonatomic) PFUser *user;
@property (strong, nonatomic) IBOutlet PFImageView *photoImageView;
@property (strong, nonatomic) Post *post;
@property (weak, nonatomic) IBOutlet UILabel *postDateStamp;
@property (weak, nonatomic) IBOutlet UILabel *timelineName;


@end

NS_ASSUME_NONNULL_END
