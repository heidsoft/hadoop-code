words = load '/user/hive/warehouse/test/pigdata.txt' using PigStorage(' ') as (line); --以空格作为分隔符把内容分词读入
grpd = group words by line;     
--以每个单词聚类，真实的是一个MapReduce的Map阶段
cntd = foreach grpd generate group, COUNT(words); 
--这里既上一步Map完成紧接着Reduce阶段进行统计
dump cntd;  
--直接在终端打印结果便于查看
