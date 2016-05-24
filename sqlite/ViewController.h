//
//  ViewController.h
//  sqlite
//
//  Created by Ruiyong.Z on 5/23/16.
//  Copyright © 2016 Ruiyong Zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DBManager.h"

@interface ViewController : UIViewController<UITextFieldDelegate>

{
    
    IBOutlet UITextField *UsernameTextField;
    IBOutlet UITextField *PwdTextField;
  
}

- (IBAction)LoginButton:(id)sender;

@end

