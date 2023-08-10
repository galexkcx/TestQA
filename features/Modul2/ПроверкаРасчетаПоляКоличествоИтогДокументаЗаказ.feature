﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект>   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Проверка расчета Итога по количеству
И ЗаполнениеШапкиДокументаЗаказ
Когда открылось окно 'Заказ (создание) *'
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Bosch1234'
И я перехожу к следующему реквизиту
И в таблице "Товары" я завершаю редактирование строки
Тогда таблица "Товары" стала равной:
	| 'Товар'     | 'Цена'     | 'Количество' | 'Сумма'    |
	| 'Торт1 '    | '250,00'   | '1'          | '250,00'   |
	| 'Bosch1234' | '3 500,00' | '1'          | '3 500,00' |
	И элемент формы с именем "ТоварыИтогКоличество" стал равен '2'





