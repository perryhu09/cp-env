# cp-env
.vimrc & c++ templates

Make sure to have the right file path when loading templates using F5

### Function Key Mappings
- F4 - Load USACO Template
- F5 - Load C++ Template
- F7 - Compile without running
- F8 - Compile and run with input from "inp" without warning flags
- F9 - Compile and run without input file
- F10 - Compile and run file with input from "inp"

## How to fix bits/stdc++.h not found on MacOS
- Manually create a bits/stdc++.h file on your system 

1. Go to Path: /usr/local/include 
2. Create a folder called bits
3. Inside bits, create file stdc++.h
4. Paste content of the file from an online repo
5. Restart editor and include error should go away

Note: If standard libraries such as iostream generate errors (ie: identifier "cin" is not defined), go into stdc++.h and copy and paste the second 'C++' section into the first and it will work.
