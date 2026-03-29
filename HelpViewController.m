#import "HelpViewController.h"

@implementation HelpViewController

static UIInterfaceOrientationMask BSRemoteSupportedOrientations(void) {
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
    return UIInterfaceOrientationMaskAll;
  }
  return UIInterfaceOrientationMaskLandscape;
}

- (id)initWithNibName:(NSString *)nibNameOrNil
               bundle:(NSBundle *)nibBundleOrNil {
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  if (self) {
  }
  return self;
}

- (void)dealloc {
  [super dealloc];
}

- (IBAction)closePressed:(id)caller {
  [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
  // Releases the view if it doesn't have a superview.
  [super didReceiveMemoryWarning];

  // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view from its nib.

  // Custom initialization
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
    _text.font = [UIFont systemFontOfSize:16];
  } else {
    _text.font = [UIFont systemFontOfSize:12];
  }
}

- (BOOL)shouldAutorotate {
  return YES;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
  return BSRemoteSupportedOrientations();
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
    return UIInterfaceOrientationPortrait;
  }
  return UIInterfaceOrientationLandscapeRight;
}

@end
