function la --wraps=ls --wraps='ls -alh --color=never' --wraps='ls -alh --color=never | less' --description 'alias la=ls -alh --color=never'
  ls -alh --color=never $argv; 
end
