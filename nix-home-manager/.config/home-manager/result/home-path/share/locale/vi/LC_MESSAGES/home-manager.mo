��            )   �      �     �     �  �   �  .   q  '   �  '   �  :   �     +  +   :     f  F   �  !   �  4   �  .   "  6   Q     �     �     �  0   �  [     3   g  8   �  /   �  �    v   �     *	     >	     R	  �  W	  #   *  (   N  �   w  ;   e  +   �  N   �  M        j  2   |  '   �  `   �  1   8  I   j  B   �  =   �  *   5  9   `  %   �  8   �  �   �  B     _   �  C   "    f  �   l  !   �  "        >           
                                                                                                  	                             %s: missing argument for %s %s: unknown option '%s' All done! The home-manager tool should now be installed and you can edit

    %s

to configure Home Manager. Run 'man home-configuration.nix' to
see all available options. Can't inspect options of a flake configuration Can't instantiate a flake configuration Cannot run build in read-only directory Could not find suitable profile directory, tried %s and %s Creating %s... Creating initial Home Manager generation... Home Manager not found at %s. Keeping your Home Manager %s in %s is deprecated,
please move it to %s No configuration file found at %s No configuration file found. Please create one at %s No home-manager packages seem to be installed. Please set the $EDITOR or $VISUAL environment variable Really uninstall Home Manager? Run '%s --help' for usage help Sanity checking Nix Switching to empty Home Manager configuration... The fallback Home Manager path %s has been deprecated and a file/directory was found there. The file %s already exists, leaving it unchanged... This is a dry run, nothing will actually be uninstalled. This will remove Home Manager from your system. To remove this warning, do one of the following.

1. Explicitly tell Home Manager to use the path, for example by adding

     { programs.home-manager.path = "%s"; }

   to your configuration.

   If you import Home Manager directly, you can use the `path` parameter

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   when calling the Home Manager package.

2. Remove the deprecated path.

     $ rm -r "%s" Uh oh, the installation failed! Please create an issue at

    %s

if the error seems to be the fault of Home Manager. Unknown argument %s Unknown command: %s Yay! Project-Id-Version: Home Manager
Report-Msgid-Bugs-To: https://github.com/nix-community/home-manager/issues
PO-Revision-Date: 2024-06-02 08:12+0000
Last-Translator: goatastronaut0212 <goatastronaut0212@proton.me>
Language-Team: Vietnamese <https://hosted.weblate.org/projects/home-manager/cli/vi/>
Language: vi
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=1; plural=0;
X-Generator: Weblate 5.6-dev
 %s: bị thiếu đối số cho %s %s: tùy chọn không xác định '%s' Đã hoàn thành! Công cụ home-manager giờ đạ được cài đặt và bạn có thể chỉnh sửa

    %s

để cấu hình Home Manager. Chạy lệnh 'man home-configuration.nix' để
xem toàn bộ tùy chọn có sẵn. Không thể kiểm tra tùy chọn của cấu hình flake Không thể khởi tạo cấu hình flake Không thể chạy lệnh xây dựng trong thư mục chỉ cho phép đọc Không thể tìm thấy thư mục hồ sơ phù hợp, đã thử %s và %s Đang tạo %s... Khởi tạo thế hệ Home Manager ban đầu... Không tìm thấy Home Manager ở %s. Giữ Home Manager của bạn %s ở %s đã không còn phù hợp,
hãy chuyển nó tới %s Không tìm thấy tập tin cấu hình tại %s Không tìm thấy tệp cấu hình. Vui lòng tạo một cái tại %s Không có bất kỳ gói home-manager nào được cài đặt. Vui lòng đặt biến môi trường $EDITOR hoặc $VISUAL Bạn có muốn gỡ Home Manager không? Chạy '%s --help' để được trợ giúp sử dụng Kiểm tra độ hợp lệ của Nix Chuyển đổi sang cấu hình Home Manager trống... Đường dẫn Home Manager dự phòng %s không được dùng nữa và một tệp/thư mục đã đuợc tìm thấy ở đó. Tệp %s đã tồn tại, để nguyên nó không thay đổi... Đây là chạy thử nghiệm, sẽ không có bất cư thứ gì được gỡ cài đặt. Việc này sẽ xóa Home Manager khỏi hệ thống của bạn. Để tắt cảnh báo này, hãy thực hiện một trong các thao tác sau.

1. Chỉ định Home Manager sử dụng đường dẫn, ví dụ bằng cách thêm


     { programs.home-manager.path = "%s"; }
    vào cấu hình của bạn.

Nếu bạn nhập trực tiếp Home Manager, bạn có thể sử dụng tham số `path`

     pkgs.callPackage /path/to/home-manager-package { path = "%s"; }

   khi gọi gói Home Manager.

2. Xóa đường dẫn không được dùng nữa.

     $ rm -r "%s" Quá trình cài đặt đã thất bại! Vui lòng tạo 1 báo cáo lỗi tại

    %s

nếu như lỗi đó thuộc về Home Manager. Không tồn tại đối số %s Không tồn tại câu lệnh: %s Tuyệt vời! 