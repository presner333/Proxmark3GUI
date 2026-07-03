# Proxmark3GUI Configuration Package

Пакет конфігурацій для Proxmark3GUI з підтримкою **v4.21611 BREAKMEIFYOUCAN!**

## 📦 Вміст

Цей пакет містить:

- ✅ `config_official.json` — Official v3.1.0
- ✅ `config_rrgv4.13441.json` — v4.13441 (Midsummer)
- ✅ `config_rrgv4.15864.json` — v4.15864 (Radium)
- ✅ `config_rrgv4.16717.json` — v4.16717 (Seven)
- ✅ `config_rrgv4.21611.json` — v4.21611 (BREAKMEIFYOUCAN!) **NEW** ⭐

## 🚀 Швидка установка (Windows)

### Способ 1: Автоматична установка (Рекомендується)

1. Завантажи та розпакуй архів
2. Запусти `install.bat` двічі (кліком мишою)
3. Дозволи скрипту внести зміни в систему
4. Перезапусти **Proxmark3GUI**
5. Вибери конфіг `config_rrgv4.21611` в Settings

### Способ 2: Ручна установка

1. Відкрий **File Explorer**
2. Перейди до `%APPDATA%\proxmark3\`
   - (Скопіюй цей шлях у адресний рядок)
3. Скопіюй всі файли `config_*.json` з архіва сюди
4. Перезапусти **Proxmark3GUI**

---

## 📋 Налаштування в GUI

1. Запусти **Proxmark3GUI**
2. Перейди в меню **Settings**
3. Вибери вкладку **Configuration**
4. Вибери з dropdown-списку:
   - `config_rrgv4.21611` (для proxmark3 v4.21611)
   - `config_rrgv4.16717` (для proxmark3 v4.16717)
   - Тощо...
5. Нажми **OK** або **Apply**
6. Перезапусти додаток

---

## ⭐ Новинки в v4.21611

### Нові команди:

```bash
# Повністю автоматична атака на Mifare Classic
hf mf autopwn

# Розбір прав доступу на картці
hf mf acl --blk <block>
```

### Вулучені команди:

- ✅ `hf mf restore --force` — безпечнішість при письме
- ✅ `trace save` з автоматичним визначенням шляху
- ✅ Розширена підтримка HF 14a/14b/15

---

## 🔧 Розташування файлів

На Windows конфіги зберігаються тут:

```
C:\Users\YourUsername\AppData\Roaming\proxmark3\
```

Короткий шлях:
```
%APPDATA%\proxmark3\
```

---

## ❓ Проблеми та вирішення

### Проблема: "Configuration not found"

**Рішення:**
1. Перевір, що всі файли скопійовані в `%APPDATA%\proxmark3\`
2. Перезапусти GUI
3. Якщо не допоміг — запусти `install.bat` заново

### Проблема: "Permission denied"

**Рішення:**
1. Запусти `install.bat` **як Administrator**
2. Right-click на `install.bat` → "Run as administrator"

### Проблема: файли не скопіюються

**Рішення:**
1. Закрий **Proxmark3GUI**
2. Видали старі конфіги з `%APPDATA%\proxmark3\`
3. Запусти `install.bat` заново

---

## 📝 Версії конфігів

| Конфіг | Версія | Дата | Примітка |
|--------|--------|------|----------|
| config_official.json | Official v3.1.0 | - | Базова конфігурація |
| config_rrgv4.13441.json | RRG v4.13441 | 2021-06-25 | Midsummer |
| config_rrgv4.15864.json | RRG v4.15864 | 2022-10-28 | Radium |
| config_rrgv4.16717.json | RRG v4.16717 | 2023-06-26 | Seven |
| **config_rrgv4.21611.json** | **RRG v4.21611** | **2026-04-14** | **BREAKMEIFYOUCAN!** ⭐ |

---

## 🔗 Посилання

- **Proxmark3 RRG Repository:** https://github.com/RfidResearchGroup/proxmark3
- **Proxmark3GUI Repository:** https://github.com/wh201906/Proxmark3GUI
- **Ця версія (Fork):** https://github.com/presner333/Proxmark3GUI

---

## 📞 Потрібна допомога?

Якщо конфіг не працює:

1. Перевір версію proxmark3 на пристрої:
   ```bash
   hw version
   ```

2. Вибери відповідний конфіг за номером версії

3. Якщо версія не совпадає — спробуй найближчу доступну версію

---

**Enjoy your Proxmark3 experience!** 🎉
