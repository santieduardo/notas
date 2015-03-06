//
//  AddPersonViewController.m
//  MySecondApp
//
//  Created by macmanu on 3/1/15.
//  Copyright (c) 2015 macmanu. All rights reserved.
//

#import "AddPersonViewController.h"
#import "PeopleArraySingleton.h"
#import "Note.h"

@interface AddPersonViewController ()

@end

@implementation AddPersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
_txtName.placeholder = @"Name";
   


}

- (IBAction)addPersonDone:(id)sender {
    
    NSMutableArray *people = [PeopleArraySingleton array];
    Note *p = [[Note alloc]init];
    p.title = _txtName.text;
    [people addObject: p];
    _txtName.text = @"";
    
    
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

@end
