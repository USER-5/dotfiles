Þ    &      L  5   |      P     Q     m  «     .   1  '   `  '     '   °  :   Ø       +   "  @   N       F   ­  !   ô  4        K     d  .   }  6   ¬     ã               8  0   L  [   }  3   Ù  ­     @   »  8   ü  /   5	  ®  e	  v     $        °     Ä     Ø  0   Ý  Í    "   Ü  !   ÿ    !  5   /  &   e  4     M   Á  n        ~  3     k   Ë  -   7  f   e  0   Ì  R   ý  '   P  6   x  Q   ¯  B     ?   D       <   ¡     Þ  9   ý     7  E   Å  Z     Z   f  e   Á  N   '  \  v  Ã   Ó  <        Ô     ç       d                    	   #                         
   $                                    &                "                                                       %      !                 %s: missing argument for %s %s: unknown option '%s' All done! The home-manager tool should now be installed and you can edit

    %s

to configure Home Manager. Run 'man home-configuration.nix' to
see all available options. Can't inspect options of a flake configuration Can't instantiate a flake configuration Cannot remove the current generation %s Cannot run build in read-only directory Could not find suitable profile directory, tried %s and %s Creating %s... Creating initial Home Manager generation... Home Manager is uninstalled but your home.nix is left untouched. Home Manager not found at %s. Keeping your Home Manager %s in %s is deprecated,
please move it to %s No configuration file found at %s No configuration file found. Please create one at %s No generation with ID %s No generations to expire No home-manager packages seem to be installed. Please set the $EDITOR or $VISUAL environment variable Really uninstall Home Manager? Removing generation %s Run '%s --help' for usage help Sanity checking Nix Switching to empty Home Manager configuration... The fallback Home Manager path %s has been deprecated and a file/directory was found there. The file %s already exists, leaving it unchanged... There is %d unread and relevant news item.
Read it by running the command "%s news". There are %d unread and relevant news items.
Read them by running the command "%s news". This derivation is not buildable, please run it using nix-shell. This is a dry run, nothing will actually be uninstalled. This will remove Home Manager from your system. To remove this warning, do one of the following.

1. Explicitly tell Home Manager to use the path, for example by adding

     { programs.home-manager.path = "%s"; }

   to your configuration.

   If you import Home Manager directly, you can use the `path` parameter

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   when calling the Home Manager package.

2. Remove the deprecated path.

     $ rm -r "%s" Uh oh, the installation failed! Please create an issue at

    %s

if the error seems to be the fault of Home Manager. Unknown "news.display" setting "%s". Unknown argument %s Unknown command: %s Yay! expire-generations expects one argument, got %d. Project-Id-Version: Home Manager
Report-Msgid-Bugs-To: https://github.com/nix-community/home-manager/issues
PO-Revision-Date: 2024-05-25 11:09+0000
Last-Translator: TANIGUCHI Kohei <a.d.xvii.kal.mai@gmail.com>
Language-Team: Japanese <https://hosted.weblate.org/projects/home-manager/cli/ja/>
Language: ja
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Weblate 5.6-dev
 %s: %s ã®å¼æ°ãããã¾ãã %s: ä¸æãªãªãã·ã§ã³ '%s' å¨ã¦ãå®äºãã¾ããï¼ Home-managerã¯ã¤ã³ã¹ãã¼ã«æ¸ã¿ã§ã

    %s

ã§Home Managerã®è¨­å®ãç·¨éãããã¨ãã§ããã¯ãã§ããå©ç¨å¯è½ãªãªãã·ã§ã³ãåç§ããã«ã¯
'man home-configuration.nix' ãå®è¡ãã¦ãã ããã flakeè¨­å®ã®ãªãã·ã§ã³ãæ¤æ»ã§ãã¾ãã flakeè¨­å®ãåæåã§ãã¾ãã ç¾å¨ä½¿ç¨ä¸­ã®ä¸ä»£ %s ã¯åé¤ã§ãã¾ãã èª­ã¿è¾¼ã¿å°ç¨ãã£ã¬ã¯ããªåã§ã¯buildï¼ä½æï¼ã§ãã¾ãã é©åãªãã­ãã¡ã¤ã« ãã£ã¬ã¯ããªãè¦ã¤ããã¾ããã§ããã%s ã¨ %s ãè©¦ãã¾ãã %s ãä½æä¸­ã§ã... Home Managerã®ä¸ä»£ãåæåãã¦ãã¾ã... Home Managerã¯ã¢ã³ã¤ã³ã¹ãã¼ã«ããã¾ããããhome.nixã¯ãã®ã¾ã¾æ®ãã¦ããã¾ãã %s ã«Home Managerãè¦ã¤ããã¾ããã Home Managerã® %s ã® %s ã¸ã®ä¿ç®¡ã¯éæ¨å¥¨ã¨ãªãã¾ãã
%s ã¸ç§»åããã¦ãã ãã %s ã«è¨­å®ãã¡ã¤ã«ãè¦ã¤ããã¾ãã è¨­å®ãã¡ã¤ã«ãããã¾ããããã¡ã¤ã«ã %s ã«ä½ã£ã¦ãã ãã ID %s ãæã¤ä¸ä»£ã¯ããã¾ãã æéåãã§åé¤ãããä¸ä»£ã¯ããã¾ãã home-managerããã±ã¼ã¸ãã¤ã³ã¹ãã¼ã«ããã¦ããªãããã§ãã ç°å¢å¤æ° $EDITOR ã¾ãã¯ $VISUAL ãè¨­å®ãã¦ãã ãã æ¬å½ã«Home Managerãã¢ã³ã¤ã³ã¹ãã¼ã«ãã¾ããï¼ ä¸ä»£ %s ãåé¤ä¸­ã§ã '%s --help' ã§ãã«ããåç§ãããã¨ãã§ãã¾ã Nixã®å¥å¨æ§æ¤æ»ä¸­ã§ã ç©ºã®Home Managerã®è¨­å®ã«åãæ¿ãã¦ãã¾ã... ãã©ã¼ã«ããã¯ã® Home Manager ã®ãã¹ %s ã¯éæ¨å¥¨ã§ãããããã«ãã¡ã¤ã«ã¾ãã¯ãã£ã¬ã¯ããªãããã¾ãã %s ã¯æ¢ã«å­å¨ãã¾ããå¤æ´ããã«ç¶è¡ãã¦ãã¾ã... æªèª­ã®ãç¥ããã%dä»¶ããã¾ãã
"%s news"ã³ãã³ãã§ç¢ºèªã§ãã¾ãã ãã®æ´¾çã¯ãã«ãã§ãã¾ãããnix-shellãä½¿ã£ã¦å®è¡ãã¦ãã ããã ããã¯dry run ï¼äºè¡ç·´ç¿ï¼ã§ãå®éã«ã¯ã¢ã³ã¤ã³ã¹ãã¼ã«ã¯è¡ããã¾ããã ãã®æä½ã«ãã£ã¦Home Managerã¯ã·ã¹ãã ããåé¤ããã¾ãã ãã®è­¦åãè¡¨ç¤ºãããªãããã«ããã«ã¯ãä»¥ä¸ã®ã©ãããè¡ã£ã¦ãã ããã

1. Home Manager ã«ãã®ãã¹ãä½¿ãããä¼ãã¾ããä¾ãã°

     { programs.home-manager.path = "%s"; }

   ãè¨­å®ã«è¿½å ãã¾ãã

   ãã Home Manager ãç´æ¥ã¤ã³ãã¼ããã¦ããã®ã§ããã°ã Home Manager ããã±ã¼ã¸ãå¼ã³åºãã¨ãã« `path` ãã©ã¡ã¼ã¿ã¼ãä½¿ã£ã¦

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   ã®ããã«ã§ãã¾ãã

2. éæ¨å¥¨ã®ãã¹ã«ãããã®ãåé¤ãã¾ãã

     $ rm -r "%s" ãã£ã¨ãã¤ã³ã¹ãã¼ã«ã«å¤±æãã¾ããï¼ãã®ã¨ã©ã¼ãHome Managerã®æ¬ é¥ã«ãã£ã¦çããã¨èããããå ´åã¯ã

    %s

ã¨ããissueãç«ã¦ã¦ãã ããã "news.display"ã«"%s"ã¨ããè¨­å®ã¯å­å¨ãã¾ããã ä¸æãªå¼æ° %s ä¸æãªã³ãã³ã: %s ã¤ã§ã¤ï¼ expire-generations ã¯ä¸ã¤ããå¼æ°ãåããªãã¨ããã%d åãä¸ãããã¾ããã 