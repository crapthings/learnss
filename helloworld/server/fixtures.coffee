# feed dummy data

Meteor.startup ->

	unless Meteor.users.findOne { username: 'admin' }
		Accounts.createUser
			username: 'admin'
			password: 'admin'

	unless Meteor.users.findOne { username: 'demo' }
		Accounts.createUser
			username: 'demo'
			password: 'demo'
