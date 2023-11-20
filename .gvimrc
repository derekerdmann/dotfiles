
set guioptions-=T
set guioptions-=m

if has("win32")
set guifont=Consolas:h9:cANSI
elseif has("mac")
set guifont=MesloLGS-NF-Regular:h12
endif

set t_vb=
set noerrorbells
set novisualbell

map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set lines=70 columns=130
