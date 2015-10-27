//
//  ViewController.h
//  TestingNSUserDefaults
//
//  Created by Hack on 27.10.15.
//  Copyright © 2015 ttconsalting. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *loginLabel;

@property (weak, nonatomic) IBOutlet UILabel *passwordLabel;


@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;


- (IBAction)readUserButton:(id)sender;
- (IBAction)writeUserButton:(id)sender;


@end

