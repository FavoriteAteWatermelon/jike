//
//  SceneDelegate.m
//  jike
//
//  Created by 小仙女 guluoyan.cn on 2020/6/4.
//  Copyright © 2020 小仙女 guluoyan.cn. All rights reserved.
//

#import "SceneDelegate.h"
#import "ViewController.h"
@interface SceneDelegate ()<UITabBarControllerDelegate>

@end

@implementation SceneDelegate


- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    UITabBarController  *tabbarController = [[UITabBarController alloc] init];
//    UIViewController *controller1 = [[UIViewController alloc]init];
    ViewController *view = [[ViewController alloc]init];

    
//    controller1.view.backgroundColor = [UIColor redColor];
    view.tabBarItem.title = @"新闻";
    view.tabBarItem.image = [UIImage imageNamed:@"home.png"];
    view.tabBarItem.selectedImage = [UIImage imageNamed:@"home_selected.png"];
    UIViewController *controller2 = [[UIViewController alloc]init];
    controller2.view.backgroundColor = [UIColor yellowColor];
    controller2.tabBarItem.title =@"视频";
    controller2.tabBarItem.image = [UIImage imageNamed:@"video.png"];
    controller2.tabBarItem.selectedImage = [UIImage imageNamed:@"video_selected.png"];
    UIViewController *controller3 = [[UIViewController alloc]init];
    controller3.view.backgroundColor = [UIColor greenColor];
    controller3.tabBarItem.image = [UIImage imageNamed:@"recommend.png"];
    controller3.tabBarItem.selectedImage = [UIImage imageNamed:@"recommend_selected.png"];
    controller3.tabBarItem.title = @"推荐";
    UIViewController *controller4 = [[UIViewController alloc]init];
    controller4.view.backgroundColor = [UIColor blueColor];
    controller4.tabBarItem.title = @"我的";
    controller4.tabBarItem.image = [UIImage imageNamed:@"me.png"];
    controller4.tabBarItem.selectedImage = [UIImage imageNamed:@"me_selected.png"];
        UINavigationController *nv = [[UINavigationController alloc] initWithRootViewController:tabbarController];
    [tabbarController setViewControllers:@[view,controller2,controller3,controller4]];
//    代理设置为当前的class
    tabbarController.delegate = self;
    self.window.rootViewController = nv;
    [self.window makeKeyAndVisible];
    // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
    // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
    // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
}

//- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController{
//    NSLog(@"did loading");
//    
//}

- (void)sceneDidDisconnect:(UIScene *)scene {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
}


- (void)sceneDidBecomeActive:(UIScene *)scene {
    // Called when the scene has moved from an inactive state to an active state.
    // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
}


- (void)sceneWillResignActive:(UIScene *)scene {
    // Called when the scene will move from an active state to an inactive state.
    // This may occur due to temporary interruptions (ex. an incoming phone call).
}


- (void)sceneWillEnterForeground:(UIScene *)scene {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
}


- (void)sceneDidEnterBackground:(UIScene *)scene {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
}


@end
