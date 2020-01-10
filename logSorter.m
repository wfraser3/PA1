filename = 'outputFileLog.txt';
outputFile = 'goodFiles.txt';
outputFID = fopen(outputFile,'wt');
fid = fopen(filename);
holder = 1;

while holder == 1
    tline = fgets(fid);
    zeroDegrees = strfind(tline,'theta_scan=0deg');
    zeroPDegrees = strfind(tline,'theta_scan=0.0deg');
    if(zeroDegrees>0)
        fName = tline(1:14);
        fprintf(outputFID,fName);
        fprintf(outputFID,'\n');
    else
        if(zeroPDegrees>0)
            fName = tline(1:14);
            fprintf(outputFID,fName);
            fprintf(outputFID,'\n');
        end
    end
    if(tline == -1)
        holder = 0;
    end
end
    