//http server
.h.HOME:"."
if[not system"p";system"p 5000"]
-1 "Open http://localhost:",(string system "p"),"/index.html or http://",string[.z.h],":",(string system"p"),"/index.html";

//proxy
.dqweb.timeout:1000;
.dqweb.con:(enlist"")!1#0i;
/returns handle to (s)erver, where s is of the form "host:port"
.dqweb.h:{[s]
	if[null h:.dqweb.con s;h:@[hopen;(":",s;.dqweb.timeout);0Ni]];
	$[null h;'"Couldn't connect to ",s;.dqweb.con[s]:h]
 };
.z.pc:{.dqweb.con:(where .dqweb.con<>x)#.dqweb.con};
