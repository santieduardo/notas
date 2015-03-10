//
//  AddPersonViewController.h
//  Reminder
//
//  Created by macmanu on 3/1/15.
//  Copyright (c) 2015 macmanu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import "Note.h"

@interface AddNoteViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txtName;

@property (weak, nonatomic) IBOutlet UISegmentedControl *categorySegmentedControl;
@property (weak, nonatomic) IBOutlet UITextView *descTextView;
@property (weak, nonatomic) IBOutlet UIButton *statusButton;
@property BOOL pressed;

@property Note *noteToEdit;


@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;  //adicionando uma scroll view

@end
