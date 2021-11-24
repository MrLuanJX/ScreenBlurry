# ScreenBlurry

程序进入后台高斯模糊效果

* pod 'YJScreenBlurry'

* import "LXXScreenBlurry"


在AppDelegate 或 SceneDelegate 文件中

* AppDelegate 文件中调用

- (void)applicationWillResignActive:(UIApplication *)application {
    [LXXScreenBlurry addBlurryScreenImage];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    [LXXScreenBlurry removeBlurryScreenImage];
}

* SceneDelegate 文件中调用

- (void)sceneDidBecomeActive:(UIScene *)scene {
    [LXXScreenBlurry removeBlurryScreenImage];
}

- (void)sceneWillResignActive:(UIScene *)scene {
    [LXXScreenBlurry addBlurryScreenImage];
}