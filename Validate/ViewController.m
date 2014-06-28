//
//  ViewController.m
//  Validate
//
//  Copyright (c) 2014 Atul. All rights reserved.
//

#import "ViewController.h"
#import "Validate.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize getPassword,getEmail;
@synthesize lbl_enterPassword,lbl_enterEmail,lbl_validPassword,lbl_validEmail;
@synthesize btn_validateEmail,btn_validatePassword;

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)validateEmail:(id)sender{

    ///ßßßßß
    
    [self.getEmail resignFirstResponder];
    
    if ([Validate validateEmail:self.getEmail.text]) {
    
        self.lbl_validEmail.text = @"Valid Email !";
        self.lbl_validEmail.backgroundColor = [UIColor greenColor];
    }else{
    
        self.lbl_validEmail.text = @"Invalid Email !";
        self.lbl_validEmail.backgroundColor = [UIColor redColor];
    }
    
}

-(void)validatePassword:(id)sender{

    [self.getPassword resignFirstResponder];
    
    
    if ([Validate validatePassword:self.getPassword.text]) {
        
        self.lbl_validPassword.text = @"Valid Password !";
        self.lbl_validPassword.backgroundColor = [UIColor redColor];
        
    }else{
        
        self.lbl_validPassword.text = @"Invalid Password !";
        self.lbl_validPassword.backgroundColor = [UIColor redColor];
    }
}

#pragma mark - TextField Delegate Method

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if([string isEqualToString:@"\n"]) {
        [textField resignFirstResponder];
        return NO;
    }
    
    return YES;
    
}

@end
