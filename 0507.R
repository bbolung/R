# factor
# x = 범주형으로 변환할 벡터
# levels = 범주형 벡터의 레벨 순서인 문자형 벡터
# as.factor(x=벡터) : 기존 벡터를 범주형 벡터로 변환

nat = c('한국', '일본', '중국', '미국', '중국', '한국', '일본')
print(nat)

fct=as.factor(nat)
print(fct)

a = c(1,2,3)
b = c('a','b', 'c')
c = c(1.2, 3.5, 4.6)
d = c(1,'a',1.2)
print(d[2:3])

# 원소가 연속되는 벡터 생성 : seq()
# from = 처음 숫자, to = 마지막 숫자
# by = 간격, length.out = 반환되는 벡터의 길이

seq(from=1, to=3, by=1)
seq(from=3, to=1, by=-1)
seq(from=1, to=10, by=2.5)
seq(from=1, to=10, length=19)

# 산점도 그리기
x = c(1,2,3,4,5)
y = c(2,4,1,8,7)

plot(x,y,
    main = '간단한 산점도', #그래프 제목
    xlab = 'x값',  #x축 라벨
    ylab = 'y값',  #y축 라벨
    pch=16,    #점 모양(16 = 채워진 원)
    col='blue' #점 색상
)

#원소가 반복되는 벡터 생성 : rep()
rep(x,  #반복할 스칼라/벡터
    times,  #x에 지정된 벡터 전체를 반복할 횟수
    each,   #x에 지정된 벡터의 각 원소를 반복할 횟수
    length.out  #반환되는 벡터의 길이
)

rep(x=1, times=3)
rep(x=1:3, times=3)
rep(x=1:3, each=3)
rep(x=1:3, length=10)

# vector

a = c(1:5)
print(a)
a[5] = 15
print(a)

# vector 삭제
a = a[-4]
print(a)

# vector 추가
a[4] = 4
a[5] = 5
print(a)

# vector 연산
a = c(0,2,4)
b = c(1,2,3)

c = a+b
d = a-b

c = seq(from=1, to=11, by=2)
d = seq(from=3, to=12, by=3)

a+c
a+d

a+1

a>=1 & b<=2
