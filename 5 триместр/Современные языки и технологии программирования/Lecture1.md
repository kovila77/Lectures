# Лекция 1

09.01.20

- [Лекция 1](#Лекция-1)
  - [Преподаватель](#Преподаватель)
  - [Контрольные точки](#Контрольные-точки)
  - [Консультации](#Консультации)
  - [История развития ЯП](#История-развития-ЯП)
    - [Замечания](#Замечания)

## Преподаватель

Городилов Алексей Юрьевич

gora830@yandex.ru

## Контрольные точки

1. Декларативное функциональное программирование (Haskell, _Lisp_)
2. ООП (C#, _Java_, _Scala_)
3. Автоматное программирование, множественное наследование (C++)
4. Интеграция и сравнение ЯП
5. Использование офисных приложений
6. Экзамен (практическая и теоретическая части)

## Консультации

Все дни, кроме вторника - можно договориться о времени консультации.

## История развития ЯП

От уровня железа к уровню программиста: скорость разработки возрастает, скорость выполнения уменьшается:

- Первый ЯП - язык машинных команд (ЯМК).
- Ассемблеры - упрощение записи на ЯМК. Для каждого процессора нужен свой ассемблер, учитывающий свой набор команд.
- Языки высокого уровня (ЯВУ):
  - Императивное программирование _(Развитие идет, отталкиваясь от архитектуры.)_
    - Процедурная парадигма (C, Pascal, Basic, Algol, Cobol). Основная единица - процедура (подпрограмма). Сохраняется идея явных инструкций и явных указаний. Трансляцию в ЯМК выполняет компилятор.
    - ООП (C++, C#, Java, Delphi, Visual Basic).
  - Декларативное программирование _(На уровне процедурной парадигмы, параллельно с ней. Ориентируется на потребности людей. Основной единицей является функция. Специализированное ответвление.)_
    - Функциональная парадигма (Lisp, F#, Haskell)
    - Логическая парадигма (Prolog). Еще более узкоспециализированная вещь. Сложно комбинировать с другими парадигмами.
  - Языки с динамической типизацией и скриптовые языки (Python, JS, TS, Lua, PHP)

### Замечания

- ООП и ФП влияют друг на друга. Вещи из ООП переносятся в ФП и обратно.
