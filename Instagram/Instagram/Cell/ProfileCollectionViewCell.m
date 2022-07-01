#import "ProfileCollectionViewCell.h"


@implementation ProfileCollectionViewCell

- (void)setPost:(Post *)post {
    _post = post;
    self.collectionImage.file = post[@"image"];
    [self.collectionImage loadInBackground];
}

@end
