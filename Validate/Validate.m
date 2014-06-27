//
//  ViewController.m
//  ValidateEmail
//
//  Copyright (c) 2014 Atul. All rights reserved.
//

#import "Validate.h"

@implementation Validate

+(BOOL)validateEmail:(NSString*) emailString
{
    
    NSString *emailid = emailString;
    NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *emailTest =[NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL myStringMatchesRegEx=[emailTest evaluateWithObject:emailid];
    
    if(myStringMatchesRegEx)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

+(BOOL)validatePassword:(id)sender{
    
    NSString *emailid = sender;
    NSString *emailRegex = @"((?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{5,15})";
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", emailRegex];
    BOOL myStringMatchesRegEx = [emailTest evaluateWithObject:emailid];
    
    if(myStringMatchesRegEx)
    {
        return YES;
    }
    else
    {
        return NO;
    }
    
}

//Descr:
//    ( # Start of group
//     (?=.*\d)       # must contains one digit from 0-9
//     (?=.*[a-z])    # must contains one lowercase characters
//     (?=.*[A-Z])    # must contains one uppercase characters
//     (?=.*[@#$%])   # must contains one special symbols in the list "@#$%"
//     .   # match anything with previous condition checking
//     {5,25}   # length at least 5 characters and maximum of 25
//     )


@end
