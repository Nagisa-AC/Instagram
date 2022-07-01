#import "RegistrationViewController.h"
#import "HomeViewController.h"
#import <Parse/Parse.h>

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)registerUser {
    PFUser *newUser = [PFUser user];
    newUser.username = self.usernameRegistration.text;
    newUser.email = self.registrationEmail.text;
    newUser.password = self.registrationPassword.text;
    
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * error) {
        if (error != nil) {
            UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Invalid credetials" message:@"Please fill in correct username, email, and password" preferredStyle:(UIAlertControllerStyleAlert)];
            UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action){}];
            [alert addAction:cancelAction];
            UIAlertAction *okAction = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){}];
            [alert addAction:okAction];
            [self presentViewController:alert animated:YES completion:nil];
        } else {
            
        }
    }];
}

- (IBAction)segueToLogin:(id)sender {
    NSLog(@"works");
    [self registerUser];
    [self performSegueToLogin];
}

- (void)performSegueToLogin {
    [self performSegueWithIdentifier:@"segueToLogin" sender:self];
}
- (IBAction)goBackToLogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
