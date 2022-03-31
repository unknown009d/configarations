function autoremove --wraps='sudo pacman -Rns (pacman -Qdtq)' --description 'alias autoremove=sudo pacman -Rns (pacman -Qdtq)'
  sudo pacman -Rns (pacman -Qdtq) $argv; 
end
