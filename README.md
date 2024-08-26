# 깃 사용법 및 흐름 정리

## 처음 프로젝트를 설정하고 작업을 올림 (이건 내가 해서 안해도 됨!!!)
```
git init
git remote add origin https://github.com/Awayfr0mKeyboard/fp.git
```

## 프로젝트를 받아와서 작업 시작
```
미리 설정해둔 저장소를 'git clone' 명령어로 복제

git clone https://github.com/Awayfr0mKeyboard/fp.git
```
```
만약 기본 브랜치가 'develop'이 아닌 'main'일 경우 복제 후에


cd fp                       # 클론한 디렉토리로 이동
git checkout develop        # develop 브랜치로 전환
git pull origin develop


바로 밑에 새로운 브랜치를 생성할 때 어디서 받아올건지 지정하기 때문에 할 일은 없음
```


## 클론 후에는 develop 브렌치로부터 각자의 브렌치를 생성해 작업을 진행 (브랜치명은 딴걸로 해도 됨)
```
# 승진이의 작업 브랜치

git checkout -b seungjin develop
```
```
# 유리의 작업 브랜치

git checkout -b yuri develop
```
**git checkout -b <새 브랜치명> <기반 브랜치>**

즉, <새 브랜치명>은 <기반 브랜치>의 현재 상태를 복사해서 만들어진 브랜치이며 생성 후 그 브랜치로 자동 이동함

**git checkout** : 브랜치 이동 명령어

**-b** : 새 브랜치 생성 명령어


## 각자 작업 후, 원격 저장소로 푸시
```
# 승진

git add .
git commit -m "오늘 작업"
git push origin seungjin
```
```
# 유리

git add .
git commit -m "오늘 작업"
git push origin yuri
```

### 1-1. 학원에서 '풀리퀘스트' 하고, 집에서 추가적으로 작업을 이어갈 경우
**develop 브랜치의 최신 변경 사항을 각자의 브랜치에 병합하기 위한 작업이므로 풀리퀘스트를 했다면 꼭 해야함**
1. 집에서 각자의 브랜치에 develop 브랜치 변경 사항 병합
```
# 승진

git checkout seungjin
git pull origin develop
```
```
# 유리

git checkout yuri
git pull origin develop
```


2. 집에서 작업을 진행 후에 작업을 완료하면 각자의 브랜치로 푸시
```
# 승진

git add .
git commit -m "집에서 작업함"
git push origin seungjin
```
```
# 유리

git add .
git commit -m "집에서 작업함"
git push origin yuri
```

3. 학원에 와서 각자의 브랜치로 풀
```
# 승진

git checkout seungjin
git pull origin seungjin
```
```
# 유리

git checkout yuri
git pull origin yuri
```

4. github에서 풀리퀘스트

### 1-2. 학원에서 '풀리퀘스트'를 하지 않았고, 집에서 추가적으로 작업을 이어갈 경우
1. 학원에서 각자의 브랜치로 푸시
  ```
  # 승진
  
  git add .
  git commit -m "학원에서 작업함"
  git push seungjin
  ```
  ```
  # 유리
  
  git add .
  git commit -m "학원에서 작업함"
  git push yuri
  ```

2. 집에서 각자의 브랜치로 풀
  ```
  # 승진
  
  git checkout seungjin
  git pull origin seungjin
  
  작업이 끝나면
  
  git add .
  git commit -m "집에서 작업함"
  git push origin seungjin
  ```
  ```
  # 유리
  
  git checkout yuri
  git pull origin yuri
  
  작업이 끝나면
  
  git add .
  git commit -m "집에서 작업함"
  git push origin yuri
  ```

3. 학원에 와서 각자의 브랜치로 풀
  ```
  # 승진

  git checkout seungjin
  git pull origin seungjin
  ```
  ```
  # 유리

  git checkout seungjin
  git pull origin yuri
  ```

4. github에서 풀리퀘스트














  
