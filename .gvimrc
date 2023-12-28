
set guioptions-=T
set guioptions-=m

if has('win32')
set guifont=CaskaydiaMono_NFM:h9:cANSI,Cascadia_Mono_PL:h9:cANSI,Consolas
elseif has('mac')
set guifont=MesloLGS-NF-Regular:h10
endif

set t_vb=
set noerrorbells
set novisualbell

map <MiddleMouse> <Nop>
imap <MiddleMouse> <Nop>

set lines=74 columns=140
