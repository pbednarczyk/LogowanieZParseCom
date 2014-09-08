//
//  SignInViewController.m
//  LogowanieZParseCom
//
//  Created by Pawel Bednarczyk on 26.08.2014.
//
//
#import <Parse/Parse.h>
#import "SignInViewController.h"

@interface SignInViewController ()

@end

@implementation SignInViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)signup:(id)sender {
    
    NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    NSString *email = [self.emailField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    if([username length] == 0 || [password length] == 0 || [email length] == 0) {
    
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Ajaj!" message:@"Upewnij się że wpisałeś nazwę użytkownika, hasło oraz email" delegate:nil cancelButtonTitle:@"Dobra" otherButtonTitles: nil];
        [alertView show];
    
    }else{
        
        PFUser *newUser = [PFUser user];
        newUser.username = username;
        newUser.password = password;
        newUser.email = email;
        [newUser signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
           
            if (error) {
                UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"sorry" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:@"ok" otherButtonTitles: nil];
                [alertView show];
            }
            else {
                [self.navigationController popToRootViewControllerAnimated:YES];
            }
        }];

    }
    


}
@end
