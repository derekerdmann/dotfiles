
set guioptions-=T
set guioptions-=m

if has('win32')
set guifont=CaskaydiaMono_NFM:h8.5,Cascadia_Mono_PL:h8.5,Consolas:h9
elseif has('mac')
set guifont=MesloLGS-NF-Regular:h10
endif

set t_vb=
set noerrorbells
set novisualbell

map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set lines=74 columns=140
