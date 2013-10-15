
function insertMedia()
{
for( var k = 0, l = arguments.length; k < l; k++ )
{
document.write( arguments[k] );
}
}
if(typeof YUI!="undefined"){YUI._YUI=YUI;}var YUI=function(){var c=0,f=this,b=arguments,a=b.length,e=function(h,g){return(h&&h.hasOwnProperty&&(h instanceof g));},d=(typeof YUI_config!=="undefined")&&YUI_config;if(!(e(f,YUI))){f=new YUI();}else{f._init();if(YUI.GlobalConfig){f.applyConfig(YUI.GlobalConfig);}if(d){f.applyConfig(d);}if(!a){f._setup();}}if(a){for(;c<a;c++){f.applyConfig(b[c]);}f._setup();}f.instanceOf=e;return f;};(function(){var p,b,q="3.4.1",h=".",n="http://yui.yahooapis.com/",t="yui3-js-enabled",l=function(){},g=Array.prototype.slice,r={"io.xdrReady":1,"io.xdrResponse":1,"SWF.eventHandler":1},f=(typeof window!="undefined"),e=(f)?window:null,v=(f)?e.document:null,d=v&&v.documentElement,a=d&&d.className,c={},i=new Date().getTime(),m=function(z,y,x,w){if(z&&z.addEventListener){z.addEventListener(y,x,w);}else{if(z&&z.attachEvent){z.attachEvent("on"+y,x);}}},u=function(A,z,y,w){if(A&&A.removeEventListener){try{A.removeEventListener(z,y,w);}catch(x){}}else{if(A&&A.detachEvent){A.detachEvent("on"+z,y);}}},s=function(){YUI.Env.windowLoaded=true;YUI.Env.DOMReady=true;if(f){u(window,"load",s);}},j=function(y,x){var w=y.Env._loader;if(w){w.ignoreRegistered=false;w.onEnd=null;w.data=null;w.required=[];w.loadType=null;}else{w=new y.Loader(y.config);y.Env._loader=w;}YUI.Env.core=y.Array.dedupe([].concat(YUI.Env.core,["loader-base","loader-rollup","loader-yui3"]));return w;},o=function(y,x){for(var w in x){if(x.hasOwnProperty(w)){y[w]=x[w];}}},k={success:true};if(d&&a.indexOf(t)==-1){if(a){a+=" ";}a+=t;d.className=a;}if(q.indexOf("@")>-1){q="3.3.0";}p={applyConfig:function(D){D=D||l;var y,A,z=this.config,B=z.modules,x=z.groups,C=z.rls,w=this.Env._loader;for(A in D){if(D.hasOwnProperty(A)){y=D[A];if(B&&A=="modules"){o(B,y);}else{if(x&&A=="groups"){o(x,y);}else{if(C&&A=="rls"){o(C,y);}else{if(A=="win"){z[A]=y.contentWindow||y;z.doc=z[A].document;}else{if(A=="_yuid"){}else{z[A]=y;}}}}}}}if(w){w._config(D);}},_config:function(w){this.applyConfig(w);},_init:function(){var y,z=this,w=YUI.Env,x=z.Env,A;z.version=q;if(!x){z.Env={core:["get","features","intl-base","yui-log","yui-later","loader-base","loader-rollup","loader-yui3"],mods:{},versions:{},base:n,cdn:n+q+"/build/",_idx:0,_used:{},_attached:{},_missed:[],_yidx:0,_uidx:0,_guidp:"y",_loaded:{},_BASE_RE:/(?:\?(?:[^&]*&)*([^&]*))?\b(simpleyui|yui(?:-\w+)?)\/\2(?:-(min|debug))?\.js/,parseBasePath:function(F,D){var B=F.match(D),E,C;if(B){E=RegExp.leftContext||F.slice(0,F.indexOf(B[0]));C=B[3];if(B[1]){E+="?"+B[1];}E={filter:C,path:E};}return E;},getBase:w&&w.getBase||function(F){var D=(v&&v.getElementsByTagName("script"))||[],G=x.cdn,C,E,B,H;for(E=0,B=D.length;E<B;++E){H=D[E].src;if(H){C=z.Env.parseBasePath(H,F);if(C){y=C.filter;G=C.path;break;}}}return G;}};x=z.Env;x._loaded[q]={};if(w&&z!==YUI){x._yidx=++w._yidx;x._guidp=("yui_"+q+"_"+x._yidx+"_"+i).replace(/\./g,"_");}else{if(YUI._YUI){w=YUI._YUI.Env;x._yidx+=w._yidx;x._uidx+=w._uidx;for(A in w){if(!(A in x)){x[A]=w[A];}}delete YUI._YUI;}}z.id=z.stamp(z);c[z.id]=z;}z.constructor=YUI;z.config=z.config||{win:e,doc:v,debug:true,useBrowserConsole:true,throwFail:true,bootstrap:true,cacheUse:true,fetchCSS:true,use_rls:false,rls_timeout:2000};if(YUI.Env.rls_disabled){z.config.use_rls=false;}z.config.lang=z.config.lang||"en-US";z.config.base=YUI.config.base||z.Env.getBase(z.Env._BASE_RE);if(!y||(!("mindebug").indexOf(y))){y="min";}y=(y)?"-"+y:y;z.config.loaderPath=YUI.config.loaderPath||"loader/loader"+y+".js";},_setup:function(B){var x,A=this,w=[],z=YUI.Env.mods,y=A.config.core||[].concat(YUI.Env.core);for(x=0;x<y.length;x++){if(z[y[x]]){w.push(y[x]);}}A._attach(["yui-base"]);A._attach(w);if(A.Loader){j(A);}},applyTo:function(C,B,y){if(!(B in r)){this.log(B+": applyTo not allowed","warn","yui");return null;}var x=c[C],A,w,z;if(x){A=B.split(".");w=x;for(z=0;z<A.length;z=z+1){w=w[A[z]];if(!w){this.log("applyTo not found: "+B,"warn","yui");}}return w.apply(x,y);}return null;},add:function(x,C,B,w){w=w||{};var A=YUI.Env,D={name:x,fn:C,version:B,details:w},E,z,y=A.versions;A.mods[x]=D;y[B]=y[B]||{};y[B][x]=D;for(z in c){if(c.hasOwnProperty(z)){E=c[z].Env._loader;if(E){if(!E.moduleInfo[x]){E.addModule(w,x);}}}}return this;},_attach:function(B,M){var F,N,L,I,w,D,y,z=YUI.Env.mods,G=YUI.Env.aliases,x=this,E,A=x.Env._loader,C=x.Env._attached,H=B.length,A,K=[];for(F=0;F<H;F++){N=B[F];L=z[N];K.push(N);if(A&&A.conditions[N]){x.Object.each(A.conditions[N],function(P){var O=P&&((P.ua&&x.UA[P.ua])||(P.test&&P.test(x)));if(O){K.push(P.name);}});}}B=K;H=B.length;for(F=0;F<H;F++){if(!C[B[F]]){N=B[F];L=z[N];if(G&&G[N]){x._attach(G[N]);continue;}if(!L){if(A&&A.moduleInfo[N]){L=A.moduleInfo[N];M=true;}if(!M){if((N.indexOf("skin-")===-1)&&(N.indexOf("css")===-1)){x.Env._missed.push(N);x.Env._missed=x.Array.dedupe(x.Env._missed);x.message("NOT loaded: "+N,"warn","yui");}}}else{C[N]=true;for(E=0;E<x.Env._missed.length;E++){if(x.Env._missed[E]===N){x.message("Found: "+N+" (was reported as missing earlier)","warn","yui");x.Env._missed.splice(E,1);}}I=L.details;w=I.requires;D=I.use;y=I.after;if(w){for(E=0;E<w.length;E++){if(!C[w[E]]){if(!x._attach(w)){return false;}break;}}}if(y){for(E=0;E<y.length;E++){if(!C[y[E]]){if(!x._attach(y,true)){return false;}break;}}}if(L.fn){try{L.fn(x,N);}catch(J){x.error("Attach error: "+N,J,N);return false;}}if(D){for(E=0;E<D.length;E++){if(!C[D[E]]){if(!x._attach(D)){return false;}break;}}}}}}return true;},use:function(){var y=g.call(arguments,0),C=y[y.length-1],B=this,A=0,x,w=B.Env,z=true;if(B.Lang.isFunction(C)){y.pop();}else{C=null;}if(B.Lang.isArray(y[0])){y=y[0];}if(B.config.cacheUse){while((x=y[A++])){if(!w._attached[x]){z=false;break;}}if(z){if(y.length){}B._notify(C,k,y);return B;}}if(B._loading){B._useQueue=B._useQueue||new B.Queue();B._useQueue.add([y,C]);}else{B._use(y,function(E,D){E._notify(C,D,y);});}return B;},_notify:function(z,w,x){if(!w.success&&this.config.loadErrorFn){this.config.loadErrorFn.call(this,this,z,w,x);}else{if(z){try{z(this,w);}catch(y){this.error("use callback error",y,x);
}}}},_use:function(y,A){if(!this.Array){this._attach(["yui-base"]);}var M,F,N,K,x=this,O=YUI.Env,z=O.mods,w=x.Env,C=w._used,J=O._loaderQueue,R=y[0],E=x.Array,P=x.config,D=P.bootstrap,L=[],H=[],Q=true,B=P.fetchCSS,I=function(T,S){if(!T.length){return;}E.each(T,function(W){if(!S){H.push(W);}if(C[W]){return;}var U=z[W],X,V;if(U){C[W]=true;X=U.details.requires;V=U.details.use;}else{if(!O._loaded[q][W]){L.push(W);}else{C[W]=true;}}if(X&&X.length){I(X);}if(V&&V.length){I(V,1);}});},G=function(W){var U=W||{success:true,msg:"not dynamic"},T,S,V=true,X=U.data;x._loading=false;if(X){S=L;L=[];H=[];I(X);T=L.length;if(T){if(L.sort().join()==S.sort().join()){T=false;}}}if(T&&X){x._loading=false;x._use(y,function(){if(x._attach(X)){x._notify(A,U,X);}});}else{if(X){V=x._attach(X);}if(V){x._notify(A,U,y);}}if(x._useQueue&&x._useQueue.size()&&!x._loading){x._use.apply(x,x._useQueue.next());}};if(R==="*"){Q=x._attach(x.Object.keys(z));if(Q){G();}return x;}if(D&&x.Loader&&y.length){F=j(x);F.require(y);F.ignoreRegistered=true;F.calculate(null,(B)?null:"js");y=F.sorted;}I(y);M=L.length;if(M){L=x.Object.keys(E.hash(L));M=L.length;}if(D&&M&&x.Loader){x._loading=true;F=j(x);F.onEnd=G;F.context=x;F.data=y;F.ignoreRegistered=false;F.require(y);F.insert(null,(B)?null:"js");}else{if(M&&x.config.use_rls&&!YUI.Env.rls_enabled){O._rls_queue=O._rls_queue||new x.Queue();K=function(S,U){var T=function(W){G(W);S.rls_advance();},V=S._rls(U);if(V){S.rls_oncomplete(function(W){T(W);});S.Get.script(V,{data:U,timeout:S.config.rls_timeout,onFailure:S.rls_handleFailure,onTimeout:S.rls_handleTimeout});}else{T({success:true,data:U});}};O._rls_queue.add(function(){O._rls_in_progress=true;x.rls_callback=A;x.rls_locals(x,y,K);});if(!O._rls_in_progress&&O._rls_queue.size()){O._rls_queue.next()();}}else{if(D&&M&&x.Get&&!w.bootstrapped){x._loading=true;N=function(){x._loading=false;J.running=false;w.bootstrapped=true;O._bootstrapping=false;if(x._attach(["loader"])){x._use(y,A);}};if(O._bootstrapping){J.add(N);}else{O._bootstrapping=true;x.Get.script(P.base+P.loaderPath,{onEnd:N});}}else{Q=x._attach(y);if(Q){G();}}}}return x;},namespace:function(){var x=arguments,B=this,z=0,y,A,w;for(;z<x.length;z++){w=x[z];if(w.indexOf(h)){A=w.split(h);for(y=(A[0]=="YAHOO")?1:0;y<A.length;y++){B[A[y]]=B[A[y]]||{};B=B[A[y]];}}else{B[w]=B[w]||{};}}return B;},log:l,message:l,dump:function(w){return""+w;},error:function(A,y,x){var z=this,w;if(z.config.errorFn){w=z.config.errorFn.apply(z,arguments);}if(z.config.throwFail&&!w){throw (y||new Error(A));}else{z.message(A,"error");}return z;},guid:function(w){var x=this.Env._guidp+"_"+(++this.Env._uidx);return(w)?(w+x):x;},stamp:function(y,z){var w;if(!y){return y;}if(y.uniqueID&&y.nodeType&&y.nodeType!==9){w=y.uniqueID;}else{w=(typeof y==="string")?y:y._yuid;}if(!w){w=this.guid();if(!z){try{y._yuid=w;}catch(x){w=null;}}}return w;},destroy:function(){var w=this;if(w.Event){w.Event._unload();}delete c[w.id];delete w.Env;delete w.config;}};YUI.prototype=p;for(b in p){if(p.hasOwnProperty(b)){YUI[b]=p[b];}}YUI._init();if(f){m(window,"load",s);}else{s();}YUI.Env.add=m;YUI.Env.remove=u;if(typeof exports=="object"){exports.YUI=YUI;}}());YUI.add("yui-base",function(b){var i=b.Lang||(b.Lang={}),n=String.prototype,k=Object.prototype.toString,a={"undefined":"undefined","number":"number","boolean":"boolean","string":"string","[object Function]":"function","[object RegExp]":"regexp","[object Array]":"array","[object Date]":"date","[object Error]":"error"},c=/\{\s*([^|}]+?)\s*(?:\|([^}]*))?\s*\}/g,s=/^\s+|\s+$/g,e=b.config.win,o=e&&!!(e.MooTools||e.Prototype);i.isArray=(!o&&Array.isArray)||function(w){return i.type(w)==="array";};i.isBoolean=function(w){return typeof w==="boolean";};i.isFunction=function(w){return i.type(w)==="function";};i.isDate=function(w){return i.type(w)==="date"&&w.toString()!=="Invalid Date"&&!isNaN(w);};i.isNull=function(w){return w===null;};i.isNumber=function(w){return typeof w==="number"&&isFinite(w);};i.isObject=function(y,x){var w=typeof y;return(y&&(w==="object"||(!x&&(w==="function"||i.isFunction(y)))))||false;};i.isString=function(w){return typeof w==="string";};i.isUndefined=function(w){return typeof w==="undefined";};i.trim=n.trim?function(w){return w&&w.trim?w.trim():w;}:function(w){try{return w.replace(s,"");}catch(x){return w;}};i.trimLeft=n.trimLeft?function(w){return w.trimLeft();}:function(w){return w.replace(/^\s+/,"");};i.trimRight=n.trimRight?function(w){return w.trimRight();}:function(w){return w.replace(/\s+$/,"");};i.isValue=function(x){var w=i.type(x);switch(w){case"number":return isFinite(x);case"null":case"undefined":return false;default:return !!w;}};i.type=function(w){return a[typeof w]||a[k.call(w)]||(w?"object":"null");};i.sub=function(w,x){return w.replace?w.replace(c,function(y,z){return i.isUndefined(x[z])?y:x[z];}):w;};i.now=Date.now||function(){return new Date().getTime();};var f=b.Lang,r=Array.prototype,p=Object.prototype.hasOwnProperty;function j(y,B,A){var x,w;B||(B=0);if(A||j.test(y)){try{return r.slice.call(y,B);}catch(z){w=[];for(x=y.length;B<x;++B){w.push(y[B]);}return w;}}return[y];}b.Array=j;j.dedupe=function(B){var A={},y=[],x,z,w;for(x=0,w=B.length;x<w;++x){z=B[x];if(!p.call(A,z)){A[z]=1;y.push(z);}}return y;};j.each=j.forEach=r.forEach?function(y,w,x){r.forEach.call(y||[],w,x||b);return b;}:function(A,y,z){for(var x=0,w=(A&&A.length)||0;x<w;++x){if(x in A){y.call(z||b,A[x],x,A);}}return b;};j.hash=function(z,x){var A={},B=(x&&x.length)||0,y,w;for(y=0,w=z.length;y<w;++y){if(y in z){A[z[y]]=B>y&&y in x?x[y]:true;}}return A;};j.indexOf=r.indexOf?function(x,w){return r.indexOf.call(x,w);}:function(z,y){for(var x=0,w=z.length;x<w;++x){if(x in z&&z[x]===y){return x;}}return -1;};j.numericSort=function(x,w){return x-w;};j.some=r.some?function(y,w,x){return r.some.call(y,w,x);}:function(A,y,z){for(var x=0,w=A.length;x<w;++x){if(x in A&&y.call(z,A[x],x,A)){return true;}}return false;};j.test=function(y){var w=0;if(f.isArray(y)){w=1;}else{if(f.isObject(y)){try{if("length" in y&&!y.tagName&&!y.alert&&!y.apply){w=2;
}}catch(x){}}}return w;};function u(){this._init();this.add.apply(this,arguments);}u.prototype={_init:function(){this._q=[];},next:function(){return this._q.shift();},last:function(){return this._q.pop();},add:function(){this._q.push.apply(this._q,arguments);return this;},size:function(){return this._q.length;}};b.Queue=u;YUI.Env._loaderQueue=YUI.Env._loaderQueue||new u();var m="__",p=Object.prototype.hasOwnProperty,l=b.Lang.isObject;b.cached=function(y,w,x){w||(w={});return function(z){var A=arguments.length>1?Array.prototype.join.call(arguments,m):String(z);if(!(A in w)||(x&&w[A]==x)){w[A]=y.apply(y,arguments);}return w[A];};};b.merge=function(){var y=arguments,z=0,x=y.length,w={};for(;z<x;++z){b.mix(w,y[z],true);}return w;};b.mix=function(w,x,D,y,A,E){var B,H,G,z,I,C,F;if(!w||!x){return w||b;}if(A){if(A===2){b.mix(w.prototype,x.prototype,D,y,0,E);}G=A===1||A===3?x.prototype:x;F=A===1||A===4?w.prototype:w;if(!G||!F){return w;}}else{G=x;F=w;}B=D&&!E;if(y){for(z=0,C=y.length;z<C;++z){I=y[z];if(!p.call(G,I)){continue;}H=B?false:I in F;if(E&&H&&l(F[I],true)&&l(G[I],true)){b.mix(F[I],G[I],D,null,0,E);}else{if(D||!H){F[I]=G[I];}}}}else{for(I in G){if(!p.call(G,I)){continue;}H=B?false:I in F;if(E&&H&&l(F[I],true)&&l(G[I],true)){b.mix(F[I],G[I],D,null,0,E);}else{if(D||!H){F[I]=G[I];}}}if(b.Object._hasEnumBug){b.mix(F,G,D,b.Object._forceEnum,A,E);}}return w;};var p=Object.prototype.hasOwnProperty,e=b.config.win,o=e&&!!(e.MooTools||e.Prototype),v,g=b.Object=(!o&&Object.create)?function(w){return Object.create(w);}:(function(){function w(){}return function(x){w.prototype=x;return new w();};}()),d=g._forceEnum=["hasOwnProperty","isPrototypeOf","propertyIsEnumerable","toString","toLocaleString","valueOf"],t=g._hasEnumBug=!{valueOf:0}.propertyIsEnumerable("valueOf"),q=g._hasProtoEnumBug=(function(){}).propertyIsEnumerable("prototype"),h=g.owns=function(x,w){return !!x&&p.call(x,w);};g.hasKey=h;g.keys=(!o&&Object.keys)||function(A){if(!b.Lang.isObject(A)){throw new TypeError("Object.keys called on a non-object");}var z=[],y,x,w;if(q&&typeof A==="function"){for(x in A){if(h(A,x)&&x!=="prototype"){z.push(x);}}}else{for(x in A){if(h(A,x)){z.push(x);}}}if(t){for(y=0,w=d.length;y<w;++y){x=d[y];if(h(A,x)){z.push(x);}}}return z;};g.values=function(A){var z=g.keys(A),y=0,w=z.length,x=[];for(;y<w;++y){x.push(A[z[y]]);}return x;};g.size=function(x){try{return g.keys(x).length;}catch(w){return 0;}};g.hasValue=function(x,w){return b.Array.indexOf(g.values(x),w)>-1;};g.each=function(z,x,A,y){var w;for(w in z){if(y||h(z,w)){x.call(A||b,z[w],w,z);}}return b;};g.some=function(z,x,A,y){var w;for(w in z){if(y||h(z,w)){if(x.call(A||b,z[w],w,z)){return true;}}}return false;};g.getValue=function(A,z){if(!b.Lang.isObject(A)){return v;}var x,y=b.Array(z),w=y.length;for(x=0;A!==v&&x<w;x++){A=A[y[x]];}return A;};g.setValue=function(C,A,B){var w,z=b.Array(A),y=z.length-1,x=C;if(y>=0){for(w=0;x!==v&&w<y;w++){x=x[z[w]];}if(x!==v){x[z[w]]=B;}else{return v;}}return C;};g.isEmpty=function(w){return !g.keys(w).length;};YUI.Env.parseUA=function(C){var B=function(F){var G=0;return parseFloat(F.replace(/\./g,function(){return(G++==1)?"":".";}));},E=b.config.win,w=E&&E.navigator,z={ie:0,opera:0,gecko:0,webkit:0,safari:0,chrome:0,mobile:null,air:0,ipad:0,iphone:0,ipod:0,ios:null,android:0,webos:0,caja:w&&w.cajaVersion,secure:false,os:null},x=C||w&&w.userAgent,D=E&&E.location,y=D&&D.href,A;z.userAgent=x;z.secure=y&&(y.toLowerCase().indexOf("https")===0);if(x){if((/windows|win32/i).test(x)){z.os="windows";}else{if((/macintosh/i).test(x)){z.os="macintosh";}else{if((/rhino/i).test(x)){z.os="rhino";}}}if((/KHTML/).test(x)){z.webkit=1;}A=x.match(/AppleWebKit\/([^\s]*)/);if(A&&A[1]){z.webkit=B(A[1]);z.safari=z.webkit;if(/ Mobile\//.test(x)){z.mobile="Apple";A=x.match(/OS ([^\s]*)/);if(A&&A[1]){A=B(A[1].replace("_","."));}z.ios=A;z.ipad=z.ipod=z.iphone=0;A=x.match(/iPad|iPod|iPhone/);if(A&&A[0]){z[A[0].toLowerCase()]=z.ios;}}else{A=x.match(/NokiaN[^\/]*|webOS\/\d\.\d/);if(A){z.mobile=A[0];}if(/webOS/.test(x)){z.mobile="WebOS";A=x.match(/webOS\/([^\s]*);/);if(A&&A[1]){z.webos=B(A[1]);}}if(/ Android/.test(x)){if(/Mobile/.test(x)){z.mobile="Android";}A=x.match(/Android ([^\s]*);/);if(A&&A[1]){z.android=B(A[1]);}}}A=x.match(/Chrome\/([^\s]*)/);if(A&&A[1]){z.chrome=B(A[1]);z.safari=0;}else{A=x.match(/AdobeAIR\/([^\s]*)/);if(A){z.air=A[0];}}}if(!z.webkit){A=x.match(/Opera[\s\/]([^\s]*)/);if(A&&A[1]){z.opera=B(A[1]);A=x.match(/Version\/([^\s]*)/);if(A&&A[1]){z.opera=B(A[1]);}A=x.match(/Opera Mini[^;]*/);if(A){z.mobile=A[0];}}else{A=x.match(/MSIE\s([^;]*)/);if(A&&A[1]){z.ie=B(A[1]);}else{A=x.match(/Gecko\/([^\s]*)/);if(A){z.gecko=1;A=x.match(/rv:([^\s\)]*)/);if(A&&A[1]){z.gecko=B(A[1]);}}}}}}if(!C){YUI.Env.UA=z;}return z;};b.UA=YUI.Env.UA||YUI.Env.parseUA();YUI.Env.aliases={"anim":["anim-base","anim-color","anim-curve","anim-easing","anim-node-plugin","anim-scroll","anim-xy"],"app":["controller","model","model-list","view"],"attribute":["attribute-base","attribute-complex"],"autocomplete":["autocomplete-base","autocomplete-sources","autocomplete-list","autocomplete-plugin"],"base":["base-base","base-pluginhost","base-build"],"cache":["cache-base","cache-offline","cache-plugin"],"collection":["array-extras","arraylist","arraylist-add","arraylist-filter","array-invoke"],"dataschema":["dataschema-base","dataschema-json","dataschema-xml","dataschema-array","dataschema-text"],"datasource":["datasource-local","datasource-io","datasource-get","datasource-function","datasource-cache","datasource-jsonschema","datasource-xmlschema","datasource-arrayschema","datasource-textschema","datasource-polling"],"datatable":["datatable-base","datatable-datasource","datatable-sort","datatable-scroll"],"datatype":["datatype-number","datatype-date","datatype-xml"],"datatype-date":["datatype-date-parse","datatype-date-format"],"datatype-number":["datatype-number-parse","datatype-number-format"],"datatype-xml":["datatype-xml-parse","datatype-xml-format"],"dd":["dd-ddm-base","dd-ddm","dd-ddm-drop","dd-drag","dd-proxy","dd-constrain","dd-drop","dd-scroll","dd-delegate"],"dom":["dom-base","dom-screen","dom-style","selector-native","selector"],"editor":["frame","selection","exec-command","editor-base","editor-para","editor-br","editor-bidi","editor-tab","createlink-base"],"event":["event-base","event-delegate","event-synthetic","event-mousewheel","event-mouseenter","event-key","event-focus","event-resize","event-hover","event-outside"],"event-custom":["event-custom-base","event-custom-complex"],"event-gestures":["event-flick","event-move"],"highlight":["highlight-base","highlight-accentfold"],"history":["history-base","history-hash","history-hash-ie","history-html5"],"io":["io-base","io-xdr","io-form","io-upload-iframe","io-queue"],"json":["json-parse","json-stringify"],"loader":["loader-base","loader-rollup","loader-yui3"],"node":["node-base","node-event-delegate","node-pluginhost","node-screen","node-style"],"pluginhost":["pluginhost-base","pluginhost-config"],"querystring":["querystring-parse","querystring-stringify"],"recordset":["recordset-base","recordset-sort","recordset-filter","recordset-indexer"],"resize":["resize-base","resize-proxy","resize-constrain"],"slider":["slider-base","slider-value-range","clickable-rail","range-slider"],"text":["text-accentfold","text-wordbreak"],"widget":["widget-base","widget-htmlparser","widget-uievents","widget-skin"]};
},"3.4.1");YUI.add("get",function(e){var B=e.UA,p=e.Lang,b="text/javascript",v="text/css",I="stylesheet",s="script",q="autopurge",A="utf-8",w="link",C="async",h=true,l={script:h,css:!(B.webkit||B.gecko)},z={},r=0,g,u=function(J){var K=J.timer;if(K){clearTimeout(K);J.timer=null;}},m=function(M,J,P,N){var K=N||e.config.win,O=K.document,Q=O.createElement(M),L;if(P){e.mix(J,P);}for(L in J){if(J[L]&&J.hasOwnProperty(L)){Q.setAttribute(L,J[L]);}}return Q;},k=function(K,L,J){return m(w,{id:e.guid(),type:v,rel:I,href:K},J,L);},E=function(K,L,J){return m(s,{id:e.guid(),type:b,src:K},J,L);},a=function(K,L,J){return{tId:K.tId,win:K.win,data:K.data,nodes:K.nodes,msg:L,statusText:J,purge:function(){d(this.tId);}};},o=function(N,M,J){var L=z[N],K=L&&L.onEnd;L.finished=true;if(K){K.call(L.context,a(L,M,J));}},F=function(M,L){var K=z[M],J=K.onFailure;u(K);if(J){J.call(K.context,a(K,L));}o(M,L,"failure");},y=function(J){F(J,"transaction "+J+" was aborted");},x=function(L){var J=z[L],K=J.onSuccess;u(J);if(J.aborted){y(L);}else{if(K){K.call(J.context,a(J));}o(L,undefined,"OK");}},H=function(J,M){var K=z[M],L=(p.isString(J))?K.win.document.getElementById(J):J;if(!L){F(M,"target node not found: "+J);}return L;},d=function(O){var K,R,S,T,L,Q,P,N,M,J=z[O];if(J){K=J.nodes;M=K.length;for(N=0;N<M;N++){L=K[N];S=L.parentNode;if(L.clearAttributes){L.clearAttributes();}else{for(Q in L){if(L.hasOwnProperty(Q)){delete L[Q];}}}S.removeChild(L);}}J.nodes=[];},t=function(N,J){var K=z[N],L=K.onProgress,M;if(L){M=a(K);M.url=J;L.call(K.context,M);}},D=function(L){var J=z[L],K=J.onTimeout;if(K){K.call(J.context,a(J));}o(L,"timeout","timeout");},f=function(M,J){var L=z[M],K=(L&&!L.async);if(!L){return;}if(K){u(L);}t(M,J);if(!L.finished){if(L.aborted){y(M);}else{if((--L.remaining)===0){x(M);}else{if(K){i(M);}}}}},c=function(K,M,L,J){if(B.ie){M.onreadystatechange=function(){var N=this.readyState;if("loaded"===N||"complete"===N){M.onreadystatechange=null;f(L,J);}};}else{if(B.webkit){if(K===s){M.addEventListener("load",function(){f(L,J);},false);}}else{M.onload=function(){f(L,J);};M.onerror=function(N){F(L,N+": "+J);};}}},G=function(L,P,O){var M=z[P],N=O.document,J=M.insertBefore||N.getElementsByTagName("base")[0],K;if(J){K=H(J,P);if(K){K.parentNode.insertBefore(L,K);}}else{N.getElementsByTagName("head")[0].appendChild(L);}},i=function(Q){var O=z[Q],L=O.type,K=O.attributes,P=O.win,N=O.timeout,M,J;if(O.url.length>0){J=O.url.shift();if(N&&!O.timer){O.timer=setTimeout(function(){D(Q);},N);}if(L===s){M=E(J,P,K);}else{M=k(J,P,K);}O.nodes.push(M);c(L,M,Q,J);G(M,Q,P);if(!l[L]){f(Q,J);}if(O.async){i(Q);}}},n=function(){if(g){return;}g=true;var J,K;for(J in z){if(z.hasOwnProperty(J)){K=z[J];if(K.autopurge&&K.finished){d(K.tId);delete z[J];}}}g=false;},j=function(K,J,L){L=L||{};var O="q"+(r++),N=L.purgethreshold||e.Get.PURGE_THRESH,M;if(r%N===0){n();}M=z[O]=e.merge(L);M.tId=O;M.type=K;M.url=J;M.finished=false;M.nodes=[];M.win=M.win||e.config.win;M.context=M.context||M;M.autopurge=(q in M)?M.autopurge:(K===s)?true:false;M.attributes=M.attributes||{};M.attributes.charset=L.charset||M.attributes.charset||A;if(C in M&&K===s){M.attributes.async=M.async;}M.url=(p.isString(M.url))?[M.url]:M.url;if(!M.url[0]){M.url.shift();}M.remaining=M.url.length;i(O);return{tId:O};};e.Get={PURGE_THRESH:20,abort:function(K){var L=(p.isString(K))?K:K.tId,J=z[L];if(J){J.aborted=true;}},script:function(J,K){return j(s,J,K);},css:function(J,K){return j("css",J,K);}};},"3.4.1",{requires:["yui-base"]});YUI.add("features",function(b){var c={};b.mix(b.namespace("Features"),{tests:c,add:function(d,e,f){c[d]=c[d]||{};c[d][e]=f;},all:function(e,f){var g=c[e],d=[];if(g){b.Object.each(g,function(i,h){d.push(h+":"+(b.Features.test(e,h,f)?1:0));});}return(d.length)?d.join(";"):"";},test:function(e,g,f){f=f||[];var d,i,k,j=c[e],h=j&&j[g];if(!h){}else{d=h.result;if(b.Lang.isUndefined(d)){i=h.ua;if(i){d=(b.UA[i]);}k=h.test;if(k&&((!i)||d)){d=k.apply(b,f);}h.result=d;}}return d;}});var a=b.Features.add;a("load","0",{"name":"graphics-canvas-default","test":function(f){var e=f.config.doc,d=e&&e.createElement("canvas");return(e&&!e.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(d&&d.getContext&&d.getContext("2d")));},"trigger":"graphics"});a("load","1",{"name":"autocomplete-list-keys","test":function(d){return !(d.UA.ios||d.UA.android);},"trigger":"autocomplete-list"});a("load","2",{"name":"graphics-svg","test":function(e){var d=e.config.doc;return(d&&d.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1"));},"trigger":"graphics"});a("load","3",{"name":"history-hash-ie","test":function(e){var d=e.config.doc&&e.config.doc.documentMode;return e.UA.ie&&(!("onhashchange" in e.config.win)||!d||d<8);},"trigger":"history-hash"});a("load","4",{"name":"graphics-vml-default","test":function(f){var e=f.config.doc,d=e&&e.createElement("canvas");return(e&&!e.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(!d||!d.getContext||!d.getContext("2d")));},"trigger":"graphics"});a("load","5",{"name":"graphics-svg-default","test":function(e){var d=e.config.doc;return(d&&d.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1"));},"trigger":"graphics"});a("load","6",{"name":"widget-base-ie","trigger":"widget-base","ua":"ie"});a("load","7",{"name":"transition-timer","test":function(g){var f=g.config.doc,e=(f)?f.documentElement:null,d=true;if(e&&e.style){d=!("MozTransition" in e.style||"WebkitTransition" in e.style);}return d;},"trigger":"transition"});a("load","8",{"name":"dom-style-ie","test":function(j){var h=j.Features.test,i=j.Features.add,f=j.config.win,g=j.config.doc,d="documentElement",e=false;i("style","computedStyle",{test:function(){return f&&"getComputedStyle" in f;}});i("style","opacity",{test:function(){return g&&"opacity" in g[d].style;}});e=(!h("style","opacity")&&!h("style","computedStyle"));return e;},"trigger":"dom-style"});a("load","9",{"name":"selector-css2","test":function(f){var e=f.config.doc,d=e&&!("querySelectorAll" in e);
return d;},"trigger":"selector"});a("load","10",{"name":"event-base-ie","test":function(e){var d=e.config.doc&&e.config.doc.implementation;return(d&&(!d.hasFeature("Events","2.0")));},"trigger":"node-base"});a("load","11",{"name":"dd-gestures","test":function(d){return(d.config.win&&("ontouchstart" in d.config.win&&!d.UA.chrome));},"trigger":"dd-drag"});a("load","12",{"name":"scrollview-base-ie","trigger":"scrollview-base","ua":"ie"});a("load","13",{"name":"graphics-canvas","test":function(f){var e=f.config.doc,d=e&&e.createElement("canvas");return(e&&!e.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(d&&d.getContext&&d.getContext("2d")));},"trigger":"graphics"});a("load","14",{"name":"graphics-vml","test":function(f){var e=f.config.doc,d=e&&e.createElement("canvas");return(e&&!e.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(!d||!d.getContext||!d.getContext("2d")));},"trigger":"graphics"});},"3.4.1",{requires:["yui-base"]});YUI.add("intl-base",function(b){var a=/[, ]/;b.mix(b.namespace("Intl"),{lookupBestLang:function(g,h){var f,j,c,e;function d(l){var k;for(k=0;k<h.length;k+=1){if(l.toLowerCase()===h[k].toLowerCase()){return h[k];}}}if(b.Lang.isString(g)){g=g.split(a);}for(f=0;f<g.length;f+=1){j=g[f];if(!j||j==="*"){continue;}while(j.length>0){c=d(j);if(c){return c;}else{e=j.lastIndexOf("-");if(e>=0){j=j.substring(0,e);if(e>=2&&j.charAt(e-2)==="-"){j=j.substring(0,e-2);}}else{break;}}}}return"";}});},"3.4.1",{requires:["yui-base"]});YUI.add("yui-log",function(d){var c=d,e="yui:log",a="undefined",b={debug:1,info:1,warn:1,error:1};c.log=function(j,s,g,q){var l,p,n,k,o,i=c,r=i.config,h=(i.fire)?i:YUI.Env.globalEvents;if(r.debug){if(g){p=r.logExclude;n=r.logInclude;if(n&&!(g in n)){l=1;}else{if(n&&(g in n)){l=!n[g];}else{if(p&&(g in p)){l=p[g];}}}}if(!l){if(r.useBrowserConsole){k=(g)?g+": "+j:j;if(i.Lang.isFunction(r.logFn)){r.logFn.call(i,j,s,g);}else{if(typeof console!=a&&console.log){o=(s&&console[s]&&(s in b))?s:"log";console[o](k);}else{if(typeof opera!=a){opera.postError(k);}}}}if(h&&!q){if(h==i&&(!h.getEvent(e))){h.publish(e,{broadcast:2});}h.fire(e,{msg:j,cat:s,src:g});}}}return i;};c.message=function(){return c.log.apply(c,arguments);};},"3.4.1",{requires:["yui-base"]});YUI.add("yui-later",function(b){var a=[];b.later=function(j,f,k,g,h){j=j||0;g=(!b.Lang.isUndefined(g))?b.Array(g):a;f=f||b.config.win||b;var i=false,c=(f&&b.Lang.isString(k))?f[k]:k,d=function(){if(!i){if(!c.apply){c(g[0],g[1],g[2],g[3]);}else{c.apply(f,g||a);}}},e=(h)?setInterval(d,j):setTimeout(d,j);return{id:e,interval:h,cancel:function(){i=true;if(this.interval){clearInterval(e);}else{clearTimeout(e);}}};};b.Lang.later=b.later;},"3.4.1",{requires:["yui-base"]});YUI.add("loader-base",function(d){if(!YUI.Env[d.version]){(function(){var I=d.version,E="/build/",F=I+E,D=d.Env.base,A="gallery-2011.09.14-20-40",C="2in3",B="4",z="2.9.0",G=D+"combo?",H={version:I,root:F,base:d.Env.base,comboBase:G,skin:{defaultSkin:"sam",base:"assets/skins/",path:"skin.css",after:["cssreset","cssfonts","cssgrids","cssbase","cssreset-context","cssfonts-context"]},groups:{},patterns:{}},y=H.groups,x=function(K,L){var J=C+"."+(K||B)+"/"+(L||z)+E;y.yui2.base=D+J;y.yui2.root=J;},w=function(J){var K=(J||A)+E;y.gallery.base=D+K;y.gallery.root=K;};y[I]={};y.gallery={ext:false,combine:true,comboBase:G,update:w,patterns:{"gallery-":{},"lang/gallery-":{},"gallerycss-":{type:"css"}}};y.yui2={combine:true,ext:false,comboBase:G,update:x,patterns:{"yui2-":{configFn:function(J){if(/-skin|reset|fonts|grids|base/.test(J.name)){J.type="css";J.path=J.path.replace(/\.js/,".css");J.path=J.path.replace(/\/yui2-skin/,"/assets/skins/sam/yui2-skin");}}}}};w();x();YUI.Env[I]=H;}());}var f={},c=[],m=2048,a=YUI.Env,p=a._loaded,q="css",k="js",v="intl",s=d.version,u="",e=d.Object,r=e.each,j=d.Array,h=a._loaderQueue,t=a[s],b="skin-",i=d.Lang,n=a.mods,l,o,g=function(x,y,z,w){var A=x+"/"+y;if(!w){A+="-min";}A+="."+(z||q);return A;};if(YUI.Env.aliases){YUI.Env.aliases={};}d.Env.meta=t;d.Loader=function(A){var z=t.modules,x=this;l=t.md5;x.context=d;x.base=d.Env.meta.base+d.Env.meta.root;x.comboBase=d.Env.meta.comboBase;x.combine=A.base&&(A.base.indexOf(x.comboBase.substr(0,20))>-1);x.comboSep="&";x.maxURLLength=m;x.root=d.Env.meta.root;x.timeout=0;x.forceMap={};x.allowRollup=false;x.filters={};x.required={};x.patterns={};x.moduleInfo={};x.groups=d.merge(d.Env.meta.groups);x.skin=d.merge(d.Env.meta.skin);x.conditions={};x.config=A;x._internal=true;o=a._renderedMods;if(o){r(o,function y(C,B){x.moduleInfo[B]=C;});o=a._conditions;r(o,function w(C,B){x.conditions[B]=C;});}else{r(z,x.addModule,x);}if(!a._renderedMods){a._renderedMods=x.moduleInfo;a._conditions=x.conditions;}x._inspectPage();x._internal=false;x._config(A);x.testresults=null;if(d.config.tests){x.testresults=d.config.tests;}x.sorted=[];x.loaded=p[s];x.dirty=true;x.inserted={};x.skipped={};x.tested={};};d.Loader.prototype={FILTER_DEFS:{RAW:{"searchExp":"-min\\.js","replaceStr":".js"},DEBUG:{"searchExp":"-min\\.js","replaceStr":"-debug.js"}},_inspectPage:function(){r(n,function(y,x){if(y.details){var w=this.moduleInfo[x],A=y.details.requires,z=w&&w.requires;if(w){if(!w._inspected&&A&&z.length!=A.length){delete w.expanded;}}else{w=this.addModule(y.details,x);}w._inspected=true;}},this);},_requires:function(C,B){var y,A,D,E,w=this.moduleInfo,x=w[C],z=w[B];if(!x||!z){return false;}A=x.expanded_map;D=x.after_map;if(D&&(B in D)){return true;}D=z.after_map;if(D&&(C in D)){return false;}E=w[B]&&w[B].supersedes;if(E){for(y=0;y<E.length;y++){if(this._requires(C,E[y])){return true;}}}E=w[C]&&w[C].supersedes;if(E){for(y=0;y<E.length;y++){if(this._requires(B,E[y])){return false;}}}if(A&&(B in A)){return true;}if(x.ext&&x.type==q&&!z.ext&&z.type==q){return true;}return false;},_config:function(C){var y,x,B,z,A,D,w=this;if(C){for(y in C){if(C.hasOwnProperty(y)){B=C[y];if(y=="require"){w.require(B);}else{if(y=="skin"){d.mix(w.skin,C[y],true);
}else{if(y=="groups"){for(x in B){if(B.hasOwnProperty(x)){D=x;A=B[x];w.addGroup(A,D);}}}else{if(y=="modules"){r(B,w.addModule,w);}else{if(y=="gallery"){this.groups.gallery.update(B);}else{if(y=="yui2"||y=="2in3"){this.groups.yui2.update(C["2in3"],C.yui2);}else{if(y=="maxURLLength"){w[y]=Math.min(m,B);}else{w[y]=B;}}}}}}}}}}z=w.filter;if(i.isString(z)){z=z.toUpperCase();w.filterName=z;w.filter=w.FILTER_DEFS[z];if(z=="DEBUG"){w.require("yui-log","dump");}}if(w.lang){w.require("intl-base","intl");}},formatSkin:function(y,w){var x=b+y;if(w){x=x+"-"+w;}return x;},_addSkin:function(F,D,E){var C,B,x,w,A=this.moduleInfo,y=this.skin,z=A[D]&&A[D].ext;if(D){x=this.formatSkin(F,D);if(!A[x]){C=A[D];B=C.pkg||D;w={name:x,group:C.group,type:"css",after:y.after,path:(E||B)+"/"+y.base+F+"/"+D+".css",ext:z};if(C.base){w.base=C.base;}if(C.configFn){w.configFn=C.configFn;}this.addModule(w,x);}}return x;},addGroup:function(z,x){var y=z.modules,w=this;x=x||z.name;z.name=x;w.groups[x]=z;if(z.patterns){r(z.patterns,function(B,A){B.group=x;w.patterns[A]=B;});}if(y){r(y,function(B,A){B.group=x;w.addModule(B,A);},w);}},addModule:function(M,T){T=T||M.name;if(this.moduleInfo[T]&&this.moduleInfo[T].temp){M=d.merge(this.moduleInfo[T],M);}M.name=T;if(!M||!M.name){return null;}if(!M.type){M.type=k;}if(!M.path&&!M.fullpath){M.path=g(T,T,M.type);}M.supersedes=M.supersedes||M.use;M.ext=("ext" in M)?M.ext:(this._internal)?false:true;M.requires=this.filterRequires(M.requires)||[];var Q=M.submodules,P,N,H,w,I,y,L,x,O,J,F,C,A,z,S,R,G,B,D,E=this.conditions,K;this.moduleInfo[T]=M;if(!M.langPack&&M.lang){J=j(M.lang);for(O=0;O<J.length;O++){S=J[O];F=this.getLangPackName(S,T);y=this.moduleInfo[F];if(!y){y=this._addLangPack(S,M,F);}}}if(Q){w=M.supersedes||[];N=0;for(P in Q){if(Q.hasOwnProperty(P)){I=Q[P];I.path=I.path||g(T,P,M.type);I.pkg=T;I.group=M.group;if(I.supersedes){w=w.concat(I.supersedes);}y=this.addModule(I,P);w.push(P);if(y.skinnable){M.skinnable=true;G=this.skin.overrides;if(G&&G[P]){for(O=0;O<G[P].length;O++){B=this._addSkin(G[P][O],P,T);w.push(B);}}B=this._addSkin(this.skin.defaultSkin,P,T);w.push(B);}if(I.lang&&I.lang.length){J=j(I.lang);for(O=0;O<J.length;O++){S=J[O];F=this.getLangPackName(S,T);C=this.getLangPackName(S,P);y=this.moduleInfo[F];if(!y){y=this._addLangPack(S,M,F);}A=A||j.hash(y.supersedes);if(!(C in A)){y.supersedes.push(C);}M.lang=M.lang||[];z=z||j.hash(M.lang);if(!(S in z)){M.lang.push(S);}F=this.getLangPackName(u,T);C=this.getLangPackName(u,P);y=this.moduleInfo[F];if(!y){y=this._addLangPack(S,M,F);}if(!(C in A)){y.supersedes.push(C);}}}N++;}}M.supersedes=j.dedupe(w);if(this.allowRollup){M.rollup=(N<4)?N:Math.min(N-1,4);}}L=M.plugins;if(L){for(P in L){if(L.hasOwnProperty(P)){x=L[P];x.pkg=T;x.path=x.path||g(T,P,M.type);x.requires=x.requires||[];x.group=M.group;this.addModule(x,P);if(M.skinnable){this._addSkin(this.skin.defaultSkin,P,T);}}}}if(M.condition){H=M.condition.trigger;if(YUI.Env.aliases[H]){H=YUI.Env.aliases[H];}if(!d.Lang.isArray(H)){H=[H];}for(P=0;P<H.length;P++){K=H[P];D=M.condition.when;E[K]=E[K]||{};E[K][T]=M.condition;if(D&&D!="after"){if(D=="instead"){M.supersedes=M.supersedes||[];M.supersedes.push(K);}else{}}else{M.after=M.after||[];M.after.push(K);}}}if(M.after){M.after_map=j.hash(M.after);}if(M.configFn){R=M.configFn(M);if(R===false){delete this.moduleInfo[T];M=null;}}return M;},require:function(x){var w=(typeof x==="string")?j(arguments):x;this.dirty=true;this.required=d.merge(this.required,j.hash(this.filterRequires(w)));this._explodeRollups();},_explodeRollups:function(){var x=this,w,y=x.required;if(!x.allowRollup){r(y,function(z,A){w=x.getModule(A);if(w&&w.use){j.each(w.use,function(B){w=x.getModule(B);if(w&&w.use){j.each(w.use,function(C){y[C]=true;});}else{y[B]=true;}});}});x.required=y;}},filterRequires:function(z){if(z){if(!d.Lang.isArray(z)){z=[z];}z=d.Array(z);var B=[],y,x,A,w;for(y=0;y<z.length;y++){x=this.getModule(z[y]);if(x&&x.use){for(A=0;A<x.use.length;A++){w=this.getModule(x.use[A]);if(w&&w.use){B=d.Array.dedupe([].concat(B,this.filterRequires(w.use)));}else{B.push(x.use[A]);}}}else{B.push(z[y]);}}z=B;}return z;},getRequires:function(S){if(!S||S._parsed){return c;}var M,H,L,D,C,U,A=this.testresults,V=S.name,B,I,T=n[V]&&n[V].details,O,J,w,E,P,F,z,Q,R,y,G=S.lang||S.intl,N=this.moduleInfo,K=d.Features&&d.Features.tests.load,x;if(S.temp&&T){P=S;S=this.addModule(T,V);S.group=P.group;S.pkg=P.pkg;delete S.expanded;}if(S.expanded&&(!this.lang||S.langCache===this.lang)){return S.expanded;}O=[];x={};E=this.filterRequires(S.requires);if(S.lang){O.unshift("intl");E.unshift("intl");G=true;}F=this.filterRequires(S.optional);S._parsed=true;S.langCache=this.lang;for(M=0;M<E.length;M++){if(!x[E[M]]){O.push(E[M]);x[E[M]]=true;H=this.getModule(E[M]);if(H){D=this.getRequires(H);G=G||(H.expanded_map&&(v in H.expanded_map));for(L=0;L<D.length;L++){O.push(D[L]);}}}}E=this.filterRequires(S.supersedes);if(E){for(M=0;M<E.length;M++){if(!x[E[M]]){if(S.submodules){O.push(E[M]);}x[E[M]]=true;H=this.getModule(E[M]);if(H){D=this.getRequires(H);G=G||(H.expanded_map&&(v in H.expanded_map));for(L=0;L<D.length;L++){O.push(D[L]);}}}}}if(F&&this.loadOptional){for(M=0;M<F.length;M++){if(!x[F[M]]){O.push(F[M]);x[F[M]]=true;H=N[F[M]];if(H){D=this.getRequires(H);G=G||(H.expanded_map&&(v in H.expanded_map));for(L=0;L<D.length;L++){O.push(D[L]);}}}}}B=this.conditions[V];if(B){if(A&&K){r(A,function(W,Y){var X=K[Y].name;if(!x[X]&&K[Y].trigger==V){if(W&&K[Y]){x[X]=true;O.push(X);}}});}else{r(B,function(X,W){if(!x[W]){I=X&&((X.ua&&d.UA[X.ua])||(X.test&&X.test(d,E)));if(I){x[W]=true;O.push(W);H=this.getModule(W);if(H){D=this.getRequires(H);for(L=0;L<D.length;L++){O.push(D[L]);}}}}},this);}}if(S.skinnable){Q=this.skin.overrides;r(YUI.Env.aliases,function(W,X){if(d.Array.indexOf(W,V)>-1){R=X;}});if(Q&&(Q[V]||(R&&Q[R]))){y=V;if(Q[R]){y=R;}for(M=0;M<Q[y].length;M++){z=this._addSkin(Q[y][M],V);O.push(z);}}else{z=this._addSkin(this.skin.defaultSkin,V);O.push(z);}}S._parsed=false;if(G){if(S.lang&&!S.langPack&&d.Intl){U=d.Intl.lookupBestLang(this.lang||u,S.lang);
C=this.getLangPackName(U,V);if(C){O.unshift(C);}}O.unshift(v);}S.expanded_map=j.hash(O);S.expanded=e.keys(S.expanded_map);return S.expanded;},getProvides:function(x){var w=this.getModule(x),z,y;if(!w){return f;}if(w&&!w.provides){z={};y=w.supersedes;if(y){j.each(y,function(A){d.mix(z,this.getProvides(A));},this);}z[x]=true;w.provides=z;}return w.provides;},calculate:function(x,w){if(x||w||this.dirty){if(x){this._config(x);}if(!this._init){this._setup();}this._explode();if(this.allowRollup){this._rollup();}else{this._explodeRollups();}this._reduce();this._sort();}},_addLangPack:function(B,w,A){var y=w.name,x,z=this.moduleInfo[A];if(!z){x=g((w.pkg||y),A,k,true);this.addModule({path:x,intl:true,langPack:true,ext:w.ext,group:w.group,supersedes:[]},A);if(B){d.Env.lang=d.Env.lang||{};d.Env.lang[B]=d.Env.lang[B]||{};d.Env.lang[B][y]=true;}}return this.moduleInfo[A];},_setup:function(){var C=this.moduleInfo,z,A,y,w,x,B;for(z in C){if(C.hasOwnProperty(z)){w=C[z];if(w){w.requires=j.dedupe(w.requires);if(w.lang&&w.lang.length){B=this.getLangPackName(u,z);this._addLangPack(null,w,B);}}}}x={};if(!this.ignoreRegistered){d.mix(x,a.mods);}if(this.ignore){d.mix(x,j.hash(this.ignore));}for(y in x){if(x.hasOwnProperty(y)){d.mix(x,this.getProvides(y));}}if(this.force){for(A=0;A<this.force.length;A++){if(this.force[A] in x){delete x[this.force[A]];}}}d.mix(this.loaded,x);this._init=true;},getLangPackName:function(x,w){return("lang/"+w+((x)?"_"+x:""));},_explode:function(){var A=this.required,w,z,x={},y=this;y.dirty=false;y._explodeRollups();A=y.required;r(A,function(B,C){if(!x[C]){x[C]=true;w=y.getModule(C);if(w){var D=w.expound;if(D){A[D]=y.getModule(D);z=y.getRequires(A[D]);d.mix(A,j.hash(z));}z=y.getRequires(w);d.mix(A,j.hash(z));}}});},getModule:function(B){if(!B){return null;}var A,z,x,w=this.moduleInfo[B],y=this.patterns;if(!w){for(x in y){if(y.hasOwnProperty(x)){A=y[x];if(B.indexOf(x)>-1){z=A;break;}}}if(z){if(A.action){A.action.call(this,B,x);}else{w=this.addModule(d.merge(z),B);w.temp=true;}}}return w;},_rollup:function(){},_reduce:function(B){B=B||this.required;var y,x,A,w,z=this.loadType,C=this.ignore?j.hash(this.ignore):false;for(y in B){if(B.hasOwnProperty(y)){w=this.getModule(y);if(((this.loaded[y]||n[y])&&!this.forceMap[y]&&!this.ignoreRegistered)||(z&&w&&w.type!=z)){delete B[y];}if(C&&C[y]){delete B[y];}A=w&&w.supersedes;if(A){for(x=0;x<A.length;x++){if(A[x] in B){delete B[A[x]];}}}}}return B;},_finish:function(y,x){h.running=false;var w=this.onEnd;if(w){w.call(this.context,{msg:y,data:this.data,success:x});}this._continue();},_onSuccess:function(){var y=this,x=d.merge(y.skipped),A,w=[],z=y.requireRegistration,C,B;r(x,function(D){delete y.inserted[D];});y.skipped={};r(y.inserted,function(E,D){var F=y.getModule(D);if(F&&z&&F.type==k&&!(D in YUI.Env.mods)){w.push(D);}else{d.mix(y.loaded,y.getProvides(D));}});A=y.onSuccess;B=(w.length)?"notregistered":"success";C=!(w.length);if(A){A.call(y.context,{msg:B,data:y.data,success:C,failed:w,skipped:x});}y._finish(B,C);},_onFailure:function(y){var w=this.onFailure,x="failure: "+y.msg;if(w){w.call(this.context,{msg:x,data:this.data,success:false});}this._finish(x,false);},_onTimeout:function(){var w=this.onTimeout;if(w){w.call(this.context,{msg:"timeout",data:this.data,success:false});}this._finish("timeout",false);},_sort:function(){var F=e.keys(this.required),B={},w=0,y,E,D,A,z,C,x;for(;;){y=F.length;C=false;for(A=w;A<y;A++){E=F[A];for(z=A+1;z<y;z++){x=E+F[z];if(!B[x]&&this._requires(E,F[z])){D=F.splice(z,1);F.splice(A,0,D[0]);B[x]=true;C=true;break;}}if(C){break;}else{w++;}}if(!C){break;}}this.sorted=F;},partial:function(w,y,x){this.sorted=w;this.insert(y,x,true);},_insert:function(z,A,y,x){if(z){this._config(z);}if(!x){this.calculate(A);}this.loadType=y;if(!y){var w=this;this._internalCallback=function(){var C=w.onCSS,E,D,B;if(this.insertBefore&&d.UA.ie){E=d.config.doc.getElementById(this.insertBefore);D=E.parentNode;B=E.nextSibling;D.removeChild(E);if(B){D.insertBefore(E,B);}else{D.appendChild(E);}}if(C){C.call(w.context,d);}w._internalCallback=null;w._insert(null,null,k);};this._insert(null,null,q);return;}this._loading=true;this._combineComplete={};this.loadNext();},_continue:function(){if(!(h.running)&&h.size()>0){h.running=true;h.next()();}},insert:function(z,x,y){var w=this,A=d.merge(this);delete A.require;delete A.dirty;h.add(function(){w._insert(A,z,x,y);});this._continue();},loadNext:function(A){if(!this._loading){return;}var H,P,O,M,z,E,B,L,D,G,N,w,C,K,y,F,Q,R,J=this,x=J.loadType,S=function(T){J.loadNext(T.data);},I=function(V){J._combineComplete[x]=true;var U,T=F.length;for(U=0;U<T;U++){J.inserted[F[U]]=true;}S(V);};if(J.combine&&(!J._combineComplete[x])){F=[];J._combining=F;H=J.sorted;P=H.length;R=J.comboBase;z=R;Q=[];K={};for(O=0;O<P;O++){C=R;M=J.getModule(H[O]);G=M&&M.group;if(G){D=J.groups[G];if(!D.combine){M.combine=false;continue;}M.combine=true;if(D.comboBase){C=D.comboBase;}if("root" in D&&i.isValue(D.root)){M.root=D.root;}}K[C]=K[C]||[];K[C].push(M);}for(N in K){if(K.hasOwnProperty(N)){z=N;y=K[N];P=y.length;for(O=0;O<P;O++){M=y[O];if(M&&(M.type===x)&&(M.combine||!M.ext)){w=((i.isValue(M.root))?M.root:J.root)+M.path;w=J._filter(w,M.name);if((z!==N)&&(O<=(P-1))&&((w.length+z.length)>J.maxURLLength)){if(z.substr(z.length-1,1)===J.comboSep){z=z.substr(0,(z.length-1));}Q.push(J._filter(z));z=N;}z+=w;if(O<(P-1)){z+=J.comboSep;}F.push(M.name);}}if(F.length&&(z!=N)){if(z.substr(z.length-1,1)===J.comboSep){z=z.substr(0,(z.length-1));}Q.push(J._filter(z));}}}if(F.length){if(x===q){E=d.Get.css;L=J.cssAttributes;}else{E=d.Get.script;L=J.jsAttributes;}E(Q,{data:J._loading,onSuccess:I,onFailure:J._onFailure,onTimeout:J._onTimeout,insertBefore:J.insertBefore,charset:J.charset,attributes:L,timeout:J.timeout,autopurge:false,context:J});return;}else{J._combineComplete[x]=true;}}if(A){if(A!==J._loading){return;}J.inserted[A]=true;if(J.onProgress){J.onProgress.call(J.context,{name:A,data:J.data});}}H=J.sorted;P=H.length;for(O=0;O<P;O=O+1){if(H[O] in J.inserted){continue;
}if(H[O]===J._loading){return;}M=J.getModule(H[O]);if(!M){if(!J.skipped[H[O]]){B="Undefined module "+H[O]+" skipped";J.skipped[H[O]]=true;}continue;}D=(M.group&&J.groups[M.group])||f;if(!x||x===M.type){J._loading=H[O];if(M.type===q){E=d.Get.css;L=J.cssAttributes;}else{E=d.Get.script;L=J.jsAttributes;}z=(M.fullpath)?J._filter(M.fullpath,H[O]):J._url(M.path,H[O],D.base||M.base);E(z,{data:H[O],onSuccess:S,insertBefore:J.insertBefore,charset:J.charset,attributes:L,onFailure:J._onFailure,onTimeout:J._onTimeout,timeout:J.timeout,autopurge:false,context:J});return;}}J._loading=null;E=J._internalCallback;if(E){J._internalCallback=null;E.call(J);}else{J._onSuccess();}},_filter:function(y,x){var A=this.filter,w=x&&(x in this.filters),z=w&&this.filters[x],B=this.moduleInfo[x]?this.moduleInfo[x].group:null;if(B&&this.groups[B].filter){z=this.groups[B].filter;w=true;}if(y){if(w){A=(i.isString(z))?this.FILTER_DEFS[z.toUpperCase()]||null:z;}if(A){y=y.replace(new RegExp(A.searchExp,"g"),A.replaceStr);}}return y;},_url:function(y,w,x){return this._filter((x||this.base||"")+y,w);},resolve:function(A,C){var x=this,B,w,z,y={js:[],css:[]};if(A){x.calculate();}C=C||x.sorted;for(B=0;B<C.length;B++){w=x.getModule(C[B]);if(w){if(x.combine){z=x._filter((x.root+w.path),w.name,x.root);}else{z=x._filter(w.fullpath,w.name,"")||x._url(w.path,w.name);}y[w.type].push(z);}}if(x.combine){y.js=[x.comboBase+y.js.join(x.comboSep)];y.css=[x.comboBase+y.css.join(x.comboSep)];}return y;},hash:function(A,C){var x=this,B,w,z,y={js:{},css:{}};if(A){x.calculate();}C=C||x.sorted;for(B=0;B<C.length;B++){w=x.getModule(C[B]);if(w){z=x._filter(w.fullpath,w.name,"")||x._url(w.path,w.name);y[w.type][w.name]=z;}}return y;}};},"3.4.1",{requires:["get"]});YUI.add("loader-rollup",function(a){a.Loader.prototype._rollup=function(){var k,h,g,o,b=this.required,e,f=this.moduleInfo,d,l,n;if(this.dirty||!this.rollups){this.rollups={};for(k in f){if(f.hasOwnProperty(k)){g=this.getModule(k);if(g&&g.rollup){this.rollups[k]=g;}}}this.forceMap=(this.force)?a.Array.hash(this.force):{};}for(;;){d=false;for(k in this.rollups){if(this.rollups.hasOwnProperty(k)){if(!b[k]&&((!this.loaded[k])||this.forceMap[k])){g=this.getModule(k);o=g.supersedes||[];e=false;if(!g.rollup){continue;}l=0;for(h=0;h<o.length;h++){n=f[o[h]];if(this.loaded[o[h]]&&!this.forceMap[o[h]]){e=false;break;}else{if(b[o[h]]&&g.type==n.type){l++;e=(l>=g.rollup);if(e){break;}}}}if(e){b[k]=true;d=true;this.getRequires(g);}}}}if(!d){break;}}};},"3.4.1",{requires:["loader-base"]});YUI.add("loader-yui3",function(a){YUI.Env[a.version].modules=YUI.Env[a.version].modules||{"align-plugin":{"requires":["node-screen","node-pluginhost"]},"anim":{"use":["anim-base","anim-color","anim-curve","anim-easing","anim-node-plugin","anim-scroll","anim-xy"]},"anim-base":{"requires":["base-base","node-style"]},"anim-color":{"requires":["anim-base"]},"anim-curve":{"requires":["anim-xy"]},"anim-easing":{"requires":["anim-base"]},"anim-node-plugin":{"requires":["node-pluginhost","anim-base"]},"anim-scroll":{"requires":["anim-base"]},"anim-xy":{"requires":["anim-base","node-screen"]},"app":{"use":["controller","model","model-list","view"]},"array-extras":{"requires":["yui-base"]},"array-invoke":{"requires":["yui-base"]},"arraylist":{"requires":["yui-base"]},"arraylist-add":{"requires":["arraylist"]},"arraylist-filter":{"requires":["arraylist"]},"arraysort":{"requires":["yui-base"]},"async-queue":{"requires":["event-custom"]},"attribute":{"use":["attribute-base","attribute-complex"]},"attribute-base":{"requires":["event-custom"]},"attribute-complex":{"requires":["attribute-base"]},"autocomplete":{"use":["autocomplete-base","autocomplete-sources","autocomplete-list","autocomplete-plugin"]},"autocomplete-base":{"optional":["autocomplete-sources"],"requires":["array-extras","base-build","escape","event-valuechange","node-base"]},"autocomplete-filters":{"requires":["array-extras","text-wordbreak"]},"autocomplete-filters-accentfold":{"requires":["array-extras","text-accentfold","text-wordbreak"]},"autocomplete-highlighters":{"requires":["array-extras","highlight-base"]},"autocomplete-highlighters-accentfold":{"requires":["array-extras","highlight-accentfold"]},"autocomplete-list":{"after":["autocomplete-sources"],"lang":["en"],"requires":["autocomplete-base","event-resize","node-screen","selector-css3","shim-plugin","widget","widget-position","widget-position-align"],"skinnable":true},"autocomplete-list-keys":{"condition":{"name":"autocomplete-list-keys","test":function(b){return !(b.UA.ios||b.UA.android);},"trigger":"autocomplete-list"},"requires":["autocomplete-list","base-build"]},"autocomplete-plugin":{"requires":["autocomplete-list","node-pluginhost"]},"autocomplete-sources":{"optional":["io-base","json-parse","jsonp","yql"],"requires":["autocomplete-base"]},"base":{"use":["base-base","base-pluginhost","base-build"]},"base-base":{"after":["attribute-complex"],"requires":["attribute-base"]},"base-build":{"requires":["base-base"]},"base-pluginhost":{"requires":["base-base","pluginhost"]},"cache":{"use":["cache-base","cache-offline","cache-plugin"]},"cache-base":{"requires":["base"]},"cache-offline":{"requires":["cache-base","json"]},"cache-plugin":{"requires":["plugin","cache-base"]},"calendar":{"lang":["en","ja","ru"],"requires":["calendar-base","calendarnavigator"],"skinnable":true},"calendar-base":{"lang":["en","ja","ru"],"requires":["widget","substitute","datatype-date","datatype-date-math","cssgrids"],"skinnable":true},"calendarnavigator":{"requires":["plugin","classnamemanager","datatype-date","node","substitute"],"skinnable":true},"charts":{"requires":["dom","datatype-number","datatype-date","event-custom","event-mouseenter","widget","widget-position","widget-stack","graphics"]},"classnamemanager":{"requires":["yui-base"]},"clickable-rail":{"requires":["slider-base"]},"collection":{"use":["array-extras","arraylist","arraylist-add","arraylist-filter","array-invoke"]},"console":{"lang":["en","es","ja"],"requires":["yui-log","widget","substitute"],"skinnable":true},"console-filters":{"requires":["plugin","console"],"skinnable":true},"controller":{"optional":["querystring-parse"],"requires":["array-extras","base-build","history"]},"cookie":{"requires":["yui-base"]},"createlink-base":{"requires":["editor-base"]},"cssbase":{"after":["cssreset","cssfonts","cssgrids","cssreset-context","cssfonts-context","cssgrids-context"],"type":"css"},"cssbase-context":{"after":["cssreset","cssfonts","cssgrids","cssreset-context","cssfonts-context","cssgrids-context"],"type":"css"},"cssfonts":{"type":"css"},"cssfonts-context":{"type":"css"},"cssgrids":{"optional":["cssreset","cssfonts"],"type":"css"},"cssreset":{"type":"css"},"cssreset-context":{"type":"css"},"dataschema":{"use":["dataschema-base","dataschema-json","dataschema-xml","dataschema-array","dataschema-text"]},"dataschema-array":{"requires":["dataschema-base"]},"dataschema-base":{"requires":["base"]},"dataschema-json":{"requires":["dataschema-base","json"]},"dataschema-text":{"requires":["dataschema-base"]},"dataschema-xml":{"requires":["dataschema-base"]},"datasource":{"use":["datasource-local","datasource-io","datasource-get","datasource-function","datasource-cache","datasource-jsonschema","datasource-xmlschema","datasource-arrayschema","datasource-textschema","datasource-polling"]},"datasource-arrayschema":{"requires":["datasource-local","plugin","dataschema-array"]},"datasource-cache":{"requires":["datasource-local","plugin","cache-base"]},"datasource-function":{"requires":["datasource-local"]},"datasource-get":{"requires":["datasource-local","get"]},"datasource-io":{"requires":["datasource-local","io-base"]},"datasource-jsonschema":{"requires":["datasource-local","plugin","dataschema-json"]},"datasource-local":{"requires":["base"]},"datasource-polling":{"requires":["datasource-local"]},"datasource-textschema":{"requires":["datasource-local","plugin","dataschema-text"]},"datasource-xmlschema":{"requires":["datasource-local","plugin","dataschema-xml"]},"datatable":{"use":["datatable-base","datatable-datasource","datatable-sort","datatable-scroll"]},"datatable-base":{"requires":["recordset-base","widget","substitute","event-mouseenter"],"skinnable":true},"datatable-datasource":{"requires":["datatable-base","plugin","datasource-local"]},"datatable-scroll":{"requires":["datatable-base","plugin"]},"datatable-sort":{"lang":["en"],"requires":["datatable-base","plugin","recordset-sort"]},"datatype":{"use":["datatype-number","datatype-date","datatype-xml"]},"datatype-date":{"supersedes":["datatype-date-format"],"use":["datatype-date-parse","datatype-date-format"]},"datatype-date-format":{"lang":["ar","ar-JO","ca","ca-ES","da","da-DK","de","de-AT","de-DE","el","el-GR","en","en-AU","en-CA","en-GB","en-IE","en-IN","en-JO","en-MY","en-NZ","en-PH","en-SG","en-US","es","es-AR","es-BO","es-CL","es-CO","es-EC","es-ES","es-MX","es-PE","es-PY","es-US","es-UY","es-VE","fi","fi-FI","fr","fr-BE","fr-CA","fr-FR","hi","hi-IN","id","id-ID","it","it-IT","ja","ja-JP","ko","ko-KR","ms","ms-MY","nb","nb-NO","nl","nl-BE","nl-NL","pl","pl-PL","pt","pt-BR","ro","ro-RO","ru","ru-RU","sv","sv-SE","th","th-TH","tr","tr-TR","vi","vi-VN","zh-Hans","zh-Hans-CN","zh-Hant","zh-Hant-HK","zh-Hant-TW"]},"datatype-date-math":{"requires":["yui-base"]},"datatype-date-parse":{},"datatype-number":{"use":["datatype-number-parse","datatype-number-format"]},"datatype-number-format":{},"datatype-number-parse":{},"datatype-xml":{"use":["datatype-xml-parse","datatype-xml-format"]},"datatype-xml-format":{},"datatype-xml-parse":{},"dd":{"use":["dd-ddm-base","dd-ddm","dd-ddm-drop","dd-drag","dd-proxy","dd-constrain","dd-drop","dd-scroll","dd-delegate"]},"dd-constrain":{"requires":["dd-drag"]},"dd-ddm":{"requires":["dd-ddm-base","event-resize"]},"dd-ddm-base":{"requires":["node","base","yui-throttle","classnamemanager"]},"dd-ddm-drop":{"requires":["dd-ddm"]},"dd-delegate":{"requires":["dd-drag","dd-drop-plugin","event-mouseenter"]},"dd-drag":{"requires":["dd-ddm-base"]},"dd-drop":{"requires":["dd-drag","dd-ddm-drop"]},"dd-drop-plugin":{"requires":["dd-drop"]},"dd-gestures":{"condition":{"name":"dd-gestures","test":function(b){return(b.config.win&&("ontouchstart" in b.config.win&&!b.UA.chrome));
},"trigger":"dd-drag"},"requires":["dd-drag","event-synthetic","event-gestures"]},"dd-plugin":{"optional":["dd-constrain","dd-proxy"],"requires":["dd-drag"]},"dd-proxy":{"requires":["dd-drag"]},"dd-scroll":{"requires":["dd-drag"]},"dial":{"lang":["en","es"],"requires":["widget","dd-drag","substitute","event-mouseenter","event-move","event-key","transition","intl"],"skinnable":true},"dom":{"use":["dom-base","dom-screen","dom-style","selector-native","selector"]},"dom-base":{"requires":["dom-core"]},"dom-core":{"requires":["oop","features"]},"dom-deprecated":{"requires":["dom-base"]},"dom-screen":{"requires":["dom-base","dom-style"]},"dom-style":{"requires":["dom-base"]},"dom-style-ie":{"condition":{"name":"dom-style-ie","test":function(h){var f=h.Features.test,g=h.Features.add,d=h.config.win,e=h.config.doc,b="documentElement",c=false;g("style","computedStyle",{test:function(){return d&&"getComputedStyle" in d;}});g("style","opacity",{test:function(){return e&&"opacity" in e[b].style;}});c=(!f("style","opacity")&&!f("style","computedStyle"));return c;},"trigger":"dom-style"},"requires":["dom-style"]},"dump":{"requires":["yui-base"]},"editor":{"use":["frame","selection","exec-command","editor-base","editor-para","editor-br","editor-bidi","editor-tab","createlink-base"]},"editor-base":{"requires":["base","frame","node","exec-command","selection"]},"editor-bidi":{"requires":["editor-base"]},"editor-br":{"requires":["editor-base"]},"editor-lists":{"requires":["editor-base"]},"editor-para":{"requires":["editor-base"]},"editor-tab":{"requires":["editor-base"]},"escape":{"requires":["yui-base"]},"event":{"after":["node-base"],"use":["event-base","event-delegate","event-synthetic","event-mousewheel","event-mouseenter","event-key","event-focus","event-resize","event-hover","event-outside"]},"event-base":{"after":["node-base"],"requires":["event-custom-base"]},"event-base-ie":{"after":["event-base"],"condition":{"name":"event-base-ie","test":function(c){var b=c.config.doc&&c.config.doc.implementation;return(b&&(!b.hasFeature("Events","2.0")));},"trigger":"node-base"},"requires":["node-base"]},"event-custom":{"use":["event-custom-base","event-custom-complex"]},"event-custom-base":{"requires":["oop"]},"event-custom-complex":{"requires":["event-custom-base"]},"event-delegate":{"requires":["node-base"]},"event-flick":{"requires":["node-base","event-touch","event-synthetic"]},"event-focus":{"requires":["event-synthetic"]},"event-gestures":{"use":["event-flick","event-move"]},"event-hover":{"requires":["event-mouseenter"]},"event-key":{"requires":["event-synthetic"]},"event-mouseenter":{"requires":["event-synthetic"]},"event-mousewheel":{"requires":["node-base"]},"event-move":{"requires":["node-base","event-touch","event-synthetic"]},"event-outside":{"requires":["event-synthetic"]},"event-resize":{"requires":["node-base","event-synthetic"]},"event-simulate":{"requires":["event-base"]},"event-synthetic":{"requires":["node-base","event-custom-complex"]},"event-touch":{"requires":["node-base"]},"event-valuechange":{"requires":["event-focus","event-synthetic"]},"exec-command":{"requires":["frame"]},"features":{"requires":["yui-base"]},"frame":{"requires":["base","node","selector-css3","substitute","yui-throttle"]},"get":{"requires":["yui-base"]},"graphics":{"requires":["node","event-custom","pluginhost"]},"graphics-canvas":{"condition":{"name":"graphics-canvas","test":function(d){var c=d.config.doc,b=c&&c.createElement("canvas");return(c&&!c.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(b&&b.getContext&&b.getContext("2d")));},"trigger":"graphics"},"requires":["graphics"]},"graphics-canvas-default":{"condition":{"name":"graphics-canvas-default","test":function(d){var c=d.config.doc,b=c&&c.createElement("canvas");return(c&&!c.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(b&&b.getContext&&b.getContext("2d")));},"trigger":"graphics"}},"graphics-svg":{"condition":{"name":"graphics-svg","test":function(c){var b=c.config.doc;return(b&&b.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1"));},"trigger":"graphics"},"requires":["graphics"]},"graphics-svg-default":{"condition":{"name":"graphics-svg-default","test":function(c){var b=c.config.doc;return(b&&b.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1"));},"trigger":"graphics"}},"graphics-vml":{"condition":{"name":"graphics-vml","test":function(d){var c=d.config.doc,b=c&&c.createElement("canvas");return(c&&!c.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(!b||!b.getContext||!b.getContext("2d")));},"trigger":"graphics"},"requires":["graphics"]},"graphics-vml-default":{"condition":{"name":"graphics-vml-default","test":function(d){var c=d.config.doc,b=c&&c.createElement("canvas");return(c&&!c.implementation.hasFeature("http://www.w3.org/TR/SVG11/feature#BasicStructure","1.1")&&(!b||!b.getContext||!b.getContext("2d")));},"trigger":"graphics"}},"highlight":{"use":["highlight-base","highlight-accentfold"]},"highlight-accentfold":{"requires":["highlight-base","text-accentfold"]},"highlight-base":{"requires":["array-extras","classnamemanager","escape","text-wordbreak"]},"history":{"use":["history-base","history-hash","history-hash-ie","history-html5"]},"history-base":{"requires":["event-custom-complex"]},"history-hash":{"after":["history-html5"],"requires":["event-synthetic","history-base","yui-later"]},"history-hash-ie":{"condition":{"name":"history-hash-ie","test":function(c){var b=c.config.doc&&c.config.doc.documentMode;return c.UA.ie&&(!("onhashchange" in c.config.win)||!b||b<8);},"trigger":"history-hash"},"requires":["history-hash","node-base"]},"history-html5":{"optional":["json"],"requires":["event-base","history-base","node-base"]},"imageloader":{"requires":["base-base","node-style","node-screen"]},"intl":{"requires":["intl-base","event-custom"]},"intl-base":{"requires":["yui-base"]},"io":{"use":["io-base","io-xdr","io-form","io-upload-iframe","io-queue"]},"io-base":{"requires":["event-custom-base","querystring-stringify-simple"]},"io-form":{"requires":["io-base","node-base"]},"io-queue":{"requires":["io-base","queue-promote"]},"io-upload-iframe":{"requires":["io-base","node-base"]},"io-xdr":{"requires":["io-base","datatype-xml-parse"]},"json":{"use":["json-parse","json-stringify"]},"json-parse":{"requires":["yui-base"]},"json-stringify":{"requires":["yui-base"]},"jsonp":{"requires":["get","oop"]},"jsonp-url":{"requires":["jsonp"]},"loader":{"use":["loader-base","loader-rollup","loader-yui3"]},"loader-base":{"requires":["get"]},"loader-rollup":{"requires":["loader-base"]},"loader-yui3":{"requires":["loader-base"]},"model":{"requires":["base-build","escape","json-parse"]},"model-list":{"requires":["array-extras","array-invoke","arraylist","base-build","escape","json-parse","model"]},"node":{"use":["node-base","node-event-delegate","node-pluginhost","node-screen","node-style"]},"node-base":{"requires":["event-base","node-core","dom-base"]},"node-core":{"requires":["dom-core","selector"]},"node-deprecated":{"requires":["node-base"]},"node-event-delegate":{"requires":["node-base","event-delegate"]},"node-event-html5":{"requires":["node-base"]},"node-event-simulate":{"requires":["node-base","event-simulate"]},"node-flick":{"requires":["classnamemanager","transition","event-flick","plugin"],"skinnable":true},"node-focusmanager":{"requires":["attribute","node","plugin","node-event-simulate","event-key","event-focus"]},"node-load":{"requires":["node-base","io-base"]},"node-menunav":{"requires":["node","classnamemanager","plugin","node-focusmanager"],"skinnable":true},"node-pluginhost":{"requires":["node-base","pluginhost"]},"node-screen":{"requires":["dom-screen","node-base"]},"node-style":{"requires":["dom-style","node-base"]},"oop":{"requires":["yui-base"]},"overlay":{"requires":["widget","widget-stdmod","widget-position","widget-position-align","widget-stack","widget-position-constrain"],"skinnable":true},"panel":{"requires":["widget","widget-stdmod","widget-position","widget-position-align","widget-stack","widget-position-constrain","widget-modality","widget-autohide","widget-buttons"],"skinnable":true},"plugin":{"requires":["base-base"]},"pluginhost":{"use":["pluginhost-base","pluginhost-config"]},"pluginhost-base":{"requires":["yui-base"]},"pluginhost-config":{"requires":["pluginhost-base"]},"profiler":{"requires":["yui-base"]},"querystring":{"use":["querystring-parse","querystring-stringify"]},"querystring-parse":{"requires":["yui-base","array-extras"]},"querystring-parse-simple":{"requires":["yui-base"]},"querystring-stringify":{"requires":["yui-base"]},"querystring-stringify-simple":{"requires":["yui-base"]},"queue-promote":{"requires":["yui-base"]},"range-slider":{"requires":["slider-base","slider-value-range","clickable-rail"]},"recordset":{"use":["recordset-base","recordset-sort","recordset-filter","recordset-indexer"]},"recordset-base":{"requires":["base","arraylist"]},"recordset-filter":{"requires":["recordset-base","array-extras","plugin"]},"recordset-indexer":{"requires":["recordset-base","plugin"]},"recordset-sort":{"requires":["arraysort","recordset-base","plugin"]},"resize":{"use":["resize-base","resize-proxy","resize-constrain"]},"resize-base":{"requires":["base","widget","substitute","event","oop","dd-drag","dd-delegate","dd-drop"],"skinnable":true},"resize-constrain":{"requires":["plugin","resize-base"]},"resize-plugin":{"optional":["resize-constrain"],"requires":["resize-base","plugin"]},"resize-proxy":{"requires":["plugin","resize-base"]},"rls":{"requires":["get","features"]},"scrollview":{"requires":["scrollview-base","scrollview-scrollbars"]},"scrollview-base":{"requires":["widget","event-gestures","transition"],"skinnable":true},"scrollview-base-ie":{"condition":{"name":"scrollview-base-ie","trigger":"scrollview-base","ua":"ie"},"requires":["scrollview-base"]},"scrollview-list":{"requires":["plugin","classnamemanager"],"skinnable":true},"scrollview-paginator":{"requires":["plugin"]},"scrollview-scrollbars":{"requires":["classnamemanager","transition","plugin"],"skinnable":true},"selection":{"requires":["node"]},"selector":{"requires":["selector-native"]},"selector-css2":{"condition":{"name":"selector-css2","test":function(d){var c=d.config.doc,b=c&&!("querySelectorAll" in c);
return b;},"trigger":"selector"},"requires":["selector-native"]},"selector-css3":{"requires":["selector-native","selector-css2"]},"selector-native":{"requires":["dom-base"]},"shim-plugin":{"requires":["node-style","node-pluginhost"]},"slider":{"use":["slider-base","slider-value-range","clickable-rail","range-slider"]},"slider-base":{"requires":["widget","dd-constrain","substitute"],"skinnable":true},"slider-value-range":{"requires":["slider-base"]},"sortable":{"requires":["dd-delegate","dd-drop-plugin","dd-proxy"]},"sortable-scroll":{"requires":["dd-scroll","sortable"]},"stylesheet":{"requires":["yui-base"]},"substitute":{"optional":["dump"],"requires":["yui-base"]},"swf":{"requires":["event-custom","node","swfdetect","escape"]},"swfdetect":{"requires":["yui-base"]},"tabview":{"requires":["widget","widget-parent","widget-child","tabview-base","node-pluginhost","node-focusmanager"],"skinnable":true},"tabview-base":{"requires":["node-event-delegate","classnamemanager","skin-sam-tabview"]},"tabview-plugin":{"requires":["tabview-base"]},"test":{"requires":["event-simulate","event-custom","substitute","json-stringify"],"skinnable":true},"text":{"use":["text-accentfold","text-wordbreak"]},"text-accentfold":{"requires":["array-extras","text-data-accentfold"]},"text-data-accentfold":{"requires":["yui-base"]},"text-data-wordbreak":{"requires":["yui-base"]},"text-wordbreak":{"requires":["array-extras","text-data-wordbreak"]},"transition":{"requires":["node-style"]},"transition-timer":{"condition":{"name":"transition-timer","test":function(e){var d=e.config.doc,c=(d)?d.documentElement:null,b=true;if(c&&c.style){b=!("MozTransition" in c.style||"WebkitTransition" in c.style);}return b;},"trigger":"transition"},"requires":["transition"]},"uploader":{"requires":["event-custom","node","base","swf"]},"view":{"requires":["base-build","node-event-delegate"]},"widget":{"use":["widget-base","widget-htmlparser","widget-uievents","widget-skin"]},"widget-anim":{"requires":["plugin","anim-base","widget"]},"widget-autohide":{"requires":["widget","event-outside","base-build","event-key"],"skinnable":false},"widget-base":{"requires":["attribute","event-focus","base-base","base-pluginhost","node-base","node-style","classnamemanager"],"skinnable":true},"widget-base-ie":{"condition":{"name":"widget-base-ie","trigger":"widget-base","ua":"ie"},"requires":["widget-base"]},"widget-buttons":{"requires":["widget","base-build","widget-stdmod"],"skinnable":true},"widget-child":{"requires":["base-build","widget"]},"widget-htmlparser":{"requires":["widget-base"]},"widget-locale":{"requires":["widget-base"]},"widget-modality":{"requires":["widget","event-outside","base-build"],"skinnable":false},"widget-parent":{"requires":["base-build","arraylist","widget"]},"widget-position":{"requires":["base-build","node-screen","widget"]},"widget-position-align":{"requires":["widget-position"]},"widget-position-constrain":{"requires":["widget-position"]},"widget-skin":{"requires":["widget-base"]},"widget-stack":{"requires":["base-build","widget"],"skinnable":true},"widget-stdmod":{"requires":["base-build","widget"]},"widget-uievents":{"requires":["widget-base","node-event-delegate"]},"yql":{"requires":["jsonp","jsonp-url"]},"yui":{},"yui-base":{},"yui-later":{"requires":["yui-base"]},"yui-log":{"requires":["yui-base"]},"yui-rls":{},"yui-throttle":{"requires":["yui-base"]}};YUI.Env[a.version].md5="105ebffae27a0e3d7331f8cf5c0bb282";},"3.4.1",{requires:["loader-base"]});YUI.add("yui",function(a){},"3.4.1",{use:["yui-base","get","features","intl-base","yui-log","yui-later","loader-base","loader-rollup","loader-yui3"]});
var YUI3_config = {"base":"\/hollywood\/extension\/ezjscore\/design\/standard\/lib\/yui\/3.4.1\/build\/","combine":false,"modules":{}};
YUI(YUI3_config).use('event', function (Y) {
Y.on('domready', function () {
var h = Y.one('html'),
ua = Y.UA;
if ( h.hasClass('ie') ) {
return;
}
if ( ua.ie ) {
h.addClass('ie').addClass('ie-gt9');
} else if ( ua.webkit ) {
h.addClass('webkit').addClass('vers_' + (ua.webkit + '').replace('.', '_'));
} else if ( ua.gecko ) {
h.addClass('gecko').addClass('vers_' + (ua.gecko + '').replace('.', '_'));
}
});
});
YUI(YUI3_config).use('event-base', 'node-base', 'event-outside', function (Y) {
Y.on('domready', function () {
Y.all('.transition-showed').each(function () {
this.on('clickoutside', function (e) {
if ( this.get('id') === location.hash.replace('#', '') ) {
location.hash = '';
}
});
});
});
});
YUI(YUI3_config).use('event', function (Y) {
Y.on('domready', function () {
Y.all('*[data-action=toggleclass]').each(function(elem) {
var cl = elem.getAttribute('data-class'),
targets = Y.all(elem.getAttribute('data-target'));
elem.on('click', function (e) {
e.preventDefault();
targets.toggleClass(cl);
});
});
});
});
YUI(YUI3_config).add('ezflyout', function (Y) {
Y.namespace('eZ');
var L = Y.Lang;
var defaultConfig = {
element: '',
close: '.close',
scrollTrigger: 0,
trackInitialScroll: true,
hideTransition: {
},
showTransition: {
}
};
function eZFlyOut(conf) {
this.conf = Y.merge(defaultConfig, conf);
this.element = Y.one(this.conf.element);
this.hidden = true;
this.scrollSubscription = false;
this._initEvents();
}
eZFlyOut.prototype.isHidden = function () {
return this.hidden;
}
eZFlyOut.prototype.show = function () {
if ( this.isHidden() ) {
this.element.transition(
this._transitionConf(this.conf.showTransition)
);
this.hidden = false;
this.fire('show');
}
}
eZFlyOut.prototype.hide = function () {
if ( !this.isHidden() ) {
this.element.transition(
this._transitionConf(this.conf.hideTransition)
);
this.hidden = true;
this.fire('hide');
}
}
eZFlyOut.prototype.close = function () {
this.scrollSubscription.detach();
this.hide();
this.fire('close');
}
eZFlyOut.prototype._initEvents = function () {
var that = this,
handleScroll = function () {
var limit = false;
if ( L.isNumber(that.conf.scrollTrigger) ) {
limit = that.conf.scrollTrigger;
} else {
if ( L.isString(that.conf.scrollTrigger) ) {
limit = Y.one(that.conf.scrollTrigger);
}
if ( !L.isObject(limit) ) {
return;
}
limit = limit.getY();
}
if ( that.element.get('docScrollY') >= limit ) {
that.show();
} else {
that.hide();
}
};
this.scrollSubscription = Y.on('scroll', handleScroll);
this.element.delegate('click', function () {
that.close();
}, this.conf.close);
this.fire('ready');
if ( this.conf.trackInitialScroll ) {
handleScroll();
}
}
eZFlyOut.prototype._transitionConf = function(conf) {
var res = Y.clone(conf, false);
Y.Object.each(res, function(v, k) {
if ( L.isFunction(v) ) {
res[k] = v.call(this);
} else if ( k !== 'on' && L.isObject(v) ) {
res[k] = this._transitionConf(v);
}
}, this);
return res;
}
Y.augment(eZFlyOut, Y.EventTarget, true, null, {emitFacade: true});
Y.eZ.FlyOut = eZFlyOut;
}, '1.0.0', {
requires: [
'event', 'node-screen', 'transition', 'node-event-delegate'
]
});
YUI(YUI3_config).add('ezsimplegallery', function (Y) {
Y.namespace('eZ');
var L = Y.Lang;
var defaultConfig = {
gallery: '',
next: '.next',
prev: '.prev',
indicators: '.indicator li',
selectedIndactorClass: 'selected',
container: '.images',
images: 'figure',
transitionDuration: 0.8,
easing: 'cubic-bezier'
};
function eZSG(conf) {
this.conf = Y.merge(defaultConfig, conf);
if ( L.isString(this.conf.gallery) ) {
this.gallery = Y.one(this.conf.gallery);
} else if ( L.isObject(this.conf.gallery) ) {
this.gallery = this.conf.gallery;
}
this.container = this.gallery.one(this.conf.container);
this.next = this.gallery.one(this.conf.next);
this.prev = this.gallery.one(this.conf.prev);
this.indicators = this.gallery.all(this.conf.indicators);
this.index = 0;
this.total = this.gallery.all(this.conf.images).size();
this._init();
}
eZSG.prototype._init = function () {
var that = this;
this.next.on('click', function (e) {
e.preventDefault();
that.showNext();
});
this.prev.on('click', function (e) {
e.preventDefault();
that.showPrev();
});
Y.on('windowresize', function () {
that.scrollTo(that.index);
});
this.indicators.each(function(ind, k) {
ind.on('click', function (e) {
if ( !this.hasClass(that.conf.selectedIndactorClass) ) {
that.scrollTo(k);
}
});
});
}
eZSG.prototype.showNext = function () {
if ( this.index == (this.total - 1) ) {
return;
}
this.scrollTo(this.index + 1);
}
eZSG.prototype.showPrev = function () {
if ( this.index == 0 ) {
return;
}
this.scrollTo(this.index - 1);
}
eZSG.prototype.scrollTo = function (newIndex) {
var f = 1, s = this.conf.selectedIndactorClass,
c = this.container, o = this.index * this._getOffset() * -1,
hasIndicator = (this.indicators.size() > 0);
f =  this.index - newIndex;
if ( f != 0 ) {
if ( hasIndicator )
this.indicators.item(this.index).removeClass(s);
this.index = newIndex;
if ( hasIndicator )
this.indicators.item(this.index).addClass(s);
}
var target = o + (f * this._getOffset());
if ( Y.UA.ie ) {
var anim = new Y.Anim({
node: c,
duration: this.conf.transitionDuration,
to: {
left: target + 'px'
}
});
anim.run();
} else {
c.transition({
left: {
value: target + 'px',
duration: this.conf.transitionDuration,
easing: this.conf.easing
}
});
}
this._handleNavigationLink();
}
eZSG.prototype._getOffset = function () {
return this.gallery.get('clientWidth');
}
eZSG.prototype._handleNavigationLink = function () {
var d = this.conf.transitionDuration,
showC = {
opacity:1,
duration: d
},
hideC = {
opacity:0,
duration: d
}
if ( this.index == 0 ) {
this.prev.transition(hideC);
} else if ( this.index >= 1 ) {
this.prev.transition(showC);
}
if ( this.index == (this.total -1) ) {
this.next.transition(hideC);
} else if ( this.index <= (this.total - 2) ) {
this.next.transition(showC);
}
}
Y.eZ.SimpleGallery = eZSG;
}, '1.0.0', {
requires: [
'node-base', 'node-screen', 'transition', 'anim', 'event-resize'
]
});
YUI(YUI3_config).add('ezgallerynavigator', function (Y) {
Y.namespace('eZ');
var L = Y.Lang;
var defaultConfig = {
gallery: '',
next: '.next',
prev: '.prev',
cursor: '.cursor',
container: '.images',
images: 'figure',
transitionDuration: 0.5,
easing: 'cubic-bezier'
};
function width(el) {
return parseInt(el.getStyle('width'));
}
function left(el) {
return parseInt(el.getStyle('left'));
}
function eZGN(conf) {
var that = this;
this.conf = Y.merge(defaultConfig, conf);
if ( L.isString(this.conf.gallery) ) {
this.gallery = Y.one(this.conf.gallery);
} else if ( L.isObject(this.conf.gallery) ) {
this.gallery = this.conf.gallery;
}
this.container = this.gallery.one(this.conf.container);
this.nextLink = this.gallery.one(this.conf.next);
this.prevLink = this.gallery.one(this.conf.prev);
this.images = this.container.all(this.conf.images);
this.index = 0;
this.total = this.images.size();
this.cursor = this.gallery.one(this.conf.cursor);
this.cursor.setStyles({
left: this._computeCursorX(this.getSelectedImage()) + 'px',
display: 'inline-block'
});
this._init();
}
eZGN.DEFAULT_CONFIG = defaultConfig;
eZGN.prototype._init = function () {
var that = this;
this.nextLink.on('click', function (e) {
e.preventDefault();
that.next();
});
this.prevLink.on('click', function (e) {
e.preventDefault();
that.previous();
});
this.images.each(function(img, k) {
img.on('click', function (e) {
e.preventDefault();
that.select(k);
});
});
}
eZGN.NAME = 'gallerynavigator';
eZGN.prototype.getSelectedImage = function () {
return this.images.item(this.index);
}
eZGN.prototype.getImages = function () {
return this.images;
}
eZGN.prototype.getContainer = function () {
return this.container;
}
eZGN.prototype.select = function (i) {
var p = this.index;
if ( !L.isUndefined(i) ) {
this.index = i;
}
var s = this.getSelectedImage();
this.fire('select', {
index: this.index,
previous: p,
total: this.total,
imageNode: s,
});
this._handleNavigationLink();
this._animate();
}
eZGN.prototype.next = function () {
if ( this.index == (this.total -1) ) {
return;
}
this.select(this.index + 1);
}
eZGN.prototype.previous = function () {
if ( this.index == 0 ) {
return;
}
this.select(this.index - 1);
}
eZGN.prototype._isSelectedImageOutsideRight = function () {
var s = this.getSelectedImage(),
lRight = this.gallery.getX() + parseInt(this.gallery.getStyle('width'));
if ( ((s.getX() + parseInt(s.getStyle('width'))) > lRight) ) {
return true;
}
return false;
}
eZGN.prototype._isSelectedImageOutsideLeft = function () {
var s = this.getSelectedImage(),
lLeft = this.gallery.getX();
if ( s.getX() < lLeft ) {
return true;
}
return false;
}
eZGN.prototype._computeCursorX = function (s) {
var offset = this.gallery.getX(),
selectedWidth = width(s),
cursorWidth = width(this.cursor);
return s.getX() - offset + selectedWidth/2 - cursorWidth/2;
}
eZGN.prototype._animate = function () {
var trConf = {
duration: this.conf.transitionDuration,
easing: this.conf.easing
}, sel = this.getSelectedImage(),
cursorX = this._computeCursorX(sel), containerX, containerXOrig;
if ( this._isSelectedImageOutsideRight() ) {
containerXOrig = left(this.container);
containerX = this.container.getX() - sel.getX();
cursorX += containerX - containerXOrig;
trConf['left'] = containerX + 'px';
this._doTransition(this.container, trConf);
} else if ( this._isSelectedImageOutsideLeft() ) {
containerXOrig = left(this.container);
var selectedBorderLeft = sel.getX() + width(sel), sizeBetween,
widthGallery = width(this.gallery);
for(var i = this.index; i >= 0; i--) {
sizeBetween = selectedBorderLeft - this.images.item(i).getX();
if ( sizeBetween > widthGallery ) {
i++;
break;
}
}
if ( i < 0 )
i = 0;
containerX = this.container.getX() - this.images.item(i).getX();
cursorX += containerX - containerXOrig;
trConf['left'] = containerX + 'px';
this._doTransition(this.container, trConf);
}
trConf['left'] = cursorX + 'px';
this._doTransition(this.cursor, trConf);
}
eZGN.prototype._doTransition = function(node, conf) {
if ( Y.UA.ie ) {
var anim = new Y.Anim({
node: node,
duration: conf.duration,
to: {
left: conf.left
}
});
anim.run();
} else {
node.transition(conf);
}
}
eZGN.prototype._handleNavigationLink = function () {
var d = this.conf.transitionDuration,
showC = {
opacity:1,
duration: d
},
hideC = {
opacity:0,
duration: d
};
if ( this.index == 0 ) {
this.prevLink.transition(hideC);
} else if ( this.index >= 1 ) {
this.prevLink.transition(showC);
}
if ( this.index == (this.total -1) ) {
this.nextLink.transition(hideC);
} else if ( this.index <= (this.total - 2) ) {
this.nextLink.transition(showC);
}
}
Y.augment(eZGN, Y.EventTarget, true, null, {emitFacade: true});
Y.eZ.GalleryNavigator = eZGN;
}, '1.0.0', {
requires: [
'event-custom', 'transition', 'node-base', 'node-screen', 'anim'
]
});
YUI(YUI3_config).add('ezgallery', function (Y) {
Y.namespace('eZ');
var L = Y.Lang;
var defaultConfig = {
container: '.gallery-viewer',
title: 'h2 a',
counter: '.counter span',
image: 'figure img',
caption: 'figcaption',
figure: 'figure',
transitionDuration: 0.8,
autoScrollOnSelect: true,
autoFixSizes: true,
initFunc: function () { },
updateFunc: function (elem) { },
navigator: Y.eZ.GalleryNavigator.DEFAULT_CONFIG
}
function eZG(conf) {
this.conf = Y.merge(defaultConfig, conf);
this.navigator = new Y.eZ.GalleryNavigator(conf.navigator);
this._init();
this.hasStarted = false;
}
eZG.prototype._init = function () {
var that = this;
this.container = Y.one(this.conf.container);
this._fixSizes();
this.conf.initFunc.call(this);
this.navigator.on('select', function (item) {
that.hasStarted = true;
if ( that.conf.autoScrollOnSelect ) {
that.container.scrollIntoView(true);
}
that.update(item, (item.index != item.previous));
});
Y.on('windowresize', function () {
if ( that.hasStarted && that.conf.autoScrollOnSelect ) {
that.container.scrollIntoView(true);
}
that.navigator.select();
});
}
eZG.prototype.update = function (item, animate) {
var that = this;
if ( animate ) {
this.container.setStyle('opacity', 0);
this.conf.updateFunc.call(that, item);
this._fixSizes();
this.container.transition({
duration: this.conf.transitionDuration,
opacity: 1
});
} else {
this.conf.updateFunc.call(this, item);
this._fixSizes();
}
}
eZG.prototype._fixSizes = function () {
if ( !this.conf.autoFixSizes ) {
return;
}
var c = this.container,
fig = c.one(this.conf.figure),
nav = this.navigator.getContainer();
caption = c.one(this.conf.caption);
img = c.one(this.conf.image),
offsetFig = 0, figH = 0, offsetImg = 0,
imgRatio = parseInt(img.getAttribute('width')) / parseInt(img.getAttribute('height'));
fig.setStyle('height', 'auto');
offsetFig = nav.getY() + nav.get('offsetHeight') - this.container.getY() - nav.get('winHeight');
figH = fig.get('offsetHeight') - offsetFig
fig.setStyle('height', figH + 'px');
img.setStyles({height: 'auto', width: 'auto'});
offsetImg = img.get('offsetHeight') + caption.get('offsetHeight') - figH;
if ( offsetImg > 0 ) {
var imgH = img.get('offsetHeight') - offsetImg,
imgW = imgH * imgRatio;
if ( imgH > parseInt(img.getAttribute('height')) ) {
imgH = parseInt(img.getAttribute('height'));
imgW = imgH * imgRatio;
}
img.setStyles({height: imgH + 'px', width: imgW + 'px'});
}
}
Y.eZ.Gallery = eZG;
}, '1.0.0', {
requires: [
'ezgallerynavigator', 'transition', 'event-resize', 'anim', 'node-base'
]
});
;(function(window, undefined){
var document = window.document;// HTML5 Shiv. Must be in <head> to support older browsers.
document.createElement("video");document.createElement("audio");
var VideoJS = function(id, addOptions, ready){
var tag; // Element of ID
if (typeof id == "string") {
if (id.indexOf("#") === 0) {
id = id.slice(1);
}
if (_V_.players[id]) {
return _V_.players[id];
} else {
tag = _V_.el(id)
}
} else {
tag = id;
}
if (!tag || !tag.nodeName) { // re: nodeName, could be a box div also
throw new TypeError("The element or ID supplied is not valid. (VideoJS)"); // Returns
}
return tag.player || new _V_.Player(tag, addOptions, ready);
},
_V_ = VideoJS,
CDN_VERSION = "3.2";
VideoJS.players = {};
VideoJS.options = {
techOrder: ["html5","flash"],
html5: {},
flash: { swf: "http://vjs.zencdn.net/c/video-js.swf" },
width: "auto",
height: "auto",
defaultVolume: 0.00, // The freakin seaguls are driving me crazy!
components: {
"posterImage": {},
"textTrackDisplay": {},
"loadingSpinner": {},
"bigPlayButton": {},
"controlBar": {}
}
};
if (CDN_VERSION != "GENERATED_CDN_VSN") {
_V_.options.flash.swf = "http://vjs.zencdn.net/"+CDN_VERSION+"/video-js.swf"
}_V_.merge = function(obj1, obj2, safe){
if (!obj2) { obj2 = {}; };
for (var attrname in obj2){
if (obj2.hasOwnProperty(attrname) && (!safe || !obj1.hasOwnProperty(attrname))) { obj1[attrname]=obj2[attrname]; }
}
return obj1;
};
_V_.extend = function(obj){ this.merge(this, obj, true); };
_V_.extend({
tech: {}, // Holder for playback technology settings
controlSets: {}, // Holder for control set definitions
isIE: function(){ return !+"\v1"; },
isFF: function(){ return !!_V_.ua.match("Firefox") },
isIPad: function(){ return navigator.userAgent.match(/iPad/i) !== null; },
isIPhone: function(){ return navigator.userAgent.match(/iPhone/i) !== null; },
isIOS: function(){ return VideoJS.isIPhone() || VideoJS.isIPad(); },
iOSVersion: function() {
var match = navigator.userAgent.match(/OS (\d+)_/i);
if (match && match[1]) { return match[1]; }
},
isAndroid: function(){ return navigator.userAgent.match(/Android.*AppleWebKit/i) !== null; },
androidVersion: function() {
var match = navigator.userAgent.match(/Android (\d+)\./i);
if (match && match[1]) { return match[1]; }
},
testVid: document.createElement("video"),
ua: navigator.userAgent,
support: {},
each: function(arr, fn){
if (!arr || arr.length === 0) { return; }
for (var i=0,j=arr.length; i<j; i++) {
fn.call(this, arr[i], i);
}
},
eachProp: function(obj, fn){
if (!obj) { return; }
for (var name in obj) {
if (obj.hasOwnProperty(name)) {
fn.call(this, name, obj[name]);
}
}
},
el: function(id){ return document.getElementById(id); },
createElement: function(tagName, attributes){
var el = document.createElement(tagName),
attrname;
for (attrname in attributes){
if (attributes.hasOwnProperty(attrname)) {
if (attrname.indexOf("-") !== -1) {
el.setAttribute(attrname, attributes[attrname]);
} else {
el[attrname] = attributes[attrname];
}
}
}
return el;
},
insertFirst: function(node, parent){
if (parent.firstChild) {
parent.insertBefore(node, parent.firstChild);
} else {
parent.appendChild(node);
}
},
addClass: function(element, classToAdd){
if ((" "+element.className+" ").indexOf(" "+classToAdd+" ") == -1) {
element.className = element.className === "" ? classToAdd : element.className + " " + classToAdd;
}
},
removeClass: function(element, classToRemove){
if (element.className.indexOf(classToRemove) == -1) { return; }
var classNames = element.className.split(" ");
classNames.splice(classNames.indexOf(classToRemove),1);
element.className = classNames.join(" ");
},
remove: function(item, array){
if (!array) return;
var i = array.indexOf(item);
if (i != -1) {
return array.splice(i, 1)
};
},
blockTextSelection: function(){
document.body.focus();
document.onselectstart = function () { return false; };
},
unblockTextSelection: function(){ document.onselectstart = function () { return true; }; },
formatTime: function(seconds, guide) {
guide = guide || seconds; // Default to using seconds as guide
var s = Math.floor(seconds % 60),
m = Math.floor(seconds / 60 % 60),
h = Math.floor(seconds / 3600),
gm = Math.floor(guide / 60 % 60),
gh = Math.floor(guide / 3600);
h = (h > 0 || gh > 0) ? h + ":" : "";
m = (((h || gm >= 10) && m < 10) ? "0" + m : m) + ":";
s = (s < 10) ? "0" + s : s;
return h + m + s;
},
uc: function(string){
return string.charAt(0).toUpperCase() + string.slice(1);
},
getRelativePosition: function(x, relativeElement){
return Math.max(0, Math.min(1, (x - _V_.findPosX(relativeElement)) / relativeElement.offsetWidth));
},
getComputedStyleValue: function(element, style){
return window.getComputedStyle(element, null).getPropertyValue(style);
},
trim: function(string){ return string.toString().replace(/^\s+/, "").replace(/\s+$/, ""); },
round: function(num, dec) {
if (!dec) { dec = 0; }
return Math.round(num*Math.pow(10,dec))/Math.pow(10,dec);
},
isEmpty: function(object) {
for (var prop in object) {
return false;
}
return true;
},
createTimeRange: function(start, end){
return {
length: 1,
start: function() { return start; },
end: function() { return end; }
};
},
cache: {}, // Where the data is stored
guid: 1, // Unique ID for the element
expando: "vdata" + (new Date).getTime(), // Unique attribute to store element's guid in
getData: function(elem){
var id = elem[_V_.expando];
if (!id) {
id = elem[_V_.expando] = _V_.guid++;
_V_.cache[id] = {};
}
return _V_.cache[id];
},
removeData: function(elem){
var id = elem[_V_.expando];
if (!id) { return; }
delete _V_.cache[id];
try {
delete elem[_V_.expando];
} catch(e) {
if (elem.removeAttribute) {
elem.removeAttribute(_V_.expando);
} else {
elem[_V_.expando] = null;
}
}
},
proxy: function(context, fn, uid) {
if (!fn.guid) { fn.guid = _V_.guid++; }
var ret = function() {
return fn.apply(context, arguments);
}
ret.guid = (uid) ? uid + "_" + fn.guid : fn.guid;
return ret;
},
get: function(url, onSuccess, onError){
var local = (url.indexOf("file:") == 0 || (window.location.href.indexOf("file:") == 0 && url.indexOf("http:") == -1));
if (typeof XMLHttpRequest == "undefined") {
XMLHttpRequest = function () {
try { return new ActiveXObject("Msxml2.XMLHTTP.6.0"); } catch (e) {}
try { return new ActiveXObject("Msxml2.XMLHTTP.3.0"); } catch (f) {}
try { return new ActiveXObject("Msxml2.XMLHTTP"); } catch (g) {}
throw new Error("This browser does not support XMLHttpRequest.");
};
}
var request = new XMLHttpRequest();
try {
request.open("GET", url);
} catch(e) {
_V_.log("VideoJS XMLHttpRequest (open)", e);
return false;
}
request.onreadystatechange = _V_.proxy(this, function() {
if (request.readyState == 4) {
if (request.status == 200 || local && request.status == 0) {
onSuccess(request.responseText);
} else {
if (onError) {
onError();
}
}
}
});
try {
request.send();
} catch(e) {
_V_.log("VideoJS XMLHttpRequest (send)", e);
if (onError) {
onError(e);
}
}
},
setLocalStorage: function(key, value){
var localStorage = window.localStorage || false;
if (!localStorage) { return; }
try {
localStorage[key] = value;
} catch(e) {
if (e.code == 22 || e.code == 1014) { // Webkit == 22 / Firefox == 1014
_V_.log("LocalStorage Full (VideoJS)", e);
} else {
_V_.log("LocalStorage Error (VideoJS)", e);
}
}
},
getAbsoluteURL: function(url){
if (!url.match(/^https?:\/\//)) {
url = _V_.createElement('div', {
innerHTML: '<a href="'+url+'">x</a>'
}).firstChild.href;
}
return url;
}
});
_V_.log = function(){
_V_.log.history = _V_.log.history || [];// store logs to an array for reference
_V_.log.history.push(arguments);
if(window.console) {
arguments.callee = arguments.callee.caller;
var newarr = [].slice.call(arguments);
(typeof console.log === 'object' ? _V_.log.apply.call(console.log, console, newarr) : console.log.apply(console, newarr));
}
};
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
{console.log();return window.console;}catch(err){return window.console={};}})());
if ("getBoundingClientRect" in document.documentElement) {
_V_.findPosX = function(el) {
var box;
try {
box = el.getBoundingClientRect();
} catch(e) {}
if (!box) { return 0; }
var docEl = document.documentElement,
body = document.body,
clientLeft = docEl.clientLeft || body.clientLeft || 0,
scrollLeft = window.pageXOffset || body.scrollLeft,
left = box.left + scrollLeft - clientLeft;
return left;
};
} else {
_V_.findPosX = function(el) {
var curleft = el.offsetLeft;
while(el = obj.offsetParent) {
if (el.className.indexOf("video-js") == -1) {
} else {
}
curleft += el.offsetLeft;
}
return curleft;
};
}// Using John Resig's Class implementation http://ejohn.org/blog/simple-javascript-inheritance/
(function(){
var initializing = false, fnTest = /xyz/.test(function(){xyz;}) ? /\b_super\b/ : /.*/;
_V_.Class = function(){};
_V_.Class.extend = function(prop) {
var _super = this.prototype;
initializing = true;
var prototype = new this();
initializing = false;
for (var name in prop) {
prototype[name] = typeof prop[name] == "function" &&
typeof _super[name] == "function" && fnTest.test(prop[name]) ?
(function(name, fn){
return function() {
var tmp = this._super;
this._super = _super[name];
var ret = fn.apply(this, arguments);
this._super = tmp;
return ret;
};
})(name, prop[name]) :
prop[name];
}
function Class() {
if ( !initializing && this.init ) {
return this.init.apply(this, arguments);
} else if (!initializing) {
return arguments.callee.prototype.init()
}
}
Class.prototype = prototype;
Class.constructor = Class;
Class.extend = arguments.callee;
return Class;
};
})();
_V_.Component = _V_.Class.extend({
init: function(player, options){
this.player = player;
options = this.options = _V_.merge(this.options || {}, options);
if (options.el) {
this.el = options.el;
} else {
this.el = this.createElement();
}
this.initComponents();
},
destroy: function(){},
createElement: function(type, attrs){
return _V_.createElement(type || "div", attrs);
},
buildCSSClass: function(){
return "";
},
initComponents: function(){
var options = this.options;
if (options && options.components) {
this.eachProp(options.components, function(name, opts){
var tempAdd = this.proxy(function(){
this[name] = this.addComponent(name, opts);
});
if (opts.loadEvent) {
this.one(opts.loadEvent, tempAdd)
} else {
tempAdd();
}
});
}
},
addComponent: function(name, options){
var component, componentClass;
if (typeof name == "string") {
options = options || {};
componentClass = options.componentClass || _V_.uc(name);
component = new _V_[componentClass](this.player || this, options);
} else {
component = name;
}
this.el.appendChild(component.el);
return component;
},
removeComponent: function(component){
this.el.removeChild(component.el);
},
show: function(){
this.el.style.display = "block";
},
hide: function(){
this.el.style.display = "none";
},
fadeIn: function(){
this.removeClass("vjs-fade-out");
this.addClass("vjs-fade-in");
},
fadeOut: function(){
this.removeClass("vjs-fade-in");
this.addClass("vjs-fade-out");
},
lockShowing: function(){
var style = this.el.style;
style.display = "block";
style.opacity = 1;
style.visiblity = "visible";
},
unlockShowing: function(){
var style = this.el.style;
style.display = "";
style.opacity = "";
style.visiblity = "";
},
addClass: function(classToAdd){
_V_.addClass(this.el, classToAdd);
},
removeClass: function(classToRemove){
_V_.removeClass(this.el, classToRemove);
},
addEvent: function(type, fn, uid){
return _V_.addEvent(this.el, type, _V_.proxy(this, fn));
},
removeEvent: function(type, fn){
return _V_.removeEvent(this.el, type, fn);
},
triggerEvent: function(type, e){
return _V_.triggerEvent(this.el, type, e);
},
one: function(type, fn) {
_V_.one(this.el, type, _V_.proxy(this, fn));
},
ready: function(fn){
if (!fn) return this;
if (this.isReady) {
fn.call(this);
} else {
if (this.readyQueue === undefined) {
this.readyQueue = [];
}
this.readyQueue.push(fn);
}
return this;
},
triggerReady: function(){
this.isReady = true;
if (this.readyQueue && this.readyQueue.length > 0) {
this.each(this.readyQueue, function(fn){
fn.call(this);
});
this.readyQueue = [];
this.triggerEvent("ready");
}
},
each: function(arr, fn){ _V_.each.call(this, arr, fn); },
eachProp: function(obj, fn){ _V_.eachProp.call(this, obj, fn); },
extend: function(obj){ _V_.merge(this, obj) },
proxy: function(fn, uid){  return _V_.proxy(this, fn, uid); }
});
_V_.Control = _V_.Component.extend({
buildCSSClass: function(){
return "vjs-control " + this._super();
}
});
_V_.ControlBar = _V_.Component.extend({
options: {
loadEvent: "play",
components: {
"playToggle": {},
"fullscreenToggle": {},
"currentTimeDisplay": {},
"timeDivider": {},
"durationDisplay": {},
"remainingTimeDisplay": {},
"progressControl": {},
"volumeControl": {},
"muteToggle": {}
}
},
init: function(player, options){
this._super(player, options);
player.addEvent("play", this.proxy(function(){
this.fadeIn();
this.player.addEvent("mouseover", this.proxy(this.fadeIn));
this.player.addEvent("mouseout", this.proxy(this.fadeOut));
}));
},
createElement: function(){
return _V_.createElement("div", {
className: "vjs-controls"
});
},
fadeIn: function(){
this._super();
this.player.triggerEvent("controlsvisible");
},
fadeOut: function(){
this._super();
this.player.triggerEvent("controlshidden");
},
lockShowing: function(){
this.el.style.opacity = "1";
}
});
_V_.Button = _V_.Control.extend({
init: function(player, options){
this._super(player, options);
this.addEvent("click", this.onClick);
this.addEvent("focus", this.onFocus);
this.addEvent("blur", this.onBlur);
},
createElement: function(type, attrs){
attrs = _V_.merge({
className: this.buildCSSClass(),
innerHTML: '<div><span class="vjs-control-text">' + (this.buttonText || "Need Text") + '</span></div>',
role: "button",
tabIndex: 0
}, attrs);
return this._super(type, attrs);
},
onClick: function(){},
onFocus: function(){
_V_.addEvent(document, "keyup", _V_.proxy(this, this.onKeyPress));
},
onKeyPress: function(event){
if (event.which == 32 || event.which == 13) {
event.preventDefault();
this.onClick();
}
},
onBlur: function(){
_V_.removeEvent(document, "keyup", _V_.proxy(this, this.onKeyPress));
}
});
_V_.PlayButton = _V_.Button.extend({
buttonText: "Play",
buildCSSClass: function(){
return "vjs-play-button " + this._super();
},
onClick: function(){
this.player.play();
}
});
_V_.PauseButton = _V_.Button.extend({
buttonText: "Pause",
buildCSSClass: function(){
return "vjs-pause-button " + this._super();
},
onClick: function(){
this.player.pause();
}
});
_V_.PlayToggle = _V_.Button.extend({
buttonText: "Play",
init: function(player, options){
this._super(player, options);
player.addEvent("play", _V_.proxy(this, this.onPlay));
player.addEvent("pause", _V_.proxy(this, this.onPause));
},
buildCSSClass: function(){
return "vjs-play-control " + this._super();
},
onClick: function(){
if (this.player.paused()) {
this.player.play();
} else {
this.player.pause();
}
},
onPlay: function(){
_V_.removeClass(this.el, "vjs-paused");
_V_.addClass(this.el, "vjs-playing");
},
onPause: function(){
_V_.removeClass(this.el, "vjs-playing");
_V_.addClass(this.el, "vjs-paused");
}
});
_V_.FullscreenToggle = _V_.Button.extend({
buttonText: "Fullscreen",
buildCSSClass: function(){
return "vjs-fullscreen-control " + this._super();
},
onClick: function(){
if (!this.player.isFullScreen) {
this.player.requestFullScreen();
} else {
this.player.cancelFullScreen();
}
}
});
_V_.BigPlayButton = _V_.Button.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("play", _V_.proxy(this, this.hide));
player.addEvent("ended", _V_.proxy(this, this.show));
},
createElement: function(){
return this._super("div", {
className: "vjs-big-play-button",
innerHTML: "<span></span>"
});
},
onClick: function(){
if(this.player.currentTime()) {
this.player.currentTime(0);
}
this.player.play();
}
});
_V_.LoadingSpinner = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("canplay", _V_.proxy(this, this.hide));
player.addEvent("canplaythrough", _V_.proxy(this, this.hide));
player.addEvent("playing", _V_.proxy(this, this.hide));
player.addEvent("seeking", _V_.proxy(this, this.show));
player.addEvent("error", _V_.proxy(this, this.show));
player.addEvent("waiting", _V_.proxy(this, this.show));
},
createElement: function(){
var classNameSpinner, innerHtmlSpinner;
if ( typeof this.player.el.style.WebkitBorderRadius == "string"
|| typeof this.player.el.style.MozBorderRadius == "string"
|| typeof this.player.el.style.KhtmlBorderRadius == "string"
|| typeof this.player.el.style.borderRadius == "string")
{
classNameSpinner = "vjs-loading-spinner";
innerHtmlSpinner = "<div class='ball1'></div><div class='ball2'></div><div class='ball3'></div><div class='ball4'></div><div class='ball5'></div><div class='ball6'></div><div class='ball7'></div><div class='ball8'></div>";
} else {
classNameSpinner = "vjs-loading-spinner-fallback";
innerHtmlSpinner = "";
}
return this._super("div", {
className: classNameSpinner,
innerHTML: innerHtmlSpinner
});
}
});
_V_.CurrentTimeDisplay = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("timeupdate", _V_.proxy(this, this.updateContent));
},
createElement: function(){
var el = this._super("div", {
className: "vjs-current-time vjs-time-controls vjs-control"
});
this.content = _V_.createElement("div", {
className: "vjs-current-time-display",
innerHTML: '0:00'
});
el.appendChild(_V_.createElement("div").appendChild(this.content));
return el;
},
updateContent: function(){
var time = (this.player.scrubbing) ? this.player.values.currentTime : this.player.currentTime();
this.content.innerHTML = _V_.formatTime(time, this.player.duration());
}
});
_V_.DurationDisplay = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("timeupdate", _V_.proxy(this, this.updateContent));
},
createElement: function(){
var el = this._super("div", {
className: "vjs-duration vjs-time-controls vjs-control"
});
this.content = _V_.createElement("div", {
className: "vjs-duration-display",
innerHTML: '0:00'
});
el.appendChild(_V_.createElement("div").appendChild(this.content));
return el;
},
updateContent: function(){
if (this.player.duration()) { this.content.innerHTML = _V_.formatTime(this.player.duration()); }
}
});
_V_.TimeDivider = _V_.Component.extend({
createElement: function(){
return this._super("div", {
className: "vjs-time-divider",
innerHTML: '<div><span>/</span></div>'
});
}
});
_V_.RemainingTimeDisplay = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("timeupdate", _V_.proxy(this, this.updateContent));
},
createElement: function(){
var el = this._super("div", {
className: "vjs-remaining-time vjs-time-controls vjs-control"
});
this.content = _V_.createElement("div", {
className: "vjs-remaining-time-display",
innerHTML: '-0:00'
});
el.appendChild(_V_.createElement("div").appendChild(this.content));
return el;
},
updateContent: function(){
if (this.player.duration()) { this.content.innerHTML = "-"+_V_.formatTime(this.player.remainingTime()); }
}
});
_V_.Slider = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
player.addEvent(this.playerEvent, _V_.proxy(this, this.update));
this.addEvent("mousedown", this.onMouseDown);
this.addEvent("focus", this.onFocus);
this.addEvent("blur", this.onBlur);
this.player.addEvent("controlsvisible", this.proxy(this.update));
this.update();
},
createElement: function(type, attrs) {
attrs = _V_.merge({
role: "slider",
"aria-valuenow": 0,
"aria-valuemin": 0,
"aria-valuemax": 100,
tabIndex: 0
}, attrs);
return this._super(type, attrs);
},
onMouseDown: function(event){
event.preventDefault();
_V_.blockTextSelection();
_V_.addEvent(document, "mousemove", _V_.proxy(this, this.onMouseMove));
_V_.addEvent(document, "mouseup", _V_.proxy(this, this.onMouseUp));
this.onMouseMove(event);
},
onMouseUp: function(event) {
_V_.unblockTextSelection();
_V_.removeEvent(document, "mousemove", this.onMouseMove, false);
_V_.removeEvent(document, "mouseup", this.onMouseUp, false);
this.update();
},
update: function(){
var barProgress,
progress = this.getPercent();
handle = this.handle,
bar = this.bar;
if (isNaN(progress)) { progress = 0; }
barProgress = progress;
if (handle) {
var box = this.el,
boxWidth = box.offsetWidth,
handleWidth = handle.el.offsetWidth,
handlePercent = (handleWidth) ? handleWidth / boxWidth : 0,
boxAdjustedPercent = 1 - handlePercent;
adjustedProgress = progress * boxAdjustedPercent,
barProgress = adjustedProgress + (handlePercent / 2);
handle.el.style.left = _V_.round(adjustedProgress * 100, 2) + "%";
}
bar.el.style.width = _V_.round(barProgress * 100, 2) + "%";
},
calculateDistance: function(event){
var box = this.el,
boxX = _V_.findPosX(box),
boxW = box.offsetWidth,
handle = this.handle;
if (handle) {
var handleW = handle.el.offsetWidth;
boxX = boxX + (handleW / 2);
boxW = boxW - handleW;
}
return Math.max(0, Math.min(1, (event.pageX - boxX) / boxW));
},
onFocus: function(event){
_V_.addEvent(document, "keyup", _V_.proxy(this, this.onKeyPress));
},
onKeyPress: function(event){
if (event.which == 37) { // Left Arrow
event.preventDefault();
this.stepBack();
} else if (event.which == 39) { // Right Arrow
event.preventDefault();
this.stepForward();
}
},
onBlur: function(event){
_V_.removeEvent(document, "keyup", _V_.proxy(this, this.onKeyPress));
}
});
_V_.ProgressControl = _V_.Component.extend({
options: {
components: {
"seekBar": {}
}
},
createElement: function(){
return this._super("div", {
className: "vjs-progress-control vjs-control"
});
}
});
_V_.SeekBar = _V_.Slider.extend({
options: {
components: {
"loadProgressBar": {},
"bar": { componentClass: "PlayProgressBar" },
"handle": { componentClass: "SeekHandle" }
}
},
playerEvent: "timeupdate",
init: function(player, options){
this._super(player, options);
},
createElement: function(){
return this._super("div", {
className: "vjs-progress-holder"
});
},
getPercent: function(){
return this.player.currentTime() / this.player.duration();
},
onMouseDown: function(event){
this._super(event);
this.player.scrubbing = true;
this.videoWasPlaying = !this.player.paused();
this.player.pause();
},
onMouseMove: function(event){
var newTime = this.calculateDistance(event) * this.player.duration();
if (newTime == this.player.duration()) { newTime = newTime - 0.1; }
this.player.currentTime(newTime);
},
onMouseUp: function(event){
this._super(event);
this.player.scrubbing = false;
if (this.videoWasPlaying) {
this.player.play();
}
},
stepForward: function(){
this.player.currentTime(this.player.currentTime() + 1);
},
stepBack: function(){
this.player.currentTime(this.player.currentTime() - 1);
}
});
_V_.LoadProgressBar = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("progress", _V_.proxy(this, this.update));
},
createElement: function(){
return this._super("div", {
className: "vjs-load-progress",
innerHTML: '<span class="vjs-control-text">Loaded: 0%</span>'
});
},
update: function(){
if (this.el.style) { this.el.style.width = _V_.round(this.player.bufferedPercent() * 100, 2) + "%"; }
}
});
_V_.PlayProgressBar = _V_.Component.extend({
createElement: function(){
return this._super("div", {
className: "vjs-play-progress",
innerHTML: '<span class="vjs-control-text">Progress: 0%</span>'
});
}
});
_V_.SeekHandle = _V_.Component.extend({
createElement: function(){
return this._super("div", {
className: "vjs-seek-handle",
innerHTML: '<span class="vjs-control-text">00:00</span>'
});
}
});
_V_.VolumeControl = _V_.Component.extend({
options: {
components: {
"volumeBar": {}
}
},
createElement: function(){
return this._super("div", {
className: "vjs-volume-control vjs-control"
});
}
});
_V_.VolumeBar = _V_.Slider.extend({
options: {
components: {
"bar": { componentClass: "VolumeLevel" },
"handle": { componentClass: "VolumeHandle" }
}
},
playerEvent: "volumechange",
createElement: function(){
return this._super("div", {
className: "vjs-volume-bar"
});
},
onMouseMove: function(event) {
this.player.volume(this.calculateDistance(event));
},
getPercent: function(){
return this.player.volume();
},
stepForward: function(){
this.player.volume(this.player.volume() + 0.1);
},
stepBack: function(){
this.player.volume(this.player.volume() - 0.1);
}
});
_V_.VolumeLevel = _V_.Component.extend({
createElement: function(){
return this._super("div", {
className: "vjs-volume-level",
innerHTML: '<span class="vjs-control-text"></span>'
});
}
});
_V_.VolumeHandle = _V_.Component.extend({
createElement: function(){
return this._super("div", {
className: "vjs-volume-handle",
innerHTML: '<span class="vjs-control-text"></span>'
});
}
});
_V_.MuteToggle = _V_.Button.extend({
init: function(player, options){
this._super(player, options);
player.addEvent("volumechange", _V_.proxy(this, this.update));
},
createElement: function(){
return this._super("div", {
className: "vjs-mute-control vjs-control",
innerHTML: '<div><span class="vjs-control-text">Mute</span></div>'
});
},
onClick: function(event){
this.player.muted( this.player.muted() ? false : true );
},
update: function(event){
var vol = this.player.volume(),
level = 3;
if (vol == 0 || this.player.muted()) {
level = 0;
} else if (vol < 0.33) {
level = 1;
} else if (vol < 0.67) {
level = 2;
}
_V_.each.call(this, [0,1,2,3], function(i){
_V_.removeClass(this.el, "vjs-vol-"+i);
});
_V_.addClass(this.el, "vjs-vol-"+level);
}
});
_V_.PosterImage = _V_.Button.extend({
init: function(player, options){
this._super(player, options);
if (!this.player.options.poster) {
this.hide();
}
player.addEvent("play", _V_.proxy(this, this.hide));
},
createElement: function(){
return _V_.createElement("img", {
className: "vjs-poster",
src: this.player.options.poster,
tabIndex: -1
});
},
onClick: function(){
this.player.play();
}
});
_V_.Menu = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
},
addItem: function(component){
this.addComponent(component);
component.addEvent("click", this.proxy(function(){
this.unlockShowing();
}));
},
createElement: function(){
return this._super("ul", {
className: "vjs-menu"
});
}
});
_V_.MenuItem = _V_.Button.extend({
init: function(player, options){
this._super(player, options);
if (options.selected) {
this.addClass("vjs-selected");
}
},
createElement: function(type, attrs){
return this._super("li", _V_.merge({
className: "vjs-menu-item",
innerHTML: this.options.label
}, attrs));
},
onClick: function(){
this.selected(true);
},
selected: function(selected){
if (selected) {
this.addClass("vjs-selected");
} else {
this.removeClass("vjs-selected")
}
}
});// ECMA-262 is the standard for javascript.
if (!Array.prototype.indexOf) {
Array.prototype.indexOf = function (searchElement ) {
"use strict";
if (this === void 0 || this === null) {
throw new TypeError();
}
var t = Object(this);
var len = t.length >>> 0;
if (len === 0) {
return -1;
}
var n = 0;
if (arguments.length > 0) {
n = Number(arguments[1]);
if (n !== n) { // shortcut for verifying if it's NaN
n = 0;
} else if (n !== 0 && n !== (1 / 0) && n !== -(1 / 0)) {
n = (n > 0 || -1) * Math.floor(Math.abs(n));
}
}
if (n >= len) {
return -1;
}
var k = n >= 0 ? n : Math.max(len - Math.abs(n), 0);
for (; k < len; k++) {
if (k in t && t[k] === searchElement) {
return k;
}
}
return -1;
}
}
_V_.extend({
addEvent: function(elem, type, fn){
var data = _V_.getData(elem), handlers;
if (data && !data.handler) {
data.handler = function(event){
event = _V_.fixEvent(event);
var handlers = _V_.getData(elem).events[event.type];
if (handlers) {
var handlersCopy = [];
_V_.each(handlers, function(handler, i){
handlersCopy[i] = handler;
})
for (var i = 0, l = handlersCopy.length; i < l; i++) {
handlersCopy[i].call(elem, event);
}
}
};
}
if (!data.events) { data.events = {}; }
handlers = data.events[type];
if (!handlers) {
handlers = data.events[ type ] = [];
if (document.addEventListener) {
elem.addEventListener(type, data.handler, false);
} else if (document.attachEvent) {
elem.attachEvent("on" + type, data.handler);
}
}
if (!fn.guid) { fn.guid = _V_.guid++; }
handlers.push(fn);
},
removeEvent: function(elem, type, fn) {
var data = _V_.getData(elem), handlers;
if (!data.events) { return; }
if (!type) {
for (type in data.events) {
_V_.cleanUpEvents(elem, type);
}
return;
}
handlers = data.events[type];
if (!handlers) { return; }
if (fn && fn.guid) {
for (var i = 0; i < handlers.length; i++) {
if (handlers[i].guid === fn.guid) {
handlers.splice(i--, 1);
}
}
}
_V_.cleanUpEvents(elem, type);
},
cleanUpEvents: function(elem, type) {
var data = _V_.getData(elem);
if (data.events[type].length === 0) {
delete data.events[type];
if (document.removeEventListener) {
elem.removeEventListener(type, data.handler, false);
} else if (document.detachEvent) {
elem.detachEvent("on" + type, data.handler);
}
}
if (_V_.isEmpty(data.events)) {
delete data.events;
delete data.handler;
}
if (_V_.isEmpty(data)) {
_V_.removeData(elem);
}
},
fixEvent: function(event) {
if (event[_V_.expando]) { return event; }
var originalEvent = event;
event = new _V_.Event(originalEvent);
for ( var i = _V_.Event.props.length, prop; i; ) {
prop = _V_.Event.props[ --i ];
event[prop] = originalEvent[prop];
}
if (!event.target) { event.target = event.srcElement || document; }
if (event.target.nodeType === 3) { event.target = event.target.parentNode; }
if (!event.relatedTarget && event.fromElement) {
event.relatedTarget = event.fromElement === event.target ? event.toElement : event.fromElement;
}
if ( event.pageX == null && event.clientX != null ) {
var eventDocument = event.target.ownerDocument || document,
doc = eventDocument.documentElement,
body = eventDocument.body;
event.pageX = event.clientX + (doc && doc.scrollLeft || body && body.scrollLeft || 0) - (doc && doc.clientLeft || body && body.clientLeft || 0);
event.pageY = event.clientY + (doc && doc.scrollTop  || body && body.scrollTop  || 0) - (doc && doc.clientTop  || body && body.clientTop  || 0);
}
if (event.which == null && (event.charCode != null || event.keyCode != null)) {
event.which = event.charCode != null ? event.charCode : event.keyCode;
}
if ( !event.metaKey && event.ctrlKey ) {
event.metaKey = event.ctrlKey;
}
if ( !event.which && event.button !== undefined ) {
event.which = (event.button & 1 ? 1 : ( event.button & 2 ? 3 : ( event.button & 4 ? 2 : 0 ) ));
}
return event;
},
triggerEvent: function(elem, event) {
var data = _V_.getData(elem),
parent = elem.parentNode || elem.ownerDocument,
type = event.type || event,
handler;
if (data) { handler = data.handler }
event = typeof event === "object" ?
event[_V_.expando] ?
event :
new _V_.Event(type, event) :
new _V_.Event(type);
event.type = type;
if (handler) {
handler.call(elem, event);
}
event.result = undefined;
event.target = elem;
},
one: function(elem, type, fn) {
_V_.addEvent(elem, type, function(){
_V_.removeEvent(elem, type, arguments.callee)
fn.apply(this, arguments);
});
}
});
_V_.Event = function(src, props){
if (src && src.type) {
this.originalEvent = src;
this.type = src.type;
this.isDefaultPrevented = (src.defaultPrevented || src.returnValue === false ||
src.getPreventDefault && src.getPreventDefault()) ? returnTrue : returnFalse;
} else {
this.type = src;
}
if (props) { _V_.merge(this, props); }
this.timeStamp = (new Date).getTime();
this[_V_.expando] = true;
};
_V_.Event.prototype = {
preventDefault: function() {
this.isDefaultPrevented = returnTrue;
var e = this.originalEvent;
if (!e) { return; }
if (e.preventDefault) {
e.preventDefault();
} else {
e.returnValue = false;
}
},
stopPropagation: function() {
this.isPropagationStopped = returnTrue;
var e = this.originalEvent;
if (!e) { return; }
if (e.stopPropagation) { e.stopPropagation(); }
e.cancelBubble = true;
},
stopImmediatePropagation: function() {
this.isImmediatePropagationStopped = returnTrue;
this.stopPropagation();
},
isDefaultPrevented: returnFalse,
isPropagationStopped: returnFalse,
isImmediatePropagationStopped: returnFalse
};
_V_.Event.props = "altKey attrChange attrName bubbles button cancelable charCode clientX clientY ctrlKey currentTarget data detail eventPhase fromElement handler keyCode metaKey newValue offsetX offsetY pageX pageY prevValue relatedNode relatedTarget screenX screenY shiftKey srcElement target toElement view wheelDelta which".split(" ");
function returnTrue(){ return true; }
function returnFalse(){ return false; }
var JSON;
if (!JSON) { JSON = {}; }
(function(){
var cx = /[\u0000\u00ad\u0600-\u0604\u070f\u17b4\u17b5\u200c-\u200f\u2028-\u202f\u2060-\u206f\ufeff\ufff0-\uffff]/g;
if (typeof JSON.parse !== 'function') {
JSON.parse = function (text, reviver) {
var j;
function walk(holder, key) {
var k, v, value = holder[key];
if (value && typeof value === 'object') {
for (k in value) {
if (Object.prototype.hasOwnProperty.call(value, k)) {
v = walk(value, k);
if (v !== undefined) {
value[k] = v;
} else {
delete value[k];
}
}
}
}
return reviver.call(holder, key, value);
}
text = String(text);
cx.lastIndex = 0;
if (cx.test(text)) {
text = text.replace(cx, function (a) {
return '\\u' +
('0000' + a.charCodeAt(0).toString(16)).slice(-4);
});
}
if (/^[\],:{}\s]*$/
.test(text.replace(/\\(?:["\\\/bfnrt]|u[0-9a-fA-F]{4})/g, '@')
.replace(/"[^"\\\n\r]*"|true|false|null|-?\d+(?:\.\d*)?(?:[eE][+\-]?\d+)?/g, ']')
.replace(/(?:^|:|,)(?:\s*\[)+/g, ''))) {
j = eval('(' + text + ')');
return typeof reviver === 'function' ?
walk({'': j}, '') : j;
}
throw new SyntaxError('JSON.parse');
};
}
}());
_V_.Player = _V_.Component.extend({
init: function(tag, addOptions, ready){
this.tag = tag; // Store the original tag used to set options
var el = this.el = _V_.createElement("div"), // Div to contain video and controls
options = this.options = {},
width = options.width = tag.getAttribute('width'),
height = options.height = tag.getAttribute('height'),
initWidth = width || 300,
initHeight = height || 150;
tag.player = el.player = this;
this.ready(ready);
tag.parentNode.insertBefore(el, tag);
el.appendChild(tag); // Breaks iPhone, fixed in HTML5 setup.
el.id = this.id = tag.id; // ID will now reference box, not the video tag
el.className = tag.className;
tag.id += "_html5_api";
tag.className = "vjs-tech";
_V_.players[el.id] = this;
el.setAttribute("width", initWidth);
el.setAttribute("height", initHeight);
el.style.width = initWidth+"px";
el.style.height = initHeight+"px";
tag.removeAttribute("width");
tag.removeAttribute("height");
_V_.merge(options, _V_.options); // Copy Global Defaults
_V_.merge(options, this.getVideoTagSettings()); // Override with Video Tag Options
_V_.merge(options, addOptions); // Override/extend with options from setup call
tag.removeAttribute("controls");
tag.removeAttribute("poster");
if (tag.hasChildNodes()) {
for (var i=0,j=tag.childNodes;i<j.length;i++) {
if (j[i].nodeName == "SOURCE" || j[i].nodeName == "TRACK") {
tag.removeChild(j[i]);
}
}
}
this.values = {};
this.addClass("vjs-paused");
this.addEvent("ended", this.onEnded);
this.addEvent("play", this.onPlay);
this.addEvent("pause", this.onPause);
this.addEvent("progress", this.onProgress);
this.addEvent("error", this.onError);
if (options.controls) {
this.ready(function(){
this.initComponents();
});
}
this.textTracks = [];
if (options.tracks && options.tracks.length > 0) {
this.addTextTracks(options.tracks);
}
if (!options.sources || options.sources.length == 0) {
for (var i=0,j=options.techOrder; i<j.length; i++) {
var techName = j[i],
tech = _V_[techName];
if (tech.isSupported()) {
this.loadTech(techName);
break;
}
}
} else {
this.src(options.sources);
}
},
values: {},
destroy: function(){
this.stopTrackingProgress();
this.stopTrackingCurrentTime();
_V_.players[this.id] = null;
delete _V_.players[this.id];
this.tech.destroy();
this.el.parentNode.removeChild(this.el);
},
createElement: function(type, options){},
getVideoTagSettings: function(){
var options = {
sources: [],
tracks: []
};
options.src = this.tag.getAttribute("src");
options.controls = this.tag.getAttribute("controls") !== null;
options.poster = this.tag.getAttribute("poster");
options.preload = this.tag.getAttribute("preload");
options.autoplay = this.tag.getAttribute("autoplay") !== null; // hasAttribute not IE <8 compatible
options.loop = this.tag.getAttribute("loop") !== null;
options.muted = this.tag.getAttribute("muted") !== null;
if (this.tag.hasChildNodes()) {
for (var c,i=0,j=this.tag.childNodes;i<j.length;i++) {
c = j[i];
if (c.nodeName == "SOURCE") {
options.sources.push({
src: c.getAttribute('src'),
type: c.getAttribute('type'),
media: c.getAttribute('media'),
title: c.getAttribute('title')
});
}
if (c.nodeName == "TRACK") {
options.tracks.push({
src: c.getAttribute("src"),
kind: c.getAttribute("kind"),
srclang: c.getAttribute("srclang"),
label: c.getAttribute("label"),
'default': c.getAttribute("default") !== null,
title: c.getAttribute("title")
});
}
}
}
return options;
},
loadTech: function(techName, source){
if (this.tech) {
this.unloadTech();
} else if (techName != "html5" && this.tag) {
this.el.removeChild(this.tag);
this.tag = false;
}
this.techName = techName;
this.isReady = false;
var techReady = function(){
this.player.triggerReady();
if (!this.support.progressEvent) {
this.player.manualProgressOn();
}
if (!this.support.timeupdateEvent) {
this.player.manualTimeUpdatesOn();
}
}
var techOptions = _V_.merge({ source: source, parentEl: this.el }, this.options[techName])
if (source) {
if (source.src == this.values.src && this.values.currentTime > 0) {
techOptions.startTime = this.values.currentTime;
}
this.values.src = source.src;
}
this.tech = new _V_[techName](this, techOptions);
this.tech.ready(techReady);
},
unloadTech: function(){
this.tech.destroy();
if (this.manualProgress) { this.manualProgressOff(); }
if (this.manualTimeUpdates) { this.manualTimeUpdatesOff(); }
this.tech = false;
},
manualProgressOn: function(){
this.manualProgress = true;
this.trackProgress();
this.tech.addEvent("progress", function(){
this.removeEvent("progress", arguments.callee);
this.support.progressEvent = true;
this.player.manualProgressOff();
});
},
manualProgressOff: function(){
this.manualProgress = false;
this.stopTrackingProgress();
},
trackProgress: function(){
this.progressInterval = setInterval(_V_.proxy(this, function(){
if (this.values.bufferEnd < this.buffered().end(0)) {
this.triggerEvent("progress");
} else if (this.bufferedPercent() == 1) {
this.stopTrackingProgress();
this.triggerEvent("progress"); // Last update
}
}), 500);
},
stopTrackingProgress: function(){ clearInterval(this.progressInterval); },
manualTimeUpdatesOn: function(){
this.manualTimeUpdates = true;
this.addEvent("play", this.trackCurrentTime);
this.addEvent("pause", this.stopTrackingCurrentTime);
this.tech.addEvent("timeupdate", function(){
this.removeEvent("timeupdate", arguments.callee);
this.support.timeupdateEvent = true;
this.player.manualTimeUpdatesOff();
});
},
manualTimeUpdatesOff: function(){
this.manualTimeUpdates = false;
this.stopTrackingCurrentTime();
this.removeEvent("play", this.trackCurrentTime);
this.removeEvent("pause", this.stopTrackingCurrentTime);
},
trackCurrentTime: function(){
if (this.currentTimeInterval) { this.stopTrackingCurrentTime(); }
this.currentTimeInterval = setInterval(_V_.proxy(this, function(){
this.triggerEvent("timeupdate");
}), 250); // 42 = 24 fps // 250 is what Webkit uses // FF uses 15
},
stopTrackingCurrentTime: function(){ clearInterval(this.currentTimeInterval); },
onEnded: function(){
if (this.options.loop) {
this.currentTime(0);
this.play();
} else {
this.pause();
this.currentTime(0);
this.pause();
}
},
onPlay: function(){
_V_.removeClass(this.el, "vjs-paused");
_V_.addClass(this.el, "vjs-playing");
},
onPause: function(){
_V_.removeClass(this.el, "vjs-playing");
_V_.addClass(this.el, "vjs-paused");
},
onProgress: function(){
if (this.bufferedPercent() == 1) {
this.triggerEvent("loadedalldata");
}
},
onError: function(e) {
_V_.log("Video Error", e);
},
techCall: function(method, arg){
if (!this.tech.isReady) {
this.tech.ready(function(){
this[method](arg);
});
} else {
try {
this.tech[method](arg);
} catch(e) {
_V_.log(e);
}
}
},
techGet: function(method){
if (this.tech.isReady) {
try {
return this.tech[method]();
} catch(e) {
if (this.tech[method] === undefined) {
_V_.log("Video.js: " + method + " method not defined for "+this.techName+" playback technology.", e);
} else {
if (e.name == "TypeError") {
_V_.log("Video.js: " + method + " unavailable on "+this.techName+" playback technology element.", e);
this.tech.isReady = false;
} else {
_V_.log(e);
}
}
}
}
return;
},
play: function(){
this.techCall("play");
return this;
},
pause: function(){
this.techCall("pause");
return this;
},
paused: function(){
return (this.techGet("paused") === false) ? false : true;
},
currentTime: function(seconds){
if (seconds !== undefined) {
this.values.lastSetCurrentTime = seconds;
this.techCall("setCurrentTime", seconds);
if (this.manualTimeUpdates) { this.triggerEvent("timeupdate"); }
return this;
}
return this.values.currentTime = (this.techGet("currentTime") || 0);
},
duration: function(){
return parseFloat(this.techGet("duration"));
},
remainingTime: function(){
return this.duration() - this.currentTime();
},
buffered: function(){
var buffered = this.techGet("buffered"),
start = 0,
end = this.values.bufferEnd = this.values.bufferEnd || 0, // Default end to 0 and store in values
timeRange;
if (buffered && buffered.length > 0 && buffered.end(0) !== end) {
end = buffered.end(0);
this.values.bufferEnd = end;
}
return _V_.createTimeRange(start, end);
},
bufferedPercent: function(){
return (this.duration()) ? this.buffered().end(0) / this.duration() : 0;
},
volume: function(percentAsDecimal){
var vol;
if (percentAsDecimal !== undefined) {
vol = Math.max(0, Math.min(1, parseFloat(percentAsDecimal))); // Force value to between 0 and 1
this.values.volume = vol;
this.techCall("setVolume", vol);
_V_.setLocalStorage("volume", vol);
return this;
}
vol = parseFloat(this.techGet("volume"));
return (isNaN(vol)) ? 1 : vol;
},
muted: function(muted){
if (muted !== undefined) {
this.techCall("setMuted", muted);
return this;
}
return this.techGet("muted") || false; // Default to false
},
width: function(width, skipListeners){
if (width !== undefined) {
this.el.width = width;
this.el.style.width = width+"px";
if (!skipListeners) { this.triggerEvent("resize"); }
return this;
}
return parseInt(this.el.getAttribute("width"));
},
height: function(height){
if (height !== undefined) {
this.el.height = height;
this.el.style.height = height+"px";
this.triggerEvent("resize");
return this;
}
return parseInt(this.el.getAttribute("height"));
},
size: function(width, height){
return this.width(width, true).height(height);
},
supportsFullScreen: function(){ return this.techGet("supportsFullScreen") || false; },
requestFullScreen: function(){
var requestFullScreen = _V_.support.requestFullScreen;
this.isFullScreen = true;
if (requestFullScreen) {
_V_.addEvent(document, requestFullScreen.eventName, this.proxy(function(){
this.isFullScreen = document[requestFullScreen.isFullScreen];
if (this.isFullScreen == false) {
_V_.removeEvent(document, requestFullScreen.eventName, arguments.callee);
}
this.triggerEvent("fullscreenchange");
}));
if (this.tech.support.fullscreenResize === false && this.options.flash.iFrameMode != true) {
this.pause();
this.unloadTech();
_V_.addEvent(document, requestFullScreen.eventName, this.proxy(function(){
_V_.removeEvent(document, requestFullScreen.eventName, arguments.callee);
this.loadTech(this.techName, { src: this.values.src });
}));
this.el[requestFullScreen.requestFn]();
} else {
this.el[requestFullScreen.requestFn]();
}
} else if (this.tech.supportsFullScreen()) {
this.triggerEvent("fullscreenchange");
this.techCall("enterFullScreen");
} else {
this.triggerEvent("fullscreenchange");
this.enterFullWindow();
}
return this;
},
cancelFullScreen: function(){
var requestFullScreen = _V_.support.requestFullScreen;
this.isFullScreen = false;
if (requestFullScreen) {
if (this.tech.support.fullscreenResize === false && this.options.flash.iFrameMode != true) {
this.pause();
this.unloadTech();
_V_.addEvent(document, requestFullScreen.eventName, this.proxy(function(){
_V_.removeEvent(document, requestFullScreen.eventName, arguments.callee);
this.loadTech(this.techName, { src: this.values.src })
}));
document[requestFullScreen.cancelFn]();
} else {
document[requestFullScreen.cancelFn]();
}
} else if (this.tech.supportsFullScreen()) {
this.techCall("exitFullScreen");
this.triggerEvent("fullscreenchange");
} else {
this.exitFullWindow();
this.triggerEvent("fullscreenchange");
}
return this;
},
enterFullWindow: function(){
this.isFullWindow = true;
this.docOrigOverflow = document.documentElement.style.overflow;
_V_.addEvent(document, "keydown", _V_.proxy(this, this.fullWindowOnEscKey));
document.documentElement.style.overflow = 'hidden';
_V_.addClass(document.body, "vjs-full-window");
_V_.addClass(this.el, "vjs-fullscreen");
this.triggerEvent("enterFullWindow");
},
fullWindowOnEscKey: function(event){
if (event.keyCode == 27) {
if (this.isFullScreen == true) {
this.cancelFullScreen();
} else {
this.exitFullWindow();
}
}
},
exitFullWindow: function(){
this.isFullWindow = false;
_V_.removeEvent(document, "keydown", this.fullWindowOnEscKey);
document.documentElement.style.overflow = this.docOrigOverflow;
_V_.removeClass(document.body, "vjs-full-window");
_V_.removeClass(this.el, "vjs-fullscreen");
this.triggerEvent("exitFullWindow");
},
selectSource: function(sources){
for (var i=0,j=this.options.techOrder;i<j.length;i++) {
var techName = j[i],
tech = _V_[techName];
if (tech.isSupported()) {
for (var a=0,b=sources;a<b.length;a++) {
var source = b[a];
if (tech.canPlaySource.call(this, source)) {
return { source: source, tech: techName };
}
}
}
}
return false;
},
src: function(source){
if (source instanceof Array) {
var sourceTech = this.selectSource(source),
source,
techName;
if (sourceTech) {
source = sourceTech.source;
techName = sourceTech.tech;
if (techName == this.techName) {
this.src(source); // Passing the source object
} else {
this.loadTech(techName, source);
}
} else {
_V_.log("No compatible source and playback technology were found.")
}
} else if (source instanceof Object) {
if (_V_[this.techName].canPlaySource(source)) {
this.src(source.src);
} else {
this.src([source]);
}
} else {
this.values.src = source;
if (!this.isReady) {
this.ready(function(){
this.src(source);
});
} else {
this.techCall("src", source);
if (this.options.preload == "auto") {
this.load();
}
if (this.options.autoplay) {
this.play();
}
}
}
return this;
},
load: function(){
this.techCall("load");
return this;
},
currentSrc: function(){
return this.techGet("currentSrc") || this.values.src || "";
},
preload: function(value){
if (value !== undefined) {
this.techCall("setPreload", value);
this.options.preload = value;
return this;
}
return this.techGet("preload");
},
autoplay: function(value){
if (value !== undefined) {
this.techCall("setAutoplay", value);
this.options.autoplay = value;
return this;
}
return this.techGet("autoplay", value);
},
loop: function(value){
if (value !== undefined) {
this.techCall("setLoop", value);
this.options.loop = value;
return this;
}
return this.techGet("loop");
},
controls: function(){ return this.options.controls; },
poster: function(){ return this.techGet("poster"); },
error: function(){ return this.techGet("error"); },
ended: function(){ return this.techGet("ended"); }
});
(function(){
var requestFn,
cancelFn,
eventName,
isFullScreen,
playerProto = _V_.Player.prototype;
if (document.cancelFullscreen !== undefined) {
requestFn = "requestFullscreen";
cancelFn = "exitFullscreen";
eventName = "fullscreenchange";
isFullScreen = "fullScreen";
} else {
_V_.each(["moz", "webkit"], function(prefix){
if ((prefix != "moz" || document.mozFullScreenEnabled) && document[prefix + "CancelFullScreen"] !== undefined) {
requestFn = prefix + "RequestFullScreen";
cancelFn = prefix + "CancelFullScreen";
eventName = prefix + "fullscreenchange";
if (prefix == "webkit") {
isFullScreen = prefix + "IsFullScreen";
} else {
isFullScreen = prefix + "FullScreen";
}
}
});
}
if (requestFn) {
_V_.support.requestFullScreen = {
requestFn: requestFn,
cancelFn: cancelFn,
eventName: eventName,
isFullScreen: isFullScreen
};
}
})();
_V_.PlaybackTech = _V_.Component.extend({
init: function(player, options){
},
onClick: function(){
if (this.player.options.controls) {
_V_.PlayToggle.prototype.onClick.call(this);
}
}
});
_V_.apiMethods = "play,pause,paused,currentTime,setCurrentTime,duration,buffered,volume,setVolume,muted,setMuted,width,height,supportsFullScreen,enterFullScreen,src,load,currentSrc,preload,setPreload,autoplay,setAutoplay,loop,setLoop,error,networkState,readyState,seeking,initialTime,startOffsetTime,played,seekable,ended,videoTracks,audioTracks,videoWidth,videoHeight,textTracks,defaultPlaybackRate,playbackRate,mediaGroup,controller,controls,defaultMuted".split(",");
_V_.each(_V_.apiMethods, function(methodName){
_V_.PlaybackTech.prototype[methodName] = function(){
throw new Error("The '"+methodName+"' method is not available on the playback technology's API");
}
});
_V_.html5 = _V_.PlaybackTech.extend({
init: function(player, options, ready){
this.player = player;
this.el = this.createElement();
this.ready(ready);
this.addEvent("click", this.proxy(this.onClick));
var source = options.source;
if (source && this.el.currentSrc == source.src) {
player.triggerEvent("loadstart");
} else if (source) {
this.el.src = source.src;
}
player.ready(function(){
if (this.options.autoplay && this.paused()) {
this.tag.poster = null; // Chrome Fix. Fixed in Chrome v16.
this.play();
}
});
this.setupTriggers();
this.triggerReady();
},
destroy: function(){
this.player.tag = false;
this.removeTriggers();
this.el.parentNode.removeChild(this.el);
},
createElement: function(){
var html5 = _V_.html5,
player = this.player,
el = player.tag,
newEl;
if (!el || this.support.movingElementInDOM === false) {
if (el) {
player.el.removeChild(el);
}
newEl = _V_.createElement("video", {
id: el.id || player.el.id + "_html5_api",
className: el.className || "vjs-tech"
});
el = newEl;
_V_.insertFirst(el, player.el);
}
_V_.each(["autoplay","preload","loop","muted"], function(attr){ // ,"poster"
if (player.options[attr] !== null) {
el[attr] = player.options[attr];
}
}, this);
return el;
},
setupTriggers: function(){
_V_.each.call(this, _V_.html5.events, function(type){
_V_.addEvent(this.el, type, _V_.proxy(this.player, this.eventHandler));
});
},
removeTriggers: function(){
_V_.each.call(this, _V_.html5.events, function(type){
_V_.removeEvent(this.el, type, _V_.proxy(this.player, this.eventHandler));
});
},
eventHandler: function(e){
e.stopPropagation();
this.triggerEvent(e);
},
play: function(){ this.el.play(); },
pause: function(){ this.el.pause(); },
paused: function(){ return this.el.paused; },
currentTime: function(){ return this.el.currentTime; },
setCurrentTime: function(seconds){
try {
this.el.currentTime = seconds;
} catch(e) {
_V_.log(e, "Video isn't ready. (VideoJS)");
}
},
duration: function(){ return this.el.duration || 0; },
buffered: function(){ return this.el.buffered; },
volume: function(){ return this.el.volume; },
setVolume: function(percentAsDecimal){ this.el.volume = percentAsDecimal; },
muted: function(){ return this.el.muted; },
setMuted: function(muted){ this.el.muted = muted },
width: function(){ return this.el.offsetWidth; },
height: function(){ return this.el.offsetHeight; },
supportsFullScreen: function(){
if (typeof this.el.webkitEnterFullScreen == 'function') {
if (!navigator.userAgent.match("Chrome") && !navigator.userAgent.match("Mac OS X 10.5")) {
return true;
}
}
return false;
},
enterFullScreen: function(){
try {
this.el.webkitEnterFullScreen();
} catch (e) {
if (e.code == 11) {
_V_.log("VideoJS: Video not ready.")
}
}
},
src: function(src){ this.el.src = src; },
load: function(){ this.el.load(); },
currentSrc: function(){ return this.el.currentSrc; },
preload: function(){ return this.el.preload; },
setPreload: function(val){ this.el.preload = val; },
autoplay: function(){ return this.el.autoplay; },
setAutoplay: function(val){ this.el.autoplay = val; },
loop: function(){ return this.el.loop; },
setLoop: function(val){ this.el.loop = val; },
error: function(){ return this.el.error; },
seeking: function(){ return this.el.seeking; },
ended: function(){ return this.el.ended; },
controls: function(){ return this.player.options.controls; },
defaultMuted: function(){ return this.el.defaultMuted; }
});
_V_.html5.isSupported = function(){
return !!document.createElement("video").canPlayType;
};
_V_.html5.canPlaySource = function(srcObj){
return !!document.createElement("video").canPlayType(srcObj.type);
};
_V_.html5.events = "loadstart,suspend,abort,error,emptied,stalled,loadedmetadata,loadeddata,canplay,canplaythrough,playing,waiting,seeking,seeked,ended,durationchange,timeupdate,progress,play,pause,ratechange,volumechange".split(",");
_V_.html5.prototype.support = {
fullscreen: (typeof _V_.testVid.webkitEnterFullScreen !== undefined) ? (!_V_.ua.match("Chrome") && !_V_.ua.match("Mac OS X 10.5") ? true : false) : false,
movingElementInDOM: !_V_.isIOS()
};
if (_V_.isAndroid()) {
if (_V_.androidVersion() < 3) {
document.createElement("video").constructor.prototype.canPlayType = function(type){
return (type && type.toLowerCase().indexOf("video/mp4") != -1) ? "maybe" : "";
};
}
}
_V_.flash = _V_.PlaybackTech.extend({
init: function(player, options){
this.player = player;
var source = options.source,
parentEl = options.parentEl,
placeHolder = this.el = _V_.createElement("div", { id: parentEl.id + "_temp_flash" }),
objId = player.el.id+"_flash_api",
playerOptions = player.options,
flashVars = _V_.merge({
readyFunction: "_V_.flash.onReady",
eventProxyFunction: "_V_.flash.onEvent",
errorEventProxyFunction: "_V_.flash.onError",
autoplay: playerOptions.autoplay,
preload: playerOptions.preload,
loop: playerOptions.loop,
muted: playerOptions.muted
}, options.flashVars),
params = _V_.merge({
wmode: "opaque", // Opaque is needed to overlay controls, but can affect playback performance
bgcolor: "#000000" // Using bgcolor prevents a white flash when the object is loading
}, options.params),
attributes = _V_.merge({
id: objId,
name: objId, // Both ID and Name needed or swf to identifty itself
'class': 'vjs-tech'
}, options.attributes)
;
if (source) {
flashVars.src = encodeURIComponent(_V_.getAbsoluteURL(source.src));
}
_V_.insertFirst(placeHolder, parentEl);
if (options.startTime) {
this.ready(function(){
this.load();
this.play();
this.currentTime(options.startTime);
});
}
if (options.iFrameMode == true && !_V_.isFF) {
var iFrm = _V_.createElement("iframe", {
id: objId + "_iframe",
name: objId + "_iframe",
className: "vjs-tech",
scrolling: "no",
marginWidth: 0,
marginHeight: 0,
frameBorder: 0
});
flashVars.readyFunction = "ready";
flashVars.eventProxyFunction = "events";
flashVars.errorEventProxyFunction = "errors";
_V_.addEvent(iFrm, "load", _V_.proxy(this, function(){
var iDoc, objTag, swfLoc,
iWin = iFrm.contentWindow,
varString = "";
iDoc = iFrm.contentDocument ? iFrm.contentDocument : iFrm.contentWindow.document;
iDoc.write(_V_.flash.getEmbedCode(options.swf, flashVars, params, attributes));
iWin.player = this.player;
iWin.ready = _V_.proxy(this.player, function(currSwf){
var el = iDoc.getElementById(currSwf),
player = this,
tech = player.tech;
tech.el = el;
_V_.addEvent(el, "click", tech.proxy(tech.onClick));
_V_.flash.checkReady(tech);
});
iWin.events = _V_.proxy(this.player, function(swfID, eventName, other){
var player = this;
if (player && player.techName == "flash") {
player.triggerEvent(eventName);
}
});
iWin.errors = _V_.proxy(this.player, function(swfID, eventName){
_V_.log("Flash Error", eventName);
});
}));
placeHolder.parentNode.replaceChild(iFrm, placeHolder);
} else {
_V_.flash.embed(options.swf, placeHolder, flashVars, params, attributes);
}
},
destroy: function(){
this.el.parentNode.removeChild(this.el);
},
play: function(){ this.el.vjs_play(); },
pause: function(){ this.el.vjs_pause(); },
src: function(src){
src = _V_.getAbsoluteURL(src);
this.el.vjs_src(src);
if (this.player.autoplay()) {
var tech = this;
setTimeout(function(){ tech.play(); }, 0);
}
},
load: function(){ this.el.vjs_load(); },
poster: function(){ this.el.vjs_getProperty("poster"); },
buffered: function(){
return _V_.createTimeRange(0, this.el.vjs_getProperty("buffered"));
},
supportsFullScreen: function(){
return false; // Flash does not allow fullscreen through javascript
},
enterFullScreen: function(){
return false;
}
});
(function(){
var api = _V_.flash.prototype,
readWrite = "preload,currentTime,defaultPlaybackRate,playbackRate,autoplay,loop,mediaGroup,controller,controls,volume,muted,defaultMuted".split(","),
readOnly = "error,currentSrc,networkState,readyState,seeking,initialTime,duration,startOffsetTime,paused,played,seekable,ended,videoTracks,audioTracks,videoWidth,videoHeight,textTracks".split(","),
callOnly = "load,play,pause".split(",");
createSetter = function(attr){
var attrUpper = attr.charAt(0).toUpperCase() + attr.slice(1);
api["set"+attrUpper] = function(val){ return this.el.vjs_setProperty(attr, val); };
},
createGetter = function(attr){
api[attr] = function(){ return this.el.vjs_getProperty(attr); };
}
;
_V_.each(readWrite, function(attr){
createGetter(attr);
createSetter(attr);
});
_V_.each(readOnly, function(attr){
createGetter(attr);
});
})();
_V_.flash.isSupported = function(){
return _V_.flash.version()[0] >= 10;
};
_V_.flash.canPlaySource = function(srcObj){
if (srcObj.type in _V_.flash.prototype.support.formats) { return "maybe"; }
};
_V_.flash.prototype.support = {
formats: {
"video/flv": "FLV",
"video/x-flv": "FLV",
"video/mp4": "MP4",
"video/m4v": "MP4"
},
progressEvent: false,
timeupdateEvent: false,
fullscreenResize: false,
parentResize: !(_V_.ua.match("Firefox"))
};
_V_.flash.onReady = function(currSwf){
var el = _V_.el(currSwf);
var player = el.player || el.parentNode.player,
tech = player.tech;
el.player = player;
tech.el = el;
tech.addEvent("click", tech.onClick);
_V_.flash.checkReady(tech);
};
_V_.flash.checkReady = function(tech){
if (tech.el.vjs_getProperty) {
tech.triggerReady();
} else {
setTimeout(function(){
_V_.flash.checkReady(tech);
}, 50);
}
};
_V_.flash.onEvent = function(swfID, eventName){
var player = _V_.el(swfID).player;
player.triggerEvent(eventName);
};
_V_.flash.onError = function(swfID, err){
var player = _V_.el(swfID).player;
player.triggerEvent("error");
_V_.log("Flash Error", err, swfID);
};
_V_.flash.version = function(){
var version = '0,0,0'
try {
version = new ActiveXObject('ShockwaveFlash.ShockwaveFlash').GetVariable('$version').replace(/\D+/g, ',').match(/^,?(.+),?$/)[1];
} catch(e) {
try {
if (navigator.mimeTypes["application/x-shockwave-flash"].enabledPlugin){
version = (navigator.plugins["Shockwave Flash 2.0"] || navigator.plugins["Shockwave Flash"]).description.replace(/\D+/g, ",").match(/^,?(.+),?$/)[1];
}
} catch(e) {}
}
return version.split(",");
}
_V_.flash.embed = function(swf, placeHolder, flashVars, params, attributes){
var code = _V_.flash.getEmbedCode(swf, flashVars, params, attributes),
obj = _V_.createElement("div", { innerHTML: code }).childNodes[0],
par = placeHolder.parentNode
;
placeHolder.parentNode.replaceChild(obj, placeHolder);
if (_V_.isIE()) {
var newObj = par.childNodes[0];
setTimeout(function(){
newObj.style.display = "block";
}, 1000);
}
return obj;
};
_V_.flash.getEmbedCode = function(swf, flashVars, params, attributes){
var objTag = '<object type="application/x-shockwave-flash"',
flashVarsString = '',
paramsString = ''
attrsString = '';
if (flashVars) {
_V_.eachProp(flashVars, function(key, val){
flashVarsString += (key + "=" + val + "&amp;");
});
}
params = _V_.merge({
movie: swf,
flashvars: flashVarsString,
allowScriptAccess: "always", // Required to talk to swf
allowNetworking: "all" // All should be default, but having security issues.
}, params);
_V_.eachProp(params, function(key, val){
paramsString += '<param name="'+key+'" value="'+val+'" />';
});
attributes = _V_.merge({
data: swf,
width: "100%",
height: "100%"
}, attributes);
_V_.eachProp(attributes, function(key, val){
attrsString += (key + '="' + val + '" ');
});
return objTag + attrsString + '>' + paramsString + '</object>';
}
_V_.merge(_V_.Player.prototype, {
addTextTracks: function(trackObjects){
var tracks = this.textTracks = (this.textTracks) ? this.textTracks : [],
i = 0, j = trackObjects.length, track, Kind;
for (;i<j;i++) {
Kind = _V_.uc(trackObjects[i].kind || "subtitles");
track = new _V_[Kind + "Track"](this, trackObjects[i]);
tracks.push(track);
if (track['default']) {
this.ready(_V_.proxy(track, track.show));
}
}
return this;
},
showTextTrack: function(id, disableSameKind){
var tracks = this.textTracks,
i = 0,
j = tracks.length,
track, showTrack, kind;
for (;i<j;i++) {
track = tracks[i];
if (track.id === id) {
track.show();
showTrack = track;
} else if (disableSameKind && track.kind == disableSameKind && track.mode > 0) {
track.disable();
}
}
kind = (showTrack) ? showTrack.kind : ((disableSameKind) ? disableSameKind : false);
if (kind) {
this.triggerEvent(kind+"trackchange");
}
return this;
}
});
_V_.Track = _V_.Component.extend({
init: function(player, options){
this._super(player, options);
_V_.merge(this, {
id: options.id || ("vjs_" + options.kind + "_" + options.language + "_" + _V_.guid++),
src: options.src,
"default": options["default"], // 'default' is reserved-ish
title: options.title,
language: options.srclang,
label: options.label,
cues: [],
activeCues: [],
readyState: 0,
mode: 0
});
},
createElement: function(){
return this._super("div", {
className: "vjs-" + this.kind + " vjs-text-track"
});
},
show: function(){
this.activate();
this.mode = 2;
this._super();
},
hide: function(){
this.activate();
this.mode = 1;
this._super();
},
disable: function(){
if (this.mode == 2) { this.hide(); }
this.deactivate();
this.mode = 0;
},
activate: function(){
if (this.readyState == 0) { this.load(); }
if (this.mode == 0) {
this.player.addEvent("timeupdate", this.proxy(this.update, this.id));
this.player.addEvent("ended", this.proxy(this.reset, this.id));
if (this.kind == "captions" || this.kind == "subtitles") {
this.player.textTrackDisplay.addComponent(this);
}
}
},
deactivate: function(){
this.player.removeEvent("timeupdate", this.proxy(this.update, this.id));
this.player.removeEvent("ended", this.proxy(this.reset, this.id));
this.reset(); // Reset
this.player.textTrackDisplay.removeComponent(this);
},
load: function(){
if (this.readyState == 0) {
this.readyState = 1;
_V_.get(this.src, this.proxy(this.parseCues), this.proxy(this.onError));
}
},
onError: function(err){
this.error = err;
this.readyState = 3;
this.triggerEvent("error");
},
parseCues: function(srcContent) {
var cue, time, text,
lines = srcContent.split("\n"),
line = "", id;
for (var i=1, j=lines.length; i<j; i++) {
line = _V_.trim(lines[i]); // Trim whitespace and linebreaks
if (line) { // Loop until a line with content
if (line.indexOf("-->") == -1) {
id = line;
line = _V_.trim(lines[++i]);
} else {
id = this.cues.length;
}
cue = {
id: id, // Cue Number
index: this.cues.length // Position in Array
};
time = line.split(" --> ");
cue.startTime = this.parseCueTime(time[0]);
cue.endTime = this.parseCueTime(time[1]);
text = [];
while (lines[++i] && (line = _V_.trim(lines[i]))) {
text.push(line);
}
cue.text = text.join('<br/>');
this.cues.push(cue);
}
}
this.readyState = 2;
this.triggerEvent("loaded");
},
parseCueTime: function(timeText) {
var parts = timeText.split(':'),
time = 0,
hours, minutes, other, seconds, ms, flags;
if (parts.length == 3) {
hours = parts[0];
minutes = parts[1];
other = parts[2];
} else {
hours = 0;
minutes = parts[0];
other = parts[1];
}
other = other.split(/\s+/)
seconds = other.splice(0,1)[0];
seconds = seconds.split(/\.|,/);
ms = parseFloat(seconds[1]);
seconds = seconds[0];
time += parseFloat(hours) * 3600;
time += parseFloat(minutes) * 60;
time += parseFloat(seconds);
if (ms) { time += ms/1000; }
return time;
},
update: function(){
if (this.cues.length > 0) {
var time = this.player.currentTime();
if (this.prevChange === undefined || time < this.prevChange || this.nextChange <= time) {
var cues = this.cues,
newNextChange = this.player.duration(), // Start at beginning of the timeline
newPrevChange = 0, // Start at end
reverse = false, // Set the direction of the loop through the cues. Optimized the cue check.
newCues = [], // Store new active cues.
firstActiveIndex, lastActiveIndex,
html = "", // Create cue text HTML to add to the display
cue, i, j; // Loop vars
if (time >= this.nextChange || this.nextChange === undefined) { // NextChange should happen
i = (this.firstActiveIndex !== undefined) ? this.firstActiveIndex : 0;
} else {
reverse = true;
i = (this.lastActiveIndex !== undefined) ? this.lastActiveIndex : cues.length - 1;
}
while (true) { // Loop until broken
cue = cues[i];
if (cue.endTime <= time) {
newPrevChange = Math.max(newPrevChange, cue.endTime);
if (cue.active) {
cue.active = false;
}
} else if (time < cue.startTime) {
newNextChange = Math.min(newNextChange, cue.startTime);
if (cue.active) {
cue.active = false;
}
if (!reverse) { break; }
} else {
if (reverse) {
newCues.splice(0,0,cue);
if (lastActiveIndex === undefined) { lastActiveIndex = i; }
firstActiveIndex = i;
} else {
newCues.push(cue);
if (firstActiveIndex === undefined) { firstActiveIndex = i; }
lastActiveIndex = i;
}
newNextChange = Math.min(newNextChange, cue.endTime);
newPrevChange = Math.max(newPrevChange, cue.startTime);
cue.active = true;
}
if (reverse) {
if (i === 0) { break; } else { i--; }
} else {
if (i === cues.length - 1) { break; } else { i++; }
}
}
this.activeCues = newCues;
this.nextChange = newNextChange;
this.prevChange = newPrevChange;
this.firstActiveIndex = firstActiveIndex;
this.lastActiveIndex = lastActiveIndex;
this.updateDisplay();
this.triggerEvent("cuechange");
}
}
},
updateDisplay: function(){
var cues = this.activeCues,
html = "",
i=0,j=cues.length;
for (;i<j;i++) {
html += "<span class='vjs-tt-cue'>"+cues[i].text+"</span>";
}
this.el.innerHTML = html;
},
reset: function(){
this.nextChange = 0;
this.prevChange = this.player.duration();
this.firstActiveIndex = 0;
this.lastActiveIndex = 0;
}
});
_V_.CaptionsTrack = _V_.Track.extend({
kind: "captions"
});
_V_.SubtitlesTrack = _V_.Track.extend({
kind: "subtitles"
});
_V_.ChaptersTrack = _V_.Track.extend({
kind: "chapters"
});
_V_.TextTrackDisplay = _V_.Component.extend({
createElement: function(){
return this._super("div", {
className: "vjs-text-track-display"
});
}
});
_V_.TextTrackMenuItem = _V_.MenuItem.extend({
init: function(player, options){
var track = this.track = options.track;
options.label = track.label;
options.selected = track["default"];
this._super(player, options);
this.player.addEvent(track.kind + "trackchange", _V_.proxy(this, this.update));
},
onClick: function(){
this._super();
this.player.showTextTrack(this.track.id, this.track.kind);
},
update: function(){
if (this.track.mode == 2) {
this.selected(true);
} else {
this.selected(false);
}
}
});
_V_.OffTextTrackMenuItem = _V_.TextTrackMenuItem.extend({
init: function(player, options){
options.track = { kind: options.kind, player: player, label: "Off" }
this._super(player, options);
},
onClick: function(){
this._super();
this.player.showTextTrack(this.track.id, this.track.kind);
},
update: function(){
var tracks = this.player.textTracks,
i=0, j=tracks.length, track,
off = true;
for (;i<j;i++) {
track = tracks[i];
if (track.kind == this.track.kind && track.mode == 2) {
off = false;
}
}
if (off) {
this.selected(true);
} else {
this.selected(false);
}
}
});
_V_.TextTrackButton = _V_.Button.extend({
init: function(player, options){
this._super(player, options);
this.menu = this.createMenu();
if (this.items.length === 0) {
this.hide();
}
},
createMenu: function(){
var menu = new _V_.Menu(this.player);
menu.el.appendChild(_V_.createElement("li", {
className: "vjs-menu-title",
innerHTML: _V_.uc(this.kind)
}));
menu.addItem(new _V_.OffTextTrackMenuItem(this.player, { kind: this.kind }))
this.items = this.createItems();
this.each(this.items, function(item){
menu.addItem(item);
});
this.addComponent(menu);
return menu;
},
createItems: function(){
var items = [];
this.each(this.player.textTracks, function(track){
if (track.kind === this.kind) {
items.push(new _V_.TextTrackMenuItem(this.player, {
track: track
}));
}
});
return items;
},
buildCSSClass: function(){
return this.className + " vjs-menu-button " + this._super();
},
onFocus: function(){
this.menu.lockShowing();
_V_.one(this.menu.el.childNodes[this.menu.el.childNodes.length - 1], "blur", this.proxy(function(){
this.menu.unlockShowing();
}));
},
onBlur: function(){},
onClick: function(){
this.one("mouseout", this.proxy(function(){
this.menu.unlockShowing();
this.el.blur();
}));
}
});
_V_.CaptionsButton = _V_.TextTrackButton.extend({
kind: "captions",
buttonText: "Captions",
className: "vjs-captions-button"
});
_V_.SubtitlesButton = _V_.TextTrackButton.extend({
kind: "subtitles",
buttonText: "Subtitles",
className: "vjs-subtitles-button"
});
_V_.ChaptersButton = _V_.TextTrackButton.extend({
kind: "chapters",
buttonText: "Chapters",
className: "vjs-chapters-button",
createItems: function(chaptersTrack){
var items = [];
this.each(this.player.textTracks, function(track){
if (track.kind === this.kind) {
items.push(new _V_.TextTrackMenuItem(this.player, {
track: track
}));
}
});
return items;
},
createMenu: function(){
var tracks = this.player.textTracks,
i = 0,
j = tracks.length,
track, chaptersTrack,
items = this.items = [];
for (;i<j;i++) {
track = tracks[i];
if (track.kind == this.kind && track["default"]) {
if (track.readyState < 2) {
this.chaptersTrack = track;
track.addEvent("loaded", this.proxy(this.createMenu));
return;
} else {
chaptersTrack = track;
break;
}
}
}
var menu = this.menu = new _V_.Menu(this.player);
menu.el.appendChild(_V_.createElement("li", {
className: "vjs-menu-title",
innerHTML: _V_.uc(this.kind)
}));
if (chaptersTrack) {
var cues = chaptersTrack.cues,
i = 0, j = cues.length, cue, mi;
for (;i<j;i++) {
cue = cues[i];
mi = new _V_.ChaptersTrackMenuItem(this.player, {
track: chaptersTrack,
cue: cue
});
items.push(mi);
menu.addComponent(mi);
}
}
this.addComponent(menu);
if (this.items.length > 0) {
this.show();
}
return menu;
}
});
_V_.ChaptersTrackMenuItem = _V_.MenuItem.extend({
init: function(player, options){
var track = this.track = options.track,
cue = this.cue = options.cue,
currentTime = player.currentTime();
options.label = cue.text;
options.selected = (cue.startTime <= currentTime && currentTime < cue.endTime);
this._super(player, options);
track.addEvent("cuechange", _V_.proxy(this, this.update));
},
onClick: function(){
this._super();
this.player.currentTime(this.cue.startTime);
this.update(this.cue.startTime);
},
update: function(time){
var cue = this.cue,
currentTime = this.player.currentTime();
if (cue.startTime <= currentTime && currentTime < cue.endTime) {
this.selected(true);
} else {
this.selected(false);
}
}
});
_V_.merge(_V_.ControlBar.prototype.options.components, {
"subtitlesButton": {},
"captionsButton": {},
"chaptersButton": {}
});
_V_.autoSetup = function(){
var options, vid, player,
vids = document.getElementsByTagName("video");
if (vids && vids.length > 0) {
for (var i=0,j=vids.length; i<j; i++) {
vid = vids[i];
if (vid && vid.getAttribute) {
if (vid.player === undefined) {
options = vid.getAttribute("data-setup");
if (options !== null) {
options = JSON.parse(options || "{}");
player = _V_(vid, options);
}
}
} else {
_V_.autoSetupTimeout(1);
break;
}
}
} else if (!_V_.windowLoaded) {
_V_.autoSetupTimeout(1);
}
};
_V_.autoSetupTimeout = function(wait){
setTimeout(_V_.autoSetup, wait);
};
_V_.addEvent(window, "load", function(){
_V_.windowLoaded = true;
});
_V_.autoSetup();
window.VideoJS = window._V_ = VideoJS;
})(window);
