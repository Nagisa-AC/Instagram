#import "ComposeViewController.h"
#import "Post.h"
#import <Parse/Parse.h>

@interface ComposeViewController ()<UITableViewDelegate, UITableViewDataSource>

@end

@implementation ComposeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary<NSString *,id> *)info {
    UIImage *editedImage = info[UIImagePickerControllerEditedImage];
    [self.imageToShare setImage:editedImage];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)selectImageFromLibrary:(id)sender {
    UIImagePickerController *imagePickerVC = [UIImagePickerController new];
    imagePickerVC.delegate = self;
    imagePickerVC.allowsEditing = YES;
    imagePickerVC.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePickerVC animated:YES completion:nil];
}

- (IBAction)takePicture:(id)sender {
    UIImagePickerController *imagePickerVC = [UIImagePickerController new];
    imagePickerVC.delegate = self;
    imagePickerVC.allowsEditing = YES;
    imagePickerVC.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentViewController:imagePickerVC animated:YES completion:nil];
}

- (IBAction)sharePost:(id)sender {
    if (self.imageToShare.image && self.noteToPost.text) {
           [Post postUserImage:self.imageToShare.image withCaption:self.noteToPost.text withCompletion:^(BOOL succeeded, NSError * _Nullable error) {
               [self dismissViewControllerAnimated:YES completion:nil];
           }];
       } else {
           NSLog(@"Missing an image and/or caption!");
       }
}

- (IBAction)cancelCompose:(id)sender {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}


@end
