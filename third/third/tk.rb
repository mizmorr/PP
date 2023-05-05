require 'tk'
require 'tkextlib/tile'

root = TkRoot.new { 
	  width 750 
	  height 900
}		
root.title = "Window"
n = Tk::Tile::Notebook.new(root)do
   height 210
   place('height' => 800, 'width' => 750, 'x' => 10, 'y' => 10)
end

f1 = Tk::Frame::Frame.new(n) {
    relief 'sunken'
    borderwidth 3 
    background 'lightgreen'
}
filter = TkFrame.new(f1) {
    relief 'groove'
    borderwidth 1
    background "yellow"
    padx 10
    pady 10
    place('height' => 600, 'width' => 150, 'x' => 10, 'y' => 10)
}

name_entry = TkEntry.new(filter) {
    place('height' => 25, 'width' => 100, 'x' => 10, 'y' => 10)
}
variable1 = TkVariable.new
name_entry.textvariable = variable1
variable1.value = "Enter name"

git 
git_combo=TkCombobox.new(filter) 
git_combo.values = [1, 2, 3, 4]
git_combo.place('height' => 25, 
               'width'  => 100, 
               'x'   => 10, 
               'y'   => 60 )

f2 = TkFrame.new(n)
f3 = TkFrame.new(n)
n.add f1, :text => 'One' 
n.add f2, :text => 'Two', :state =>'disabled'
n.add f3, :text => 'Three', :state =>'disabled'

Tk.mainloop
