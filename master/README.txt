Content of submission

	Student Registration System (Eclipse Project)
		This is a dynamic web project compiled with jdk 1.8
		for compatibility with the wildfly server based on the same jdk.

	Screenshots (Word Document)
		The screenshots show successful deployment and execution of the
		Student Registration System (SRS) web app

How to build, package and deploy
Since this is an eclipse project, it is necessary to use eclipse to open
it and use the feature that exports it to a war file. This export builds 
and packages the application. Once packaged, the resulting war file can 
be copied into the standalone/deployments folder of the wildfly server, 
which readily deploys it. It can then be accessed for execution via the 
context root provided by the wildfly server.