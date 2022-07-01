#import "InstagramTableViewCell.h"
#import "LoginViewController.h"

@implementation InstagramTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


- (void)setPost:(Post *)post {
    _post = post;
    self.photoImageView.file = post[@"image"];
    [self.photoImageView loadInBackground];
    self.postComment.text = self.post.caption;
    self.timelineName.text = self.post.author.username;
    NSDate *postDate = self.post.createdAt;
    NSDateComponentsFormatter *formatter = [[NSDateComponentsFormatter alloc] init];
    formatter.unitsStyle = NSDateComponentsFormatterUnitsStyleFull;
    formatter.allowedUnits = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour;
    NSString *elapsed = [formatter stringFromDate:postDate toDate:[NSDate date]];
    self.postDateStamp.text = elapsed;
}




@end
