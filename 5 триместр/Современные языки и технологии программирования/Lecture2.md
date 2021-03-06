# Лекция 2

16.01.20

- [Лекция 2](#Лекция-2)
  - [ФП](#ФП)
  - [Haskell](#haskell)
    - [Синтаксис](#Синтаксис)

## ФП

Особенности:

- Отсутствие понятия переменной как изменяемого значения, записанного в ячейку памяти. Переменная в ФЯ - это обозначение какого-то значения.

- Отсутствие команд передач управления (goto, циклы, условия). Повторяющиеся вычисления выполняются с помощью рекурсии.

Преимущества:

1. __Контекстная независимость__ - свойство программы, при котором значение выражения всегда одинаково независимо от контекста.

    ```cpp
    // В ФП можем быть уверены, что f вернет одно и то же значение.
    x = f(5);
    y = f(x);
    ```

    1. Простота распараллеливания программы.

    ```cpp
    // Должны выполняться независимо
    x = f(5);
    x = f(6);
    ```

    __Чистая функция__ - функция, обладающая свойством контекстной независимости (т. е. не зависящая от глобальных переменных).

    1. Удобство тестирования.

    ```cpp
    // Должны быть равны
    x = f(5);
    x = f(5);
    ```

    1. Возможность кеширования.

    ```cpp
    // Должны быть возможность кешировать значение
    x = f(5);
    y = f(5);
    ```

2. Лучше подходит для некоторого класса задач (некоторые задачи ИИ, математические расчеты).

Недостатки:

1. Не подходит для некоторых классов задач (например, ввод-вывод, задачи взаимодействия с пользователем).
2. Как правило, скорость выполнения ниже.

## Haskell

ФЯ, разрабатывался как чисто ФЯ.

Статически типизированный.

Поддерживает автоматическое выведение типов (компилятор может автоматически определить не только тип переменных, но и тип параметров функций и возвращаемого значения).

Поддерживает ленивые вычисления. Выражение вычисляется только в том случае, если требуется его значение.

Поддерживает стандартный набор логических, арифметических операций.

### Синтаксис

Условное выражение:

```haskell
if (условие) then (значение1)
             else (значение2)
```

Объявление функций:

```haskell
имя_функции арг1 арг2 ... аргN =
    выражение
```

Для задания типа перед объявлением функции указывается следующее:

```haskell
имя_функции :: тип_арг1 -> тип_арг2 -> ... -> тип_аргN -> тип_результата
```

Вызов функции. Вызов функции всегда имеет наивысший приоритет.

```haskell
имя_функции знач_арг1 знач_арг2 ... знач_аргN
```

Вложенные функции:

- Уровень вложенности определяется отступами
- Ключевое слово - where

```haskell
f x = g (x + 3) where g x = 2 * x
```
