//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//___COPYRIGHT___
//

#import "___FILEBASENAME___Wireframe.h"
#import "___FILEBASENAME___ViewController.h"
#import "___FILEBASENAME___Interactor.h"
#import "___FILEBASENAME___Presenter.h"

@interface ___FILEBASENAME___Wireframe ()

@property (nonatomic, weak) ___FILEBASENAME___ViewController *viewController;

@end

@implementation ___FILEBASENAME___Wireframe
 
#pragma mark - Public
    
+ (void)presentScreenFromViewController:(UIViewController *)viewController {
    UIViewController *presentingViewController = [self setupViewController];
    [viewController.navigationController pushViewController:presentingViewController animated:YES];
}

#pragma mark - Private

+ (UIViewController *)setupViewController {
    ___FILEBASENAME___Presenter *presenter = [___FILEBASENAME___Presenter new];
    ___FILEBASENAME___Wireframe *wireframe = [___FILEBASENAME___Wireframe new];
    ___FILEBASENAME___Interactor *interactor = [___FILEBASENAME___Interactor new];
    
    ___FILEBASENAME___ViewController *viewController = [[___FILEBASENAME___ViewController alloc] initWithNibName:NSStringFromClass(___FILEBASENAME___ViewController.class) bundle:nil];
    viewController.presenter = presenter;
    
    presenter.wireframe = wireframe;
    presenter.view = viewController;
    presenter.interactor = interactor;
    
    wireframe.viewController = viewController;
    
    return viewController;
}
    
@end
