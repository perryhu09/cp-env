# cp-env
.vimrc & c++ templates

### Notes
- When loading templates using F5 make sure to have the right file path

## How to fix bits/stdc++ not found on MacOS
- Manually create a bits/stdc++.h file on your system 

1. Go to Path: usr/local/include/bits
2. Create file stdc++.h
3. Paste content of the file from an online repo
4. Restart editor and include error should go away

Note: Standard libraries such as iostream may have errors, 
go into stdc++.h and copy and paste the second 'C++' section 
into the first and it will work
