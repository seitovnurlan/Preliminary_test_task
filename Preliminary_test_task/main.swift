//
//  Предварительный тест: 29.11.2022г
//Создать функцию, которая рассчитает количество символов, пробелов, знаков препинания(. , : ") и количество букв в одну строку. Например: В тексте (какой-то текст) -> 25 символов, 3 пробела, 2 знака препинания и 20 букв.

import Foundation

func numberOfSymbols(text:String) {
    
    //Создаем 4 счетчика
    var symbols = 0 //Счетчик символов
    var spaces = 0 //Счетчик пробелов
    var marks = 0 //Счетчик знаков препинания
    var letters = 0 //Счетчик букв
    
    //С помощью цикла проходимся по каждому символу нашего текста
    for char in text {
        
 //И проверяем //равен ли наш символ запятой или точке или восклицательному или вопросительному знаку
        if char == "," || char == "." || char == "?" || char == "!" || char == ":" {
            //если наш символ относится к знакам препинания, то
            marks += 1 //к счетчику знаков препинания прибавляем 1
            
        //Если же наш текущий символ не относится к знакам препинания, то проверяем, может наш символ
        // равен пробелу?
        } else if char == " " {
            //если наш символ – пробел, то
            spaces += 1 //к счетчику пробелов прибавляем 1
            
        //В любом другом случае, раз наш символ не относится ни к знакам препинания, ни равен пробелу,
        //значит это буква
        } else {
            //тогда к счетчику букв прибавляем 1
            letters += 1
        }
        
        //внутри цикла, каждый наш текущий символ, неважно, знак препинания ли это, пробел или буква – наш символ – это символ, значит к счетчику символов прибавляем 1.
        symbols += 1
        
    }
    
    //Выход из цикла
    
    //Вывод результата. Обращаемся к переменной внутри print через интерполяцию
    print("В тексте (\(text)) -> \(symbols) символов, \(spaces) пробела, \(marks) знака препинания и \(letters) букв")
}

//Создаем некий текст, где есть 4 знака препинания (...?), 2 пробела и 1 буква (Я). 7 символов суммарно.

var text = "Мы изучаем  iOS разработку с 0 в образовательном курсе GeekTech. Материал осваивается хорошо!!! Преподаватель Руслан и ментор Ян профессионалы! А вы не хотите присоединиться к нам:?"

numberOfSymbols(text: text) //выводит следующее:

//В тексте (...Я?  ) -> 7 символов, 2 пробела, 4 знака препинания и 1 букв
