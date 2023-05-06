require 'tk'
require 'tkextlib/tile'

root = TkRoot.new { 
	  width 770 
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
    borderwidth 3
    background "yellow"
    padx 10
    pady 10
    place('height' => 600, 'width' => 150, 'x' => 10, 'y' => 10)
}

name_entry = TkEntry.new(filter) {
    font TkFont.new('times 12 italic')

    place('height' => 25, 'width' => 100, 'x' => 10, 'y' => 10)
}
variable1 = TkVariable.new 

name_entry.textvariable = variable1
variable1.value = "Enter name"

git_entry = TkEntry.new(filter) {
    place('height' => 25, 'width' => 100, 'x' => 10, 'y' => 70)
    font TkFont.new('times 10 bold')
}
git_variable = TkVariable.new
git_entry.textvariable = git_variable
git_variable.value = "Enter git"
git_entry.state = 'disabled'

git_combo=TkCombobox.new(filter) {
    font TkFont.new('times 10 bold')
    state 'readonly'
}
def combo_handler combo_value, entry_object
    if combo_value == "Yes"
        entry_object.state='normal'
    else
        entry_object.state='disabled'
    end
    
end
git_combo.bind('<ComboboxSelected>') {
    combo_handler git_combo.value, git_entry
}
git_combo.values = ['Yes', 'No', 'no matter']
git_combo.place('height' => 25, 
               'width'  => 100, 
               'x'   => 10, 
               'y'   => 100 )
mail_entry = TkEntry.new(filter) {
        place('height' => 25, 'width' => 100, 'x' => 10, 'y' => 160)
        font TkFont.new('times 10 bold')

}
mail_variable = TkVariable.new
mail_entry.textvariable = mail_variable
mail_variable.value = "Enter email"
mail_entry.state = 'disabled'

mail_combo=TkCombobox.new(filter) {
    font TkFont.new('times 10 bold')
    state 'readonly'
}
mail_combo.values = ['Yes', 'No', 'no matter']
mail_combo.place('height' => 25, 
               'width'  => 100, 
               'x'   => 10, 
               'y'   =>  190)
mail_combo.bind('<ComboboxSelected>') {
    combo_handler mail_combo.value, mail_entry
}
phone_entry = TkEntry.new(filter) {
        place('height' => 25, 'width' => 100, 'x' => 10, 'y' => 250)
        font TkFont.new('times 10 bold')
            
    }
phone_variable = TkVariable.new
phone_entry.textvariable = phone_variable
phone_variable.value = "Enter phone"
phone_entry.state = 'disabled'

phone_combo=TkCombobox.new(filter) {
    font TkFont.new('times 10 bold')
    state 'readonly'
}
phone_combo.values = ['Yes', 'No', 'no matter']
phone_combo.place('height' => 25, 
               'width'  => 100, 
               'x'   => 10, 
               'y'   =>  280)


telegram_entry = TkEntry.new(filter) {
        place('height' => 25, 'width' => 100, 'x' => 10, 'y' => 340)
        font TkFont.new('times 10 bold')
            
    }
phone_combo.bind('<ComboboxSelected>') {
        combo_handler phone_combo.value, phone_entry
    }
telegram_variable = TkVariable.new
telegram_entry.textvariable = telegram_variable
telegram_variable.value = "Enter telegram"
telegram_entry.state = 'disabled'

telegram_combo=TkCombobox.new(filter) {
    font TkFont.new('times 10 bold')
    state 'readonly'
}
telegram_combo.values = ['Yes', 'No', 'no matter']
telegram_combo.place('height' => 25, 
               'width'  => 100, 
               'x'   => 10, 
               'y'   =>  370)
telegram_combo.bind('<ComboboxSelected>') {
    combo_handler telegram_combo.value, telegram_entry
}
 
filter_btn = TkButton.new(filter) {
    underline 0 
    borderwidth 5
    text 'filter'
    font TkFont.new('times 20 bold')
    activebackground "green"
    relief      "groove"
    pack("side" => "bottom",  "padx"=> "10", "pady"=> "60")

}
f2 = TkFrame.new(n)
f3 = TkFrame.new(n)
n.add f1, :text => 'One' 
n.add f2, :text => 'Two', :state =>'disabled'
n.add f3, :text => 'Three', :state =>'disabled'

Tk.mainloop
