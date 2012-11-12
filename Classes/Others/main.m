
#import "TextualApplication.h"

int main(int argc, const char *argv[])
{
	[_NSUserDefaults() addSuiteNamed:@"com.teamcoltra.frextual"];
	[_NSUserDefaults() addSuiteNamed:@"com.teamcoltra.irc.frextual"];
	[_NSUserDefaults() addSuiteNamed:@"com.teamcoltra.irc.frextual.trial"];

	@autoreleasepool {
		NSApplicationMain(argc, argv);
	}
	
    return 0;
}
