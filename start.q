//http server
.h.HOME:"."
if[not system"p";system"p 5000"]

//proxy
.dqweb.timeout:1000;
.dqweb.con:(enlist"")!1#0i;
/returns handle to (s)erver, where s is a string of the form "host:port"
.dqweb.h:{[s]
	if[null h:.dqweb.con s;h:@[hopen;(":",s;.dqweb.timeout);0Ni]];
	$[null h;'"Couldn't connect to ",s;.dqweb.con[s]:h]
 };
.z.pc:{.dqweb.con:(where .dqweb.con<>x)#.dqweb.con};

{[]
	-1 "Open http://",(s1:"localhost:",p),"/index.html or http://",(s2:string[.z.h],":",p:string system"p"),"/index.html";
	-1 "Use //@PROXY ",s1," or //@PROXY ",s2;
 }[]