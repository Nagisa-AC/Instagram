#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "Post.h"
#import "Parse.h"
@import Parse;

NS_ASSUME_NONNULL_BEGIN

@interface ProfileCollectionViewCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet PFImageView *collectionImage;
@property (strong, nonatomic) Post *post;

@end

NS_ASSUME_NONNULL_END
