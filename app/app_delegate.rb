class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame)
    @window.makeKeyAndVisible

    @window.rootViewController = SliderViewController.alloc.initWithNibName(nil, bundle: nil)
    true
  end
end
