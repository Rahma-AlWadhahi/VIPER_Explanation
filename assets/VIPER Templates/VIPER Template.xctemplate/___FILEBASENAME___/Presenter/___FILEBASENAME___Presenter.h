//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <Foundation/Foundation.h>
#import "___FILEBASENAME___Protocols.h"

@interface ___FILEBASENAME___Presenter : NSObject<___FILEBASENAME___ViewDelegate>

@property (nonatomic, weak) id<___FILEBASENAME___ViewProtocol> view;
@property (nonatomic) id<___FILEBASENAME___WireframeProtocol> wireframe;
@property (nonatomic) id<___FILEBASENAME___InteractorProtocol> interactor;

@end
