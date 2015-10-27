//
//  ViewController.m
//  TestingNSUserDefaults
//
//  Created by Hack on 27.10.15.
//  Copyright © 2015 ttconsalting. All rights reserved.
//

#import "ViewController.h"
#import "ASUser.h"

static NSString* kUser = @"kUser";

@interface ViewController () <UITextFieldDelegate>

@property (strong, nonatomic) ASUser* currentUser;

@end


@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
 
    return [textField resignFirstResponder];
}

#pragma mark - Read/Write methods

-(void) writeUser:(ASUser*) user {
    
    NSData* userObject = [NSKeyedArchiver archivedDataWithRootObject:user];
    [[NSUserDefaults standardUserDefaults] setObject:userObject forKey:kUser];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
}


-(ASUser*) readUserWithKey:(NSString*) key {
    
    NSData* userObject = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    ASUser* user       = [NSKeyedUnarchiver unarchiveObjectWithData:userObject];
    return user;
    
}


#pragma mark - Action

- (IBAction)readUserButton:(id)sender {
    
    // Read from memory
    ASUser* user = [[ASUser alloc] init];
    user = [self readUserWithKey:kUser];
    
    
    // Set on display
    [[self loginLabel]setText:[user login]];
    [[self passwordLabel]setText:[user password]];
}


- (IBAction)writeUserButton:(id)sender {

    ASUser* user = [[ASUser alloc] init];
    [user setLogin: self.loginTextField.text];
    [user setPassword: self.passwordTextField.text];
    
    // Пишем епта !
    [self writeUser:user];
    
    // Ну сразу и читаем
    [self readUserButton:nil];
    
}

@end
