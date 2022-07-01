#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ComposeViewController : UIViewController <UITableViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UIBarButtonItem *cancel;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *share;
@property (weak, nonatomic) IBOutlet UIImageView *imageToShare;
@property (weak, nonatomic) IBOutlet UITextView *noteToPost;

@end

NS_ASSUME_NONNULL_END
