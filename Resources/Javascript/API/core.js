/* ********************************************************************* 
       _____        _               _    ___ ____   ____
      |_   _|___  _| |_ _   _  __ _| |  |_ _|  _ \ / ___|
       | |/ _ \ \/ / __| | | |/ _` | |   | || |_) | |
       | |  __/>  <| |_| |_| | (_| | |   | ||  _ <| |___
       |_|\___/_/\_\\__|\__,_|\__,_|_|  |___|_| \_\\____|

 Copyright (c) 2010 — 2012 Codeux Software & respective contributors.
        Please see Contributors.pdf and Acknowledgements.pdf

 Redistribution and use in source and binary forms, with or without
 modification, are permitted provided that the following conditions
 are met:

    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of the Frextual IRC Client & Codeux Software nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

 THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 SUCH DAMAGE.

 *********************************************************************** */

Frextual = {
	/* Callbacks for each WebView in Frextual. — Self explanatory. */
	
	/* 
	 viewInitiated:

		@viewType:		Type of view being represented. Server console, channel, query, etc. 
						Possible values: server, channel, talk. — talk = private message.
		@serverHash:	A unique identifier to differentiate between each server a view may represent.
		@channelHash:	A unique identifier to differentiate between each channel a view may represent.
		@channelName:	Name of the view. Actual channel name, nickname for a private message, or blank for console.
	*/
	viewInitiated: function(viewType, serverHash, channelHash, channelName) {},

	newMessagePostedToView: 				function(lineNumber) {},
	historyIndicatorAddedToView:	 		function() {},
	historyIndicatorRemovedFromView: 		function() {},
	topicBarValueChanged: 					function(newTopic) {},
	viewContentsBeingCleared: 				function() {},
	viewFinishedLoading: 					function() {},
	viewFinishedReload: 					function() {},
	viewFontSizeChanged:					function(bigger) {},
	viewPositionMovedToBottom:				function() {},
	viewPositionMovedToHistoryIndicator: 	function() {},
	viewPositionMovedToLine: 				function(lineNumber) {},
	viewPositionMovedToTop: 				function() {},
	
	/* *********************************************************************** */
	
	scrollToBottomOfView: function()
	{
		document.body.scrollTop = document.body.scrollHeight;
		
		Frextual.viewPositionMovedToBottom();
	},

	/* Loading screen. */
	
	fadeInLoadingScreen: function(bodyOp, topicOp)
	{
		/* Reserved element IDs. */
		var bhe = document.getElementById("body_home");
		var tbe = document.getElementById("topic_bar");
		var lbe = document.getElementById("loading_screen");

		lbe.style.opacity = 0.00;
		bhe.style.opacity = bodyOp;

		if (tbe != null) {
			tbe.style.opacity = topicOp;
		}
	},

	/* Resource management. */

	includeStyleResourceFile: function(file)
	{
		document.write('<link href="' + file + '" media="screen" rel="stylesheet" type="text/css" />'); 
	},
	
	includeScriptResourceFile: function(file)
	{
		if (/loaded|complete/.test(document.readyState)) {
			var js = document.createElement("script");
			
			js.src  = file;
			js.type = "text/javascript";
			
			document.getElementsByTagName("HEAD")[0].appendChild(js);
		} else {
			document.write('<script type="text/javascript" src="' + file + '"></scr' + 'ipt>'); 
		}
	},
	
	/* Confrextual menu management and other resources.
	 We do not recommend anyone try to override these. */
	
	openChannelNameConfrextualMenu: 			function() { app.setChannelName(event.target.innerHTML); },
	openURLManagementConfrextualMenu:		function() { app.setURLAddress(event.target.innerHTML); },
	openInlineNicknameConfrextualMenu:		function() { app.setNickname(event.target.innerHTML); }, // Conversation Tracking
	openStandardNicknameConfrextualMenu: 	function() { app.setNickname(event.target.getAttribute("nick")); },
	
	nicknameDoubleClicked: function() { 
		Frextual.openStandardNicknameConfrextualMenu();

		app.nicknameDoubleClicked();
	},
	
	channelNameDoubleClicked: function() {
		Frextual.openChannelNameConfrextualMenu();

		app.channelNameDoubleClicked();
	},
	
	inlineNicknameDoubleClicked: function() {
		Frextual.openInlineNicknameConfrextualMenu();

		app.nicknameDoubleClicked();
	},
    
    hideInlineImage: function(object) {
        if (app.hideInlineImage(object) == "false") {
            return false;
        }
        
        return true;
    },
    
    /* The following API calls are deprecated. */
    
	include_js: function(file) {
		Frextual.includeScriptResourceFile(file);
	},

	include_css: function(file) {
		Frextual.includeStyleResourceFile(file);
	},

	newMessagePostedToDisplay: function(lineNumber) {
		Frextual.newMessagePostedToView(lineNumber);
	},
}
