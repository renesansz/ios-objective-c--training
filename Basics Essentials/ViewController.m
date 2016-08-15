//
//  ViewController.m
//  Basics Essentials
//
//  Created by Renesansz on 15/08/2016.
//  Copyright © 2016 Renesansz. All rights reserved.
//

#import "ViewController.h"

#define kRPShortDateFormat @"MM/dd/yyyy"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"ViewController: View did load");
    
    /************************************
     Primitive Data Types (C Programming)
     ************************************/
    
    // Characters
    char aChar = 'a';
    unsigned char anUnsignedChar = 255;
    
    // Short
    short aShort = -32768;
    unsigned short anUnsignedShort = 65535;
    
    // Integer
    int anInt = -21445153;
    unsigned int anUnsignedInt = 413553;
    
    // Long
    long aLong = -9223372036854775808;
    unsigned long anUnsignedLong = 18446744073709551615;
    
    // Long long
    long long aLongLong = -9223372036854775808;
    unsigned long long anUnsignedLongLong = 18446744073709551615;
    
    // Single precision floating-point
    float aFloat = -21.04f;
    
    // Double precision floating-point
    double aDouble = -21.09;
    
    // Extended precision floating-point
    long double aLongDouble = -21.09e8L;
    
    /************************************
     Primitive Data Types (Objective-C)
     ************************************/
    
    // id - Anonymous or dynamic object type
    // id delegate = self.delegate;
    
    // Class - Denotes an object's class
    Class aClass = [UIView class];
    
    // SEL - Identifies a method name
    // SEL someSelector = @selector(NSLog);
    
    // Method = Denotes a method; For swizzling methods
    // Method aMethod = class_getInstanceMethod(aClass, someSelector);
    
    // BOOL - Boolean type where any non-zero values is YES
    BOOL isBool = YES;
    
    // nil - Null object pointer
    NSString *someString = nil;
    
    // NSNumber
    NSNumber *myNumber = @12341251523;
    
    // NSDecimalNumber
    NSDecimalNumber *price1 = [NSDecimalNumber decimalNumberWithMantissa:1599 exponent:-2 isNegative:NO];
    NSDecimalNumber *price2 = [NSDecimalNumber decimalNumberWithString:@"15.99"];
    
    // NSString - Text representation
    NSString *make = @"Porsche";
    NSString *model = @"911";
    int year = 1968;
    NSString *message = [NSString stringWithFormat:@"That's a %@ %@ from %d!", make, model, year];
    
    // NSSet - Collection class best suited for membership checking
    NSSet *americanMakes = [NSSet setWithObjects:@"Ford",@"General Motors", nil];
    
    // NSMutableSet - Mutable set collection
    NSMutableSet *mAmericanMakes = [americanMakes mutableCopy];
    
    [mAmericanMakes addObject:@"Chrysler"];
    [mAmericanMakes addObject:@"Ford"];
    
    // NSArray - General-purpose array type
    NSArray *brokenCars = @[@"Mercedens-Benz", @"BMW", @"Porsche", @"Opel", @"Audi"];
    
    // NSMutableArray - Mutable array collection
    NSMutableArray *mBrokenCars = [brokenCars mutableCopy];
    
    [mBrokenCars addObject:@"Toyota"];
    [mBrokenCars removeObject:@"Toyota"];
    
    // NSDictionary - Unordered collection of objects
    NSDictionary *inventory = @{
        @"Mercedez-Benz SLK250": @13,
        @"Mercedez-Benz E350": @22,
        @"BMW M3 Coupe": @19,
        @"BMW X6": @16,
    };
    
    // NSMutableDictionary - Mutable dictionary collection
    NSMutableDictionary *mInventory = [inventory mutableCopy];
    
    [mInventory setObject:@23 forKey:@"Toyota Supra"];
    [mInventory removeObjectForKey:@"BMW X6"];
    
    // NSDate - Represents a specific point in time
    NSDate *now = [NSDate date];
    
    // NSDateCompontents - Data structure to represent time periods in a calendaric system (era, year, month, day, hour, minute, second)
    NSDateComponents *components = [[NSDateComponents alloc] init];
    
    [components setYear:2016];
    [components setMonth:8];
    [components setDay:5];
    
    // NSCalendar - Converting NSDate objects to components
    NSCalendar *currentCalendar = [NSCalendar currentCalendar];
    // We could also specify a specific calendar system
    NSCalendar *gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    // NSDateFormatter - Converts between NSDate & NSString objects
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    
    [formatter setDateStyle:NSDateFormatterShortStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    
    NSString *prettyDate1 = [formatter stringFromDate:now];
    
    // Setting custom date format
    NSLocale *posix = [[NSLocale alloc] initWithLocaleIdentifier:@"en_US_POSIX"];
    
    [formatter setLocale:posix];
    [formatter setDateFormat:@"M.d.y"];
    
    NSString *prettyDate2 = [formatter stringFromDate:now];
    
    // NSLocale - Represents a set of conventions for a particular language, region, or culture.
    NSString *egyptianArabic = [[NSLocale alloc] initWithLocaleIdentifier:@"ar_EG"];
    
    [NSLocale availableLocaleIdentifiers];
    
    // NSTimeZone - Represent geopolitical regions
    NSTimeZone *centralStandardTime = [NSTimeZone timeZoneWithAbbreviation:@"CST"];
    
    [NSTimeZone knownTimeZoneNames];
    [NSTimeZone abbreviationDictionary];
    
    /********************
     Enum & Bitmask Types
     ********************/
    
    typedef NS_ENUM(NSInteger, UITableViewCellStyle) {
        UITableViewCellStyleDefault,
        UITableViewCellStyleValue1,
        UITableViewCellStyleValue2,
        UITableViewCellStyleSubtitle
    };
    
    typedef NS_OPTIONS(NSUInteger, RPBitMask) {
        RPOptionNone = 0,
        RPOptioRight = 1 << 0,
        RPOptionBottom = 1 << 1,
        RPOptionLeft = 1 << 2,
        RPOptionTop = 1 << 3
    };
    
    /***********
      Constants
     ***********/
    NSString *const lRPShortDateFormat = @"MM/dd/yyyy";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"ViewController: Received memory warning");
}

@end
