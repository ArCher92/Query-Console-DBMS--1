
&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если НЕ Параметры.Свойство("ИмяМакета") Тогда
		Отказ = Истина;
		Возврат;
	КонецЕсли;
	ИмяМакета = Параметры.ИмяМакета;
    Макет = РеквизитФормыВЗначение("Объект").ПолучитьМакет(ИмяМакета);
	Если Макет <> Неопределено Тогда
		HTML = Макет.ПолучитьТекст();
    КонецЕсли;
	
	Если Параметры.Свойство("Заголовок") Тогда
		ЭтаФорма.Заголовок = Параметры.Заголовок;	
	КонецЕсли;
	
КонецПроцедуры

&НаКлиенте
Процедура ЗакрытьФорму(Команда)
	
	Закрыть();

КонецПроцедуры

