public class Project.Window : Gtk.ApplicationWindow {
    public Window (Application app) {
        Object (
            application: app
        );
    }

    construct {
        default_height = 300;
        default_width = 300;
        window_position = Gtk.WindowPosition.CENTER;

        var headerbar = new Project.HeaderBar ();
        set_titlebar (headerbar);

        show_all();
    }
}
