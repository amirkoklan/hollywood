/*
YUI 3.4.1 (build 4118)
Copyright 2011 Yahoo! Inc. All rights reserved.
Licensed under the BSD License.
http://yuilibrary.com/license/
*/
YUI.add("autocomplete-highlighters",function(d){var c=d.Array,a=d.Highlight,b=d.mix(d.namespace("AutoCompleteHighlighters"),{charMatch:function(h,g,e){var f=c.unique((e?h:h.toLowerCase()).split(""));return c.map(g,function(i){return a.all(i.text,f,{caseSensitive:e});});},charMatchCase:function(f,e){return b.charMatch(f,e,true);},phraseMatch:function(g,f,e){return c.map(f,function(h){return a.all(h.text,[g],{caseSensitive:e});});},phraseMatchCase:function(f,e){return b.phraseMatch(f,e,true);},startsWith:function(g,f,e){return c.map(f,function(h){return a.all(h.text,[g],{caseSensitive:e,startsWith:true});});},startsWithCase:function(f,e){return b.startsWith(f,e,true);},subWordMatch:function(h,f,e){var g=d.Text.WordBreak.getUniqueWords(h,{ignoreCase:!e});return c.map(f,function(i){return a.all(i.text,g,{caseSensitive:e});});},subWordMatchCase:function(f,e){return b.subWordMatch(f,e,true);},wordMatch:function(g,f,e){return c.map(f,function(h){return a.words(h.text,g,{caseSensitive:e});});},wordMatchCase:function(f,e){return b.wordMatch(f,e,true);}});},"3.4.1",{requires:["array-extras","highlight-base"]});
