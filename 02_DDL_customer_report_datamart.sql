-- Шаг 5. Напишите DDL новой витрины

DROP TABLE IF EXISTS dwh.customer_report_datamart;

CREATE TABLE IF NOT EXISTS dwh.customer_report_datamart (
    id SMALLINT GENERATED ALWAYS AS IDENTITY NOT NULL,
    customer_id SMALLINT NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    customer_address VARCHAR NOT NULL,
    customer_birthday DATE NOT NULL,
    customer_email VARCHAR(100) NOT NULL, 
    customer_money NUMERIC(9,2) NOT NULL,
    platform_money NUMERIC(7,2) NOT NULL,
    count_order SMALLINT NOT NULL,
    avg_price_order NUMERIC(6,2) NOT NULL,
    median_time_order_completed NUMERIC(5,1) NULL,
    top_product_category VARCHAR(30) NOT NULL,
    top_craftsman_id SMALLINT NOT NULL, 
    count_order_created SMALLINT NOT NULL, 
    count_order_in_progress SMALLINT NOT NULL, 
    count_order_delivery SMALLINT NOT NULL,
    count_order_done SMALLINT NOT NULL, 
    count_order_not_done SMALLINT NOT NULL, 
    report_period VARCHAR(30) NOT NULL,
    CONSTRAINT customer_report_datamart_pk PRIMARY KEY (id)
);

-- Добавление комментариев
COMMENT ON COLUMN dwh.customer_report_datamart.id IS 'Идентификатор записи';
COMMENT ON COLUMN dwh.customer_report_datamart.customer_id IS 'Идентификатор заказчика';
COMMENT ON COLUMN dwh.customer_report_datamart.customer_name IS 'Ф. И. О. заказчика';
COMMENT ON COLUMN dwh.customer_report_datamart.customer_address IS 'Адрес заказчика';
COMMENT ON COLUMN dwh.customer_report_datamart.customer_birthday IS 'Дата рождения заказчика';
COMMENT ON COLUMN dwh.customer_report_datamart.customer_email IS 'Электронная почта заказчика';
COMMENT ON COLUMN dwh.customer_report_datamart.customer_money IS 'Сумма, которую потратил заказчик';
COMMENT ON COLUMN dwh.customer_report_datamart.platform_money IS 'Сумма, которую заработала платформа от покупок заказчика за месяц (10% от суммы, которую потратил заказчик)';
COMMENT ON COLUMN dwh.customer_report_datamart.count_order IS 'Количество заказов у заказчика за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.avg_price_order IS 'Средняя стоимость одного заказа у заказчика за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.median_time_order_completed IS 'Медианное время в днях от момента создания заказа до его завершения за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.top_product_category IS 'Самая популярная категория товаров у этого заказчика за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.top_craftsman_id IS 'Идентификатор самого популярного мастера ручной работы у заказчика. Если заказчик сделал одинаковое количество заказов у нескольких мастеров, возьмите любого';
COMMENT ON COLUMN dwh.customer_report_datamart.count_order_created IS 'Количество созданных заказов за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.count_order_in_progress IS 'Количество заказов в процессе изготовки за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.count_order_delivery IS 'Количество заказов в доставке за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.count_order_done IS 'Количество завершённых заказов за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.count_order_not_done IS 'Количество незавершённых заказов за месяц';
COMMENT ON COLUMN dwh.customer_report_datamart.report_period IS 'Отчётный период, год и месяц';


