# phdlatex

Docker образ для сборки шаблона [Russian-Phd-LaTeX-Dissertation-Template](http://github.com/AndreyAkinshin/Russian-Phd-LaTeX-Dissertation-Template).

Использует ubuntu 18.04, большинство пакетов из зависимостей `texlive-full`, а так же некоторые другие специфические пакеты, необходимые для сборки PDF.

Пример использования для Gitlab CI:

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
