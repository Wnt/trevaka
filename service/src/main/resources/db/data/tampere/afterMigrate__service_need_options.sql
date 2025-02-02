-- SPDX-FileCopyrightText: 2021 City of Tampere
--
-- SPDX-License-Identifier: LGPL-2.1-or-later

INSERT INTO service_need_option
    (id, name_fi, name_sv, name_en, valid_placement_type, default_option, fee_coefficient, occupancy_coefficient, occupancy_coefficient_under_3y, realized_occupancy_coefficient, realized_occupancy_coefficient_under_3y, daycare_hours_per_week, contract_days_per_month, part_day, part_week, fee_description_fi, fee_description_sv, voucher_value_description_fi, voucher_value_description_sv, valid_from, valid_to, show_for_citizen, display_order)
VALUES
    ('50358394-b961-11eb-b51f-67ac436e5636', 'Kokopäiväinen', 'Kokopäiväinen', 'Full-time', 'DAYCARE', TRUE, 1.0, 1.0, 1.75, 1.0, 1.75, 40, NULL, FALSE, FALSE, 'Kokopäiväinen', 'Kokopäiväinen', 'Kokopäiväinen', 'Kokopäiväinen', '2000-01-01', NULL, TRUE, null),
    ('86ef70a0-bf85-11eb-91e6-1fb57a101161', 'Kokopäiväinen', 'Kokopäiväinen', 'Full-time', 'DAYCARE', FALSE, 1.0, 1.0, 1.75, 1.0, 1.75, 40, NULL, FALSE, FALSE, 'Kokopäiväinen', 'Kokopäiväinen', 'Kokopäiväinen', 'Kokopäiväinen', '2000-01-01', NULL, TRUE, 0),
    ('503590f0-b961-11eb-b520-53740af3f7ee', 'Kokopäiväinen, 10 pv sopimus', 'Kokopäiväinen, 10 pv sopimus', 'Full-time, 10 day agreement', 'DAYCARE', FALSE, 0.5, 0.5, 0.88, 0.5, 1.75, 20, 10, FALSE, TRUE, 'Kokopäiväinen, 10 pv sopimus', 'Kokopäiväinen, 10 pv sopimus', 'Kokopäiväinen, 10 pv sopimus', 'Kokopäiväinen, 10 pv sopimus', '2000-01-01', NULL, TRUE, 1),
    ('503591ae-b961-11eb-b521-1fca99358eef', 'Kokopäiväinen, 15 pv sopimus', 'Kokopäiväinen, 15 pv sopimus', 'Full-time, 15 day agreement', 'DAYCARE', FALSE, 0.75, 1.0, 1.75, 1.0, 1.75, 30, 15, FALSE, TRUE, 'Kokopäiväinen, 15 pv sopimus', 'Kokopäiväinen, 15 pv sopimus', 'Kokopäiväinen, 15 pv sopimus', 'Kokopäiväinen, 15 pv sopimus', '2000-01-01', NULL, TRUE, 2),
    ('50359212-b961-11eb-b522-074fb05f7086', 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', 'Part-time, max 5h per day', 'DAYCARE_PART_TIME', TRUE, 0.6, 0.5, 1.75, 0.5, 1.75, 25, NULL, TRUE, FALSE, 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', '2000-01-01', NULL, TRUE, null),
    ('86ef7370-bf85-11eb-91e7-6fcd728c518d', 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', 'Part-time, max 5h per day', 'DAYCARE_PART_TIME', FALSE, 0.6, 0.5, 1.75, 0.5, 1.75, 25, NULL, TRUE, FALSE, 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', 'Osapäiväinen, max 5h päivässä', '2000-01-01', NULL, TRUE, 1001),
    ('50359280-b961-11eb-b523-237115533645', 'Osapäiväinen, max 5h päivässä; 10 pv sopimus', 'Osapäiväinen, max 5h päivässä; 10 pv sopimus', 'Part-time, max 5h per day; 10 day agreement', 'DAYCARE_PART_TIME', FALSE, 0.3, 0.25, 0.88, 0.50, 1.75, 12, 10, TRUE, TRUE, 'Osapäiväinen, max 5h päivässä; 10 pv sopimus', 'Osapäiväinen, max 5h päivässä; 10 pv sopimus', 'Osapäiväinen, max 5h päivässä; 10 pv sopimus', 'Osapäiväinen, max 5h päivässä; 10 pv sopimus', '2000-01-01', NULL, TRUE, 1002),
    ('503592da-b961-11eb-b524-7f27c780d83a', 'Osapäiväinen, max 5h päivässä; 15 pv sopimus', 'Osapäiväinen, max 5h päivässä; 15 pv sopimus', 'Part-time, max 5h per day; 15 day agreement', 'DAYCARE_PART_TIME', FALSE, 0.45, 0.5, 1.75, 0.5, 1.75, 18, 15, TRUE, TRUE, 'Osapäiväinen, max 5h päivässä; 15 pv sopimus', 'Osapäiväinen, max 5h päivässä; 15 pv sopimus', 'Osapäiväinen, max 5h päivässä; 15 pv sopimus', 'Osapäiväinen, max 5h päivässä; 15 pv sopimus', '2000-01-01', NULL, TRUE, 1003),
    ('50359334-b961-11eb-b525-f3febdfea5d3', 'Osapäiväinen, max 20h viikossa', 'Osapäiväinen, max 20h viikossa', 'Part-time, max 20h per week', 'DAYCARE_PART_TIME', FALSE, 0.5, 0.5, 0.88, 0.5, 1.75, 20, NULL, TRUE, FALSE, 'Osapäiväinen, max 20h viikossa', 'Osapäiväinen, max 20h viikossa', 'Osapäiväinen, max 20h viikossa', 'Osapäiväinen, max 20h viikossa', '2000-01-01', NULL, TRUE, 1000),
    ('5035938e-b961-11eb-b526-6b30323c87a8', 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', 'Temporary daycare', 'TEMPORARY_DAYCARE', TRUE, 1.0, 1.0, 1.75, 1.0, 1.75, 40, NULL, FALSE, FALSE, 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', '2000-01-01', NULL, TRUE, null),
    ('cfeae50c-20c3-45ff-be28-e78f71b8bed1', 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', 'Temporary daycare', 'TEMPORARY_DAYCARE_PART_DAY', TRUE, 1.0, 1.0, 1.75, 1.0, 1.75, 40, NULL, FALSE, FALSE, 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', 'Tilapäinen varhaiskasvatus', '2000-01-01', NULL, TRUE, null),
    ('0bfc6c92-ff2a-11eb-a785-2724e8e5e7ee', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Preschool daycare - max 5 h per day', 'PRESCHOOL_DAYCARE', TRUE, 0.6, 1, 1, 1, 1, 25, NULL, TRUE, FALSE, 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', '2000-01-01', '2023-06-02', FALSE, null),
    ('503593e8-b961-11eb-b527-a3dcdfb628ec', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Preschool daycare - max 5 h per day', 'PRESCHOOL_DAYCARE', FALSE, 0.6, 1, 1, 1, 1, 25, NULL, TRUE, FALSE, 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus - max 5 h päivässä', '2000-01-01', '2023-06-02', FALSE, 2000),
    ('50359442-b961-11eb-b528-df3290c0d63e', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä', 'Preschool daycare – over 5 h per day', 'PRESCHOOL_DAYCARE', FALSE, 0.8, 1, 1, 1, 1, 32, NULL, FALSE, FALSE, 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä', '2000-01-01', '2023-06-02', FALSE, 2100),
    ('bc6a42d0-fa74-11eb-9a2b-d315a7916074', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 10 pv sopimus', 'Preschool daycare – max 5 h per day; 10 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.3, 0.5, 0.5, 1, 1, 12, 10, TRUE, TRUE, 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 10 pv sopimus', '2000-01-01', '2023-06-02', FALSE, 2200),
    ('bc6a44ec-fa74-11eb-9a2c-73b53c2af869', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 15 pv sopimus', 'Preschool daycare – max 5 h per day; 15 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.45, 1, 1, 1, 1, 18, 15, TRUE, TRUE, 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – max 5 h päivässä; 15 pv sopimus', '2000-01-01', '2023-06-02', FALSE, 2300),
    ('bc6a4550-fa74-11eb-9a2d-035acd5db9aa', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 10 pv sopimus', 'Preschool daycare – over 5 h per day; 10 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.4, 0.5, 0.5, 1, 1, 18, 10, FALSE, TRUE, 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 10 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 10 pv sopimus', '2000-01-01', '2023-06-02', FALSE, 2400),
    ('bc6a45a0-fa74-11eb-9a2e-fb411a8588da', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 15 pv sopimus', 'Preschool daycare – over 5 h per day; 15 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.6, 1, 1, 1, 1, 24, 15, FALSE, TRUE, 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 15 pv sopimus', 'Esiopetusta täydentävä varhaiskasvatus – yli 5 h päivässä; 15 pv sopimus', '2000-01-01', '2023-06-02', FALSE, 2500),
    ('0a58d934-6fd1-11ed-a75e-c353faef5857', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Preschool daycare - max 5 h per day', 'PRESCHOOL_DAYCARE', FALSE, 0.6, 1, 1, 1, 1, 25, NULL, TRUE, FALSE, 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', '2000-01-01', NULL, TRUE, 2000),
    ('0a58db0a-6fd1-11ed-a75e-bbde95c1adef', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Preschool daycare – max 5 h per day; 10 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.3, 0.5, 0.5, 1, 1, 12, 10, TRUE, TRUE, 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', '2000-01-01', NULL, TRUE, 2100),
    ('0a58dbe6-6fd1-11ed-a75e-5335f2b9a91b', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Preschool daycare – max 5 h per day; 15 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.45, 1, 1, 1, 1, 18, 15, TRUE, TRUE, 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', '2000-01-01', NULL, TRUE, 2200),
    ('0a58da38-6fd1-11ed-a75e-9b2790b0b4f5', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Preschool daycare – over 5 h per day', 'PRESCHOOL_DAYCARE', FALSE, 0.8, 1, 1, 1, 1, 32, NULL, FALSE, FALSE, 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', '2000-01-01', NULL, TRUE, 2300),
    ('0a58dcae-6fd1-11ed-a75e-b3e10433b948', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Preschool daycare – over 5 h per day; 10 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.4, 0.5, 0.5, 1, 1, 18, 10, FALSE, TRUE, 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', '2000-01-01', NULL, TRUE, 2400),
    ('0a58dd94-6fd1-11ed-a75e-8390cdc6af62', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Preschool daycare – over 5 h per day; 15 day agreement', 'PRESCHOOL_DAYCARE', FALSE, 0.6, 1, 1, 1, 1, 24, 15, FALSE, TRUE, 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', '2000-01-01', NULL, TRUE, 2500),
    ('9cc7713c-f153-489a-a7c2-e001640f5c29', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Preschool daycare - max 5 h per day', 'PRESCHOOL_DAYCARE_ONLY', TRUE, 0.6, 1, 1, 1, 1, 25, NULL, TRUE, FALSE, 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', '2000-01-01', NULL, FALSE, null),
    ('816d36b5-29b3-494b-8ac4-b2298764c803', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Preschool daycare - max 5 h per day', 'PRESCHOOL_DAYCARE_ONLY', FALSE, 0.6, 1, 1, 1, 1, 25, NULL, TRUE, FALSE, 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', 'Täydentävä varhaiskasvatus, max 5h päivässä', '2000-01-01', NULL, FALSE, 2000),
    ('9a2b393b-ebb6-49d9-aa1e-b86d80ba9eb5', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Preschool daycare – max 5 h per day; 10 day agreement', 'PRESCHOOL_DAYCARE_ONLY', FALSE, 0.3, 0.5, 0.5, 1, 1, 12, 10, TRUE, TRUE, 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 10 pv sopimus', '2000-01-01', NULL, FALSE, 2100),
    ('efcfd8f4-92d9-43a4-91e0-a7e2fde9c4e5', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Preschool daycare – max 5 h per day; 15 day agreement', 'PRESCHOOL_DAYCARE_ONLY', FALSE, 0.45, 1, 1, 1, 1, 18, 15, TRUE, TRUE, 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, max 5h päivässä; 15 pv sopimus', '2000-01-01', NULL, FALSE, 2200),
    ('313744dc-ac9e-46b1-8004-940d429664e3', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Preschool daycare – over 5 h per day', 'PRESCHOOL_DAYCARE_ONLY', FALSE, 0.8, 1, 1, 1, 1, 32, NULL, FALSE, FALSE, 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', 'Täydentävä varhaiskasvatus, yli 5h päivässä', '2000-01-01', NULL, FALSE, 2300),
    ('9e1e61da-3362-4f8f-bbf9-ea1eb0d0206c', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Preschool daycare – over 5 h per day; 10 day agreement', 'PRESCHOOL_DAYCARE_ONLY', FALSE, 0.4, 0.5, 0.5, 1, 1, 18, 10, FALSE, TRUE, 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 10 pv sopimus', '2000-01-01', NULL, FALSE, 2400),
    ('b5269ff0-a047-496f-9bda-6286520ef1a5', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Preschool daycare – over 5 h per day; 15 day agreement', 'PRESCHOOL_DAYCARE_ONLY', FALSE, 0.6, 1, 1, 1, 1, 24, 15, FALSE, TRUE, 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', 'Täydentävä varhaiskasvatus, yli 5h päivässä; 15 pv sopimus', '2000-01-01', NULL, FALSE, 2500),
    ('88f3bf1e-6646-11ed-8202-8f213a9146c2', 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', 'Preschool club - 1-3 h per day', 'PRESCHOOL_CLUB', TRUE, 1.0, 0, 0, 0, 0, 15, NULL, TRUE, FALSE, 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', '2000-01-01', NULL, TRUE, null),
    ('88f3dfd0-6646-11ed-8202-4fe90b8e5485', 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', 'Preschool club - 1-3 h per day', 'PRESCHOOL_CLUB', FALSE, 1.0, 0, 0, 0, 0, 15, NULL, TRUE, FALSE, 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', 'Esiopetuksen kerho 1-3h päivässä', '2000-01-01', NULL, TRUE, 3000),
    ('88f3e214-6646-11ed-8202-f77aa4749644', 'Esiopetuksen kerho 3-5h päivässä', 'Esiopetuksen kerho 3-5h päivässä', 'Preschool club – 3-5 h per day', 'PRESCHOOL_CLUB', FALSE, 1.0, 0, 0, 0, 0, 25, NULL, TRUE, FALSE, 'Esiopetuksen kerho 3-5h päivässä', 'Esiopetuksen kerho 3-5h päivässä', 'Esiopetuksen kerho 3-5h päivässä', 'Esiopetuksen kerho 3-5h päivässä', '2000-01-01', NULL, TRUE, 3100),
    ('88f3e3e0-6646-11ed-8202-3bc1b45aaa73', 'Esiopetuksen kerho yli 5h päivässä', 'Esiopetuksen kerho yli 5h päivässä', 'Preschool club – over 5 h per day', 'PRESCHOOL_CLUB', FALSE, 1.0, 0, 0, 0, 0, 32, NULL, FALSE, FALSE, 'Esiopetuksen kerho yli 5h päivässä', 'Esiopetuksen kerho yli 5h päivässä', 'Esiopetuksen kerho yli 5h päivässä', 'Esiopetuksen kerho yli 5h päivässä', '2000-01-01', NULL, TRUE, 3200),
    ('88f3e5a2-6646-11ed-8202-0b8db1a29ca5', 'Esiopetuksen kerho 1-3h päivässä; 10 pv sopimus', 'Esiopetuksen kerho 1-3h päivässä; 10 pv sopimus', 'Preschool club – 1-3 h per day; 10 day agreement', 'PRESCHOOL_CLUB', FALSE, 0.6, 0, 0, 0, 0, 7, 10, TRUE, TRUE, 'Esiopetuksen kerho 1-3h päivässä; 10 pv sopimus', 'Esiopetuksen kerho 1-3h päivässä; 10 pv sopimus', 'Esiopetuksen kerho 1-3h päivässä; 10 pv sopimus', 'Esiopetuksen kerho 1-3h päivässä; 10 pv sopimus', '2000-01-01', NULL, TRUE, 3300),
    ('88f3e75a-6646-11ed-8202-b7867ae6358a', 'Esiopetuksen kerho 3-5h päivässä; 10pv sopimus', 'Esiopetuksen kerho 3-5h päivässä; 10pv sopimus', 'Preschool club – 3-5 h per day; 10 day agreement', 'PRESCHOOL_CLUB', FALSE, 0.5, 0, 0, 0, 0, 12, 10, TRUE, TRUE, 'Esiopetuksen kerho 3-5h päivässä; 10pv sopimus', 'Esiopetuksen kerho 3-5h päivässä; 10pv sopimus', 'Esiopetuksen kerho 3-5h päivässä; 10pv sopimus', 'Esiopetuksen kerho 3-5h päivässä; 10pv sopimus', '2000-01-01', NULL, TRUE, 3400),
    ('88f3e912-6646-11ed-8202-bb9fe8059b4a', 'Esiopetuksen kerho yli 5h päivässä; 10pv sopimus', 'Esiopetuksen kerho yli 5h päivässä; 10pv sopimus', 'Preschool club – over 5 h per day; 10 day agreement', 'PRESCHOOL_CLUB', FALSE, 0.5, 0, 0, 0, 0, 18, 10, FALSE, TRUE, 'Esiopetuksen kerho yli 5h päivässä; 10pv sopimus', 'Esiopetuksen kerho yli 5h päivässä; 10pv sopimus', 'Esiopetuksen kerho yli 5h päivässä; 10pv sopimus', 'Esiopetuksen kerho yli 5h päivässä; 10pv sopimus', '2000-01-01', NULL, TRUE, 3500),
    ('ff6ddcd4-fa8a-11eb-8592-2f2b4e398fcb', 'Kerho', 'Kerho', 'Club', 'CLUB', TRUE, 0.0, 1.0, 1.0, 1.0, 1.0, 0, NULL, TRUE, TRUE, 'Kerho', 'Kerho', 'Kerho', 'Kerho', '2000-01-01', NULL, TRUE, null),
    ('d8681652-246b-11ed-b02b-ebe37c3347e8', 'Esiopetus', 'Esiopetus', 'Preschool', 'PRESCHOOL', TRUE, 0.0, 0.5, 0.5, 0.5, 0.5, 0, NULL, TRUE, TRUE, 'Esiopetus', 'Esiopetus', 'Esiopetus', 'Esiopetus', '2000-01-01', NULL, TRUE, null),
    ('1b4413f6-d99d-11eb-89ac-a3a978104bce', 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', 'School shift care', 'SCHOOL_SHIFT_CARE', TRUE, 1.0, 1.0, 1.0, 1.0, 1.0, 40, NULL, TRUE, FALSE, 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', '2000-01-01', NULL, TRUE, null),
    ('e20929c1-719a-42e1-93ca-da74fce495f8', 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', 'School shift care', 'SCHOOL_SHIFT_CARE', FALSE, 1.0, 1.0, 1.0, 1.0, 1.0, 40, NULL, TRUE, FALSE, 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', 'Koululaisen vuorohoito', '2000-01-01', NULL, TRUE, null)
ON CONFLICT (id) DO
UPDATE SET
    name_fi = EXCLUDED.name_fi,
    name_sv = EXCLUDED.name_sv,
    name_en = EXCLUDED.name_en,
    valid_placement_type = EXCLUDED.valid_placement_type,
    default_option = EXCLUDED.default_option,
    fee_coefficient = EXCLUDED.fee_coefficient,
    occupancy_coefficient = EXCLUDED.occupancy_coefficient,
    occupancy_coefficient_under_3y = EXCLUDED.occupancy_coefficient_under_3y,
    realized_occupancy_coefficient = EXCLUDED.realized_occupancy_coefficient,
    realized_occupancy_coefficient_under_3y = EXCLUDED.realized_occupancy_coefficient_under_3y,
    daycare_hours_per_week = EXCLUDED.daycare_hours_per_week,
    contract_days_per_month = EXCLUDED.contract_days_per_month,
    part_day = EXCLUDED.part_day,
    part_week = EXCLUDED.part_week,
    fee_description_fi = EXCLUDED.fee_description_fi,
    fee_description_sv = EXCLUDED.fee_description_sv,
    voucher_value_description_fi = EXCLUDED.voucher_value_description_fi,
    voucher_value_description_sv = EXCLUDED.voucher_value_description_sv,
    valid_from = EXCLUDED.valid_from,
    valid_to = EXCLUDED.valid_to,
    show_for_citizen = EXCLUDED.show_for_citizen,
    display_order = EXCLUDED.display_order
WHERE
    service_need_option.name_fi <> EXCLUDED.name_fi OR
    service_need_option.name_sv <> EXCLUDED.name_sv OR
    service_need_option.name_en <> EXCLUDED.name_en OR
    service_need_option.valid_placement_type <> EXCLUDED.valid_placement_type OR
    service_need_option.default_option <> EXCLUDED.default_option OR
    service_need_option.fee_coefficient <> EXCLUDED.fee_coefficient OR
    service_need_option.occupancy_coefficient <> EXCLUDED.occupancy_coefficient OR
    service_need_option.occupancy_coefficient_under_3y <> EXCLUDED.occupancy_coefficient_under_3y OR
    service_need_option.realized_occupancy_coefficient <> EXCLUDED.realized_occupancy_coefficient OR
    service_need_option.realized_occupancy_coefficient_under_3y <> EXCLUDED.realized_occupancy_coefficient_under_3y OR
    service_need_option.daycare_hours_per_week <> EXCLUDED.daycare_hours_per_week OR
    service_need_option.contract_days_per_month IS DISTINCT FROM EXCLUDED.contract_days_per_month OR
    service_need_option.part_day <> EXCLUDED.part_day OR
    service_need_option.part_week <> EXCLUDED.part_week OR
    service_need_option.fee_description_fi <> EXCLUDED.fee_description_fi OR
    service_need_option.fee_description_sv <> EXCLUDED.fee_description_sv OR
    service_need_option.voucher_value_description_fi <> EXCLUDED.voucher_value_description_fi OR
    service_need_option.voucher_value_description_sv <> EXCLUDED.voucher_value_description_sv OR
    service_need_option.valid_from <> EXCLUDED.valid_from OR
    service_need_option.valid_to IS DISTINCT FROM EXCLUDED.valid_to OR
    service_need_option.show_for_citizen <> EXCLUDED.show_for_citizen OR
    service_need_option.display_order <> EXCLUDED.display_order;

INSERT INTO service_need_option_fee
    (id, service_need_option_id, validity, base_fee, sibling_discount_2, sibling_fee_2, sibling_discount_2_plus, sibling_fee_2_plus)
VALUES
    -- 2000-01-01 -
    ('f3a1936c-9410-4086-ad10-8767e6d8d27c', '88f3bf1e-6646-11ed-8202-8f213a9146c2', daterange('2000-01-01', NULL, '[]'), 5000, 0.4, 3000, 0.4, 3000),
    ('e549d486-26b4-429a-a102-160df7df36f7', '88f3dfd0-6646-11ed-8202-4fe90b8e5485', daterange('2000-01-01', NULL, '[]'), 5000, 0.4, 3000, 0.4, 3000),
    ('d8d8ee0e-398c-4b3d-bb3b-28951a581c0d', '88f3e214-6646-11ed-8202-f77aa4749644', daterange('2000-01-01', NULL, '[]'), 10000, 0.4, 6000, 0.4, 6000),
    ('007ec41b-77dd-4ad7-bece-332771bab262', '88f3e3e0-6646-11ed-8202-3bc1b45aaa73', daterange('2000-01-01', NULL, '[]'), 12000, 0.4, 7000, 0.4, 7000),
    ('63fb7f18-eb41-491a-8c70-765d980aa248', '88f3e5a2-6646-11ed-8202-0b8db1a29ca5', daterange('2000-01-01', NULL, '[]'), 5000, 0.4, 3000, 0.4, 3000),
    ('9e42259d-f28d-436c-9059-865fb1458df0', '88f3e75a-6646-11ed-8202-b7867ae6358a', daterange('2000-01-01', NULL, '[]'), 10000, 0.4, 6000, 0.4, 6000),
    ('2cb13db3-0f76-444f-bb8f-ebd90f3181a0', '88f3e912-6646-11ed-8202-bb9fe8059b4a', daterange('2000-01-01', NULL, '[]'), 12000, 0.4, 7200, 0.4, 7200)
ON CONFLICT (id) DO
UPDATE SET
    service_need_option_id = EXCLUDED.service_need_option_id,
    validity = EXCLUDED.validity,
    base_fee = EXCLUDED.base_fee,
    sibling_discount_2 = EXCLUDED.sibling_discount_2,
    sibling_fee_2 = EXCLUDED.sibling_fee_2,
    sibling_discount_2_plus = EXCLUDED.sibling_discount_2_plus,
    sibling_fee_2_plus = EXCLUDED.sibling_fee_2_plus
WHERE
    service_need_option_fee.service_need_option_id <> EXCLUDED.service_need_option_id OR
    service_need_option_fee.validity <> EXCLUDED.validity OR
    service_need_option_fee.base_fee <> EXCLUDED.base_fee OR
    service_need_option_fee.sibling_discount_2 <> EXCLUDED.sibling_discount_2 OR
    service_need_option_fee.sibling_fee_2 <> EXCLUDED.sibling_fee_2 OR
    service_need_option_fee.sibling_discount_2_plus <> EXCLUDED.sibling_discount_2_plus OR
    service_need_option_fee.sibling_fee_2_plus <> EXCLUDED.sibling_fee_2_plus;

INSERT INTO service_need_option_voucher_value
    (id, service_need_option_id, validity, base_value, coefficient, value, base_value_under_3y, coefficient_under_3y, value_under_3y)
VALUES
    -- 2000-01-01 - 2022-07-31
    ('422ee7f0-e7ea-11ec-8813-872424fb3290', '50358394-b961-11eb-b51f-67ac436e5636', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 1.00, 82600, 124700, 1.00, 124700),
    ('422f00d2-e7ea-11ec-8813-cb592eaf8fcf', '86ef70a0-bf85-11eb-91e6-1fb57a101161', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 1.00, 82600, 124700, 1.00, 124700),
    ('422f05dc-e7ea-11ec-8813-b3668e81d223', '503590f0-b961-11eb-b520-53740af3f7ee', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.60, 49560, 124700, 0.60, 74820),
    ('422f09ec-e7ea-11ec-8813-f329e57bcb32', '503591ae-b961-11eb-b521-1fca99358eef', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.80, 66080, 124700, 0.80, 99760),
    ('422f0d5c-e7ea-11ec-8813-cb1cd6093b78', '50359212-b961-11eb-b522-074fb05f7086', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.60, 49560, 124700, 0.60, 74820),
    ('422f1130-e7ea-11ec-8813-cbfb64c2f2bf', '86ef7370-bf85-11eb-91e7-6fcd728c518d', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.60, 49560, 124700, 0.60, 74820),
    ('422f1504-e7ea-11ec-8813-4b2e990ac90a', '50359280-b961-11eb-b523-237115533645', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.36, 29736, 124700, 0.36, 44892),
    ('422f19be-e7ea-11ec-8813-43a22fd8beaf', '503592da-b961-11eb-b524-7f27c780d83a', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.48, 39648, 124700, 0.48, 59856),
    ('422f1dba-e7ea-11ec-8813-1fdc7fa64ae4', '50359334-b961-11eb-b525-f3febdfea5d3', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.60, 49560, 124700, 0.60, 74820),
    ('422f20f8-e7ea-11ec-8813-6fdb782754ed', '5035938e-b961-11eb-b526-6b30323c87a8', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 1.00, 82600, 124700, 1.00, 124700),
    ('9eea7de7-80f8-4d02-bc86-e90946b47b3a', 'cfeae50c-20c3-45ff-be28-e78f71b8bed1', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 1.00, 82600, 124700, 1.00, 124700),
    ('422f2440-e7ea-11ec-8813-3720f593ba77', '0bfc6c92-ff2a-11eb-a785-2724e8e5e7ee', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.50, 41300, 124700, 0.50, 62350),
    ('422f2800-e7ea-11ec-8813-e7347cbbb31b', '503593e8-b961-11eb-b527-a3dcdfb628ec', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.50, 41300, 124700, 0.50, 62350),
    ('422f2be8-e7ea-11ec-8813-2bff85b439a2', '50359442-b961-11eb-b528-df3290c0d63e', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.50, 41300, 124700, 0.50, 62350),
    ('422f300c-e7ea-11ec-8813-d33333dc7f46', 'bc6a42d0-fa74-11eb-9a2b-d315a7916074', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.30, 24780, 124700, 0.30, 37410),
    ('422f33cc-e7ea-11ec-8813-cf5d2fbb4dfe', 'bc6a44ec-fa74-11eb-9a2c-73b53c2af869', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.40, 33040, 124700, 0.40, 49880),
    ('422f3796-e7ea-11ec-8813-a7107e0ebf0f', 'bc6a4550-fa74-11eb-9a2d-035acd5db9aa', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.30, 24780, 124700, 0.30, 37410),
    ('422f3b60-e7ea-11ec-8813-f3318d9cf8c1', 'bc6a45a0-fa74-11eb-9a2e-fb411a8588da', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.40, 33040, 124700, 0.40, 49880),
    ('422f3f52-e7ea-11ec-8813-bbc69dcf3860', 'ff6ddcd4-fa8a-11eb-8592-2f2b4e398fcb', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 0.00, 0, 124700, 0.00, 0),
    ('422f43f8-e7ea-11ec-8813-af10257c13ae', '1b4413f6-d99d-11eb-89ac-a3a978104bce', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 1.00, 82600, 124700, 1.00, 124700),
    ('6c06939b-c129-460d-8c90-bdf8466c7d18', 'e20929c1-719a-42e1-93ca-da74fce495f8', daterange('2000-01-01', '2022-07-31', '[]'), 82600, 1.00, 82600, 124700, 1.00, 124700),
    -- 2022-08-01 - 2023-07-31
    ('422f47ea-e7ea-11ec-8813-cbbf8463041a', '50358394-b961-11eb-b51f-67ac436e5636', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    ('422f4be6-e7ea-11ec-8813-1b45ad37a47d', '86ef70a0-bf85-11eb-91e6-1fb57a101161', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    ('422f4fba-e7ea-11ec-8813-7bf3e6b54280', '503590f0-b961-11eb-b520-53740af3f7ee', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.60, 51720, 130200, 0.60, 78120),
    ('422f538e-e7ea-11ec-8813-0b41ec608608', '503591ae-b961-11eb-b521-1fca99358eef', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    ('422f5762-e7ea-11ec-8813-9b28d449fc32', '50359212-b961-11eb-b522-074fb05f7086', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.60, 51720, 130200, 0.60, 78120),
    ('422f5b40-e7ea-11ec-8813-bf2e9fdae637', '86ef7370-bf85-11eb-91e7-6fcd728c518d', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.60, 51720, 130200, 0.60, 78120),
    ('422f5f46-e7ea-11ec-8813-db5e80cf9a6b', '50359280-b961-11eb-b523-237115533645', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.36, 31032, 130200, 0.36, 46872),
    ('422f6324-e7ea-11ec-8813-bfb1f547b2b4', '503592da-b961-11eb-b524-7f27c780d83a', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.60, 51720, 130200, 0.60, 78120),
    ('422f6752-e7ea-11ec-8813-ebc71789683c', '50359334-b961-11eb-b525-f3febdfea5d3', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.60, 51720, 130200, 0.60, 78120),
    ('422f6b58-e7ea-11ec-8813-3f6c93576cd8', '5035938e-b961-11eb-b526-6b30323c87a8', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    ('0c58aaf4-e4e8-46a3-8fe9-70ad1b2b1c3d', 'cfeae50c-20c3-45ff-be28-e78f71b8bed1', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    ('422f6f18-e7ea-11ec-8813-2f4bf5f3fdff', '0bfc6c92-ff2a-11eb-a785-2724e8e5e7ee', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('422f72ec-e7ea-11ec-8813-f7fcf18156cd', '503593e8-b961-11eb-b527-a3dcdfb628ec', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('422f76d4-e7ea-11ec-8813-1f7c5066085e', '50359442-b961-11eb-b528-df3290c0d63e', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('422f7ac6-e7ea-11ec-8813-d79f12b35fe8', 'bc6a42d0-fa74-11eb-9a2b-d315a7916074', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.30, 25860, 130200, 0.30, 39060),
    ('422f7eae-e7ea-11ec-8813-87c6c3962177', 'bc6a44ec-fa74-11eb-9a2c-73b53c2af869', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('422f8296-e7ea-11ec-8813-27f63223bec5', 'bc6a4550-fa74-11eb-9a2d-035acd5db9aa', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.30, 25860, 130200, 0.30, 39060),
    ('422f867e-e7ea-11ec-8813-0fc228bb529d', 'bc6a45a0-fa74-11eb-9a2e-fb411a8588da', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('f91b730a-6fd2-11ed-a75e-378477307155', '0a58d934-6fd1-11ed-a75e-c353faef5857', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('f91b8390-6fd2-11ed-a75e-7bb95afe470a', '0a58db0a-6fd1-11ed-a75e-bbde95c1adef', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.30, 25860, 130200, 0.30, 39060),
    ('f91b8728-6fd2-11ed-a75e-3f57230a539d', '0a58dbe6-6fd1-11ed-a75e-5335f2b9a91b', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('f91b7f12-6fd2-11ed-a75e-539b788b60bb', '0a58da38-6fd1-11ed-a75e-9b2790b0b4f5', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('f91b8a66-6fd2-11ed-a75e-5fbc4afc5fd3', '0a58dcae-6fd1-11ed-a75e-b3e10433b948', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.30, 25860, 130200, 0.30, 39060),
    ('f91b8d90-6fd2-11ed-a75e-a7c9e8f18799', '0a58dd94-6fd1-11ed-a75e-8390cdc6af62', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('a1fa1430-6647-11ed-8202-bb4dc37378c9', '88f3bf1e-6646-11ed-8202-8f213a9146c2', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('a1fb440e-6647-11ed-8202-2b499279fe71', '88f3dfd0-6646-11ed-8202-4fe90b8e5485', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('a1fb4828-6647-11ed-8202-d7d64698f305', '88f3e214-6646-11ed-8202-f77aa4749644', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('a1fb4b8e-6647-11ed-8202-b72f51e3f77d', '88f3e3e0-6646-11ed-8202-3bc1b45aaa73', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.30, 25860, 130200, 0.30, 39060),
    ('a1fb4ee0-6647-11ed-8202-db7d7e99fa43', '88f3e5a2-6646-11ed-8202-0b8db1a29ca5', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('a1fb5250-6647-11ed-8202-5ba5a6f01f31', '88f3e75a-6646-11ed-8202-b7867ae6358a', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.30, 25860, 130200, 0.30, 39060),
    ('a1fb5606-6647-11ed-8202-972da272f877', '88f3e912-6646-11ed-8202-bb9fe8059b4a', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.50, 43100, 130200, 0.50, 65100),
    ('422f8a52-e7ea-11ec-8813-87e075796747', 'ff6ddcd4-fa8a-11eb-8592-2f2b4e398fcb', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 0.00, 0, 130200, 0.00, 0),
    ('422f8ee4-e7ea-11ec-8813-e7010d4c8ab9', '1b4413f6-d99d-11eb-89ac-a3a978104bce', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    ('5a6c3bda-5c01-4841-8ed1-a257990fee55', 'e20929c1-719a-42e1-93ca-da74fce495f8', daterange('2022-08-01', '2023-07-31', '[]'), 86200, 1.00, 86200, 130200, 1.00, 130200),
    -- 2023-08-01 -
    ('0690a5e2-f948-477f-9532-c88381c28082', '50358394-b961-11eb-b51f-67ac436e5636', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100),
    ('18d41b75-018c-49c3-92fe-f787afe3ac69', '86ef70a0-bf85-11eb-91e6-1fb57a101161', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100),
    ('07a1faaa-5fb5-4737-b966-210bf39ea023', '503590f0-b961-11eb-b520-53740af3f7ee', daterange('2023-08-01', NULL, '[]'), 90100, 0.60, 54060, 144100, 0.60, 86460),
    ('a7080fb4-06cb-41fc-9e59-7ca11c554c69', '503591ae-b961-11eb-b521-1fca99358eef', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100),
    ('96aa6c4a-1bbf-40a5-a207-047d7d59534b', '50359212-b961-11eb-b522-074fb05f7086', daterange('2023-08-01', NULL, '[]'), 90100, 0.60, 54060, 144100, 0.60, 86460),
    ('6b9b54c2-1741-4707-81b3-a3aee54b251e', '86ef7370-bf85-11eb-91e7-6fcd728c518d', daterange('2023-08-01', NULL, '[]'), 90100, 0.60, 54060, 144100, 0.60, 86460),
    ('d0135557-f852-453b-b883-adfb091a9b40', '50359280-b961-11eb-b523-237115533645', daterange('2023-08-01', NULL, '[]'), 90100, 0.36, 32436, 144100, 0.36, 51876),
    ('6adb7434-09a9-4eaa-8400-c33be074f0d1', '503592da-b961-11eb-b524-7f27c780d83a', daterange('2023-08-01', NULL, '[]'), 90100, 0.60, 54060, 144100, 0.60, 86460),
    ('6ba92ca9-1b1f-4519-83ca-954746becc90', '50359334-b961-11eb-b525-f3febdfea5d3', daterange('2023-08-01', NULL, '[]'), 90100, 0.60, 54060, 144100, 0.60, 86460),
    ('09c031e8-0381-4174-9c83-d0dc581b123f', '5035938e-b961-11eb-b526-6b30323c87a8', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100),
    ('c93354a3-027b-4584-b834-a2beda142f73', 'cfeae50c-20c3-45ff-be28-e78f71b8bed1', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100),
    ('43e2fd79-e481-4c75-bab2-01fc2a4a2737', '0bfc6c92-ff2a-11eb-a785-2724e8e5e7ee', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('1c5fd8d2-fa99-4cd0-bf6e-fa54e5b724c8', '503593e8-b961-11eb-b527-a3dcdfb628ec', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('2df06661-2311-4ea4-a24c-638dc8d4046f', '50359442-b961-11eb-b528-df3290c0d63e', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('2f3ce401-c228-415a-9d9c-ea32665d662c', 'bc6a42d0-fa74-11eb-9a2b-d315a7916074', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('3e59985e-2f6c-46bb-848a-70b1c05b57ac', 'bc6a44ec-fa74-11eb-9a2c-73b53c2af869', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('db128ece-ec2d-469c-a642-9bea70887537', 'bc6a4550-fa74-11eb-9a2d-035acd5db9aa', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('35d15d5e-92d9-452c-b8d0-bbb5c7f796fe', 'bc6a45a0-fa74-11eb-9a2e-fb411a8588da', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('c4fb1d53-24aa-48a6-b168-3f9f2c67f727', '0a58d934-6fd1-11ed-a75e-c353faef5857', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('22b4139f-3717-409e-8a43-1208442aa7aa', '0a58db0a-6fd1-11ed-a75e-bbde95c1adef', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('f310794c-868f-4d6e-8a89-0cebe039c0c0', '0a58dbe6-6fd1-11ed-a75e-5335f2b9a91b', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('e2b8fe16-a79c-44ff-bbae-4ebd14d9dbb2', '0a58da38-6fd1-11ed-a75e-9b2790b0b4f5', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('f336080f-c067-4010-9697-a04d369bd1f6', '0a58dcae-6fd1-11ed-a75e-b3e10433b948', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('9e51cb23-f712-4c74-9651-5a7cc7de13c5', '0a58dd94-6fd1-11ed-a75e-8390cdc6af62', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('8fc6d2da-5a8d-4fbf-8c37-df3a0232753e', '9cc7713c-f153-489a-a7c2-e001640f5c29', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('977dfe0b-e9b8-42a9-b470-4ad803d41978', '816d36b5-29b3-494b-8ac4-b2298764c803', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('55ab92c4-80e9-4ac9-9b1e-769ffa468e58', '9a2b393b-ebb6-49d9-aa1e-b86d80ba9eb5', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('88f26cb8-4d10-46d8-9498-2a6e88e835a2', 'efcfd8f4-92d9-43a4-91e0-a7e2fde9c4e5', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('e818e30c-9c98-4344-850d-cbc6e347676f', '313744dc-ac9e-46b1-8004-940d429664e3', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('90d0b635-f894-478a-a5c5-b369cddf5d7b', '9e1e61da-3362-4f8f-bbf9-ea1eb0d0206c', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('8ffb819e-d2fc-44af-94a8-6ccb14a10fdc', 'b5269ff0-a047-496f-9bda-6286520ef1a5', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('61803666-bb5e-421d-bc62-81b94811514f', '88f3bf1e-6646-11ed-8202-8f213a9146c2', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('ae4fc78f-b76d-4af6-b473-4e3b61dbcaf4', '88f3dfd0-6646-11ed-8202-4fe90b8e5485', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('af58a9aa-40e8-4086-b578-b4b35dcb7319', '88f3e214-6646-11ed-8202-f77aa4749644', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('f4b8c2a3-7967-441f-921c-da3e872085ef', '88f3e3e0-6646-11ed-8202-3bc1b45aaa73', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('f5d22daf-b34d-4e9e-9c20-7719f1028bca', '88f3e5a2-6646-11ed-8202-0b8db1a29ca5', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('c1ecd850-ebef-443b-aa48-a4b3459d15e3', '88f3e75a-6646-11ed-8202-b7867ae6358a', daterange('2023-08-01', NULL, '[]'), 90100, 0.30, 27030, 144100, 0.30, 43230),
    ('9f7b84ec-c4e1-4859-8b43-afa7bba1e0bc', '88f3e912-6646-11ed-8202-bb9fe8059b4a', daterange('2023-08-01', NULL, '[]'), 90100, 0.50, 45050, 144100, 0.50, 72050),
    ('93140aa5-2da1-4cdf-931d-530127e9352c', 'ff6ddcd4-fa8a-11eb-8592-2f2b4e398fcb', daterange('2023-08-01', NULL, '[]'), 90100, 0.00, 0, 144100, 0.00, 0),
    ('637a788d-b2d5-467b-ab3b-9f9549dcf1c9', '1b4413f6-d99d-11eb-89ac-a3a978104bce', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100),
    ('7e0c104a-8ab4-4c2a-92bc-e5f64a05a1ff', 'e20929c1-719a-42e1-93ca-da74fce495f8', daterange('2023-08-01', NULL, '[]'), 90100, 1.00, 90100, 144100, 1.00, 144100)
ON CONFLICT (id) DO
UPDATE SET
    service_need_option_id = EXCLUDED.service_need_option_id,
    validity = EXCLUDED.validity,
    base_value = EXCLUDED.base_value,
    coefficient = EXCLUDED.coefficient,
    value = EXCLUDED.value,
    base_value_under_3y = EXCLUDED.base_value_under_3y,
    coefficient_under_3y = EXCLUDED.coefficient_under_3y,
    value_under_3y = EXCLUDED.value_under_3y
WHERE
    service_need_option_voucher_value.service_need_option_id <> EXCLUDED.service_need_option_id OR
    service_need_option_voucher_value.validity <> EXCLUDED.validity OR
    service_need_option_voucher_value.base_value <> EXCLUDED.base_value OR
    service_need_option_voucher_value.coefficient <> EXCLUDED.coefficient OR
    service_need_option_voucher_value.value <> EXCLUDED.value OR
    service_need_option_voucher_value.base_value_under_3y <> EXCLUDED.base_value_under_3y OR
    service_need_option_voucher_value.coefficient_under_3y <> EXCLUDED.coefficient_under_3y OR
    service_need_option_voucher_value.value_under_3y <> EXCLUDED.value_under_3y;
