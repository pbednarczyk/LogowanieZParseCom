//
//  SignInViewController.h
//  LogowanieZParseCom
//
//  Created by Pawel Bednarczyk on 26.08.2014.
//
//

#import <UIKit/UIKit.h>

@interface SignInViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *emailField;

@property (weak, nonatomic) IBOutlet UIButton *signup;
@end
