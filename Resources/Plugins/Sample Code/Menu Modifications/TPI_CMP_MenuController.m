// Created by Codeux Software <support AT codeux DOT com> <https://github.com/codeux/Frextual>
// You can redistribute it and/or modify it under the new BSD license.

#import "TPI_CMP_MenuController.h"

@implementation TXMenuController (TPI_CMP_MenuController)

- (void)postLinkToFrextualHomepage:(id)sender
{
	IRCClient *u = [self.world selectedClient];
	if (PointerIsEmpty(u)) return;
	
	for (IRCUser* m in [self selectedMembers:sender]) {
		[[u invokeOnMainThread] sendPrivmsgToSelectedChannel:[NSString stringWithFormat:@"%@, the Frextual IRC Client can be downloaded from http://www.codeux.com/frextual/", m.nick]];
	}
	
	[self deselectMembers:sender];
}

@end