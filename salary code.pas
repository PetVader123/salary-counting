program SalaryTotalFromFile;

var
  salaryFile: TextFile;
  name, position: string;
  salary, sum: Integer;
  filename: string;

begin
  // Указываем имя файла
  Write('Введите имя файла: ');
  ReadLn(filename);
  
  // Присоединяем переменную к файлу
  AssignFile(salaryFile, filename);
  
  // Открываем файл для чтения
  Reset(salaryFile);
  
  // Обнуляем сумму
  sum := 0;
  
  // Читаем данные из файла
  while not Eof(salaryFile) do
  begin
    ReadLn(salaryFile, name);      // Читаем имя сотрудника
    ReadLn(salaryFile, position);  // Читаем должность
    ReadLn(salaryFile, salary);    // Читаем зарплату
    sum := sum + salary;           // Суммируем зарплаты
  end;
  
  // Закрываем файл
  CloseFile(salaryFile);
  
  // Выводим общую сумму выплаченных зарплат
  WriteLn('Общая сумма выплаченных зарплат: ', sum);
end.