###This is an collection of android reverse tools
+ [apktool](https://github.com/iBotPeaches/Apktool): 
  + decode resources
  + decode dex to smali
  + rebuild a new apk after changing smali codes
+ [dex2jar](https://github.com/pxb1988/dex2jar): dex转为jar工具
  + convert dex to jar file
  + decode to smali rebuild from it
+ [jd-gui](https://bitbucket.org/bric3/jd-intellij):
  + decode .class files to java code
  + has plugins for Eclipse, IntelliJ/Android Studio
  + has beautiful gui
  
    ![](http://jd.benow.ca/img/screenshot17.png)

+ [jadx](https://github.com/skylot/jadx/tree/master/jadx-gui/src/main/java/jadx/gui):     
    + decode dex to jar
    + a similar gui with jd-gui

 ![](https://camo.githubusercontent.com/bd3c0ea851c23c4535e43590a86c940a0786faa6/687474703a2f2f736b796c6f742e6769746875622e696f2f6a6164782f6a6164782d6775692e706e67)
    + without the need to unzip apk first, you can just send a apk to it, can it will do all the stuff for you

+ [androguard](https://github.com/androguard/androguard): 
   + use DAD as the decompiler
   + can also configure to use `dex2jar` + `jad` to decompile
   + malware and good ware analysis
   + has python api to write custom extensions
   + **support visualization**
![](http://androguard.googlecode.com/files/droiddream-gexf.png)

+ [enjarfy](https://github.com/google/enjarify)：
   + a reverse tool built by google
   + translate dalvik bytecode to java bytecode
   + compared to dex2jar：
> Enjarify correctly handles unicode class names, constants used as multiple types, implicit casts, exception handlers jumping into normal control flow, classes that reference too many constants, very long methods, exception handlers after a catchall handler, and static initial values of the wrong type
+ [jeb](https://www.pnfsoftware.com/)
   + a buisiness software(although the demo version is free)
   + a powful decompile from bytecode to java, better handling of loop
   + **can edit dynamiclly, add tags, rename package names**
   + support python api
