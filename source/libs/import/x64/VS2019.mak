!include srcpath

target_path = $(lib_dir)\x64

VS2019.exe: $(target_path)
    asmc -q -win64 -pe $*.asm
    $@ import.inc $(target_path)
    del $@
    del $(target_path)\*.exp

$(target_path):
    if not exist $(target_path) md $(target_path)
