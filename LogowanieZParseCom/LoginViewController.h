//
//  LoginViewController.h
//  LogowanieZParseCom
//
//  Created by Pawel Bednarczyk on 26.08.2014.
//
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;


- (IBAction)signin:(id)sender;
@end
