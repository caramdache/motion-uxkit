class AppDelegate
  attr_accessor :windowController, :rootViewController

  def applicationDidFinishLaunching(notification)
    buildWindow
    buildMenu

  end

  def applicationWillTerminate(notification)
  end

  def buildWindow
    self.rootViewController = UXNavigationController.alloc.init
    self.windowController = UXWindowController.alloc.initWithRootViewController(self.rootViewController)

    self.windowController.window.setContentSize(NSMakeSize(505, 700))
    self.windowController.showWindow(self)

    @master = MasterController.alloc.initWithStyle(0)

    self.rootViewController.pushViewController(@master, animated:false)
  end
end
