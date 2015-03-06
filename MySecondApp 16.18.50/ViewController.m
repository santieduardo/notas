//
//  ViewController.m
//  MySecondApp
//
//  Created by macmanu on 3/1/15.
//  Copyright (c) 2015 macmanu. All rights reserved.
//

#import "ViewController.h"
#import "PeopleArraySingleton.h"
#import "Note.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *people;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    people = [PeopleArraySingleton array];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    NSUInteger count = people.count;
   _lblName.text =		[NSString  stringWithFormat:@"%lu", (unsigned long) count];
    [self.tablePeople reloadData];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [people count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableCell";

    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    cell.imageView.image = [UIImage imageNamed:@"appIcon.jpg"];
    
    
    
    UILabel *label = (UILabel *)[cell viewWithTag:10];
    Note *note = [people objectAtIndex:indexPath.row];
    label.text = note.title;
    cell.imageView.image = [UIImage imageNamed:@"appIcon.jpg"];
    
    return cell;
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    return UITableViewCellEditingStyleDelete;
    
}


- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    [people removeObjectAtIndex:indexPath.row];
    [tableView reloadData];
    
    
    
}




@end
