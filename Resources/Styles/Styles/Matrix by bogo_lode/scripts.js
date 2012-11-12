/* Defined in: "Frextual.app -> Contents -> Resources -> JavaScript -> API -> core.js" */

Frextual.viewFinishedLoading = function()
{
	Frextual.fadeInLoadingScreen(1.00, 0.95);

	setTimeout(function() {
		Frextual.scrollToBottomOfView()
	}, 500);
}

Frextual.viewFinishedReload = function()
{
	Frextual.viewFinishedLoading();
}
