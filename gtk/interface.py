import gi

gi.required_version("Gtk", "3,0")
from gi.repository import Gtk

class Handler:
    def onDestroy(self, *args):
        Gtk.main_quit()

    def onButtonPressed(self, button):
        print("Button pressed")

builder = Gtk.Builder()
builder.add_from_file("interface.glade")
builder.connect_signals(Handler())

window = builder.get_object("interface_window")
window.show_all()

Gtk.main()

""" def __init__(self):
    gtk.Window.__init__(self)
    self.set_border_width(10)

    self.connect('delete-event', self.cb_delete_event)

    self.connect('destroy', lambda *w: gtk.main_quit())

if __name__ == "__main__":
    win = Sample()
    win.show_all()
    gtk.main() """