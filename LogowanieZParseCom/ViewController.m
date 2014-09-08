//
//  ViewController.m
//  LogowanieZParseCom
//
//  Created by Pawel Bednarczyk on 24.08.2014.
//
//
#import "ViewController.h"
#import <Parse/Parse.h>

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];

    
//    Testowy obiekt do sprawdzenia połączenia z Parse.com
//    PFObject *testObject = [PFObject objectWithClassName:@"TestObject"];
//    testObject[@"foo"] = @"bar";
//    [testObject saveInBackground];

    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        // do stuff with user
        NSLog(@"Current user %@", currentUser.username);
    } else {
        // show the signup or login screen
        [self performSegueWithIdentifier:@"showLogin" sender:self];
    }
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logout:(id)sender {
    [PFUser logOut];
    
    [self performSegueWithIdentifier:@"showLogin" sender:self];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    self.navigationController.navigationBarHidden = YES;
  if([segue.identifier isEqualToString:@"showLogin"]) {
        [segue.destinationViewController setHidesBottomBarWhenPushed:YES];
    }
}
@end
