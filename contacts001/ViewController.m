//
//  ViewController.m
//  contacts001
//
//  Created by Joel Sene on 27/09/16.
//  Copyright © 2016 Barba Ruiva. All rights reserved.
//

#import "ViewController.h"
#import "ContactList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[ContactList sharedContacts] fetchAllContacts]; //fetch all contacts by calling single to method
    NSLog(@"Fetched Contact Details : %@",[[ContactList sharedContacts]totalPhoneNumberArray]);
    
    if ([[ContactList sharedContacts]totalPhoneNumberArray].count !=0) {
        NSLog(@"Fetched Contact Details : %ld",[[ContactList sharedContacts]totalPhoneNumberArray].count);
    }
    //NSLog(@"Fetched Contact Details : %s",  [[ContactList sharedContacts] fetchAllContacts]);
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
