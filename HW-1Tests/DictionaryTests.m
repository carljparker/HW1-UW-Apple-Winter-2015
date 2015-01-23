//
//  DictionaryTests.m
//  NewLanguageLesson
//
//  Created by Martin Nash on 1/16/15.
//  Copyright (c) 2015 UW PCE. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>

@interface DictionaryTests : XCTestCase
@end

@implementation DictionaryTests

#pragma mark - Methods

-(NSDictionary*)informationDictionary
{
    // TODO: Make and return any dictionary
    return @{ @"car.make": @"bmw", @"car.model": @"328iS" };
}

-(NSUInteger)numberOfEntriesInDictionary:(NSDictionary*)input
{
    // TODO: Find a way to count entries in a dictionary
    return [input count];
}

-(BOOL)dictionary:(NSDictionary*)dictionary containsKey:(NSString*)key
{
    // TODO: find a way to look for all the keys
    
    NSArray * allKeysArray = dictionary.allKeys;
    
    for (int idx=0; idx < allKeysArray.count ; idx++) {
        if ( [ allKeysArray[idx] isEqualToString:key ]) {
            return YES;
        }
    }
    return NO;
}

-(BOOL)dictionary:(NSDictionary*)dictionary containsValue:(id)value
{
    // TODO: find a way to look for all the values
    
    NSArray * allValuesArray = dictionary.allValues;
    
    for (int idx=0; idx < allValuesArray.count ; idx++) {
        if ( [ allValuesArray[idx] isEqualToString:value ]) {
            return YES;
        }
    }
    return NO;
}


#pragma mark - Tests

-(void)testInformationDictionary
{
    XCTAssertNotNil([self informationDictionary]);
}

-(void)testNumberOfEntries
{
    NSUInteger emptyCount = [self numberOfEntriesInDictionary:@{}];
    XCTAssert(emptyCount == 0);
    
    NSDictionary *soloDictionary = @{ @"giggawatts": @1.21 };
    NSUInteger oneCount = [self numberOfEntriesInDictionary:soloDictionary];
    XCTAssert(oneCount == 1);
}

-(void)testKey
{
    BOOL emptyHasCool = [self dictionary:@{} containsKey:@"cool"];
    XCTAssertFalse(emptyHasCool);
    
    NSDictionary *stats = @{@"cool": @YES};
    BOOL statsHasCool = [self dictionary:stats containsKey:@"cool"];
    XCTAssertTrue(statsHasCool);
}

-(void)testValue
{
    BOOL emptyHasOne = [self dictionary:@{} containsValue:@1];
    XCTAssertFalse(emptyHasOne);
    
    NSDictionary *jsonResults = @{ @"user_id": @1234 };
    BOOL jsonHasNumber = [self dictionary:jsonResults containsValue:@1234];
    XCTAssertTrue(jsonHasNumber);
}


@end
