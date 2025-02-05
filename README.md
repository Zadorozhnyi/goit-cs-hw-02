# goit-cs-hw-02

## Завдання 1

Напишіть скрипт, який автоматично перевіряє, чи доступні певні вебсайти. Скрипт повинен використовувати команду curl для надсилання HTTP GET запитів до кожного сайту у списку та перевірки відповіді.

### Покрокова інструкція

1. Список вебсайтів. У вашому скрипті має бути визначений масив з URL вебсайтів, які потрібно перевірити. Наприклад, https://google.com, https://facebook.com, https://twitter.com.

2. Перевірка доступності. Скрипт має перевіряти кожен сайт зі списку за допомогою curl, переконуючись, що сайт відповідає з HTTP статус-кодом 200, що вказує на успішну доступність сайту.

3. Запис результатів у файл. Для кожного сайту результат перевірки (доступний чи недоступний) має бути записаний у файл логів. Назва файлу логів має бути визначена у скрипті.

4. Форматування виходу. Результати мають бути чітко сформульовані, наприклад: "[<https://google.com>](<https://google.com/>) is UP" або "[<https://twitter.com>](<https://twitter.com/>) is DOWN".

5. Вивід інформації. Після виконання скрипту має бути виведено повідомлення, що результати записано у файл логів із його назвою.

**Для запуску скрипту у терміналі:**
```
./task_1.sh
./task_1.sh
Перевірка доступності сайтів...
https://google.com is UP
https://facebook.com is UP
https://twitter.com is UP
Результати записані у файл: website_status.log
```