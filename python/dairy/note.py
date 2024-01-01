# -*- coding: utf-8 -*-
import datetime
 
def write_diary():
    # 获取当前时间
    current_time = datetime.datetime.now()
    
    # 提示输入标题和内容
    title = input("请输入今天的日记标题：")
    content = input("请输入今天的日记内容：")
    
    # 将日期、标题和内容保存到文件中
    with open('diary.txt', 'a') as file:
        file.write(f"{current_time} {title}\n\n{content}\n\n---------------------\n\n")
        
    print("日记已成功添加！")
 
if __name__ == "__main__":
    write_diary()