# PROMPT
PROMPT='┌ %F{cyan}%n@%m%f %F{magenta}%d%f
└ %# '
RPROMPT='%F{green}[%W %*]%f'

# zsh settings
export HISTFILE=$HOME/.zsh_history
export HISTSIZE=3000
export SAVEHIST=3000
export HISTORY_IGNORE="(ipatool *|sl *|*email*|*password*)"
setopt hist_ignore_dups
setopt hist_reduce_blanks
setopt correct
setopt share_history
zshaddhistory() {
    emulate -L zsh
    [[ ${1%%$'\n'} != ${~HISTORY_IGNORE} ]]
}

# completions
if type vivid > /dev/null 2>&1; then
    export LS_COLORS="$(vivid generate dracula)"
else
    export LS_COLORS='ln=0;38;2;139;233;253:sg=0;38;2;241;250;140;48;2;255;121;198:bd=1;38;2;255;184;108;48;2;40;42;54:do=1;38;2;241;250;140;48;2;40;42;54:mh=0:ow=0;38;2;139;233;253;48;2;40;42;54:or=0;38;2;255;85;85;48;2;40;42;54:tw=0;38;2;241;250;140;48;2;80;250;123:mi=0;38;2;255;85;85;48;2;40;42;54:ex=0;38;2;80;250;123:su=0;38;2;241;250;140;48;2;255;121;198:no=0;38;2;248;248;242:fi=0;38;2;248;248;242:cd=1;38;2;255;184;108;48;2;40;42;54:st=0;38;2;241;250;140;48;2;139;233;253:pi=1;38;2;241;250;140;48;2;40;42;54:ca=0:*~=0;38;2;58;60;78:di=0;38;2;189;147;249:rs=0;38;2;255;184;108:so=1;38;2;241;250;140;48;2;40;42;54:*.m=0;38;2;255;184;108:*.c=0;38;2;255;184;108:*.a=0;38;2;80;250;123:*.r=0;38;2;255;184;108:*.d=0;38;2;255;184;108:*.p=0;38;2;255;184;108:*.o=0;38;2;58;60;78:*.z=1;38;2;189;147;249:*.h=0;38;2;255;184;108:*.t=0;38;2;255;184;108:*.rm=1;38;2;255;184;108:*.pp=0;38;2;255;184;108:*.sh=0;38;2;255;184;108:*.xz=1;38;2;189;147;249:*.td=0;38;2;255;184;108:*.la=0;38;2;58;60;78:*.wv=0;38;2;255;184;108:*css=0;38;2;255;184;108:*.jl=0;38;2;255;184;108:*.gv=0;38;2;255;184;108:*.nb=0;38;2;255;184;108:*.vb=0;38;2;255;184;108:*.gz=1;38;2;189;147;249:*.kt=0;38;2;255;184;108:*.pm=0;38;2;255;184;108:*.ts=0;38;2;255;184;108:*.as=0;38;2;255;184;108:*.di=0;38;2;255;184;108:*.ko=0;38;2;80;250;123:*.7z=1;38;2;189;147;249:*.bz=1;38;2;189;147;249:*.pl=0;38;2;255;184;108:*.go=0;38;2;255;184;108:*.bc=0;38;2;58;60;78:*.py=0;38;2;255;184;108:*.ll=0;38;2;255;184;108:*.ps=0;38;2;255;184;108:*.el=0;38;2;255;184;108:*.hi=0;38;2;58;60;78:*.js=0;38;2;255;184;108:*.ml=0;38;2;255;184;108:*.cs=0;38;2;255;184;108:*.cp=0;38;2;255;184;108:*.ex=0;38;2;255;184;108:*.cc=0;38;2;255;184;108:*.cr=0;38;2;255;184;108:*.hh=0;38;2;255;184;108:*.mn=0;38;2;255;184;108:*.md=0;38;2;255;184;108:*.so=0;38;2;80;250;123:*.ui=0;38;2;255;184;108:*.rb=0;38;2;255;184;108:*.lo=0;38;2;58;60;78:*.hs=0;38;2;255;184;108:*.fs=0;38;2;255;184;108:*.rs=0;38;2;255;184;108:*.bmp=0;38;2;241;250;140:*.sxi=0;38;2;255;184;108:*.tgz=1;38;2;189;147;249:*.tif=0;38;2;241;250;140:*.mpg=1;38;2;255;184;108:*.cxx=0;38;2;255;184;108:*.pdf=0;38;2;255;184;108:*.ltx=0;38;2;255;184;108:*hgrc=0;38;2;255;184;108:*.inc=0;38;2;255;184;108:*.pkg=1;38;2;189;147;249:*.toc=0;38;2;58;60;78:*.xmp=0;38;2;255;184;108:*.bst=0;38;2;255;184;108:*.zip=1;38;2;189;147;249:*.pgm=0;38;2;241;250;140:*.m4v=1;38;2;255;184;108:*.dot=0;38;2;255;184;108:*.swp=0;38;2;58;60;78:*.asa=0;38;2;255;184;108:*.bbl=0;38;2;58;60;78:*.odt=0;38;2;255;184;108:*.pro=0;38;2;255;184;108:*.apk=1;38;2;189;147;249:*.tex=0;38;2;255;184;108:*.xlr=0;38;2;255;184;108:*.deb=1;38;2;189;147;249:*.inl=0;38;2;255;184;108:*.fsx=0;38;2;255;184;108:*.sty=0;38;2;58;60;78:*.fls=0;38;2;58;60;78:*.yml=0;38;2;255;184;108:*.fnt=0;38;2;255;184;108:*.ttf=0;38;2;255;184;108:*.mkv=1;38;2;255;184;108:*.pas=0;38;2;255;184;108:*.psd=0;38;2;241;250;140:*.def=0;38;2;255;184;108:*.mp3=0;38;2;255;184;108:*.ipp=0;38;2;255;184;108:*.pbm=0;38;2;241;250;140:*.dll=0;38;2;80;250;123:*.git=0;38;2;58;60;78:*.nix=0;38;2;255;184;108:*.jar=1;38;2;189;147;249:*.jpg=0;38;2;241;250;140:*.iso=1;38;2;189;147;249:*.arj=1;38;2;189;147;249:*.fon=0;38;2;255;184;108:*.kts=0;38;2;255;184;108:*.bz2=1;38;2;189;147;249:*.pps=0;38;2;255;184;108:*.exe=0;38;2;80;250;123:*.flv=1;38;2;255;184;108:*.wmv=1;38;2;255;184;108:*.dmg=1;38;2;189;147;249:*.cgi=0;38;2;255;184;108:*.fsi=0;38;2;255;184;108:*.dpr=0;38;2;255;184;108:*.erl=0;38;2;255;184;108:*.kex=0;38;2;255;184;108:*.ics=0;38;2;255;184;108:*.awk=0;38;2;255;184;108:*.wma=0;38;2;255;184;108:*.ppm=0;38;2;241;250;140:*.dox=0;38;2;255;184;108:*.sbt=0;38;2;255;184;108:*TODO=1;38;2;255;184;108:*.ps1=0;38;2;255;184;108:*.img=1;38;2;189;147;249:*.odp=0;38;2;255;184;108:*.idx=0;38;2;58;60;78:*.avi=1;38;2;255;184;108:*.pyd=0;38;2;58;60;78:*.tmp=0;38;2;58;60;78:*.cfg=0;38;2;255;184;108:*.bcf=0;38;2;58;60;78:*.rar=1;38;2;189;147;249:*.lua=0;38;2;255;184;108:*.svg=0;38;2;241;250;140:*.zsh=0;38;2;255;184;108:*.sxw=0;38;2;255;184;108:*.c++=0;38;2;255;184;108:*.gif=0;38;2;241;250;140:*.vcd=1;38;2;189;147;249:*.h++=0;38;2;255;184;108:*.xls=0;38;2;255;184;108:*.csv=0;38;2;255;184;108:*.hxx=0;38;2;255;184;108:*.htc=0;38;2;255;184;108:*.mov=1;38;2;255;184;108:*.ods=0;38;2;255;184;108:*.eps=0;38;2;241;250;140:*.sql=0;38;2;255;184;108:*.rtf=0;38;2;255;184;108:*.pod=0;38;2;255;184;108:*.mli=0;38;2;255;184;108:*.bsh=0;38;2;255;184;108:*.zst=1;38;2;189;147;249:*.bag=1;38;2;189;147;249:*.mir=0;38;2;255;184;108:*.m4a=0;38;2;255;184;108:*.png=0;38;2;241;250;140:*.ilg=0;38;2;58;60;78:*.ppt=0;38;2;255;184;108:*.tbz=1;38;2;189;147;249:*.pid=0;38;2;58;60;78:*.pyo=0;38;2;58;60;78:*.rst=0;38;2;255;184;108:*.bak=0;38;2;58;60;78:*.clj=0;38;2;255;184;108:*.aux=0;38;2;58;60;78:*.php=0;38;2;255;184;108:*.log=0;38;2;58;60;78:*.tar=1;38;2;189;147;249:*.ind=0;38;2;58;60;78:*.ico=0;38;2;241;250;140:*.ogg=0;38;2;255;184;108:*.doc=0;38;2;255;184;108:*.ini=0;38;2;255;184;108:*.rpm=1;38;2;189;147;249:*.txt=0;38;2;255;184;108:*.mp4=1;38;2;255;184;108:*.exs=0;38;2;255;184;108:*.vim=0;38;2;255;184;108:*.otf=0;38;2;255;184;108:*.com=0;38;2;80;250;123:*.pyc=0;38;2;58;60;78:*.xml=0;38;2;255;184;108:*.mid=0;38;2;255;184;108:*.htm=0;38;2;255;184;108:*.blg=0;38;2;58;60;78:*.out=0;38;2;58;60;78:*.wav=0;38;2;255;184;108:*.bin=1;38;2;189;147;249:*.hpp=0;38;2;255;184;108:*.tsx=0;38;2;255;184;108:*.xcf=0;38;2;241;250;140:*.csx=0;38;2;255;184;108:*.bib=0;38;2;255;184;108:*.tml=0;38;2;255;184;108:*.elm=0;38;2;255;184;108:*.vob=1;38;2;255;184;108:*.cpp=0;38;2;255;184;108:*.tcl=0;38;2;255;184;108:*.aif=0;38;2;255;184;108:*.epp=0;38;2;255;184;108:*.swf=1;38;2;255;184;108:*.bat=0;38;2;80;250;123:*.gvy=0;38;2;255;184;108:*.docx=0;38;2;255;184;108:*.json=0;38;2;255;184;108:*.java=0;38;2;255;184;108:*.flac=0;38;2;255;184;108:*.lisp=0;38;2;255;184;108:*.rlib=0;38;2;58;60;78:*.purs=0;38;2;255;184;108:*.lock=0;38;2;58;60;78:*.tiff=0;38;2;241;250;140:*.fish=0;38;2;255;184;108:*.psm1=0;38;2;255;184;108:*.dart=0;38;2;255;184;108:*.toml=0;38;2;255;184;108:*.make=0;38;2;255;184;108:*.yaml=0;38;2;255;184;108:*.diff=0;38;2;255;184;108:*.hgrc=0;38;2;255;184;108:*.tbz2=1;38;2;189;147;249:*.less=0;38;2;255;184;108:*.conf=0;38;2;255;184;108:*.pptx=0;38;2;255;184;108:*.epub=0;38;2;255;184;108:*.psd1=0;38;2;255;184;108:*.opus=0;38;2;255;184;108:*.webm=1;38;2;255;184;108:*.xlsx=0;38;2;255;184;108:*.orig=0;38;2;58;60;78:*.jpeg=0;38;2;241;250;140:*.html=0;38;2;255;184;108:*.mpeg=1;38;2;255;184;108:*.h264=1;38;2;255;184;108:*.bash=0;38;2;255;184;108:*.dyn_o=0;38;2;58;60;78:*.xhtml=0;38;2;255;184;108:*.cmake=0;38;2;255;184;108:*shadow=0;38;2;255;184;108:*.shtml=0;38;2;255;184;108:*.toast=1;38;2;189;147;249:*.mdown=0;38;2;255;184;108:*.swift=0;38;2;255;184;108:*README=0;38;2;255;184;108:*.class=0;38;2;58;60;78:*passwd=0;38;2;255;184;108:*.patch=0;38;2;255;184;108:*.cache=0;38;2;58;60;78:*.cabal=0;38;2;255;184;108:*.ipynb=0;38;2;255;184;108:*.scala=0;38;2;255;184;108:*.ignore=0;38;2;255;184;108:*.gradle=0;38;2;255;184;108:*INSTALL=0;38;2;255;184;108:*TODO.md=1;38;2;255;184;108:*.dyn_hi=0;38;2;58;60;78:*.config=0;38;2;255;184;108:*COPYING=0;38;2;255;184;108:*.flake8=0;38;2;255;184;108:*LICENSE=0;38;2;255;184;108:*.groovy=0;38;2;255;184;108:*.matlab=0;38;2;255;184;108:*setup.py=0;38;2;255;184;108:*.gemspec=0;38;2;255;184;108:*Makefile=0;38;2;255;184;108:*TODO.txt=1;38;2;255;184;108:*.desktop=0;38;2;255;184;108:*Doxyfile=0;38;2;255;184;108:*.cmake.in=0;38;2;255;184;108:*README.md=0;38;2;255;184;108:*.rgignore=0;38;2;255;184;108:*.fdignore=0;38;2;255;184;108:*.kdevelop=0;38;2;255;184;108:*COPYRIGHT=0;38;2;255;184;108:*configure=0;38;2;255;184;108:*.DS_Store=0;38;2;58;60;78:*.markdown=0;38;2;255;184;108:*INSTALL.md=0;38;2;255;184;108:*.gitignore=0;38;2;255;184;108:*.gitconfig=0;38;2;255;184;108:*CODEOWNERS=0;38;2;255;184;108:*.scons_opt=0;38;2;58;60;78:*SConstruct=0;38;2;255;184;108:*.localized=0;38;2;58;60;78:*SConscript=0;38;2;255;184;108:*Dockerfile=0;38;2;255;184;108:*README.txt=0;38;2;255;184;108:*MANIFEST.in=0;38;2;255;184;108:*.gitmodules=0;38;2;255;184;108:*.travis.yml=0;38;2;255;184;108:*Makefile.am=0;38;2;255;184;108:*INSTALL.txt=0;38;2;255;184;108:*LICENSE-MIT=0;38;2;255;184;108:*Makefile.in=0;38;2;58;60;78:*.synctex.gz=0;38;2;58;60;78:*appveyor.yml=0;38;2;255;184;108:*configure.ac=0;38;2;255;184;108:*.fdb_latexmk=0;38;2;58;60;78:*CONTRIBUTORS=0;38;2;255;184;108:*.applescript=0;38;2;255;184;108:*.clang-format=0;38;2;255;184;108:*.gitattributes=0;38;2;255;184;108:*CMakeCache.txt=0;38;2;58;60;78:*LICENSE-APACHE=0;38;2;255;184;108:*CMakeLists.txt=0;38;2;255;184;108:*CONTRIBUTORS.md=0;38;2;255;184;108:*CONTRIBUTORS.txt=0;38;2;255;184;108:*.sconsign.dblite=0;38;2;58;60;78:*requirements.txt=0;38;2;255;184;108:*package-lock.json=0;38;2;58;60;78:*.CFUserTextEncoding=0;38;2;58;60;78'
fi
setopt globdots
zstyle ':completion:*' list-colors "${LS_COLORS}"

# man(less) color
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'
export LESS_TERMCAP_ue=$'\E[0m'
