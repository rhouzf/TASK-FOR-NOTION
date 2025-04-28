# TASK-FOR-NOTION
senario 1:
Screenshot of ymy terminal running the script with: 
./mygrep.sh hello testfile.txt
![image](https://github.com/user-attachments/assets/6417c995-8ecb-47c1-a3e7-90f764cbe6ca)
./mygrep.sh -n hello testfile.txt
![image](https://github.com/user-attachments/assets/b904e3af-7315-42c3-9b84-cd4c3d27303d)
 ./mygrep.sh -vn hello testfile.txt
 ![image](https://github.com/user-attachments/assets/7653cdbe-1d8b-4aac-a1ec-dc02e9a81769)
./mygrep.sh -v testfile.txt
![image](https://github.com/user-attachments/assets/a9bae403-37da-4f67-b228-5ab45809e9ad)


1.  A breakdown of how your script handles arguments and options
the script has (getopts) to handle options like (-nv) and also a condition to check if the 2 arguments are there.
2.  A short paragraph: If you were to support regex or -i/-c/-l options, how would your structure change?
i would just modified (getopts) to handle the other options.
3. What part of the script was hardest to implement and why?
the options and the search parts, because it's was though to make sure the the arguments are interpeted.




senario 2:
1.  Verify DNS Resolution:
i tried both my local DNS server and Google's public dns (8.8.8.8) are unable to resolve internal.example.com
i got this message"** server can't find internal.example.com: NXDOMAIN"
2.  Diagnose Service Reachability:
i can't because i don't have the resolved ip
3.  Trace the Issue – List All Possible Causes:
misconfigured DNS Server,
the domain internal.example.com might not have a valid DNS record in the local or public DNS server,
another service might be using the same port 
