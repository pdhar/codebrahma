$(function() {
	
	message = {};
	message.add = function (peer, msg, to_user, email) { 
		var msgObject = {
    		channel: "/messages/new",
        	data: msg,
        	user: peer,
        	email: email,
        	to_user: to_user,
            ext: {
                auth_token: "anything"
            },
    		error: "a"
		};
		
		var publication = client.publish('/messages/new', msgObject);
		return;
	}
	
	var client = new Faye.Client('http://pdhar-faye-server.herokuapp.com/faye');
	
	subscription = client.subscribe('/messages/new', function(message) {
		try{
		   	angular.element(document.getElementById('AngularCtrl')).scope().$apply(function(scope){
		        return scope.addFayeMsg();
		    });
		}
		catch(e){
			//do nothing
		}
	});
	
	subscription.callback(function() {
	  //alert('Subscription is now active!');
	});
	
	subscription.errback(function(error) {
	  alert(error.message);
	});
						
}); 