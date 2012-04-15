//
//  AppDelegate.m
//  Tere maailm!
//
//  Created by Janno Liivak on 15.04.12.
//  Copyright (c) 2012 applespot.ee. All rights reserved.
//

#import "AppDelegate.h"

// defineerime lokaalse konstandi (e. mittemuudetava väärtuse) ... "lipiku" laiuse
#define LABEL_WIDTH 200 

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    
    // MEIE KOOD ALGAB >>>
    
    // 1. Muudame "window" tausta läbipaistvaks, et vaate orientatsiooni muutumisel 
    //    animeeritava pildi tagant ei paistaks valged ääred
    self.window.backgroundColor = [UIColor clearColor]; // [UIColor whiteColor];
    
    // 2. Tekitame kontrolleri, mis meie "vaadet" kontollib
    UIViewController *viewController = [[UIViewController alloc] init];
    [viewController.view setBackgroundColor:[UIColor whiteColor]];
    
    // 3. Tekitame "lipiku" ja lisame selle meie vaatele
    UILabel *helloWorldLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, LABEL_WIDTH, 17)]; // raamistikus määrame alguses vaid laiuse ja kõrguse
    [helloWorldLabel setText:@"Tere maailm!"]; // "lipiku" tekst
    [helloWorldLabel setTextAlignment:UITextAlignmentCenter]; // tekst joodatakse keskele
    [helloWorldLabel setCenter:CGPointMake(self.window.frame.size.width / 2, self.window.frame.size.height / 2)]; // nüüd ütleme, et "lipiku" keskpunkt on meie "akna" keskpunkt
    [viewController.view addSubview:helloWorldLabel]; // lisame "lipiku" vaatesse
    
    // 4. Lisame vaate "akna" juurvaateks
    [self.window setRootViewController:viewController];
    
    // MEIE KOOD LÕPPEB <<<
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
