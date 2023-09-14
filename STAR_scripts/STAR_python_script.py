#!/usr/bin/env python
import argparse

def get_args(): #defining arg parse variables 
    parser = argparse.ArgumentParser(description="Assigning file name")
    parser.add_argument("-f","--filename",help="File name", required=True, type=str)
    return parser.parse_args()

args = get_args()
file=args.filename
mapped_reads: int=0 #initializing the mapped reads 
unmapped_reads: int=0 #initializing the unmapped reads
new_list: list=[]

with open(file,"r") as sam_file: #edit the file to be more universal
    for line in sam_file: #iterating over each line
        if line.startswith("@"):
            pass
        else:
            new_list:list=line.split("\t") #breaking into a list of strings
            flag=int(new_list[1]) #making a new list at field 1
            if ((flag & 256)!= 256): #differentiating between primary and secondary alignments 
                if ((flag & 4)!=4): #compares flag and 4 in binary and determines the value of the final binary number 
                    mapped_reads+=1 #adding a count to the mapped reads 
                else:
                    unmapped_reads+=1 #adding a count to the unmapped reads 
            else:
                pass
print(f'{mapped_reads=}\n{unmapped_reads=}')



