#import "AppDelegate.h"
#import "Parse/Parse.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(  NSDictionary *)launchOptions {

    ParseClientConfiguration *config = [ParseClientConfiguration  configurationWithBlock:^(id<ParseMutableClientConfiguration> configuration) {

        configuration.applicationId = @"QFwxzNUvlmgxv1pOHpn9Pzkwrjn9Bf6vCI9sQBf2";
        configuration.clientKey = @"8Fz2iRgxrpiiFmqGCGzW7FNTxCjwLmqjqkTOUjuH";
        configuration.server = @"https://parseapi.back4app.com";
    }];
    
    [Parse initializeWithConfiguration:config];

    return YES;
}


@end
