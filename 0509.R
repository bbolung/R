menu = c('짜장면', '탕수육', '깐풍기', '짬뽕', '샥스핀', '양장피')

for(item in menu){
  print(item)
}

#문자와 합쳐서 출력할 때 print 불가
for(item in menu){
  print(item, '시킬까요?\n');
}

#cat() : 여러 문자열 결합하여 출력 함수
for(item in menu){
  cat(item, '시킬까요?\n');
}

#cat() : 반환값이 없기에 결합한 문자열 담을 때 사용X(NULL값)
for(item in menu){
  text = cat(item, '시킬까요?\n');
  print(text)
}

#paste()
for(item in menu){
  text = paste(item, '시킬까요?\n');
  print(text)
}

# %in% : 벡터 내 특정 값 포함 확인 연산자(TRUE, FALSE)
for(item in menu){
  if(item %in% c('짜장면', '짬뽕')){
    cat(item, '요리부터 주문합시다!\n', sep='?')
  }else{
    cat(item, '다음 메뉴는 뭔가요?\n',  sep='?')
  }
}

#next : continue
for(item in menu){
  if(item %in% c('짜장면', '짬뽕')){
    next
    cat(item, '요리부터 주문합시다!\n', sep='?')
  }else{
    cat(item, '다음 메뉴는 뭔가요?\n',  sep='?')
  }
}

#repeat : 반복, 반드시 탈출 조건 필요(무한 반복)
i = 0
repeat{
  i = i+1;
  if(i > 10000) break
  print(i)
}

#while : repeat과 동일하게 반복복
while(TRUE){
  i = i+1;
  if(i > 10000) break
  print(i)
}

#함수
new_sum = function(x,y){
  return (x+y)
}
print(new_sum(5,4))

py = function(a,b){
  return (sqrt(a^2 + b^2))
}
print(py(3,4))

getwd() #경로에 iris파일 넣기

str(iris)

#head() : 데이터 앞부분(default 6개)
head(iris, n=3L)

#tail() : 데이터 마지막 부분(default 6개)
tail(iris)

#행렬로 변환(문자열로 변환)
irisMat1 = as.matrix(iris)
head(irisMat1)

#행렬로 변환(행 전체, 열은 1:4)
irisMat2 = as.matrix(iris[,1:4])
head(irisMat2)

#apply() : 벡터를 넣어 반복실행하는 함수
#apply(X=객채명, MARGIN=1(행) 또는 2(열), FUN=함수지정(sum, mean : R 내장함수)
apply(X=iris[,1:4], MARGIN = 1, FUN = mean)

apply(X=iris[,1:4], MARGIN = 2, FUN = mean)

apply(X=iris[,1:4], MARGIN = 2, FUN = sum)

list.files()  #경로에 있는 파일 목록 보기
getwd()  #현재 경로

#경로 변경
setwd(dir='D:/Dev/Works/R')  
setwd(dir='D:\\Dev\\Works\\R')

#엑셀파일 입출력
# write_xlsx(x=객체명, path='저장할 xlsx 파일명')
# read_xlsx(path='읽을 xlsx 파일명', sheet='시트명', skip='생략할 행 개수')

install.packages('writexl')  #패키지 설치
library(writexl)    #import

write_xlsx(x = iris, path='iris.xlsx')
list.files()

install.packages('readxl')
library(readxl)

obj = read_xlsx(path='iris.xlsx')
str(obj)

#텍스트 파일 입출력 : csv 파일
# write.csv(x=객체명, file='경로명', sep=','
#           row.names = TRUE, -> 필드값 가져옴(TRUE)
#           col.names = TRUE,
#           fileEncoding = ''
#           )

#read.csv(file='읽을 csv파일명',
#         sep=',',
#         header=TRUE,
#         skip=생략할 행 개수,
#         fileEncoding=''
#         )

write.csv(x=iris, file='iris.csv')
list.files()

obj2 = read.csv(file='iris.csv')
str(obj2)
head(obj2)

fileName = 'APT_Price_Gangnam_2020.csv'
price = read.csv(file=fileName, fileEncoding = 'utf-8')
head(price)

str(price)
