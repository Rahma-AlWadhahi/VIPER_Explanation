//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <XCTest/XCTest.h>
#import <OCMock/OCMock.h>
#import "___FILEBASENAME___Presenter.h"
#import "___FILEBASENAME___Protocols.h"

@interface ___FILEBASENAME___PresenterTests : XCTestCase
    
@property (nonatomic) ___FILEBASENAME___Presenter *presenter;
@property (nonatomic) OCMockObject<___FILEBASENAME___ViewProtocol> *viewMock;
@property (nonatomic) OCMockObject<___FILEBASENAME___WireframeProtocol> *wireframeMock;
@property (nonatomic) OCMockObject<___FILEBASENAME___InteractorProtocol> *interactorMock;

@end

@implementation ___FILEBASENAME___PresenterTests

#pragma mark - XCTest

- (void)setUp {
    [super setUp];
    
    self.presenter = [___FILEBASENAME___Presenter new];
    
    self.viewMock = OCMProtocolMock(@protocol(___FILEBASENAME___ViewProtocol));
    self.wireframeMock = OCMProtocolMock(@protocol(___FILEBASENAME___WireframeProtocol));
    self.interactorMock = OCMProtocolMock(@protocol(___FILEBASENAME___InteractorProtocol));
    
    self.presenter.view = self.viewMock;
    self.presenter.wireframe = self.wireframeMock;
    self.presenter.interactor = self.interactorMock;
}

- (void)tearDown {
    self.presenter = nil;
    
    [super tearDown];
}

#pragma mark - Tests
    
- (void)testViewProperty {
    // verify
    XCTAssertNotNil(self.presenter.view);
    XCTAssertEqual(self.presenter.view, self.viewMock, @"Presenter view and expected view should be the same");
}
    
- (void)testWireframeProperty {
    // verify
    XCTAssertNotNil(self.presenter.wireframe);
    XCTAssertEqual(self.presenter.wireframe, self.wireframeMock, @"Presenter wireframe and expected wireframe should be the same");
}
    
- (void)testInteractorProperty {
    // verify
    XCTAssertNotNil(self.presenter.interactor);
    XCTAssertEqual(self.presenter.interactor, self.interactorMock, @"Presenter interactor and expected interactor should be the same");
}

@end
