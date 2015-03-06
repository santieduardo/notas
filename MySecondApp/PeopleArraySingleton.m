//
//  PeopleArraySingleton.m
//  MySecondApp
//
//  Created by macmanu on 3/1/15.
//  Copyright (c) 2015 macmanu. All rights reserved.
//

#import "PeopleArraySingleton.h"
#import "Note.h"

@implementation PeopleArraySingleton

static NSMutableArray *array;

+ (NSMutableArray *)array{
    
    if(!array){
        array = [[NSMutableArray alloc]init];
        
        Note *n = [[Note alloc]init];
        n.title = @"TESTE";
        [array addObject: n];
    }
    return array;

}


@end
