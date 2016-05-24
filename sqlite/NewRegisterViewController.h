//
//  NewRegisterViewController.h
//  sqlite
//
//  Created by Ruiyong.Z on 5/24/16.
//  Copyright © 2016 Ruiyong Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface NewRegisterViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *UsernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *PasswordTextField;
- (IBAction)RegisterButton:(id)sender;

@end
