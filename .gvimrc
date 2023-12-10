
set guioptions-=T
set guioptions-=m

if has("win32")
set guifont=Consolas:h9:cANSI
elseif has("mac")
set guifont=MesloLGS-NF-Regular:h10
endif

set t_vb=
set noerrorbells
set novisualbell

map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set lines=74 columns=140
