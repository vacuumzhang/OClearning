//
//  NewRegisterViewController.m
//  sqlite
//
//  Created by Ruiyong.Z on 5/24/16.
//  Copyright © 2016 Ruiyong Zhang. All rights reserved.
//

#import "NewRegisterViewController.h"

@interface NewRegisterViewController ()

@end

@implementation NewRegisterViewController

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

- (IBAction)RegisterButton:(id)sender {
    BOOL success = NO;
    NSString *alertString = @"Data Insertion failed";
    if (_UsernameTextField.text.length>0 && _PasswordTextField.text.length>0){
        success = [[DBManager getSharedInstance]saveData:
                   _UsernameTextField.text pwd: _PasswordTextField.text];
        if(success != NO){
            NSLog(@"Save success");
        }
    } else{
        alertString = @"Enter all fields";
    }
    if (success == NO) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle: alertString message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
    }
}
@end
