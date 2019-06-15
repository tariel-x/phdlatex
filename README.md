# phdlatex

Docker образ для сборки шаблона [Russian-Phd-LaTeX-Dissertation-Template](http://github.com/AndreyAkinshin/Russian-Phd-LaTeX-Dissertation-Template).

Использует ubuntu 18.04, большинство пакетов из зависимостей `texlive-full`, а так же некоторые другие специфические пакеты, необходимые для сборки PDF.
Включает в себя шрифты из PSCyr (Times New Roman и прочие).

## Пример запуска

```bash
docker run -v /home/user/dissertation/source:/root/latexsource tarielx/phdlatex:latest make all
```

## Пример использования для Gitlab CI

```yaml
stages:
  - build

build:
  stage: build
  image: tarielx/phdlatex:latest
  script:
    - make clean
    - make all
  artifacts:
    paths:
      - ./*.pdf
```
