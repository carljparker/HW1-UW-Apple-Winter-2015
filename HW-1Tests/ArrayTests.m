//
//  ArrayTests.m
//  NewLanguageLesson
//
//  Created by Martin Nash on 1/16/15.
//  Copyright (c) 2015 UW PCE. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface ArrayTests : XCTestCase
@end

@implementation ArrayTests

-(NSArray*)groceryList
{
    // TODO: Make and return any array
    return @[ @"Apples", @"Bananas", @"Carrots" ];

}

-(NSUInteger)numberOfItemsInArray:(NSArray*)list
{
    // TODO: Find out the array's length or count
    return [list count];
}

-(BOOL)arrayBeginsWithBananas:(NSArray*)list
{
    // TODO: Find out if the first element in list is "Bananas"
    return [[list firstObject] isEqual:@"Bananas"];
}

-(BOOL)arrayEndsWithBananas:(NSArray*)list
{
    // TODO: Find out if the last element in list is "Bananas"
    return [[list lastObject] isEqual:@"Bananas"];
}

-(BOOL)arrayContainsBananas:(NSArray*)list
{
    // TODO: Find a way to confirm that "Bananas" exists in the array"
    if ( [list indexOfObject:@"Bananas"] == NSNotFound  ) {
        return NO;
    } else {
        return YES;
    }
}




#pragma mark - Tests

-(void)testGroceryList
{
    NSArray *list = [self groceryList];
    XCTAssertNotNil(list);
}

-(void)testNumberOfItems
{
    NSArray *emptyArray = [[NSArray alloc] init]; // we also have this way of making arrays
    NSUInteger numberInEmpty = [self numberOfItemsInArray:emptyArray];
    XCTAssert(numberInEmpty == 0);
    
    NSArray *vowels = @[ @"A", @"E", @"I", @"O", @"U"];
    NSUInteger vowelCount = [self numberOfItemsInArray:vowels];
    XCTAssert(vowelCount == 5);
}

-(void)testFirstObjectIsBananas
{
    NSArray *fruits = @[ @"Bananas", @"Mangoes", @"Rambutans" ];
    BOOL bananaIsFirstFruit = [self arrayBeginsWithBananas:fruits];
    XCTAssertTrue(bananaIsFirstFruit);
    
    // all in one line; not quite so readable
    XCTAssertFalse([self arrayBeginsWithBananas:@[]]);
}

-(void)testLastObjectIsBananas
{
    NSArray *fruits = @[ @"Mangoes", @"Rambutans", @"Bananas" ];
    BOOL bananaIsLastFruit = [self arrayEndsWithBananas:fruits];
    XCTAssertTrue(bananaIsLastFruit);
    
    // all in one line; not quite so readable
    XCTAssertFalse([self arrayEndsWithBananas:@[]]);
}

-(void)testListContainsBananas
{
    NSArray *fruits = @[ @"Bananas" ];
    BOOL hasBanana = [self arrayContainsBananas:fruits];
    XCTAssertTrue(hasBanana);
    
    // all in one line; not quite so readable
    XCTAssertFalse([self arrayContainsBananas:@[]]);
}


@end
