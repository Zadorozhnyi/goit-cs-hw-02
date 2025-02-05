#!/bin/bash

# Масив із URL вебсайтів
WEBSITES=(
    "https://google.com"
    "https://facebook.com"
    "https://twitter.com"
)

# Файл логів
LOG_FILE="website_status.log"

# Очищення попередніх логів
> "$LOG_FILE"

echo "Перевірка доступності сайтів..."

# Перевірка кожного сайту
for SITE in "${WEBSITES[@]}"; do
    STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" -L "$SITE")
    if [ "$STATUS_CODE" -eq 200 ]; then
        echo "$SITE is UP" | tee -a "$LOG_FILE"
    else
        echo "$SITE is DOWN" | tee -a "$LOG_FILE"
    fi
done

echo "Результати записані у файл: $LOG_FILE"
