//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <XCTest/XCTest.h>
#import "___FILEBASENAME___Interactor.h"
#import "___FILEBASENAME___Protocols.h"

@interface ___FILEBASENAME___InteractorTests : XCTestCase
    
@property (nonatomic) ___FILEBASENAME___Interactor *interactor;

@end

@implementation ___FILEBASENAME___InteractorTests

#pragma mark - XCTest
    
- (void)setUp {
    [super setUp];
    
    self.interactor = [___FILEBASENAME___Interactor new];
}

- (void)tearDown {
    self.interactor = nil;
    
    [super tearDown];
}
    
#pragma mark - Tests

    
@end
