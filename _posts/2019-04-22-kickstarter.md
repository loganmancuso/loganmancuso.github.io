---
layout: post
title:  "Kickstarter Data Visualization"
date:   2019-04-22
excerpt: "kickstarter"
image: "/images/posts/data_viz.png"
---

# CSCE567-Project-2
Overview:
-----------------------------------------------------------------------------

Written with C++ and Microsoft PowerBI by Logan Mancuso, Jaret Noffsinger, Blake Pathammavong, and Kevin Zheng.

**Objective:** To display the geographic distribution of users who create Kickstarter campaigns. We will also display the geographic distribution of categories, and the frequency of success certain categories have getting funded. 

Data:
-----------------------------------------------------------------------------
**Source URL:** https://webrobots.io/kickstarter-datasets/

**Citation:** Web Robots. (2019). Kickstarter Datasets (2019-03-14). Retrieved from https://webrobots.io/kickstarter-datasets/

Building ParseCSV:
------------------------------------------------------------------------------
ParseCSV is responsible for parsing through the 1.02GB CSV file downloaded from the source above. Many of the fields are objects, meaning that they consists of multiple attributes.

ParseCSV is reponsible for removing the information we care about from these nested attributes (or objects), as well as removing the fields that we do not need to use in our PowerBI dashboard.

ParseCSV is ran through the shell script, processfiles.sh. To process all files, change to the CSCE567-Project-2 directory. Compile the program using G++:

```
g++ main.cpp parsestring.cpp
```

After compiling the code, switch to the data directory outside of the ParseCSV directory. Run the processfiles shell script, located in the data folder. It will loop through all files, process them, and then append them to one big CSV file, all.csv.

```
./processfiles.sh
```

After the program has ran, all output will be appended to the file 'all.csv', located in the parsecsv directory.

This program used to work with Visual Studio, but I had issues with the executable crashing at runtime. The command below can be used to compile ParseCSV in Windows, but I cannot guarentee it will work. If it does work, it will only be able to process one file at a time, passed in as a command line argument. 

```
cl /EHsc main.cpp parsestring.cpp
```

We didn't end up using this program in the end, because we were able to flatten a json copy of this file and it worked out much smoothly.

Power BI file:
----------------------------------------------------------------------------------

We are unable to upload the file here due to the size. It is around 320Mb, way over github's file limit. I will post a link to a onedrive where you can download the Power BI file, if needed

<iframe width="900" height="600" src="https://app.powerbi.com/view?r=eyJrIjoiMjIwZGRkNTAtZDdmMy00Y2MyLTlmMWUtM2NjMTEwMTRhNDljIiwidCI6IjNmZmZkOTQzLTY2ODktNGY1Yy05YWRjLTgzYWQ2ZTkxMDE0NyIsImMiOjF9" frameborder="0" allowFullScreen="true"></iframe>