require 'gtk3'
class Window < Gtk::Window
    def show
      set_size_request(400,400)
      table = Gtk::Table.new(0,0)
      table.attach(get_filters,0,1,0,1)
      table.attach(get_table,1,2,0,1)
      table.attach(get_btn,2,3,0,1)
      table.set_column_spacing(20)
      add(table)
      show_all
      Gtk.main
    end

    private
    def get_filters
      box=Gtk::Box.new(:vertical)
      box.set_spacing(10)
      label = Gtk::Label.new('Filter')
      entry_name=Gtk::Entry.new
      box.add(label)
      box.add(entry_name)
      entry_git=Gtk::Entry.new
      entry_git.set_alignment(2)
      entry_git.editable=false
      combo_git=Gtk::ComboBoxText.new
      combo_git.signal_connect "changed" do |w, e|
                on_changed_git(w, e, entry_git)
      end
      combo_git.append_text 'Yes'
      combo_git.append_text 'No'
      combo_git.append_text 'no matter..'
      box.add(entry_git)
      box.add(combo_git)
      box
    end

    def get_table
      box2=Gtk::Box.new(:vertical)
      tv = [
        ["item01","item02"],
        ["item11","item12"],
        ["item21","item22"],
        ["item31","item32"],
        ["item41","item42"],
        ["item51","item52"],
        ["item61","item62"],
        ["item71","item72"],
        ["item81","item82"],
        ["item91","item92"],
        ]
      ls = Gtk::ListStore.new(*([String] * 5))
      treeview = Gtk::TreeView.new
      treeview.set_model(ls)
      treeview.append_column ::Gtk::TreeViewColumn.new("label1", ::Gtk::CellRendererText.new, text: 0)
      treeview.append_column ::Gtk::TreeViewColumn.new("label2", ::Gtk::CellRendererText.new, text: 1)
      tv.each do |val|
        iter = ls.append
        iter.set_value(0, val[0])
        iter.set_value(1, val[1])
      end
      sw = Gtk::ScrolledWindow.new
      if sw.respond_to? :set_propagate_natural_width
        sw.propagate_natural_width = true
        sw.propagate_natural_height = true
      end
      sw.add_with_viewport(treeview)
      box2.add(sw)
      box2
    end
    def on_changed_git sender, event, entry
              if sender.active_text == "Yes"
                entry.editable = true
              end
    end
    def get_btn
      box3=Gtk::Box.new(:vertical)
      label3 = Gtk::Label.new('label3')
      box3.add(label3)
      box3
    end

end

window = Window.new
window.show
