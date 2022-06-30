#import "RegistrationViewController.h"
#import "HomeViewController.h"
#import <Parse/Parse.h>

@interface RegistrationViewController ()

@end

@implementation RegistrationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (void)registerUser {
    // initialize a user object
    PFUser *newUser = [PFUser user];
    
    // set user properties
    newUser.username = self.usernameRegistration.text;
    newUser.email = self.registrationEmail.text;
    newUser.password = self.registrationPassword.text;
    
    // call sign up function on the object
    [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError * error) {
        if (error != nil) {
            NSLog(@"Error: %@", error.localizedDescription);
        } else {
            NSLog(@"User registered successfully");
            
            // manually segue to logged in view
        }
    }];
}

- (IBAction)segueToLogin:(id)sender {
    [self registerUser];
    [self performSegueToLogin];
}

- (void)performSegueToLogin {
    [self performSegueWithIdentifier:@"segueToLogin" sender:self];
}
@end
