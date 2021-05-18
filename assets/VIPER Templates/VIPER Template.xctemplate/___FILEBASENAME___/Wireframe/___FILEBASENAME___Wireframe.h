//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "___FILEBASENAME___Protocols.h"

@class ___FILEBASENAME___ViewController;

@interface ___FILEBASENAME___Wireframe : NSObject<___FILEBASENAME___WireframeProtocol>

@property (nonatomic, weak, readonly) ___FILEBASENAME___ViewController *viewController;

+ (void)presentScreenFromViewController:(UIViewController *)viewController;

@end
