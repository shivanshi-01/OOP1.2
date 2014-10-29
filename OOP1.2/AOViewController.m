//
//  AOViewController.m
//  OOP1.2
//
//  Created by media temp on 20/10/2014.
//  Copyright (c) 2014 AO. All rights reserved.
//

#import "AOViewController.h"

@interface AOViewController ()

@end

@implementation AOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

// Deck mutable array
    // suits c, h, s, o
    // card a,2,3,4, 5, 6, 7, 8, 9, 10, j, q, k
    NSArray *cards = @[@"A", @"2", @"3",@"4", @"5", @"6",@"7", @"8", @"9",@"10", @"J", @"Q", @"K"];
    NSArray *suits = @[@"C", @"H", @"S", @"D"];
    NSMutableArray *deck =[NSMutableArray array];
    
    for(NSString*suits in suits){
        for (NSString *card in cards){
           AOCard *cardInDeck =[[AOCard alloc] initWithSuit:suit value:card];
            [deck addObject:cardInDeck];
        }
    }
    NSLog(@"%@", deck);
    
    
    for(NSString*suits in suits){
        for (NSString *card in cards){
            AOCard *cardInDeck =[[AOCard alloc] initWithSuit:suit value:card];
            [deck removeObject:cardInDeck];
        }
    }
    NSLog(@"%@", deck);
    
}
@end
