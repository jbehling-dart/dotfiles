set auto-load safe-path /

define bin32
  set $val = $arg0
  printf "0b"
  set $i = 31
  while $i >= 0
    printf "%d", ($val >> $i) & 1
    if (($i % 8) == 0 && $i != 0)
      printf " "
    end
    set $i = $i - 1
  end
  printf "\n"
end
