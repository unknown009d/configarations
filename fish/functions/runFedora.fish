function runFedora --wraps='qemu-system-x86_64 -enable-kvm -drive file=/mnt/Work/VirtualPools/fedora35.qcow2 -m 6G -cpu host -vga virtio -display sdl,gl=on' --description 'alias runFedora=qemu-system-x86_64 -enable-kvm -drive file=/mnt/Work/VirtualPools/fedora35.qcow2 -m 6G -cpu host -vga virtio -display sdl,gl=on'
  qemu-system-x86_64 -enable-kvm -drive file=/mnt/Work/VirtualPools/fedora35.qcow2 -m 6G -cpu host -vga virtio -display sdl,gl=on $argv; 
end
