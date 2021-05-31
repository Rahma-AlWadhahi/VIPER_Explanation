//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "___FILEBASENAME___Wireframe.h"
#import "___FILEBASENAME___ViewController.h"
#import "___FILEBASENAME___Presenter.h"
#import "___FILEBASENAME___Interactor.h"
#import "___FILEBASENAME___Protocols.h"

@interface ___FILEBASENAME___WireframeTests : XCTestCase
    
@property (nonatomic) ___FILEBASENAME___Wireframe *wireframe;

@end

@implementation ___FILEBASENAME___WireframeTests

#pragma mark - XCTest
    
- (void)setUp {
    [super setUp];
    
    self.wireframe = [___FILEBASENAME___Wireframe new];
}

- (void)tearDown {
    self.wireframe = nil;
    
    [super tearDown];
}
    
#pragma mark - Tests
    
- (void)testPresentsViewController {
    [self testPresentsViewControllerWithVerificationBlock:^(___FILEBASENAME___ViewController *presentingViewController) {
        // verify
        XCTAssertTrue([presentingViewController isMemberOfClass:___FILEBASENAME___ViewController.class], @"Presenting view controller should be ___FILEBASENAME___ViewController class");
    }];
}
    
- (void)testSetsPresenterToViewController {
    [self testPresentsViewControllerWithVerificationBlock:^(___FILEBASENAME___ViewController *presentingViewController) {
        ___FILEBASENAME___Presenter *presenter = presentingViewController.presenter;
        
        // verify
        XCTAssertNotNil(presenter, @"Presenter in view controller shouldn't be nil");
        XCTAssertTrue([presenter isMemberOfClass:___FILEBASENAME___Presenter.class], @"Presenter in view controller should be ___FILEBASENAME___Presenter class");
    }];
}
    
- (void)testSetsWireframeToPresenter {
    [self testPresentsViewControllerWithVerificationBlock:^(___FILEBASENAME___ViewController *presentingViewController) {
        ___FILEBASENAME___Presenter *presenter = presentingViewController.presenter;
        ___FILEBASENAME___Wireframe *wireframe = presenter.wireframe;
        
        // verify
        XCTAssertNotNil(wireframe, @"Wireframe in presenter shouldn't be nil");
        XCTAssertTrue([wireframe isMemberOfClass:___FILEBASENAME___Wireframe.class], @"Wireframe in presenter should be ___FILEBASENAME___Wireframe class");
    }];
}
    
- (void)testSetsViewToPresenter {
    [self testPresentsViewControllerWithVerificationBlock:^(___FILEBASENAME___ViewController *presentingViewController) {
        ___FILEBASENAME___Presenter *presenter = presentingViewController.presenter;
        ___FILEBASENAME___ViewController *view = (___FILEBASENAME___ViewController *)presenter.view;
        
        // verify
        XCTAssertNotNil(view, @"View in presenter shouldn't be nil");
        XCTAssertTrue([view isMemberOfClass:___FILEBASENAME___ViewController.class], @"View in presenter should be ___FILEBASENAME___ViewController class");
    }];
}
    
- (void)testSetsInteractorToPresenter {
    [self testPresentsViewControllerWithVerificationBlock:^(___FILEBASENAME___ViewController *presentingViewController) {
        ___FILEBASENAME___Presenter *presenter = presentingViewController.presenter;
        ___FILEBASENAME___Interactor *interactor = presenter.interactor;
        
        // verify
        XCTAssertNotNil(interactor, @"Interactor in presenter shouldn't be nil");
        XCTAssertTrue([interactor isMemberOfClass:___FILEBASENAME___Interactor.class], @"Interactor in presenter should be ___FILEBASENAME___Interactor class");
    }];
}
    
- (void)testSetsViewControllerToWireframe {
    [self testPresentsViewControllerWithVerificationBlock:^(___FILEBASENAME___ViewController *presentingViewController) {
        ___FILEBASENAME___Presenter *presenter = presentingViewController.presenter;
        ___FILEBASENAME___Wireframe *wireframe = presenter.wireframe;
        ___FILEBASENAME___ViewController *wireframeViewController = wireframe.viewController;
        
        // verify
        XCTAssertNotNil(wireframeViewController, @"View controller in wireframe shouldn't be nil");
        XCTAssertTrue([wireframeViewController isMemberOfClass:___FILEBASENAME___ViewController.class], @"View controller in wireframe should be ___FILEBASENAME___ViewController class");
        XCTAssertEqual(wireframeViewController, presentingViewController, @"View controller in wireframe and presenting view controller should be the same objects");
    }];
}
    
#pragma mark - Private
    
- (void)testPresentsViewControllerWithVerificationBlock:(void (^)(___FILEBASENAME___ViewController *presentingViewController))verificationBlock {
    UIViewController *viewController = [UIViewController new];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:viewController];
    
    id navigationControllerMock = OCMPartialMock(navigationController);
    
    OCMExpect([navigationControllerMock pushViewController:[OCMArg checkWithBlock:^BOOL(___FILEBASENAME___ViewController *viewController) {
        verificationBlock(viewController);
        return ([viewController isKindOfClass:[___FILEBASENAME___ViewController class]]);
        
    }] animated:YES]);
    
    // exercise
    [___FILEBASENAME___Wireframe presentScreenFromViewController:viewController];
    
    // verify
    OCMVerifyAll(navigationControllerMock);
}
    
@end
