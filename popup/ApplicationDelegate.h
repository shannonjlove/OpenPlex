//#import "MenubarController.h"
//#import "PanelController.h"
#import <Cocoa/Cocoa.h>

@interface ApplicationDelegate : NSObject <NSApplicationDelegate>
@property (strong, nonatomic) NSStatusItem *statusItem;
@property (assign, nonatomic) BOOL darkModeOn;
@property (nonatomic, retain) NSWindowController *winCon;

//@property (nonatomic, strong) NSWinCon *WinCon;
//@property (nonatomic, strong) MenubarController *menubarController;
//@property (nonatomic, strong, readonly) PanelController *panelController;

//@property (weak) IBOutlet NSWindow *window;
//@property (weak) IBOutlet NSWindow *window;


//@property (weak) IBOutlet NSWindowController *WindowController;
//@property (strong) NSWindowController *WindowController;

//- (IBAction)togglePanel:(id)sender;

@end

