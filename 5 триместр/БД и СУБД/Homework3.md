# ДЗ 3

05.02.20

## Описание

Завести вспомогательную табличку

| id  | table_name | column_name | max_val |
| --- | ---------- | ----------- | ------- |
| --  | Res.       | id          | 656     |

1. Если уже есть запись в специальной таблице:

    func1('Resource', 'id'); => 656+1 and update table with (656+1)

2. Если нет записи в специальной таблицы (т. е. такую комбинацию ни разу не вызывали):

   1. Пойти в таблицу искать комбинацию
   2. Не находим
   3. Найти максимальное значение по столбцу id из таблицы, имя которой было передано

        | table_name | column_name | max_val      |
        | ---------- | ----------- | ------------ |
        | Res.       | id          | 656 => 656+1 |

   4. Добавляем запись в специальную таблицу и возвращаем x+1

3. Если записей в таблице нет, то добавить в специальную таблицу запись с 1 и вернуть 1
4. Необходимо также считать индексы в самой специальной таблице

    Для простоты в специальную таблицу можно написать (1, 'spec', 'id' 1) без снижения баллов.

## Сдача

Критерии указаны на moodle.

На паре необходимо открыть файл, в котором выполняется вся работа и подчищается после работы.

Все следующие работы надо будет сдавать также.
