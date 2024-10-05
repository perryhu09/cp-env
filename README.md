# cp-env
.vimrc & c++ templates

Make sure to have the right file path when loading templates using F5

### Function Key Mappings
F5 - Load C++ Template\n
F7 - Compile without running\n
F8 - Compile and run with input from "inp" without warning flags\n
F9 - Compile and run without input file\n
F10 - Compile and run file with input from "inp"\n

## How to fix bits/stdc++ not found on MacOS
- Manually create a bits/stdc++.h file on your system 

1. Go to Path: usr/local/include/bits
2. Create file stdc++.h
3. Paste content of the file from an online repo
4. Restart editor and include error should go away

Note: Standard libraries such as iostream may have errors, go into stdc++.h and copy and paste the second 'C++' section into the first and it will work
