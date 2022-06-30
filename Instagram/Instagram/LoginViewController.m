//
//  LoginViewController.m
//  Instagram
//
//  Created by Abel Kelbessa on 6/29/22.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()


@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loginUser {
    NSString *username = self.usernameField.text;
    NSString *password = self.passwordField.text;
    
    [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser * user, NSError *  error) {
        if (error != nil) {
            NSLog(@"User log in failed: %@", error.localizedDescription);
        } else {
            NSLog(@"User logged in successfully");
            [self performSegueToHome];
        }
    }];
}

- (IBAction)signUp:(id)sender {
    [self performSegueToReg];
}

- (void)performSegueToReg {
    [self performSegueWithIdentifier:@"regSegue" sender:self];
}

- (IBAction)segueToHome:(id)sender {
    [self loginUser];
    
}

- (void)performSegueToHome {
    [self performSegueWithIdentifier:@"segueToHome" sender:self];
}

@end
