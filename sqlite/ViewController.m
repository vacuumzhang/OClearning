//
//  ViewController.m
//  sqlite
//
//  Created by Ruiyong.Z on 5/23/16.
//  Copyright © 2016 Ruiyong Zhang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)
nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//login check username and password, if not alert
-(IBAction)LoginButton:(id)sender{
    NSArray *data = [[DBManager getSharedInstance]findByUsername:
                     UsernameTextField.text];
    if (data == nil) {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:
                              @"Data not found" message:nil delegate:nil cancelButtonTitle:
                              @"OK" otherButtonTitles:nil];
        [alert show];
                UsernameTextField.text =@"";
        PwdTextField.text = @"";
            }
    else{
        if (PwdTextField.text == [data objectAtIndex:1]) {
            NSLog(@"Login in for %@ \n", UsernameTextField.text);
            [self performSegueWithIdentifier:@"loginSussed" sender:self];
        }
        
    }
}


-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
}

@end