
-- Create HBase Tables
create 'customer_demographics','details'
create 'date_dim','details'
create 'time_dim','details'
create 'item', 'details'
create 'store', 'details'
create 'customer', 'details'
create 'promotion', 'details'
create 'household_demographics', 'details'
create 'customer_address', 'details'

CREATE EXTERNAL TABLE hbase_customer_demographics
(
  cd_demo_sk                bigint,
  cd_gender                 string,
  cd_marital_status         string,
  cd_education_status       string,
  cd_purchase_estimate      int,
  cd_credit_rating          string,
  cd_dep_count              int,
  cd_dep_employed_count     int,
  cd_dep_college_count      int
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
(
"hbase.columns.mapping" = ":key,
details:cd_gender,
details:cd_marital_status,
details:cd_education_status,
details:cd_purchase_estimate,
details:cd_credit_rating,
details:cd_dep_count,
details:cd_dep_employed_count,
details:cd_dep_college_count"
)
TBLPROPERTIES ("hbase.table.name" = "customer_demographics");

CREATE EXTERNAL TABLE hbase_date_dim
(
  d_date_sk                 bigint,
  d_date_id                 string,
  d_date                    string,
  d_month_seq               int,
  d_week_seq                int,
  d_quarter_seq             int,
  d_year                    int,
  d_dow                     int,
  d_moy                     int,
  d_dom                     int,
  d_qoy                     int,
  d_fy_year                 int,
  d_fy_quarter_seq          int,
  d_fy_week_seq             int,
  d_day_name                string,
  d_quarter_name            string,
  d_holiday                 string,
  d_weekend                 string,
  d_following_holiday       string,
  d_first_dom               int,
  d_last_dom                int,
  d_same_day_ly             int,
  d_same_day_lq             int,
  d_current_day             string,
  d_current_week            string,
  d_current_month           string,
  d_current_quarter         string,
  d_current_year            string

) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:date_id,
details:d_date,
details:d_month_seq,
details:d_week_seq,
details:d_quarter_seq,
details:d_year,
details:d_dow,
details:d_moy,
details:d_dom,
details:d_qoy,
details:d_fy_year,
details:d_fy_quarter_seq,
details:d_fy_week_seq,
details:d_day_name,
details:d_quarter_name,
details:d_holiday,
details:d_weekend,
details:d_following_holiday,
details:d_first_dom,
details:d_last_dom,
details:d_same_day_ly,
details:d_same_day_lq,
details:d_current_day,
details:d_current_week,
details:d_current_month,
details:d_current_quarter,
details:d_current_year"
)
TBLPROPERTIES ("hbase.table.name" = "date_dim");



CREATE EXTERNAL TABLE hbase_time_dim
(
  t_time_sk                 bigint,
  t_time_id                 string,
  t_time                    int,
  t_hour                    int,
  t_minute                  int,
  t_second                  int,
  t_am_pm                   string,
  t_shift                   string,
  t_sub_shift               string,
  t_meal_time               string
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:t_time_id,
details:t_time,
details:t_hour,
details:t_minute,
details:t_second,
details:t_am_pm,
details:t_shift,
details:t_sub_shift,
details:t_meal_time"
)
TBLPROPERTIES ("hbase.table.name" = "time_dim");

CREATE EXTERNAL TABLE hbase_item
(
  i_item_sk                 bigint,
  i_item_id                 string,
  i_rec_start_date          string,
  i_rec_end_date            string,
  i_item_desc               string,
  i_current_price           decimal(7,2),
  i_wholesale_cost          decimal(7,2),
  i_brand_id                int,
  i_brand                   string,
  i_class_id                int,
  i_class                   string,
  i_category_id             int,
  i_category                string,
  i_manufact_id             int,
  i_manufact                string,
  i_size                    string,
  i_formulation             string,
  i_color                   string,
  i_units                   string,
  i_container               string,
  i_manager_id              int,
  i_product_name            string
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:i_item_id,
details:i_rec_start_date,
details:i_rec_end_date,
details:i_item_desc,
details:i_current_price,
details:i_wholesale_cost,
details:i_brand_id,
details:i_brand,
details:i_class_id,
details:i_class,
details:i_category_id,
details:i_category,
details:i_manufact_id,
details:i_manufact,
details:i_size,
details:i_formulation,
details:i_color,
details:i_units,
details:i_container,
details:i_manager_id,
details:i_product_name"
)
TBLPROPERTIES ("hbase.table.name" = "item");

CREATE EXTERNAL TABLE hbase_customer
(
  c_customer_sk             bigint,
  c_customer_id             string,
  c_current_cdemo_sk        bigint,
  c_current_hdemo_sk        bigint,
  c_current_addr_sk         bigint,
  c_first_shipto_date_sk    bigint,
  c_first_sales_date_sk     bigint,
  c_salutation              string,
  c_first_name              string,
  c_last_name               string,
  c_preferred_cust_flag     string,
  c_birth_day               int,
  c_birth_month             int,
  c_birth_year              int,
  c_birth_country           string,
  c_login                   string,
  c_email_address           string,
  c_last_review_date        string
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:c_customer_id,
details:c_current_cdemo_sk,
details:c_current_hdemo_sk,
details:c_current_addr_sk,
details:c_first_shipto_date_sk,
details:c_first_sales_date_sk,
details:c_salutation,
details:c_first_name,
details:c_last_name,
details:c_preferred_cust_flag,
details:c_birth_day,
details:c_birth_month,
details:c_birth_year,
details:c_birth_country,
details:c_login,
details:c_email_address,
details:c_last_review_date"
)
TBLPROPERTIES ("hbase.table.name" = "customer");

CREATE EXTERNAL TABLE hbase_promotion
(
  p_promo_sk                bigint,
  p_promo_id                string,
  p_start_date_sk           bigint,
  p_end_date_sk             bigint,
  p_item_sk                 bigint,
  p_cost                    decimal(15,2),
  p_response_target         int,
  p_promo_name              string,
  p_channel_dmail           string,
  p_channel_email           string,
  p_channel_catalog         string,
  p_channel_tv              string,
  p_channel_radio           string,
  p_channel_press           string,
  p_channel_event           string,
  p_channel_demo            string,
  p_channel_details         string,
  p_purpose                 string,
  p_discount_active         string
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:p_promo_id,
details:p_start_date_sk,
details:p_end_date_sk,
details:p_item_sk,
details:p_cost,
details:p_response_target,
details:p_promo_name,
details:p_channel_dmail,
details:p_channel_email,
details:p_channel_catalog,
details:p_channel_tv,
details:p_channel_radio,
details:p_channel_press,
details:p_channel_event,
details:p_channel_demo,
details:p_channel_details,
details:p_purpose,
details:p_discount_active"
)
TBLPROPERTIES ("hbase.table.name" = "promotion");

CREATE EXTERNAL TABLE hbase_household_demographics
(
  hd_demo_sk                bigint,
  hd_income_band_sk         bigint,
  hd_buy_potential          string,
  hd_dep_count              int,
  hd_vehicle_count          int
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:hd_income_band_sk,
details:hd_buy_potential,
details:hd_dep_count,
details:hd_vehicle_count"
)
TBLPROPERTIES ("hbase.table.name" = "household_demographics");

CREATE EXTERNAL TABLE hbase_customer_address
(
  ca_address_sk             bigint,
  ca_address_id             string,
  ca_street_number          string,
  ca_street_name            string,
  ca_street_type            string,
  ca_suite_number           string,
  ca_city                   string,
  ca_county                 string,
  ca_state                  string,
  ca_zip                    string,
  ca_country                string,
  ca_gmt_offset             decimal(5,2),
  ca_location_type          string
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:ca_address_id,
details:ca_street_number,
details:ca_street_name,
details:ca_street_type,
details:ca_suite_number,
details:ca_city,
details:ca_county,
details:ca_state,
details:ca_zip,
details:ca_country,
details:ca_gmt_offset,
details:ca_location_type"
)
TBLPROPERTIES ("hbase.table.name" = "customer_address");


CREATE EXTERNAL TABLE hbase_store
(
  s_store_sk                bigint,
  s_store_id                string,
  s_rec_start_date          string,
  s_rec_end_date            string,
  s_closed_date_sk          bigint,
  s_store_name              string,
  s_number_employees        int,
  s_floor_space             int,
  s_hours                   string,
  s_manager                 string,
  s_market_id               int,
  s_geography_class         string,
  s_market_desc             string,
  s_market_manager          string,
  s_division_id             int,
  s_division_name           string,
  s_company_id              int,
  s_company_name            string,
  s_street_number           string,
  s_street_name             string,
  s_street_type             string,
  s_suite_number            string,
  s_city                    string,
  s_county                  string,
  s_state                   string,
  s_zip                     string,
  s_country                 string,
  s_gmt_offset              decimal(5,2),
  s_tax_precentage          decimal(5,2)
) 
STORED BY 'org.apache.hadoop.hive.hbase.HBaseStorageHandler'
WITH SERDEPROPERTIES 
("hbase.columns.mapping" = ":key,
details:s_store_id,
details:s_rec_start_date,
details:s_rec_end_date,
details:s_closed_date_sk,
details:s_store_name,
details:s_number_employees,
details:s_floor_space,
details:s_hours,
details:s_manager,
details:s_market_id,
details:s_geography_class,
details:s_market_desc,
details:s_market_manager,
details:s_division_id,
details:s_division_name,
details:s_company_id,
details:s_company_name,
details:s_street_number,
details:s_street_name,
details:s_street_type,
details:s_suite_number,
details:s_city,
details:s_county,
details:s_state,
details:s_zip,
details:s_country,
details:s_gmt_offset,
details:s_tax_precentage")
TBLPROPERTIES ("hbase.table.name" = "store");

--Load dimension data into Hbase tables
insert into table hbase_customer_demographics select * from customer_demographics;
insert into table hbase_date_dim select * from date_dim;
insert into table hbase_time_dim select * from time_dim;
insert into table hbase_item select * from item;
insert into table hbase_store select * from store;
insert into table hbase_customer select * from customer;
insert into table hbase_promotion select * from promotion;
insert into table hbase_household_demographics select * from household_demographics;
insert into table hbase_customer_address select * from customer_address;