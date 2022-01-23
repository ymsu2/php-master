<?
/* Описание задачи
Есть строка в которой содержатся открывающие и закрывающие скобки в арифметическом выражении - `(` и `)` соответственно. Необходимо проверить, совпадает ли количество открывающихся и закрывающихся скобок.
Последовательность расставления скобок должна быть корректная:
`5 * (4 - 2)` - всё ок
`5 * (4 - 2(` - ошибка
*/

// для проверки:
// echo isValid('5 * (4 - 2(');
// echo isValid('5 * (4 - 2)');
// echo isValid('5 {)))))* (4 - 2)');
// echo isValid('((((((5 {)* 4 - 2)');

function isValid($s) {

	$stack = array();
	for ($i = 0; $i < strlen($s); $i++):
		if ($s[$i] === "(")  // если открывающая скобка
			array_push($stack, "("); // кладём в стек
		elseif ($s[$i] === ")")  // если закрывающая скобка
			if (count($stack) == 0)	return "false"; // если закрывающих скобок больще чем открывающих
			else array_pop($stack); // выталкиваем из стека вершину
	endfor;
	if (count($stack) == 0)	return "true";
	return "false";
}
?>
