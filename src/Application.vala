/*
 * SPDX-License-Identifier: GPL-3.0-or-later
 * SPDX-FileCopyrightText: 2021 Josué Israel Martell Castro <josue.martell17@gmail.com>
 */

public class Application : Gtk.Application {
    public Application () {
        Object (
            application_id: "com.github.josue.Project",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {
        var main_window = new Project.Window (this);
        add_window (main_window);
    }

    public static int main (string[] args) {
        return new Application ().run (args);
    }
}
