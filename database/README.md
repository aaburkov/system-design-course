## Оценка дисков на 1 год

Коэффициент сезонности = 1.5
Количество пользователей интернетом в СНГ = 250000000 * 0.75 = 187500000

### Post
Capacity ~ 104.5 КБ/с (post traffic) * 86400 * 365 = 3295512 МБ = 3295.5 ГБ = 3.2ТБ * 1.5 = 4.8 ТБ
IOPS = 2315 + 116 = 2430

Disks_for_capacity = 4.8 ТБ / 15 ТБ => 1 SSD SATA
Disks_for_throughput = 2 МБ/с / 500 МБ/с => 1 SSD SATA
Disks_for_iops = 2430 / 1000 => 3 SSD SATA
Disks = max(1, 1, 3)

Result: 3 SSD SATA

### Comments and Reactions

Capacity ~ 104.5 КБ/с (post traffic) * 86400 * 365 = 5676480 МБ = 5676 ГБ = 5.7ТБ * 1.5 = 8.6 ТБ
IOPS = 3472 (Comment RPS) + 2315 (Reaction RPS) = 5800

Disks_for_capacity = 8.6 ТБ / 15 ТБ => 1 SSD nVME
Disks_for_throughput = 1 МБ/с / 3 ГБ/с => 1 SSD nVME
Disks_for_iops = 5800 / 10000 => 1 SSD nVME
Disks = max(1, 1, 1)

Result: 1 SSD nVME

### User

Capacity 187500000 * 550 Б = 104 ГБ
IOPS = 579 (user RPS)

Disks_for_capacity = 104 ГБ / 1 ТБ => 1 SSD SATA
Disks_for_throughput = 318 КБ/с / 500 МБ/с => 1 SSD SATA
Disks_for_iops = 579 / 1000 => 1 SSD SATA
Disks = max(1, 1, 1)

Result: 3 SSD SATA

### Location

Capacity ~ 652 КБ/с (location traffic) * 86400 * 365 = 20561472 МБ = 20561 ГБ = 20.5ТБ * 1.5 = 30.75 ТБ
IOPS = 1157 (location RPS)

Disks_for_capacity = 30.75 ТБ / 40 ТБ => 1 SSD SATA
Disks_for_throughput = 652 КБ/с / 500 МБ/с => 1 SSD SATA
Disks_for_iops = 1157 / 1000 => 2 SSD SATA
Disks = max(1, 1, 2)

Result: 2 SSD SATA

### Photos

Capacity ~ 2430 (post RPS) * 5 (images count) * 500 KB (image size) * 86400 * 365 = 191 ПБ
IOPS = 2430 (post RPS)
traffic_per_second = 2430 (post RPS) * 5 (images count) * 500 KB (image size) = 6 ГБ/c

Disks_for_capacity = 191 ПБ / 100 ТБ => 1910 SSD SATA
Disks_for_throughput = 6 ГБ/c / 500 МБ/с => 12 SSD SATA
Disks_for_iops = 2430 / 1000 => 3 SSD SATA
Disks = max(1910, 12, 3)

Result: 1910 SSD SATA