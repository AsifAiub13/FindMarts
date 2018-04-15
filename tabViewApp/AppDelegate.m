//
//  AppDelegate.m
//  tabViewApp
//
//  Created by MD. Asif Seraje on 9/23/17.
//  Copyright © 2017 serajeorg. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    UITabBarController *tabBarController = (UITabBarController *)self.window.rootViewController;
    UITabBar *tabBar = tabBarController.tabBar;
    // repeat for every tab, but increment the index each time
    UITabBarItem *firstTab = [tabBar.items objectAtIndex:0];
    UITabBarItem *firstTab2 = [tabBar.items objectAtIndex:1];
    UITabBarItem *firstTab3 = [tabBar.items objectAtIndex:2];
    UITabBarItem *firstTab4 = [tabBar.items objectAtIndex:3];
    // also repeat for every tab
    firstTab.image = [[UIImage imageNamed:@"home.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    firstTab.selectedImage = [[UIImage imageNamed:@"home.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    firstTab2.image = [[UIImage imageNamed:@"popular.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    firstTab2.selectedImage = [[UIImage imageNamed:@"popular.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    firstTab3.image = [[UIImage imageNamed:@"pping.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    firstTab3.selectedImage = [[UIImage imageNamed:@"pping.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    firstTab4.image = [[UIImage imageNamed:@"sett.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal ];
    firstTab4.selectedImage = [[UIImage imageNamed:@"sett.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

+ (AppDelegate *)sharedAppDelegate{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

@end
