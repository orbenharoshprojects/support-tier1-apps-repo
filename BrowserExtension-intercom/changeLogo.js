// changeLogo.js

var intercomDeafultLogo = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAAXNSR0IArs4c6QAABZJJREFUeF7tm2tQVVUUx38XxCehIr5SkhzSlKBEg2mmhpyyZlJRs7HSNDF0cqYGM2vGL3zgSzPpUI7NOAqJ4UDpaALKh7JGzQ8NOEqhaDqomGg+eGniA5HbLM9c7/ueczjnAjfO+nQfe6/9X/+9z1pr77O2DU/5xJ5CB5nADGAMEOHVJrR+uA9cAvYTRj5f2Spd4dseffnYHkUYm4CFoWWfbrTFdLCSjbab0lMhQIy3sR8bKbrVhWIHO5XYmSEkKARk2Yt6wcx7TlUxG2yLbCjPfEUoTqRhzGGk2siybwGWG1YWigrs5AsB54G4UMRvAuY6IaDtfxDqOstFuxBg72xvI/0iwmFekqJhTzXcf2BEW+f7mk7AhOHw9Eg4VAs37voHVpoJ6c8o/5edgDn5/tsO7g9p8fDXVThzvfPG+uppKgFzE2FXBoSHQX0LPLcOGlu9hx0yAJq/cP996FpouePdNmYQVH0GY4fAgw54qwBKjptHgqkE7FsBMyc7wWUUwza3xFP5b1w01GW7GxGXAxeavA1bmgIFLrlp+UmYJXHLJDGVgAMfwcvxTmSr9sCGQ95I9RCQlQZfz3PqOFgL078xyfqHqbBGJziwL9yWeBFAegoBAyLgjmyBNIgqAX3ClOdaHNaFZnhjM5y66ltzdxMweRSUr4BxQxXHKv6ivSMwC6oEvJkEu5c5lXx/DBYW9kwCipfAu8lObPO3wo/VBgnQ8wx29wrQOr4rJaorwCJAhxfWOgPBigJax7dWgAsD1iOglgdYPsDyAdpTUa1OyHKCOjZDwXgErShgRQEnA1YYtMKgynlAMJyQFQWsKKD9TDAYK9AKg1YYtMLgIwZU84DFz0PhIidjpcdh7rc980yw5AOYk+jEtqQIth8xeCYY1R8qV8PEEXCvHWZugV/P9EwCXpmgnAr36wOnr0FKLtwM8HpOrFBdAdJIFE4ZC+ca4Not/4x2925QkI2IhPExUFWvTJiaaCJATYnj/55AgFasjnYWAWp7AT2Mli2H2QnqTkhPKuz5cnRvDaTn6UFl0AnqGUreDJdkgrxOq2uCqeuh6ba3hlFR8E+O+++js+HKw8o9d4keCEfXQFy08pprbj7IG2KzxNRHQEA9OQziY+D3Orh1zz/MU2uVQgoRKXyY5FEv4Nozsh+8EAe1DXC+0SzTFT2mE6AV3hNDYc10pfX6A/B3s9ae5rbTTIAAlhB4V+NrZ3NhatfWP0IJhVoJVSVAFP68El4ar5S7fLgTdv2pHVBXtpz/LGxeAMMGweFz8Nom9QlTJWDBFNjxvrsZPxyDT0vh8o2uNM//WOJU16XDe9Pc27z9HeysCoxRlYBZCbDXRx1paxts/A1yD8L1ANlhMCmSmV6VBnJm8Fg/75Fm58G+GoME2GxQtNi98MBVpZSiFB6BggqouBBMc526JS1flgqSI0iE8CVSyLFoO6hVQaquAIdyGTB3HkjNnj85eQV2VEHpCai+rD64HroSR4OsxneSIelx/z2lNnH1HtiqsfxbMwEypHjXL9NBtshhzqsWPtFIAnT4LBythz/q4Wwj1F6HNpWK0L7hSi7x1HDF0Gmx8OJ4GB4ZmK4Ou7L1/bws8IbNU4suAhydJ42E7NdBHKQaEZ4DyvZUwqlnkiRLWQiW7bceEcPF0eX85L94K5C+ThHgUCgzlZECS1Mhdoge2MbbSiWq+J2CSmPZoSECHGbIKnh1IsxPgpkJMGawcQN9abh0A8prYHc1/HIaZPaNiikEeIKQ0yNJnKbGQnKscpoUyHn6MkKcmZzqHLsIRy8qiY18N1uCQoAvkBKzpeBZnnNxaFIuLxWdIhJKpVy+oRWu/guXWpTPXSHWhQnrykxvvjQFeda1uYeOpldfnBQCev3VWQcJvfbytGvA7WXX5/8DLa7KpmYBD88AAAAASUVORK5CYII="
var prevTitle = document.title;


function removeDarkMode() {
	document.documentElement.classList.remove("dark");
}

/***************************************************************
 * Sends GET request to endpoint to check for unassigned chats.
 * If finds any, calls the changeTab() function.
 ***************************************************************/
function check_unassigned() {
	var apiUrl = "https://spikethedog.logziosupport.click/isUnassigned";

	fetch(apiUrl).then(response => response.json()).then(function(data) {
		if (data.isUnassigned == true) {
			changeTab(chrome.runtime.getURL("images/IntercomRedLogo.png"), "Unassigned chat");
			document.documentElement.classList.add("dark");
			setTimeout(removeDarkMode, 2000);
			setTimeout(changeTab, 3000, intercomDeafultLogo, prevTitle);
		}
	})
}

/***************************************************************
 * Sends GET request to endpoint to check for unassigned chats.
 * If finds any, calls the changeTab() function.
 * 
 * @param {String} newLogo: Link to the new Tab Logo.
 * @param {String} newTitle: the new title for the Tab.
 ***************************************************************/
function changeTab(newLogo, newTitle) {
	var link = document.querySelector("link[rel~='icon']");

	if (!link) {
    	link = document.createElement("link");
    	link.rel = "icon";
    	document.getElementsByTagName("head")[0].appendChild(link);
	}
	link.href = newLogo;
	document.title = newTitle;
}

/***************************************************************
 * Calls check_unassigned() to see if there are unassigned chats
 * and then itself again to create an endless runtime. 
 ***************************************************************/
function main() {
	check_unassigned()
	setTimeout(main, 8000);
}

// the begening
console.log("Support extension: Hi! Just updating the Support unassigned chat extension is loading and all is good :)");
setTimeout(main, 5000);