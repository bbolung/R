#생성
#data.frame(열 이름1 = 열벡터1, 열이름2 = 열벡터2...)
num = seq(from=1, to=10, by=2)
chr <- rep(x=c('a','b'),each=3)

df1 = data.frame(num, chr)

cha = letters[1:5]

df1 = data.frame(num, cha)

class(df1)

str(df1)

print(df1)

options('max.print') #data.frame 최대 출력 개수

print(df1)

View(df1)

#데이터프레임 원소 선택
df1[1,1]
df1[1,2]

#데이터프레임 원소 추가
df1$int = 11:15
View(df1)

#데이터프레임 열 추가하기 : cbind()
cbind(df1, rep(x=TRUE, times=5))

cbind(df1, log = rep(x=TRUE, times=5))

df1 = cbind(df1, log=rep(x=TRUE, times=5))

View(df1)

cbind(df1, log2=rep(x=TRUE, times=7)) #행 개수 일치해야 함

#데이터 프레임 형 추가하기 : rbind()
df3 = data.frame(num=6, cha='f', int=16, log=TRUE)
print(df3)
rbind(df1, df3)

print(df1)
df1 = rbind(df1, df3)
View(df1)

#데이터프레임 원소 삭제
df1$num = NULL #열 삭제
View(df1)

print(df1)

#행 또는 열 삭제하기
df[-1, -1] #1행의 1열
df[-1, ]  #1행만 삭제
df[ ,-1]  #1열만 삭제

#데이터프레임 원소 변경
print(df1)

df1$cha = LETTERS[1:6]

df1$int[1] = '22'

#조건문
score <- 100

if(score>=70){
  grade = "합격"
}else{
  grade = "불합격"
}

print(grade)

score = seq(from=40, to=100, by=10)

score >= 70

ifelse(test = score >= 70, '합격', '불합격')
#yes와 no 없어도 되지만 직관적으로 보기 위해 입력
ifelse(test = score >= 70, yes='합격', no='불합격')

df1 = data.frame(score)

print(df1)

str(df1)

df1$grade = ifelse(test = df1$score >=70, yes = '합격', no='불합격')

print(df1)
