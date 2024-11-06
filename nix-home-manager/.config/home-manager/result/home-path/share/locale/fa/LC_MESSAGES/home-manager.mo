��    &      L  5   |      P     Q     m  �   �  .   1  '   `  '   �  '   �  :   �       +   "  @   N     �  F   �  !   �  4        K     d  .   }  6   �     �               8  0   L  [   }  3   �  �     @   �  8   �  /   5	  �  e	  v     $   �     �     �     �  0   �  �    !   �  6   �  1  +  E   ]  <   �  7   �  Y     r   r     �  6     ]   8  %   �  d   �  8   !  ]   Z  5   �  @   �  O   /  M     ?   �       ]   '      �  E   �  �   �  W   �  	  �  f   �  ^   L  I   �  �  �  �   �  E   G  .   �     �  	   �  f   �                 	   #                         
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
PO-Revision-Date: 2024-05-02 10:58+0000
Last-Translator: Keivan <keyvan0082@gmail.com>
Language-Team: Persian <https://hosted.weblate.org/projects/home-manager/cli/fa/>
Language: fa
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=n > 1;
X-Generator: Weblate 5.5.3-dev
 %s: مقدار %s یافت نشد %s: آپشن مورد نظر شما یافت نشد %s پایان! ابزار home-manager نصب شده است و شما میتوانید با تغییر دادن فایل

    %s

تنظیمات Home Manager خود را تغییر دهید. برای دیدن همه ی تنظیمات موجود
دستور 'man home-configuration.nix' را اجرا کنید. عدم امکان بررسی گزینه‌های تنظیمات Flake عدم امکان نمونه‌سازی تنظیمات flake نمی‌توان نسل فعلی %s را حذف کرد نمیتوان دستور build را در یک دایکتوری read-only اجرا کرد بعد از امتحان کردن %s و %s , دایرکتوری مناسب برای پروفایل یافت نشد درحال ساختن %s... در حال ساخت نسخه اولیه Home Manager. Home Manager حذف نصب شد اما home.nix شما دست نخورده باقی ماند. Home manager در %s یافت نشد. نگه داری %s در %s منسوخ شده است.
لطفا آنرا به %s انتفال دهید هیچ فایل تنظیماتی در %s یافت نشد هیچ فایل تنظیماتی پیدا نشد. لطفا یک فایل در %s بسازید هیچ نسل ای با شناسه %s یافت نشد هیچ نسلی برای منسوخ کردن وجود ندارد بنظر میاید هیچ پکیجی از home-manager نصب نشده است. لطفا متغیر محلی $EDITOR و یا $VISUAL را تنظیم کنید واقعا میخواهید Home Manager را حذف کنید؟ حذف کردن نسل %s %s --help برای دیدن راهنمایی دستور رو به رو را اجرا کنید چک کردن پایداری Nix در حال انتقال به تنظیمات خالی Home Manager... مسیر زاپاس برای Home manager در %s منسوخ شده است اما یک فایل/دایرکتوری در این مسیر پیدا شد. فایل %s از قبل وجود داشته است، بدون تغییر رها شد... %d خبر خوانده نشده وجود دارد.
میتوانید آن را با اجرای دستور "%s news" بخوانید. %d خبر خوانده نشده وجود دارد.
میتوانید آنها را با اجرای دستور "%s news" بخوانید. این نسخه قابل build کردن نیست, لطفا آن را با nix-shell اجرا کنید. این یک عمل آزمایشی است, قرار نیست چیزی واقعا حذف شود. این عمل Home Manager را از سیستم شما حذف میکند. برای از بین بردن این اخطار, یکی از کار های زیر را انجام دهید.

1. مسیر Home Manager را به صورت دقیق با اضافه کردن خط زیر

     { programs.home-manager.path = "%s"; }

به کانفیگ خود, تعریف کنید

اگر Home Manager را به طور مستقیم import کرده اید, میتوانید از پارامتر `path` استفاده کنید

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

برای هنگامی که دارید پکیج Home Manager را صدا میزنید

2. مسیر منسوخ شده را پاک کنید

     $ rm -r "%s" ای بابا, فرایند نصب با شکست مواجه شد! اگر بنظرتان میاید مشکل از Home Manager است, لطفا یک issue در

    %s

ایجاد کنید. تنظیمات "news.display" در "%s" شناخته شده نیست. پارامتر %s شناخته نشده است دستور ناشناخته: %s ایول! expire-generations یک پارامتر نیاز دارد, اما %d پارامتر دریافت کرد 