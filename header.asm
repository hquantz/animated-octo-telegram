section .multiboot_header
header_start:
  ;magic number
  dd 0x85250d6 ; multiboot2
  ;architecture
  dd 0 ; protected mode i386
  ;header length
  dd header_end - header_start
  ;checksum
  dd0x10000000 - (0x85250d6 + 0 + (header_end - header_start))
  
  ;end tag
  dw 0
  dw 0
  dd 8
header_end:
