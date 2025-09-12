-- Generated transaction data
-- This file contains realistic transaction data for testing and development
-- Generated 2000 transactions for 30 users
-- Generated on 2025-09-12 14:12:24

-- Batch 1: Transactions 1-100
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a86a33dd-51cc-44f1-a94a-11dea04ccfaa', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 166.9, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Justin Davidson', 'ACH822357', '2025-06-18 13:28:50', '2025-06-18 13:55:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('667634cd-6381-4dc1-aa57-af211ebb3e08', '12e6cc99-7181-4fde-98dc-93ded6112abf', 47.62, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Pierce-Jones', 'REF537094', '2025-06-11 17:33:47', '2025-06-11 18:23:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('58d22625-1a96-4f06-8608-d1998dae3a3d', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 939.6, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Katherine Suarez', 'REF465862', '2025-07-19 18:17:00', '2025-07-19 19:15:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('895ebafd-7a59-457d-9270-11533587d236', 'f9cae736-64d5-4692-a257-d87446ffc401', 224.47, 'GBP', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH945107', '2025-06-24 09:27:39', '2025-06-24 09:50:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d56bb115-7acd-4576-9302-69d6e66bc7b5', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 93.11, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Parker, Haynes and Martin', NULL, '2025-04-15 14:47:28', '2025-04-15 15:46:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f36c59b4-b0fb-4165-a3eb-f03ddff6ea5b', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 79.69, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF242730', '2025-08-21 06:53:10', '2025-08-21 07:43:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fccd9ae1-1309-42af-916c-597ba5a35b95', '17ad774a-8c59-447a-b309-a2953679e25a', 127.94, 'CAD', 'REFUND',
        'COMPLETED', 'Price adjustment - Williams and Sons', 'REF620356', '2025-08-11 11:55:13', '2025-08-11 12:00:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3fbda551-8bd7-451d-9650-c5a02a3c0152', '02630652-15bc-4df0-99b7-a41c93c79986', 78.77, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Hughes PLC', 'TXN558629', '2025-06-26 17:51:35', '2025-06-26 18:08:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f2f15e72-1f76-4075-a83a-428c3d65e670', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 298.02, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-08-25 12:15:37', '2025-08-25 12:15:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('69982ffc-9861-4c15-aa50-860d3e23aa6a', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1546.86, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-08-29 15:35:37', '2025-08-29 15:36:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('748f01ec-8706-42f7-80cd-cdb617af3941', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 87.51, 'CAD', 'DEBIT',
        'COMPLETED', 'Payment to Mcguire, Nielsen and Lara', NULL, '2025-08-06 11:05:48', '2025-08-06 11:44:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('08df2a18-ffdc-40cc-b6f1-a15d01ecc7e1', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 73.51, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Monroe, Olson and Padilla', 'TXN837598', '2025-03-18 15:24:43', '2025-03-18 15:29:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e463ee6f-4565-4e1e-924a-8191b1083b80', 'd31cdd64-e270-4aa9-a77e-a89486214984', 913.85, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH127016', '2025-07-13 18:58:54', '2025-07-13 19:08:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('253c2d40-7c42-487e-aef3-4af329bf2dcb', 'd49ec560-02e4-4049-b181-837031133e95', 1703.08, 'GBP', 'DEBIT',
        'COMPLETED', 'Subscription - Smith and Sons Premium', 'TXN107287', '2025-07-19 06:22:38',
        '2025-07-19 07:12:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1a1510f4-042f-4079-86f2-c5fd221953cd', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 26.93, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Fox-Gardner', NULL, '2025-03-31 16:39:30', '2025-03-31 16:59:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('786bb0a4-9f6d-4bb5-9d41-f42c1e9e6246', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 276.88, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - White, Harrell and Buck', 'TXN986207', '2025-05-29 10:19:33',
        '2025-05-29 10:36:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ba7ca44d-5c91-4b1e-85f1-5a097fb3ea3f', '4692fe34-18fd-4140-9f08-06189f96fac3', 1376.49, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Mendoza-Miller', 'ACH289208', '2025-08-25 15:35:27', '2025-08-25 16:30:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cb5fe34e-1de0-46bd-ba17-5b890073094d', '7a712793-0571-4844-b830-a1a4d3fdeb27', 175.94, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF813587', '2025-07-20 10:54:30', '2025-07-20 11:21:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5504bdf0-491c-45c6-94b7-71cdcee4039f', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 119.49, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Moyer-Sanchez', 'REF264271', '2025-07-08 11:34:03', '2025-07-08 11:44:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d1691827-f097-42ad-8c68-81d325893607', '1817a074-62f9-463a-8dd7-c44151e47f96', 361.89, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Dawson-Hernandez', 'TXN257429', '2025-05-30 17:26:15', '2025-05-30 17:53:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('47a82be2-27e9-4668-8c88-924a6e29bb14', '12e6cc99-7181-4fde-98dc-93ded6112abf', 881.84, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF797951', '2025-05-11 15:24:16', '2025-05-11 15:34:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b98372c-8f60-4b81-8023-9de59b405d5d', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 185.64, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Mcdonald PLC', 'REF321102', '2025-06-23 12:41:10', '2025-06-23 13:10:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f6e59331-4f2e-4883-9faa-a1bba1c415aa', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 13.64, 'USD', 'REFUND',
        'PENDING', 'Subscription cancellation refund', NULL, '2025-04-28 18:06:00', '2025-04-28 18:13:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1d9ba30e-25c1-4f79-8bdb-811dce414108', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 95.06, 'USD', 'CREDIT',
        'CANCELLED', 'Dividend payment - Holland, Lloyd and Griffin', 'ACH504843', '2025-08-21 17:59:56',
        '2025-08-21 18:26:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('208f2002-f3b4-41ef-a313-f2fae5224033', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 151.91, 'CHF', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF739778', '2025-09-08 13:02:08', '2025-09-08 13:11:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ec9cc87-797c-464c-90a0-e4ef0210008a', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 829.97, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF111184', '2025-07-30 13:56:12', '2025-07-30 14:15:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6fdb11ac-871e-4175-a2cc-c1ea8fe34a49', '17ad774a-8c59-447a-b309-a2953679e25a', 65.58, 'EUR', 'CREDIT',
        'COMPLETED', 'Freelance payment - Mitchell, Roach and Marsh', 'ACH238499', '2025-06-20 22:48:11',
        '2025-06-20 23:09:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('534d2ce5-d861-4a13-bace-479bf5050190', '1817a074-62f9-463a-8dd7-c44151e47f96', 141.03, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-05-26 21:32:43', '2025-05-26 22:21:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('85c57a26-6896-40f8-8a9a-9317ed52fe1e', '12e6cc99-7181-4fde-98dc-93ded6112abf', 75.94, 'SEK', 'CREDIT',
        'COMPLETED', 'Transfer from Timothy Gonzales', 'ACH362972', '2025-07-10 12:34:23', '2025-07-10 12:39:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c6ce4066-8707-4744-8667-e453113d1d3b', '50682165-f2c3-4049-909e-951838384433', 1192.99, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Lauren Atkinson', NULL, '2025-03-23 09:44:03', '2025-03-23 10:22:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ad0a9fe6-e896-473c-8aa6-a0395ed075b9', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 148.76, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH496044', '2025-03-16 11:29:00', '2025-03-16 12:05:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0c5a5105-5ee8-4f25-8a94-33e84cd76710', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 673.21, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Amber Moore', 'REF754765', '2025-04-15 23:37:33', '2025-04-15 23:58:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f60f2d40-cd36-4417-b1ff-a34ede9015f2', '1817a074-62f9-463a-8dd7-c44151e47f96', 493.43, 'DKK', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF811185', '2025-06-09 09:11:19', '2025-06-09 09:24:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5846f3c0-5b9f-443c-9b46-3ed0b528963f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 467.38, 'USD', 'DEBIT',
        'PENDING', 'Subscription - Taylor Group Premium', 'TXN178100', '2025-05-12 11:50:50', '2025-05-12 12:20:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f659bf8b-6377-491c-ab79-7af47678a3b8', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1103.75, 'USD', 'CREDIT',
        'FAILED', 'Dividend payment - Perez-Giles', 'ACH456401', '2025-05-09 07:49:23', '2025-05-09 08:38:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('706e7012-41d5-4192-b616-0682e75d6478', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 61.11, 'CAD', 'DEBIT',
        'COMPLETED', 'Gas station - Whitney-Dickerson', 'TXN979275', '2025-03-30 19:32:41', '2025-03-30 19:38:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7639bf26-d49d-4f10-89f2-74a03c420cd6', '4692fe34-18fd-4140-9f08-06189f96fac3', 149.16, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Davis Group', NULL, '2025-09-07 12:57:15', '2025-09-07 13:01:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('99acefaf-eac4-42d2-b853-60c831e4e83b', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 548.4, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Zachary Reese', 'REF835825', '2025-08-17 16:12:06', '2025-08-17 16:34:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02e79306-090f-4019-b4d1-29a750c5c70b', '17ad774a-8c59-447a-b309-a2953679e25a', 69.5, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Robinson, Holmes and Rollins', 'ACH904930', '2025-04-07 11:24:33',
        '2025-04-07 12:18:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fec0b1bb-d3ba-4ab6-846c-c065969f379e', '17ad774a-8c59-447a-b309-a2953679e25a', 1728.23, 'GBP', 'CREDIT',
        'FAILED', 'Refund from Browning, Thompson and Turner', NULL, '2025-09-04 12:09:37', '2025-09-04 12:39:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6545d024-2855-4457-be00-ee3584172514', '7a712793-0571-4844-b830-a1a4d3fdeb27', 240.63, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Cook-Montoya', 'TXN343581', '2025-07-13 04:53:40', '2025-07-13 05:37:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b37c9b27-196c-46a6-abb4-2ab670a11446', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 930.87, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF791035', '2025-06-14 11:20:38', '2025-06-14 12:17:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('80fb9574-0e50-4ba9-b89d-f5421b520855', '02630652-15bc-4df0-99b7-a41c93c79986', 216.47, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Koch Ltd Market', 'TXN683205', '2025-08-28 15:40:40', '2025-08-28 15:56:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ecd43c72-cf9c-4418-9f11-b17dae6f549d', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1483.96, 'GBP', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH676680', '2025-08-29 14:04:43', '2025-08-29 14:21:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('741eda22-a8ed-45c8-a522-80c4d062ea98', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1346.5, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Andrea Turner', 'REF749006', '2025-09-10 10:21:07', '2025-09-10 10:38:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6498ffa6-7721-49a2-a662-537cad4a167f', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1915.79, 'GBP', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH442983', '2025-03-20 11:12:22', '2025-03-20 11:41:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b30c0b4d-2784-40b7-b6a8-d0a2d2ddede9', '4692fe34-18fd-4140-9f08-06189f96fac3', 1269.05, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF613626', '2025-06-04 09:30:06', '2025-06-04 09:42:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9a4c2828-4640-472a-9f88-d9bd54dc0768', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 168.84, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF107457', '2025-07-05 11:20:46', '2025-07-05 12:01:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be478e67-31e1-45f3-99bc-b1e30a837dfb', '02630652-15bc-4df0-99b7-a41c93c79986', 133.18, 'GBP', 'REFUND',
        'FAILED', 'Subscription cancellation refund', 'REF901788', '2025-06-08 07:00:26', '2025-06-08 07:37:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a8b024e-6ad7-48e5-b7d8-9414c76e4fe7', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 642.29, 'GBP', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF703954', '2025-06-25 15:06:41', '2025-06-25 15:58:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('98ba79b1-e4bf-4fc8-9c41-9f26c17da3b5', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 44.82, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Jones-Warren', 'REF797656', '2025-06-14 18:43:49', '2025-06-14 19:35:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5bde66e9-cb13-426c-b8e8-914274d6ae09', '523c0c30-1242-44a7-a025-f015ef7d4127', 12.91, 'GBP', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF987185', '2025-06-29 08:19:32', '2025-06-29 08:53:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c0b3dece-9133-45f7-91b8-36ca965cde27', '20683a88-7f0e-471d-a3c5-bf175725052c', 77.95, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-06-13 17:01:24', '2025-06-13 17:38:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0f0e469e-8640-4770-ac8c-15ce86c448d4', '2e3b6236-b73f-40b1-a88f-abafe787082b', 490.43, 'GBP', 'DEBIT',
        'FAILED', 'Online transfer to John Evans', NULL, '2025-05-16 11:19:50', '2025-05-16 11:36:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0d2c6bdc-6da5-41fc-bb5a-94e4ae84ebbc', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 17.02, 'USD', 'DEBIT', 'FAILED',
        'Online transfer to Janet Jones', 'TXN810379', '2025-08-15 12:35:06', '2025-08-15 12:39:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0f63a19a-c751-40ff-a0ac-e32d3c42856f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 156.03, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF203314', '2025-08-05 18:37:54', '2025-08-05 18:51:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4be753e8-4f00-4143-8851-fe58894911b6', '7a712793-0571-4844-b830-a1a4d3fdeb27', 96.59, 'GBP', 'DEBIT',
        'COMPLETED', 'Online transfer to Dale Good', 'TXN403858', '2025-06-03 13:11:18', '2025-06-03 14:08:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0268f6ab-934f-486e-9de9-7c6b91c91187', '2e3b6236-b73f-40b1-a88f-abafe787082b', 5622.17, 'CAD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH941697', '2025-08-31 00:35:12', '2025-08-31 00:49:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('58c320cd-28e5-4883-aba3-6274a1998630', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 107.74, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF636604', '2025-08-11 18:11:17', '2025-08-11 18:44:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e16cb20c-6d35-45a6-965a-3e01136d84d4', '20683a88-7f0e-471d-a3c5-bf175725052c', 111.22, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Kim, Cuevas and Robbins', 'REF422776', '2025-07-16 11:56:48',
        '2025-07-16 12:25:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e94947db-7201-44ae-b186-c3f197ccdd18', 'd49ec560-02e4-4049-b181-837031133e95', 141.8, 'EUR', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF117000', '2025-07-04 07:21:07', '2025-07-04 07:39:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3abdde84-2f1d-4f28-abdc-8282b68ba22b', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 122.71, 'USD', 'CREDIT',
        'PENDING', 'Interest payment', 'ACH467559', '2025-06-08 13:55:53', '2025-06-08 14:47:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('df1ef4f0-b1cf-4d17-8dc8-a589ca5d37c9', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1462.14, 'AUD', 'CREDIT',
        'COMPLETED', 'Transfer from Patricia Sullivan', 'ACH582447', '2025-08-19 12:51:08', '2025-08-19 13:29:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('03013270-2aa5-4b20-8ca2-1c4acb0d3120', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 38.9, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Vincent, Gentry and Townsend Services', 'TXN844940', '2025-09-06 18:27:47',
        '2025-09-06 18:55:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6d5ed400-4b55-45b5-9983-f6412e7b6ce0', 'f9cae736-64d5-4692-a257-d87446ffc401', 35.68, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Ross, Blankenship and Harrington', 'TXN600590', '2025-09-08 07:40:31',
        '2025-09-08 08:36:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5eb1a137-179f-4bd6-8526-f428880931ee', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 91.81, 'SEK', 'CREDIT',
        'COMPLETED', 'Salary deposit - Myers-Kelley', 'ACH956668', '2025-03-16 01:20:18', '2025-03-16 02:08:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8f5dd40b-74c2-4aa5-a909-70e4f7403ac1', '20683a88-7f0e-471d-a3c5-bf175725052c', 11.25, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Shelley Lopez', 'TXN375771', '2025-07-26 13:28:53', '2025-07-26 13:44:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('246921eb-38f2-475f-8274-4867e80d7f03', '02630652-15bc-4df0-99b7-a41c93c79986', 288.61, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Santos-Hodge', 'ACH396355', '2025-05-20 13:47:56', '2025-05-20 13:51:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b621adf-c703-4ddd-804e-e63456b6f229', '523c0c30-1242-44a7-a025-f015ef7d4127', 140.9, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF140937', '2025-08-04 09:51:21', '2025-08-04 10:36:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ff43ee37-b481-4b82-80ca-e4cc24ddfd36', '20683a88-7f0e-471d-a3c5-bf175725052c', 146.74, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Jones, Robertson and Banks', NULL, '2025-06-10 12:00:29',
        '2025-06-10 12:26:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02d951a8-2049-4b98-a6ba-84c6cead6d58', 'f9cae736-64d5-4692-a257-d87446ffc401', 1652.14, 'USD', 'CREDIT',
        'PENDING', 'Dividend payment - Warren, Stewart and Ellis', NULL, '2025-04-26 09:12:00', '2025-04-26 10:07:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('48b2d157-c3a8-452f-882b-f8643e91101e', 'a6f93311-3bce-4db4-8395-25cde9688e47', 129.97, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-26 10:28:16', '2025-06-26 10:49:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e7f5270a-6790-40c8-97a7-18cdf9484ace', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 30.63, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Jacobs, Olson and Young Store', 'TXN659197', '2025-09-02 08:52:22',
        '2025-09-02 09:05:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('006628c0-993a-4cb6-94a4-13a7be2024b5', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1340.92, 'CAD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF467528', '2025-06-22 13:39:55', '2025-06-22 14:26:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('badb7c76-8ff9-43d7-b1a1-ce0a54742bd6', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 280.06, 'EUR', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 653 Heather Motorway Suite 818', 'TXN991146', '2025-08-09 16:04:58',
        '2025-08-09 17:04:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('60314121-0f0f-4ffb-aea1-5105532d1daf', '17ad774a-8c59-447a-b309-a2953679e25a', 28.57, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-03-16 12:06:58', '2025-03-16 12:20:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('87962fcb-fe05-4345-980d-243b796609d3', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 79.44, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF928253', '2025-08-15 09:07:03', '2025-08-15 09:29:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a6fa69ab-941a-40dc-b944-497f63deb5c8', '30f7fce8-3a42-4900-8129-5549a3175459', 186.06, 'GBP', 'REFUND',
        'COMPLETED', 'Refund - Huynh and Sons', 'REF235201', '2025-04-14 15:05:23', '2025-04-14 15:44:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('74226602-072f-4641-b1d3-8b2cc125f5cb', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1276.67, 'CHF', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF982589', '2025-08-01 14:41:30', '2025-08-01 14:46:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6f144090-6079-409e-97a3-68a99abcfe36', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1370.05, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF691474', '2025-04-21 10:14:33', '2025-04-21 10:21:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b2d181b3-9d94-4945-a122-39eaecea89cd', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 28.23, 'GBP', 'DEBIT', 'FAILED',
        'Online transfer to Gregory Turner', 'TXN517561', '2025-04-08 09:54:34', '2025-04-08 10:18:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('957772b5-b08d-4e40-b136-ac9cb5031e5a', '02630652-15bc-4df0-99b7-a41c93c79986', 126.98, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Alvarez-King', 'ACH903989', '2025-05-24 11:24:54', '2025-05-24 12:17:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('624f4219-d090-4293-b685-8733fd04eaa1', '2e3b6236-b73f-40b1-a88f-abafe787082b', 486.07, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Derek Smith', NULL, '2025-06-14 11:02:21', '2025-06-14 11:50:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9dac8380-a45e-4a1a-9730-b66653e0df9d', 'd31cdd64-e270-4aa9-a77e-a89486214984', 195.17, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Escobar, Collins and Stephens', NULL, '2025-04-30 09:21:46',
        '2025-04-30 10:13:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b73e595b-d7c8-4615-b1de-d1ac627cbc88', '7a712793-0571-4844-b830-a1a4d3fdeb27', 98.82, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Andrews, Everett and Wang', 'TXN842088', '2025-04-25 10:58:49',
        '2025-04-25 11:55:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d9955da3-4f59-4342-8a6e-fd43c1a194e4', '02630652-15bc-4df0-99b7-a41c93c79986', 191.94, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Weaver-Hooper', NULL, '2025-04-16 17:03:26', '2025-04-16 17:05:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b9c6fb8-9654-4b54-9144-0154411e15d2', '30f7fce8-3a42-4900-8129-5549a3175459', 192.96, 'USD', 'REFUND',
        'PENDING', 'Service credit - Sosa, Martinez and Nguyen', NULL, '2025-08-22 09:25:33', '2025-08-22 10:00:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3341a7dd-6cdb-44a2-8206-5c8880ed09c8', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 261.88, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH625338', '2025-03-30 14:05:50', '2025-03-30 14:09:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('986da53e-d052-471d-9120-23b825126d0f', '1817a074-62f9-463a-8dd7-c44151e47f96', 1327.59, 'USD', 'TRANSFER',
        'CANCELLED', 'Bill split with Luke Pugh', 'REF888248', '2025-03-24 13:02:18', '2025-03-24 13:52:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67b7bcbf-9d22-4a5c-859f-bf73b1356c8f', '1817a074-62f9-463a-8dd7-c44151e47f96', 742.61, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF468600', '2025-08-01 09:30:09', '2025-08-01 09:56:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3da8eb2a-fdda-4486-ab30-9d37af7f280a', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 399.37, 'GBP', 'TRANSFER',
        'COMPLETED', 'Transfer to Joshua Phillips', 'REF149999', '2025-04-04 09:01:30', '2025-04-04 09:45:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f86d18dd-19fc-4cb3-b8c5-704dfe190804', '50682165-f2c3-4049-909e-951838384433', 7270.55, 'CHF', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH259704', '2025-09-07 16:43:38', '2025-09-07 17:38:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64ad9bdd-ca95-4ce7-b043-6c19e479f9b4', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 70.34, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Diana Peterson', NULL, '2025-03-31 12:09:22', '2025-03-31 12:34:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d69182b0-097d-4293-b096-5bbc004611d7', 'a6f93311-3bce-4db4-8395-25cde9688e47', 395.6, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Young Ltd', NULL, '2025-06-09 22:53:30', '2025-06-09 23:11:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dbb808c7-ae32-41d1-80cd-82c0ed8573a8', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 150.8, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-04-06 10:05:27', '2025-04-06 10:31:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8ab04d69-58bf-49f2-be39-90efd06614b3', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 23.86, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Cochran, Alvarez and Williamson Premium', 'TXN884085', '2025-08-25 09:36:01',
        '2025-08-25 09:56:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1a42327f-99b2-4df7-a89b-7ca6b38ce0af', 'f9cae736-64d5-4692-a257-d87446ffc401', 852.92, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Sheri Torres', 'REF650210', '2025-07-25 18:39:25', '2025-07-25 19:01:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('50fe5a0e-f4ac-4589-89f5-e828619bcf5e', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 993.26, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Coleman, Buckley and Lane', 'ACH981311', '2025-08-04 09:39:02',
        '2025-08-04 10:32:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ac4f3e38-96ef-4b82-a1ff-362cdf349ce2', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 177.09, 'CAD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF721042', '2025-04-24 15:30:10', '2025-04-24 15:53:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2878dc14-9173-4b7d-bf26-2821bee17003', '17ad774a-8c59-447a-b309-a2953679e25a', 811.79, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH481146', '2025-09-04 18:13:18', '2025-09-04 18:56:51');

-- Batch 2: Transactions 101-200
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('98382695-ad24-4832-ba7c-8b91bff716f3', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 97.04, 'CAD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH420530', '2025-08-01 15:58:27', '2025-08-01 16:47:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('94e5a8a6-9ef9-4d4a-9823-2e30ab49fed6', 'a6f93311-3bce-4db4-8395-25cde9688e47', 11.32, 'CAD', 'DEBIT',
        'COMPLETED', 'Gas station - Hernandez Inc', NULL, '2025-07-04 00:27:53', '2025-07-04 01:08:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('583c5bd5-bced-4f60-bede-9caae9eede64', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 51.42, 'GBP', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF419236', '2025-03-16 11:26:12', '2025-03-16 12:22:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7c1d4b13-ca46-40ce-af0e-8506a571859e', 'a6f93311-3bce-4db4-8395-25cde9688e47', 109.39, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Trevino LLC', 'REF377577', '2025-06-13 09:34:14', '2025-06-13 09:53:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('18e43503-e247-438e-adb0-521a5a84d410', '30f7fce8-3a42-4900-8129-5549a3175459', 164.56, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Bates, Wright and Martinez', 'REF958277', '2025-06-24 17:46:11',
        '2025-06-24 18:25:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1542e4b6-9325-4646-8b5c-752f713c46f9', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 156.85, 'EUR', 'CREDIT',
        'COMPLETED', 'Freelance payment - Hall, Ellison and Wallace', NULL, '2025-05-11 06:41:03',
        '2025-05-11 07:36:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b82239b-0cd2-4a23-b7f2-f9a669b97854', '30f7fce8-3a42-4900-8129-5549a3175459', 120.49, 'SEK', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF610666', '2025-07-03 15:48:09', '2025-07-03 16:26:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e557ffbb-c619-4aa0-aaa2-b5b3cc1b502e', '17ad774a-8c59-447a-b309-a2953679e25a', 192.17, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Ho-Alexander', 'REF891747', '2025-05-01 12:48:54', '2025-05-01 13:07:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4233d518-11e4-4460-9144-7e112f85aabe', 'd49ec560-02e4-4049-b181-837031133e95', 75.65, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Mercado Group Store', 'TXN346268', '2025-07-24 13:30:03', '2025-07-24 13:34:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3451610d-325b-440f-b883-4328dbde833a', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 72.15, 'GBP', 'REFUND',
        'COMPLETED', 'Return processing - Richardson-Knox', NULL, '2025-08-21 17:28:03', '2025-08-21 17:57:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ea32d3e7-2442-4219-a8b0-d881f2dffa4b', 'd31cdd64-e270-4aa9-a77e-a89486214984', 102.99, 'GBP', 'REFUND',
        'COMPLETED', 'Price adjustment - Lloyd-Richards', NULL, '2025-08-01 12:32:13', '2025-08-01 13:31:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('30b4c902-533c-4021-9b15-3a8574d7b67d', '12e6cc99-7181-4fde-98dc-93ded6112abf', 252.75, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Clark LLC', 'ACH760905', '2025-04-10 18:46:30', '2025-04-10 19:07:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('165365c6-7dcf-41b1-90ec-87f3d2265d67', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 118.35, 'CAD', 'TRANSFER',
        'COMPLETED', 'Bill split with Holly Mann', NULL, '2025-08-20 17:25:45', '2025-08-20 17:42:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4e80b6c8-3a19-43a6-b194-334916bc045a', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1212.83, 'USD', 'TRANSFER',
        'FAILED', 'Bill split with Julia Doyle', 'REF173500', '2025-07-24 17:14:52', '2025-07-24 17:57:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('791bb5a3-9cc4-4f26-b557-de10dffafd60', '2e3b6236-b73f-40b1-a88f-abafe787082b', 76.08, 'USD', 'DEBIT', 'FAILED',
        'Online transfer to Joseph Smith', NULL, '2025-05-23 15:18:14', '2025-05-23 15:47:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a92ff5f4-b414-460e-8762-244edeec8c23', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 56.29, 'EUR', 'REFUND',
        'PENDING', 'Overpayment refund', NULL, '2025-07-20 18:54:34', '2025-07-20 19:12:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3d80042c-8790-4975-a829-b2d4e714c6d4', 'd31cdd64-e270-4aa9-a77e-a89486214984', 216.73, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Brown PLC Premium', 'TXN675930', '2025-06-01 14:48:59', '2025-06-01 14:56:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('61910774-b269-4d44-8fb7-23330a54b36c', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 216.23, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF210064', '2025-06-25 14:27:11', '2025-06-25 14:48:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c3d57d57-f470-407d-a378-1132321f85f1', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 48.86, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Jones, Simmons and Thomas', 'REF814608', '2025-07-29 13:42:26',
        '2025-07-29 14:36:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e27d60d9-0c61-4368-b3ef-96251cde42e5', '7a712793-0571-4844-b830-a1a4d3fdeb27', 174.99, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Mcmillan, Patel and Maddox', 'REF920637', '2025-03-21 07:11:52',
        '2025-03-21 07:54:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('28a85964-9ce9-413b-a72a-299ace758b6a', '20683a88-7f0e-471d-a3c5-bf175725052c', 1290.99, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Robert Little', 'REF662146', '2025-03-20 15:03:43', '2025-03-20 15:04:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec78ea76-76bd-4e61-b1bc-3910d0398604', '02630652-15bc-4df0-99b7-a41c93c79986', 137.86, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF238938', '2025-04-09 12:57:17', '2025-04-09 13:00:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f896241-05b4-4621-9590-151b16060c84', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1209.19, 'NOK', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH330470', '2025-04-25 11:14:11', '2025-04-25 11:59:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('96d077f8-7dd8-4260-9f7e-a35e10d6ddaf', 'd49ec560-02e4-4049-b181-837031133e95', 52.96, 'EUR', 'REFUND',
        'COMPLETED', 'Refund - Rogers, Fisher and Little', NULL, '2025-08-31 18:18:13', '2025-08-31 18:44:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0428042c-5154-41fa-a370-ab4aed4ade4f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 112.39, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Bell and Sons', 'TXN361930', '2025-07-28 12:25:38', '2025-07-28 13:19:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6b0c4c2-4a2e-4cd5-afbe-6f0584800548', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 916.07, 'CAD', 'TRANSFER',
        'COMPLETED', 'Bill split with Karen Freeman', NULL, '2025-06-27 18:30:29', '2025-06-27 18:35:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6cdd214b-af81-4aa4-978a-6d81e27272f8', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 42.01, 'USD', 'DEBIT',
        'CANCELLED', 'Subscription - Love, Dominguez and Pittman Premium', 'TXN637020', '2025-05-20 03:14:23',
        '2025-05-20 03:48:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f5ed2c34-7c9a-45eb-8242-65c8b2fe1b76', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 570.33, 'GBP', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-06-28 11:58:45', '2025-06-28 12:24:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f5b0ea92-5e17-42f7-9ce9-839234305153', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1339.91, 'GBP', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Joseph Martinez', 'REF138890', '2025-06-05 17:12:44', '2025-06-05 18:01:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7b096e6a-6799-4275-9b20-394d919dfe01', '50682165-f2c3-4049-909e-951838384433', 66.82, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Dean PLC', 'TXN493982', '2025-03-25 19:13:21', '2025-03-25 20:11:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3bbcbfd7-14e1-46f7-95c2-54310e8c7fdd', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 137.35, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-08-10 10:59:16', '2025-08-10 11:31:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fd54030f-655f-4b78-80ce-d7bcac13998b', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1410.18, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF578234', '2025-04-24 16:12:37', '2025-04-24 17:05:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cc4b7264-f285-4880-b101-8bb342a47ed3', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 18.83, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Wright, Gomez and Wood', 'TXN762334', '2025-04-28 14:37:00', '2025-04-28 14:46:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c115d837-55d4-41b9-8963-5fc267cbf044', '4110303a-5cca-4c46-885d-c1e3bd335d96', 251.73, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Dickerson-Allen Premium', NULL, '2025-04-14 00:15:29', '2025-04-14 00:25:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('616f1bb8-d772-4db1-ab91-8b4af2a46dde', '02630652-15bc-4df0-99b7-a41c93c79986', 106.49, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH551938', '2025-04-21 09:31:08', '2025-04-21 10:29:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('84f62cdb-f7da-4ee1-91ae-8f4261b85c79', '30f7fce8-3a42-4900-8129-5549a3175459', 81.4, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF334029', '2025-06-06 18:32:25', '2025-06-06 18:38:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b78bfc4-84f2-4059-87de-6a14b8e4688e', '20683a88-7f0e-471d-a3c5-bf175725052c', 77.06, 'USD', 'REFUND',
        'FAILED', 'Overpayment refund', 'REF635420', '2025-08-24 11:33:55', '2025-08-24 12:26:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f4099a85-a63c-4306-812e-1440f8b40672', '2e3b6236-b73f-40b1-a88f-abafe787082b', 148.61, 'EUR', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-08-28 10:31:54', '2025-08-28 10:42:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('12b18ad1-f2d9-4c64-83c8-ee864866444c', 'd49ec560-02e4-4049-b181-837031133e95', 55.8, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH780718', '2025-05-24 17:28:50', '2025-05-24 18:00:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f260892e-d63c-4d8a-8999-2657f3d097c3', '4110303a-5cca-4c46-885d-c1e3bd335d96', 216.25, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-06-26 12:29:43', '2025-06-26 12:35:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('efb4fee5-fb1b-4746-ab64-a1e06eb23800', 'a6f93311-3bce-4db4-8395-25cde9688e47', 452.0, 'EUR', 'DEBIT',
        'COMPLETED', 'Grocery - Johnson-Clarke Market', 'TXN481586', '2025-06-07 14:45:22', '2025-06-07 15:42:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6a8906f-677b-4022-8d15-c95c615db72f', '30f7fce8-3a42-4900-8129-5549a3175459', 275.58, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH619376', '2025-07-15 14:44:52', '2025-07-15 15:14:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7ae660ae-8d12-4ce3-ba2d-bff9fe0da79b', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 888.0, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF783267', '2025-04-19 18:22:26', '2025-04-19 18:58:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('063dfa8d-3037-4fa6-b228-0a787fc6fb76', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 504.83, 'CAD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Howell, Golden and Watts', NULL, '2025-08-11 11:16:54', '2025-08-11 11:54:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('122ed519-9863-4328-b53b-cc4d7fd82931', '1817a074-62f9-463a-8dd7-c44151e47f96', 156.11, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH160852', '2025-08-17 14:34:41', '2025-08-17 15:09:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('708656e0-f642-42a6-9bc6-deec75b1a276', '4692fe34-18fd-4140-9f08-06189f96fac3', 158.57, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF234943', '2025-08-19 17:53:00', '2025-08-19 18:07:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f320616d-cbb9-40e1-a9ad-9add70da4e80', '02630652-15bc-4df0-99b7-a41c93c79986', 176.43, 'EUR', 'REFUND',
        'COMPLETED', 'Refund - Smith Group', 'REF662321', '2025-07-24 17:24:54', '2025-07-24 18:16:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b74e31aa-2459-424b-960a-4804cbeab672', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1830.37, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Roman-Wilson', NULL, '2025-05-16 14:42:02', '2025-05-16 14:52:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('45aae601-2299-4fe3-8b4f-7dffdcf932ff', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 45.68, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Gina Allen', 'REF192778', '2025-09-01 04:52:44', '2025-09-01 05:45:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d37964fd-c3bb-433f-83b7-42169c210e47', '30f7fce8-3a42-4900-8129-5549a3175459', 93.59, 'CAD', 'DEBIT',
        'COMPLETED', 'Bill payment - Camacho, Brewer and White Services', NULL, '2025-06-29 09:08:30',
        '2025-06-29 09:58:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('efb4e8f2-43c7-48f5-8c31-8202a3f2979b', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 104.98, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Frazier-Smith', 'TXN437772', '2025-06-24 13:29:14', '2025-06-24 14:00:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0c56dfb-0be3-48b3-87c0-8e216cb8af84', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 57.12, 'GBP', 'REFUND',
        'COMPLETED', 'Return processing - Gould-Huynh', 'REF125323', '2025-05-20 17:46:09', '2025-05-20 17:55:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('14101d2a-81f8-4471-9cd4-b891ba050894', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 130.59, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Wilkins-Barnett', NULL, '2025-05-06 01:06:51', '2025-05-06 01:12:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('14e10e5b-fae5-42f8-8068-c267f538b7eb', 'd31cdd64-e270-4aa9-a77e-a89486214984', 537.07, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF783111', '2025-08-04 10:32:53', '2025-08-04 11:16:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe053e36-aaee-4640-9c34-5d346210c966', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 44.67, 'SEK', 'REFUND',
        'PENDING', 'Price adjustment - Dominguez-Gonzalez', 'REF841401', '2025-06-05 17:29:49', '2025-06-05 17:33:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('811ab1d7-8820-4848-adb2-da7fed26f9ee', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 574.63, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-03-22 18:24:14', '2025-03-22 18:40:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('43c2e0fe-1e67-4e47-9e94-2d832de7a0ee', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1453.05, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF368732', '2025-03-19 13:47:28', '2025-03-19 14:11:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4a238470-2b50-4bf9-b16e-1be81c485821', '523c0c30-1242-44a7-a025-f015ef7d4127', 679.42, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF250789', '2025-04-20 13:31:20', '2025-04-20 14:26:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0756118c-aa50-44c6-b027-24ddada9b05d', '12e6cc99-7181-4fde-98dc-93ded6112abf', 46.16, 'EUR', 'DEBIT',
        'COMPLETED', 'Restaurant - Adams-Jackson', NULL, '2025-03-20 04:14:19', '2025-03-20 04:43:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('50d69490-ae8d-4103-a229-b3f9dbe9fc32', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1425.04, 'JPY', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-03-26 09:13:25', '2025-03-26 09:49:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f5f388bb-7309-450c-81d4-e104482716a2', '4692fe34-18fd-4140-9f08-06189f96fac3', 19.95, 'CAD', 'DEBIT', 'FAILED',
        'Online transfer to Tina Rocha', 'TXN617177', '2025-04-17 13:58:12', '2025-04-17 14:01:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f098c615-8393-40d1-8e6c-dc2b565adb31', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 56.23, 'USD', 'DEBIT',
        'PENDING', 'Card payment - Barnes, Lara and Norton Store', 'TXN944723', '2025-08-23 10:14:26',
        '2025-08-23 10:43:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b929dad4-5cd7-4ce3-9a25-7620748cad06', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 626.93, 'CAD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF793591', '2025-06-28 12:55:15', '2025-06-28 13:14:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bc06c560-a84b-4e4d-9f51-e7aa60c153c7', '20683a88-7f0e-471d-a3c5-bf175725052c', 164.99, 'EUR', 'REFUND',
        'FAILED', 'Processing fee refund', NULL, '2025-05-21 17:12:01', '2025-05-21 17:38:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46f2b25b-a0c4-42b2-9ab1-6d2f5ca54127', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 44.58, 'CHF', 'REFUND',
        'COMPLETED', 'Dispute resolution - Powell-Baker', 'REF993537', '2025-08-09 12:55:56', '2025-08-09 13:23:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4372ff2-ae0c-4815-a1f0-93a07badd7cd', 'f9cae736-64d5-4692-a257-d87446ffc401', 12.83, 'EUR', 'DEBIT',
        'COMPLETED', 'Bill payment - Martinez LLC Services', NULL, '2025-06-18 10:04:01', '2025-06-18 10:33:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ad2f2f89-ddd6-4b81-810c-e1548a6fce66', 'd49ec560-02e4-4049-b181-837031133e95', 63.15, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Emma Harris', NULL, '2025-07-14 10:16:02', '2025-07-14 11:02:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71c1b470-2764-48fe-baf7-1d8d7e013ac8', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 976.3, 'EUR', 'TRANSFER',
        'PENDING', 'Savings account transfer', 'REF951856', '2025-04-30 17:16:08', '2025-04-30 17:52:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe2fa2b6-6438-4946-88c1-c33fae43e19a', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1122.29, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-03-30 00:10:12', '2025-03-30 00:43:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('27aede15-f76e-468d-a127-48d912a33e74', '50682165-f2c3-4049-909e-951838384433', 80.43, 'CAD', 'REFUND',
        'COMPLETED', 'Price adjustment - Montoya Ltd', 'REF502658', '2025-08-05 11:46:03', '2025-08-05 12:05:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('11932146-1557-4147-90d7-df135cf07f7c', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 983.69, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH357465', '2025-04-28 16:45:52', '2025-04-28 17:18:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f13a1b9-d610-4280-9bcc-bc4ae5e3a25e', '1817a074-62f9-463a-8dd7-c44151e47f96', 68.38, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Fowler-Harrison', 'REF137872', '2025-04-24 15:14:52', '2025-04-24 15:48:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d79c4488-7216-4be3-b760-b67c39a2b8c0', '17ad774a-8c59-447a-b309-a2953679e25a', 159.21, 'GBP', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF139856', '2025-03-30 18:38:23', '2025-03-30 19:34:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce69db83-85c5-4290-98f3-80dca97fbf92', 'd49ec560-02e4-4049-b181-837031133e95', 260.04, 'USD', 'TRANSFER',
        'CANCELLED', 'International transfer', 'REF662049', '2025-04-10 13:22:29', '2025-04-10 13:35:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0ad504ba-2880-4ed2-9984-ba99a34bbfca', 'd49ec560-02e4-4049-b181-837031133e95', 1444.83, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF656052', '2025-07-03 12:18:48', '2025-07-03 13:05:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c624054d-5d7e-4694-92af-e5c415211f51', '1817a074-62f9-463a-8dd7-c44151e47f96', 1928.79, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Kimberly Jackson', NULL, '2025-06-26 15:43:06', '2025-06-26 15:51:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('920ab911-8fd1-4995-ad26-5590ec0e681d', '17ad774a-8c59-447a-b309-a2953679e25a', 12.45, 'EUR', 'REFUND',
        'COMPLETED', 'Refund - Mathews, Carter and Harrell', 'REF164410', '2025-07-23 16:34:58', '2025-07-23 17:01:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe650920-05b4-4e52-baaa-e2b83cf6b5ea', 'd49ec560-02e4-4049-b181-837031133e95', 138.2, 'AUD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH183384', '2025-05-18 19:43:20', '2025-05-18 20:05:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('47f3dfb1-e6a8-4b15-8f3d-0a8da8f48da5', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 87.78, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Robinson-Johnson Market', NULL, '2025-04-12 10:30:56', '2025-04-12 10:46:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ed20c791-58ba-48c7-a728-150f45b6ac26', '4692fe34-18fd-4140-9f08-06189f96fac3', 67.49, 'GBP', 'DEBIT',
        'COMPLETED', 'Payment to Hernandez-Nelson', 'TXN537069', '2025-08-26 13:17:21', '2025-08-26 13:22:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('797c3fe7-7fb0-441a-870a-2eb4d106dc70', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 399.37, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Miller, Li and Rivera', 'TXN851518', '2025-07-10 10:23:45', '2025-07-10 10:58:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0bf0a55a-3c45-44d6-bd95-ae5597a43bdb', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1938.27, 'EUR', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH733644', '2025-05-20 10:28:21', '2025-05-20 10:44:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('141d9be1-64a3-4bab-87e2-b6ced40ceed5', '17ad774a-8c59-447a-b309-a2953679e25a', 963.3, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Walters-Reed', NULL, '2025-04-21 13:49:55', '2025-04-21 14:17:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('99802e92-0e2c-44e8-b7d2-74ab6fbad4ec', '1817a074-62f9-463a-8dd7-c44151e47f96', 727.74, 'EUR', 'CREDIT',
        'FAILED', 'Dividend payment - Smith, Perez and Daniels', NULL, '2025-04-26 11:40:46', '2025-04-26 12:15:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('321e92bb-fc66-46a7-ad5e-93181fd25a4c', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 204.7, 'USD', 'DEBIT',
        'PENDING', 'Online purchase - Mcdonald, Mckenzie and Rivera', 'TXN973468', '2025-06-03 14:58:22',
        '2025-06-03 15:06:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d8bac3a0-b83b-4d8c-963c-35b7970c8b4d', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 288.05, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-04 18:27:07', '2025-06-04 19:07:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('837441ea-b875-41ee-a5f1-b2265b92c7ba', '02630652-15bc-4df0-99b7-a41c93c79986', 142.9, 'EUR', 'DEBIT',
        'COMPLETED', 'Grocery - Parker, Johnson and Stevens Market', 'TXN699863', '2025-08-25 17:12:56',
        '2025-08-25 17:57:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a1ecd3bc-a3eb-4544-94fc-165b07218db9', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 38.8, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Wilkerson Inc Services', NULL, '2025-08-24 16:25:49', '2025-08-24 16:43:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('38a237bb-2765-499e-96ee-89b46f7d0e2e', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 410.28, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Morris PLC', NULL, '2025-06-09 18:01:43', '2025-06-09 18:46:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3e702fe2-162e-4699-a496-f1aef049f9f6', '20683a88-7f0e-471d-a3c5-bf175725052c', 63.11, 'GBP', 'REFUND',
        'COMPLETED', 'Return processing - Fuentes PLC', NULL, '2025-08-25 16:40:16', '2025-08-25 17:24:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9c5a3d65-4b55-448c-a728-1ebe513e12e9', '50682165-f2c3-4049-909e-951838384433', 604.02, 'EUR', 'CREDIT',
        'CANCELLED', 'Dividend payment - Sanders LLC', NULL, '2025-03-17 16:53:27', '2025-03-17 16:55:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('313a2150-db30-481a-8706-e99f62c9c919', '1817a074-62f9-463a-8dd7-c44151e47f96', 450.33, 'CAD', 'DEBIT',
        'COMPLETED', 'Gas station - Evans Group', 'TXN271479', '2025-06-25 17:33:55', '2025-06-25 17:59:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0839e7b6-ab8b-4cd6-ac64-ebae65f526e4', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 127.55, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Cole-Gallagher', 'REF731384', '2025-07-08 09:10:45', '2025-07-08 10:01:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e9363fa2-aeee-43a2-ae52-7cb0f0b3a76c', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 128.25, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Debra Michael', 'ACH240110', '2025-05-10 10:31:39', '2025-05-10 10:42:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('91c010b0-9fce-497d-998f-0fc0f25d860e', '02630652-15bc-4df0-99b7-a41c93c79986', 835.77, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF409221', '2025-08-27 17:05:16', '2025-08-27 17:11:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f13d9f5c-2b4f-477a-bef6-020eb8c57a2b', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 57.8, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Massey, Lawrence and Knight', 'TXN334019', '2025-06-21 11:56:41',
        '2025-06-21 12:35:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('50dd5d77-940b-4a9b-b31c-f32baadbed83', 'a6f93311-3bce-4db4-8395-25cde9688e47', 669.86, 'JPY', 'TRANSFER',
        'COMPLETED', 'Bill split with Jocelyn Keller', NULL, '2025-08-08 14:52:30', '2025-08-08 14:58:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('80f5a4a3-ee38-4105-868d-dc7541487237', '4110303a-5cca-4c46-885d-c1e3bd335d96', 35.02, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Mario Long', 'REF665701', '2025-05-23 11:12:57', '2025-05-23 12:01:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42e088b2-b5d1-434c-b2eb-18ca112b1821', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 191.83, 'EUR', 'REFUND',
        'COMPLETED', 'Service credit - Ortega LLC', 'REF578935', '2025-06-02 10:08:15', '2025-06-02 10:22:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6708437b-5e05-4ff3-ad6c-90eef13f5bfe', '1817a074-62f9-463a-8dd7-c44151e47f96', 76.82, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF958262', '2025-07-05 15:57:04', '2025-07-05 16:56:18');

-- Batch 3: Transactions 201-300
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a508cf8d-d3b1-4790-b0d4-75c2449471e3', '4692fe34-18fd-4140-9f08-06189f96fac3', 90.93, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Jones-Johnson Store', 'TXN361470', '2025-07-20 15:45:03', '2025-07-20 15:45:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('deed7e1a-021f-439f-ac58-627d61d53378', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 48.76, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Ross-Cantu', 'TXN166772', '2025-03-28 23:11:00', '2025-03-28 23:20:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe0c2156-0054-4e44-a154-6cf5b612b156', '12e6cc99-7181-4fde-98dc-93ded6112abf', 880.78, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-04-21 11:37:41', '2025-04-21 12:01:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8048838d-ca15-4894-ba18-c13135d32bf7', '30f7fce8-3a42-4900-8129-5549a3175459', 237.49, 'EUR', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 58789 Short Club', 'TXN291351', '2025-04-22 12:58:08', '2025-04-22 13:46:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0f9e98f-5f7e-4b7d-accc-caa9609d8ca2', 'd49ec560-02e4-4049-b181-837031133e95', 290.61, 'USD', 'DEBIT',
        'PENDING', 'Payment to Lloyd-Colon', 'TXN602456', '2025-07-07 15:00:58', '2025-07-07 15:15:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('41ae59d1-818b-474a-b8b5-92a5065f6d09', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 8.3, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Yu, Booker and Franklin', 'TXN697475', '2025-08-09 18:36:53', '2025-08-09 18:56:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('631b1690-f3b3-4c66-a6b8-7a0422f0d3ee', 'a6f93311-3bce-4db4-8395-25cde9688e47', 193.34, 'USD', 'REFUND',
        'PENDING', 'Cancelled order refund', 'REF588298', '2025-05-29 04:54:43', '2025-05-29 04:55:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('82d37f34-405f-4970-8587-18aa5135a88c', '02630652-15bc-4df0-99b7-a41c93c79986', 174.67, 'JPY', 'REFUND',
        'COMPLETED', 'Refund - Walker Ltd', 'REF819263', '2025-04-25 16:14:32', '2025-04-25 16:33:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('62323871-9c39-4d71-9424-63bf8b7050c2', '4110303a-5cca-4c46-885d-c1e3bd335d96', 592.08, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF628418', '2025-05-05 15:13:06', '2025-05-05 15:19:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('43da7fc2-71bd-415b-9322-41aa734ae964', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 170.14, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Jeremiah Lewis', NULL, '2025-06-28 11:25:22', '2025-06-28 12:02:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d7c874c2-7a5b-4c98-a5f3-25ec3ad95c31', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 241.37, 'DKK', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF294906', '2025-07-09 09:29:45', '2025-07-09 10:19:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('db4b0958-dc5f-4897-a849-b055f311fc8f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 753.57, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Mr. Jim Lawrence', 'REF735132', '2025-05-14 18:13:26', '2025-05-14 18:23:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6f411386-a264-4196-b482-aaa644d07860', '20683a88-7f0e-471d-a3c5-bf175725052c', 1651.8, 'USD', 'CREDIT',
        'PENDING', 'Interest payment', 'ACH253136', '2025-06-15 10:13:28', '2025-06-15 10:53:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('906bef22-737a-4010-8361-e5f61186a415', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 83.94, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF351835', '2025-05-22 15:19:40', '2025-05-22 15:41:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6b29ac80-c61a-40a2-bb4c-6d93ce57f363', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 592.99, 'JPY', 'TRANSFER',
        'COMPLETED', 'Rent payment to Aaron Scott', 'REF147533', '2025-05-30 01:09:32', '2025-05-30 01:11:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0d41c1d7-7aa0-4f9e-8ec7-20ff0b36ba7a', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 5491.94, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Francis Ltd', 'ACH423299', '2025-06-11 10:49:20', '2025-06-11 10:57:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ca67c657-56b3-4892-a4d2-fa6929118e11', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 44.15, 'JPY', 'REFUND',
        'COMPLETED', 'Dispute resolution - Lynn-Martin', 'REF349183', '2025-04-23 11:55:08', '2025-04-23 12:45:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2f8f5d5c-a433-45e9-9282-7304d91acb17', '20683a88-7f0e-471d-a3c5-bf175725052c', 88.92, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Lewis, Austin and Vaughn Premium', NULL, '2025-04-09 10:46:09',
        '2025-04-09 10:46:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a6175dae-ea2c-450c-80cf-3839ca09bac1', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 181.32, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Clark, Price and Hall', 'REF835505', '2025-07-15 21:34:47',
        '2025-07-15 22:21:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('76408664-fb48-4e8b-aa5e-41558238c0ec', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 550.1, 'EUR', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Robin Gordon', NULL, '2025-07-15 13:55:55', '2025-07-15 14:55:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cc6bf0b4-e1bd-4e17-b790-ed9086ab53bb', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 104.43, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Angela Brock', 'REF649464', '2025-04-24 06:12:12', '2025-04-24 07:01:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a39dfc4b-905a-4741-af49-eb176d6ee513', '30f7fce8-3a42-4900-8129-5549a3175459', 435.82, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Aguirre, Wright and Ryan Market', 'TXN292122', '2025-06-04 13:35:20',
        '2025-06-04 14:35:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6104b789-85fe-4968-865f-d9f5f120bc90', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 436.67, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Christopher Ochoa', NULL, '2025-03-29 11:20:53', '2025-03-29 11:23:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b010814c-ac3e-46e2-8299-df0dbdb0af54', 'd31cdd64-e270-4aa9-a77e-a89486214984', 273.6, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-05-11 14:54:41', '2025-05-11 15:51:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fefa3122-5e49-4588-88f4-280085f64d10', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 254.5, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Barber-Wood', 'ACH631802', '2025-09-08 13:26:37', '2025-09-08 14:07:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a63db3f-c2ce-4743-b4ba-ec0c35d63a58', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1040.75, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Thomas Manning', NULL, '2025-03-16 16:26:35', '2025-03-16 16:33:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('65bce0ff-5c22-47fd-a92c-36aef3a61a44', '4692fe34-18fd-4140-9f08-06189f96fac3', 164.04, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Keith Hughes', 'REF511085', '2025-04-05 16:12:20', '2025-04-05 16:48:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('17e07aad-0fae-4b91-9596-daeff36bdcb8', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1888.52, 'USD', 'CREDIT',
        'FAILED', 'Government benefit payment', 'ACH740724', '2025-06-09 10:25:48', '2025-06-09 11:13:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c05453d2-f420-4eda-9619-44c780d5a3e3', '12e6cc99-7181-4fde-98dc-93ded6112abf', 172.78, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF679416', '2025-04-26 22:46:25', '2025-04-26 22:53:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('63ae5ec2-5cb2-4588-b3e1-c4e3a4ee630e', '50682165-f2c3-4049-909e-951838384433', 49.21, 'EUR', 'REFUND',
        'COMPLETED', 'Service credit - Webster-Padilla', 'REF129401', '2025-08-13 16:53:23', '2025-08-13 17:25:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e215cf24-d84b-418e-8212-cc28089b30f8', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1631.53, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - West, Stark and Martin', NULL, '2025-06-07 13:52:08', '2025-06-07 14:03:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9fa885fe-5fb7-4a89-8437-b94f661e7c66', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 908.69, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH147495', '2025-08-19 18:18:41', '2025-08-19 19:15:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('469973b6-48ab-4477-a0fb-0c06fb9bef3c', '4110303a-5cca-4c46-885d-c1e3bd335d96', 53.79, 'USD', 'REFUND',
        'CANCELLED', 'Service credit - Sampson-Russell', 'REF539127', '2025-06-01 17:50:03', '2025-06-01 18:07:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('097dd85e-1fb4-493c-81b0-307037ea18fd', '523c0c30-1242-44a7-a025-f015ef7d4127', 1007.34, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH512030', '2025-04-18 03:12:44', '2025-04-18 03:21:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0db51672-b857-4887-8b0c-8c2a90950ff4', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 91.98, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Davis-Perez', 'TXN304955', '2025-09-09 07:03:22', '2025-09-09 07:11:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('052beecd-abfe-4caf-b137-74fd5640c0be', '50682165-f2c3-4049-909e-951838384433', 1991.17, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-06-18 02:09:23', '2025-06-18 02:15:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6d308d3b-b93d-494e-b1f6-99693e0378e3', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 14.8, 'EUR', 'DEBIT',
        'CANCELLED', 'Grocery - Clark, Olson and Weaver Market', 'TXN988271', '2025-04-06 16:45:38',
        '2025-04-06 17:36:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7ca0a35c-edd5-447b-89b1-e7462757bf9f', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 131.22, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Williams, Simpson and Dominguez', NULL, '2025-05-11 10:54:58',
        '2025-05-11 11:36:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('354e0892-bfeb-43b0-b73c-653c3278bb80', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1205.17, 'USD', 'CREDIT',
        'PENDING', 'Commission payment', NULL, '2025-06-29 16:59:26', '2025-06-29 17:21:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('09067117-233f-4b66-99cf-d0af2f91b646', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 195.85, 'EUR', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-07 17:41:01', '2025-06-07 18:33:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4c4aa0c0-2d36-4372-a49e-b4ba34dbb0c3', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 73.87, 'CAD', 'DEBIT',
        'COMPLETED', 'Bill payment - Porter-Watkins Services', NULL, '2025-07-14 18:35:33', '2025-07-14 19:18:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d281f11e-b704-40f6-8951-5dbe2b0e1f37', '17ad774a-8c59-447a-b309-a2953679e25a', 893.86, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Hernandez-Gilbert', 'ACH782879', '2025-06-03 12:27:20', '2025-06-03 12:36:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('10b37163-ea15-46d4-a922-9a287175ce66', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 141.39, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Warner-Lamb', 'REF216454', '2025-06-28 11:24:06', '2025-06-28 12:03:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39ce48a0-172e-45db-a397-2c4775f7d344', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 88.26, 'CAD', 'TRANSFER',
        'COMPLETED', 'Bill split with Anthony Guerrero', 'REF567907', '2025-05-01 11:34:44', '2025-05-01 11:54:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39032049-92da-43b2-9122-b4c67ded9743', '523c0c30-1242-44a7-a025-f015ef7d4127', 191.58, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF689926', '2025-05-24 13:19:35', '2025-05-24 13:31:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f08f16f5-d53f-4935-80e8-42660702f401', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 24.86, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - George, Robinson and Martinez', 'TXN628428', '2025-07-26 10:19:28',
        '2025-07-26 10:40:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5b873fe8-23c3-4681-8444-c2b054382ec8', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1156.51, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Carly Lopez', NULL, '2025-05-02 17:36:17', '2025-05-02 17:42:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7f85768a-814a-4bc0-a492-8162b6ba4dfc', '4692fe34-18fd-4140-9f08-06189f96fac3', 1877.53, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH529171', '2025-07-08 09:40:47', '2025-07-08 09:41:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b130cb7c-1e4e-4748-ae30-4b5540954e4b', '4692fe34-18fd-4140-9f08-06189f96fac3', 111.54, 'GBP', 'REFUND',
        'COMPLETED', 'Price adjustment - Scott, Rose and Owen', 'REF898480', '2025-08-02 11:59:56',
        '2025-08-02 12:27:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('156e3ad3-84c3-4b75-a754-57176499bf2d', '12e6cc99-7181-4fde-98dc-93ded6112abf', 25.84, 'EUR', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-03-23 15:27:39', '2025-03-23 16:10:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f377f435-0f08-471f-b573-2db8d10d6bc5', 'f9cae736-64d5-4692-a257-d87446ffc401', 1398.66, 'CAD', 'DEBIT',
        'COMPLETED', 'Subscription - Green, Norris and Shaffer Premium', 'TXN644412', '2025-06-05 15:12:51',
        '2025-06-05 15:45:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c126c208-f001-471c-88e6-6ea0009df2c5', '12e6cc99-7181-4fde-98dc-93ded6112abf', 136.64, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Robertson LLC', NULL, '2025-07-01 16:55:42', '2025-07-01 17:26:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('908cb8b6-390a-461d-8242-eb501d0adfd3', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 250.27, 'EUR', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH768418', '2025-09-10 13:24:34', '2025-09-10 13:59:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c794cfeb-8b6a-4ca8-a76b-dae35e983b61', '4110303a-5cca-4c46-885d-c1e3bd335d96', 81.73, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 8281 Lopez Inlet Apt. 190', 'TXN445038', '2025-04-25 14:32:06',
        '2025-04-25 15:12:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9640838e-ca57-4f86-b767-c98a60d93203', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 14.31, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Morgan Group', 'REF435691', '2025-05-17 16:48:34', '2025-05-17 17:30:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('61339f6a-0a6c-4f5e-86a4-df7879fb4a5d', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 71.19, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Potter, Holder and Hill', 'TXN548065', '2025-08-05 21:19:46', '2025-08-05 21:48:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dfd8cbad-7ef4-4dba-b442-2dbd5602700b', '30f7fce8-3a42-4900-8129-5549a3175459', 264.36, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Johnson-Gomez', 'TXN617746', '2025-05-05 16:59:13', '2025-05-05 17:07:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ca18118b-7513-42b2-a5a1-bcabe95feb37', '2e3b6236-b73f-40b1-a88f-abafe787082b', 3010.19, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Jorge Brown', 'ACH450500', '2025-09-10 13:59:05', '2025-09-10 14:03:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c23194a-c50f-47fc-b37a-bb94c257f7c7', '7a712793-0571-4844-b830-a1a4d3fdeb27', 833.96, 'EUR', 'TRANSFER',
        'CANCELLED', 'Investment account funding', 'REF451817', '2025-04-05 12:03:03', '2025-04-05 12:45:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d82b4bf3-dc96-4cff-b557-29138cf31363', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 6280.93, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-08-04 17:16:26', '2025-08-04 17:55:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('63c6f5a3-cb25-491c-8ffe-10b89e96bd52', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1961.12, 'JPY', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-07-04 18:12:30', '2025-07-04 18:46:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bc8e244b-98e9-41d0-8b61-08b8d0245817', '30f7fce8-3a42-4900-8129-5549a3175459', 10.51, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Bennett, Cruz and Lara Premium', 'TXN102855', '2025-06-14 05:25:54',
        '2025-06-14 06:24:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cd5dd020-bca5-4bc0-b908-8661b05c78af', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1002.85, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF137885', '2025-05-12 09:33:42', '2025-05-12 09:36:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('615cd948-4a98-42d5-b6ea-ad62fc4f9cc0', 'd31cdd64-e270-4aa9-a77e-a89486214984', 68.46, 'GBP', 'REFUND',
        'CANCELLED', 'Service credit - Sanchez-James', 'REF121244', '2025-05-11 11:07:50', '2025-05-11 11:15:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c7d8f807-f1e4-4d88-a345-9d8e04166c40', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 32.32, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF946761', '2025-03-16 14:13:01', '2025-03-16 14:32:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4351e135-793b-4521-b6f3-bc051119004c', '50682165-f2c3-4049-909e-951838384433', 1419.9, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF196997', '2025-08-20 11:59:08', '2025-08-20 12:06:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('55082924-2e5f-4cb5-8cde-0c9bdf13e595', '4692fe34-18fd-4140-9f08-06189f96fac3', 371.77, 'CAD', 'DEBIT',
        'CANCELLED', 'Bill payment - Vega Inc Services', NULL, '2025-05-22 00:35:25', '2025-05-22 00:43:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5ff8c8f-955f-4412-9367-1c3d4fc4e809', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 35.32, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Stout-Holt', 'REF337820', '2025-04-30 13:22:09', '2025-04-30 14:19:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('552a8bd0-f2de-492e-b7cb-b958a15c3031', '20683a88-7f0e-471d-a3c5-bf175725052c', 130.15, 'USD', 'REFUND',
        'PENDING', 'Service credit - Williams, Jackson and Martinez', 'REF866209', '2025-04-18 11:15:23',
        '2025-04-18 11:32:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('63cefe4b-a00e-488e-bba6-1fabc5f9a2ad', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1008.88, 'EUR', 'TRANSFER',
        'PENDING', 'Transfer to Eric Berry MD', 'REF398969', '2025-09-03 07:16:20', '2025-09-03 08:11:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67293523-14b2-4969-99c0-55922a0f84c0', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 139.72, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF139927', '2025-07-13 16:36:52', '2025-07-13 16:55:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5f4f46ae-a86d-4085-b2ee-244af90dc1c5', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 150.48, 'EUR', 'DEBIT',
        'COMPLETED', 'Card payment - Stevens, Singh and Kelley Store', 'TXN328542', '2025-06-16 15:47:47',
        '2025-06-16 16:43:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2c392496-25ef-4a66-8578-a6d7e20d27d3', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 123.89, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-03 10:24:10', '2025-06-03 10:44:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f4282025-9fa2-40e8-b77e-793acb9dc104', 'd49ec560-02e4-4049-b181-837031133e95', 138.84, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF179314', '2025-04-28 14:51:00', '2025-04-28 15:07:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('85557a81-7f03-4331-be38-a147a4ee1c31', '50682165-f2c3-4049-909e-951838384433', 905.62, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Miller Inc', 'ACH762904', '2025-06-07 17:59:45', '2025-06-07 18:00:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f5ca8438-4ba1-4008-b57a-867a35c7ff2b', 'f9cae736-64d5-4692-a257-d87446ffc401', 172.9, 'NOK', 'DEBIT',
        'COMPLETED', 'Restaurant - Ward PLC', 'TXN441187', '2025-05-31 17:55:09', '2025-05-31 18:09:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cf85dbd4-28de-496d-8788-c2469f6ddce3', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 87.82, 'GBP', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF559518', '2025-05-15 15:50:27', '2025-05-15 16:24:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e16f525f-a909-4ef1-a575-2d29681e7e52', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1136.64, 'EUR', 'CREDIT',
        'PENDING', 'Freelance payment - Daniels, Daniel and Peterson', 'ACH625858', '2025-08-23 10:31:26',
        '2025-08-23 10:39:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3addb71b-d678-4147-8c4a-ff97325d48d1', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 128.34, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Jackson, Garcia and Jackson', 'REF801933', '2025-09-09 15:50:04',
        '2025-09-09 16:40:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92cbd7d2-a82b-4e48-89ec-617035f48ec2', 'a6f93311-3bce-4db4-8395-25cde9688e47', 133.7, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Morales-Washington', 'REF482364', '2025-06-24 09:20:43', '2025-06-24 09:36:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d16e6a4c-5c30-45b4-883c-4915e5b633d4', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 18.43, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF643919', '2025-08-01 17:18:07', '2025-08-01 18:12:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d81cbd70-1384-426b-9ffd-df7bd2870827', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 28.83, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Mccoy-Williams', 'REF190883', '2025-09-02 18:28:50', '2025-09-02 19:14:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('af929a2b-dee7-46e8-be18-eeb9ab51d4e1', '17ad774a-8c59-447a-b309-a2953679e25a', 48.36, 'JPY', 'REFUND',
        'FAILED', 'Cancelled order refund', 'REF615525', '2025-05-21 21:28:16', '2025-05-21 22:09:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('af0a10a7-b0b0-4117-919f-1ca47715ddc9', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 79.2, 'EUR', 'DEBIT', 'PENDING',
        'Bill payment - Foster, Smith and Williams Services', 'TXN702827', '2025-09-06 15:37:03',
        '2025-09-06 16:06:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('610bfe07-beb3-4096-ba23-aa5bc146933e', 'd31cdd64-e270-4aa9-a77e-a89486214984', 32.77, 'GBP', 'REFUND',
        'COMPLETED', 'Return processing - Johnson, Jones and Browning', NULL, '2025-06-14 16:08:04',
        '2025-06-14 16:24:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2977613c-bdd8-4c23-9fa0-4ce3af3cd7f3', '02630652-15bc-4df0-99b7-a41c93c79986', 69.06, 'EUR', 'REFUND',
        'FAILED', 'Warranty claim refund', 'REF212857', '2025-08-05 09:07:46', '2025-08-05 09:39:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a0c05c2d-4074-42c6-a1ff-45f7b869d05a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 189.5, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Campbell-Myers', NULL, '2025-07-15 10:09:54', '2025-07-15 10:49:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b9e17c23-ae40-4fe6-a4c4-1febcbf48fe6', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 81.28, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-05-15 11:30:31', '2025-05-15 12:07:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('84cb5dd8-346a-4923-944e-d75c64837edd', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 375.22, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Nathaniel Maddox', 'REF402974', '2025-07-30 12:42:15', '2025-07-30 12:58:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3539c9e3-a8dd-4252-a2f1-5a761bb4253e', '17ad774a-8c59-447a-b309-a2953679e25a', 136.73, 'EUR', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF333545', '2025-07-06 15:45:11', '2025-07-06 16:28:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e14e8486-8043-4d13-994b-2a4d5028d6ac', '20683a88-7f0e-471d-a3c5-bf175725052c', 1268.99, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF471418', '2025-07-21 09:27:48', '2025-07-21 09:42:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('98978113-b69e-4b51-b30d-3802a5e6719d', '4692fe34-18fd-4140-9f08-06189f96fac3', 497.8, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF546421', '2025-07-16 12:10:13', '2025-07-16 12:59:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ceb36c93-d12a-4146-bdae-44a7ef39b374', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 670.97, 'JPY', 'TRANSFER',
        'COMPLETED', 'Rent payment to Sarah Blankenship', 'REF982401', '2025-05-24 15:56:08', '2025-05-24 16:33:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d28e5d69-5aa3-438f-9823-80bbf45594a2', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 145.93, 'USD', 'REFUND',
        'CANCELLED', 'Return processing - Alexander-Davis', NULL, '2025-05-13 11:23:03', '2025-05-13 11:34:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fc300eac-9afc-4de5-a9e5-0e1f25ab7af8', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 753.64, 'USD', 'TRANSFER',
        'FAILED', 'Savings account transfer', NULL, '2025-06-25 16:38:31', '2025-06-25 16:58:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('47cf5289-1a6e-47de-9745-baae50b9222e', '7a712793-0571-4844-b830-a1a4d3fdeb27', 153.76, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF960933', '2025-08-31 12:23:55', '2025-08-31 12:35:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('45f31df5-cafe-4f14-9a0a-5753583d4ca3', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1389.5, 'GBP', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH103794', '2025-08-24 11:24:53', '2025-08-24 11:55:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('84e7e5aa-5031-4637-9385-00fe87cf9d01', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 102.58, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-05-09 17:46:00', '2025-05-09 18:12:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b41027d1-712f-428e-8887-131be4ce7257', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 118.45, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF830666', '2025-08-29 18:02:46', '2025-08-29 18:23:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('82b44033-8b95-494e-ac9a-107112c71ae3', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 136.47, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-07-19 11:37:08', '2025-07-19 12:00:49');

-- Batch 4: Transactions 301-400
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8d17646b-da8f-45ae-9ae3-3c578a609270', '30f7fce8-3a42-4900-8129-5549a3175459', 334.78, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Frances Webb MD', 'REF267725', '2025-03-26 11:28:27', '2025-03-26 12:19:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21ca62a9-692a-4ff2-a416-cc7b66bc259e', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 995.42, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Walker-Medina', 'ACH701665', '2025-06-04 11:08:59', '2025-06-04 12:05:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e76ccca4-e77f-4497-8a4d-214f4d0b9939', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1427.43, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with Ashley Sandoval', 'REF298185', '2025-06-05 15:21:07', '2025-06-05 15:32:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e794085f-5e10-4585-ad89-7db585e272d2', '1817a074-62f9-463a-8dd7-c44151e47f96', 122.14, 'AUD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-09-01 16:18:06', '2025-09-01 16:57:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e6455cba-64a5-48cc-87bc-84c149e7f2aa', '20683a88-7f0e-471d-a3c5-bf175725052c', 85.33, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Curry-Sullivan Services', NULL, '2025-08-17 16:16:51', '2025-08-17 16:33:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a49bd9e-5b64-4db9-8d31-f1a9c6660127', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1808.02, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Lindsey LLC', 'ACH212364', '2025-07-19 12:34:31', '2025-07-19 13:30:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e39981d0-d13a-440d-a297-c546abe2945f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 101.51, 'USD', 'DEBIT',
        'FAILED', 'Grocery - Fowler LLC Market', 'TXN407703', '2025-05-20 09:39:26', '2025-05-20 10:10:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('44f18dcf-c854-4d32-8331-45a59975d997', '4110303a-5cca-4c46-885d-c1e3bd335d96', 644.56, 'USD', 'TRANSFER',
        'CANCELLED', 'Savings account transfer', 'REF432008', '2025-04-18 00:45:17', '2025-04-18 01:00:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b366798-0bd6-4d99-80c6-c36828969ed4', 'a6f93311-3bce-4db4-8395-25cde9688e47', 183.55, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Duncan Inc', NULL, '2025-08-07 15:53:08', '2025-08-07 16:32:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f90963f8-cc33-48c6-9264-b5c443e73a24', 'd49ec560-02e4-4049-b181-837031133e95', 1006.19, 'GBP', 'TRANSFER',
        'FAILED', 'P2P payment via mobile app', 'REF565371', '2025-05-04 11:24:40', '2025-05-04 12:14:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46bf5064-bc5a-4d4e-8a0d-9cc219341915', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 66.11, 'EUR', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF642024', '2025-04-01 14:48:00', '2025-04-01 15:22:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e00c8b6a-58a2-4a7d-8338-7f58062ac138', '2e3b6236-b73f-40b1-a88f-abafe787082b', 72.78, 'EUR', 'DEBIT',
        'COMPLETED', 'Online transfer to Brian Barton DDS', 'TXN490674', '2025-08-29 16:29:05', '2025-08-29 17:21:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a66367dc-f6ed-44f4-a062-1238bcdb39e6', '4692fe34-18fd-4140-9f08-06189f96fac3', 176.41, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Brown Group', 'REF441521', '2025-05-31 16:29:09', '2025-05-31 16:34:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4077ac6c-3ad9-4331-bd7a-c3348bf69db1', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 126.26, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-07-13 09:27:48', '2025-07-13 09:40:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dae71fd6-b6a1-4e2b-ac1a-be8eec3861dc', '02630652-15bc-4df0-99b7-a41c93c79986', 1115.2, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF872546', '2025-03-29 18:30:10', '2025-03-29 19:26:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1ad6ff7f-084b-427c-9678-2a98ea62c34e', '1817a074-62f9-463a-8dd7-c44151e47f96', 544.95, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Austin Martinez', 'REF910182', '2025-05-27 15:44:58', '2025-05-27 16:06:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9b2d5bfe-ba21-432a-a47c-4edb3374c7d6', '20683a88-7f0e-471d-a3c5-bf175725052c', 44.44, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Lopez Group', NULL, '2025-06-26 09:55:11', '2025-06-26 10:23:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d1afcddd-df1c-4454-972b-603cfb838a96', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 79.66, 'CAD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF352236', '2025-08-07 12:12:11', '2025-08-07 13:05:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1d23aa86-4476-47e8-867a-1cde102e85bb', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 160.64, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-04-12 09:52:32', '2025-04-12 10:24:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('074f6788-5291-4e05-8fc4-8645a23e9905', '7a712793-0571-4844-b830-a1a4d3fdeb27', 309.18, 'USD', 'TRANSFER',
        'FAILED', 'Wire transfer to Brian Nguyen', NULL, '2025-08-22 11:28:27', '2025-08-22 11:38:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('216a13db-798c-4f4b-a1fc-b0d69fa7bcf2', 'a6f93311-3bce-4db4-8395-25cde9688e47', 115.53, 'NOK', 'REFUND',
        'PENDING', 'Processing fee refund', NULL, '2025-04-20 10:41:22', '2025-04-20 10:47:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('186d8f2d-65a5-493e-ac57-27b4321fbc5a', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1121.71, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Price Group', 'ACH412323', '2025-09-01 13:23:50', '2025-09-01 13:28:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('94d25084-de65-47e1-a132-79348bc52f3e', '20683a88-7f0e-471d-a3c5-bf175725052c', 2403.03, 'GBP', 'DEBIT',
        'COMPLETED', 'Payment to Trevino Inc', NULL, '2025-06-17 14:25:57', '2025-06-17 15:19:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e931f4f9-5b49-4324-bf40-a0311e15c508', '523c0c30-1242-44a7-a025-f015ef7d4127', 99.32, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Martinez-Alexander', 'ACH586024', '2025-09-03 13:55:28',
        '2025-09-03 14:22:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9b58069f-e8f1-4851-b067-9dae91b5d206', '4692fe34-18fd-4140-9f08-06189f96fac3', 1141.32, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-14 12:54:56', '2025-06-14 13:24:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a9581487-c137-412d-8ccc-bcdd1f60a546', '1817a074-62f9-463a-8dd7-c44151e47f96', 95.09, 'EUR', 'DEBIT',
        'COMPLETED', 'Restaurant - Lucas Inc', 'TXN200967', '2025-09-02 15:37:25', '2025-09-02 15:52:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9bfc70fd-d0be-4d7b-a92b-22a3c22448c7', '1817a074-62f9-463a-8dd7-c44151e47f96', 2799.8, 'USD', 'CREDIT',
        'FAILED', 'Government benefit payment', 'ACH779378', '2025-03-31 17:01:59', '2025-03-31 17:58:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4dc62a89-0abf-4f78-8aff-b95919bb45d9', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 37.39, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Smith-Liu Market', NULL, '2025-08-25 14:24:37', '2025-08-25 15:16:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('805296b7-7bc2-48ca-9e2b-19e422073aca', '50682165-f2c3-4049-909e-951838384433', 94.5, 'USD', 'DEBIT', 'FAILED',
        'ATM withdrawal at 601 Randall Center', 'TXN219563', '2025-07-25 10:33:01', '2025-07-25 11:23:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c0d7b779-3c43-403e-b564-e3632100da28', '30f7fce8-3a42-4900-8129-5549a3175459', 1732.58, 'GBP', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH246832', '2025-06-06 18:26:31', '2025-06-06 18:27:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3bc72908-0fb4-4706-a336-3dfdcca89bce', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 40.59, 'EUR', 'DEBIT',
        'COMPLETED', 'Online transfer to Tonya Johnson', 'TXN431398', '2025-07-27 11:56:10', '2025-07-27 12:42:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ede0735c-cf74-4e41-b1ff-db40cd4792b7', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 23.07, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-04-11 00:52:50', '2025-04-11 01:20:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('51af91bc-c035-4ad5-b158-7a7365f522e8', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1334.81, 'NOK', 'TRANSFER',
        'COMPLETED', 'Bill split with Randall Olson', 'REF817788', '2025-04-26 17:59:43', '2025-04-26 18:20:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c1ed5299-7ff8-49ac-9fe1-c34f82f56876', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 274.1, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Edwards, Meza and Ward', 'ACH689783', '2025-03-31 17:27:12',
        '2025-03-31 17:33:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9f07882f-2842-4d27-a2c7-b1e88c1bde52', '4110303a-5cca-4c46-885d-c1e3bd335d96', 967.84, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF602242', '2025-06-05 10:38:16', '2025-06-05 11:24:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67bfe037-2206-4387-9e44-4a51e406985d', '4692fe34-18fd-4140-9f08-06189f96fac3', 90.51, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Gray, Lane and Gonzalez', 'REF501318', '2025-06-25 17:12:23', '2025-06-25 17:58:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b7e72600-8a7d-402c-986d-97c0ccc0eb29', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 154.02, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Wright-Davis Market', 'TXN714866', '2025-08-15 15:47:45', '2025-08-15 16:39:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0e93398b-aaf0-43d3-a7e3-c6f157c60e8d', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 164.1, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF149738', '2025-05-12 07:44:36', '2025-05-12 08:38:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2de73d23-b29f-4d6b-9584-80599d1c7ff8', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 286.88, 'USD', 'DEBIT',
        'FAILED', 'Grocery - Crawford, Atkins and Costa Market', 'TXN538795', '2025-04-07 13:38:09',
        '2025-04-07 14:31:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('538c048c-0199-432e-ba84-ed21fca5c477', '30f7fce8-3a42-4900-8129-5549a3175459', 577.45, 'CHF', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF630412', '2025-05-21 12:27:22', '2025-05-21 12:54:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a95a75da-453d-449b-a40b-31647354c3ae', 'f9cae736-64d5-4692-a257-d87446ffc401', 1341.09, 'GBP', 'TRANSFER',
        'FAILED', 'International transfer', 'REF796404', '2025-06-21 15:58:50', '2025-06-21 15:59:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8e3b2560-1798-4ac9-9150-29189170fd5e', '523c0c30-1242-44a7-a025-f015ef7d4127', 406.35, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Olsen and Sons', NULL, '2025-05-03 16:15:49', '2025-05-03 16:47:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ae948738-81b5-4f6c-8208-928ee35c927e', '2e3b6236-b73f-40b1-a88f-abafe787082b', 85.46, 'USD', 'DEBIT', 'FAILED',
        'Online transfer to Elizabeth Burke', NULL, '2025-07-20 09:48:10', '2025-07-20 09:58:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('37922ca2-cb2e-4a88-b426-69c5e9f457fc', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 96.47, 'CHF', 'REFUND',
        'PENDING', 'Warranty claim refund', NULL, '2025-04-30 10:17:56', '2025-04-30 10:34:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9d7ae43e-87c5-4c67-805d-66f4fd1c096f', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1286.96, 'JPY', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH251682', '2025-05-13 18:28:41', '2025-05-13 19:18:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('360538ee-bcef-4748-b52f-d30d9ae7ff20', '12e6cc99-7181-4fde-98dc-93ded6112abf', 12.69, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Paul, Frazier and Armstrong Premium', 'TXN743525', '2025-08-06 15:16:44',
        '2025-08-06 15:46:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('866760bb-f709-4215-b9e6-c268e37fa835', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1434.18, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF220932', '2025-08-04 12:36:37', '2025-08-04 12:59:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dcefe554-c577-4b14-a3ef-442e74afae6f', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 459.52, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Smith Group', NULL, '2025-05-14 22:10:20', '2025-05-14 22:47:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c66c8e47-cbc6-405b-ae68-9daf4102d8a6', '7a712793-0571-4844-b830-a1a4d3fdeb27', 905.48, 'AUD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Rebecca Hess', 'REF183579', '2025-07-10 14:23:34', '2025-07-10 15:19:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c97e40b2-b039-4641-a90b-35a6fea3f3cb', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 132.57, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-07-22 09:45:53', '2025-07-22 09:49:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bc8e81d3-8137-4714-8ee3-fb060f1aaf65', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 129.04, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF691475', '2025-04-11 02:07:09', '2025-04-11 02:41:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eda66106-df09-4dc5-8cac-ec88fcf95004', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 39.84, 'EUR', 'DEBIT',
        'COMPLETED', 'Restaurant - Townsend-Pierce', 'TXN815447', '2025-07-05 16:41:34', '2025-07-05 17:09:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('04c5af53-0299-4770-95f7-8c804b9863c6', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 898.41, 'USD', 'TRANSFER',
        'FAILED', 'International transfer', 'REF319854', '2025-04-03 22:14:48', '2025-04-03 22:31:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e25e6b85-72f9-4edb-b1d4-8806ba6836e2', '30f7fce8-3a42-4900-8129-5549a3175459', 125.22, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Klein, Hayes and Jensen', NULL, '2025-04-03 18:25:38', '2025-04-03 19:05:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0ee6eae-eb05-4385-9c4e-73f0e9a0b806', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 668.0, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Craig-Walter', 'ACH123074', '2025-09-02 12:16:22', '2025-09-02 13:07:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e62ac661-771c-4177-90b5-5838111dea8f', '1817a074-62f9-463a-8dd7-c44151e47f96', 25.57, 'EUR', 'DEBIT', 'FAILED',
        'Card payment - Morrow Group Store', 'TXN595933', '2025-04-06 05:16:21', '2025-04-06 05:25:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0cb8df16-80b9-4616-8bde-fbd004f18161', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 12.35, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 1183 White Square', NULL, '2025-06-27 17:00:39', '2025-06-27 17:47:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c0fc04de-8a0b-42b1-a604-fe5ccdfadebd', '1817a074-62f9-463a-8dd7-c44151e47f96', 67.24, 'GBP', 'REFUND',
        'COMPLETED', 'Refund - Silva Inc', NULL, '2025-07-17 10:52:56', '2025-07-17 10:58:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('57ec2d7c-4e5c-42ee-99c7-3058ac63e2e3', '17ad774a-8c59-447a-b309-a2953679e25a', 15.58, 'GBP', 'REFUND',
        'COMPLETED', 'Price adjustment - Miller, Davis and Mendoza', 'REF226857', '2025-07-27 12:48:49',
        '2025-07-27 13:33:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5d9b0bfd-3f6f-4a6a-abad-6ce883445aad', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1457.07, 'GBP', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH689848', '2025-06-01 06:39:54', '2025-06-01 07:30:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9910614a-7741-40a1-9f12-07bd75077738', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 30.08, 'EUR', 'REFUND',
        'COMPLETED', 'Refund - Griffin Group', NULL, '2025-07-09 18:07:17', '2025-07-09 18:20:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('10b62f36-9ed8-4b19-b5ca-f70b071a0fe7', '02630652-15bc-4df0-99b7-a41c93c79986', 1558.07, 'JPY', 'CREDIT',
        'COMPLETED', 'Dividend payment - Smith LLC', 'ACH503800', '2025-05-14 12:06:18', '2025-05-14 12:10:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('19193bd6-039d-4782-8f9a-48840796c3d6', '4692fe34-18fd-4140-9f08-06189f96fac3', 55.8, 'USD', 'REFUND',
        'PENDING', 'Price adjustment - Shea, Hanson and Becker', NULL, '2025-09-06 15:52:26', '2025-09-06 15:55:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b4aef06-b060-4f38-825f-43c1e9336e94', '7a712793-0571-4844-b830-a1a4d3fdeb27', 935.95, 'USD', 'TRANSFER',
        'PENDING', 'Wire transfer to Joy Martin', 'REF720002', '2025-05-21 14:46:03', '2025-05-21 15:17:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8ddb6d54-9c45-46c8-8359-5eeafd110611', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 171.42, 'USD', 'REFUND',
        'PENDING', 'Return processing - Ross, Porter and Boyd', 'REF269504', '2025-08-19 16:05:37',
        '2025-08-19 16:13:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9163d8c0-b6ff-4dad-b952-0d5c5ffd8ded', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 708.08, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Adams-Hogan', 'ACH668215', '2025-08-31 11:31:06', '2025-08-31 12:20:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3dcf1bef-ee88-4b5f-adac-b31bbb69d085', 'd49ec560-02e4-4049-b181-837031133e95', 787.86, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Cynthia Saunders', 'ACH885177', '2025-06-22 14:13:47', '2025-06-22 15:11:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8bf4b3c7-fe6d-490b-8392-3a0df44d51ea', '4110303a-5cca-4c46-885d-c1e3bd335d96', 123.74, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF533141', '2025-07-04 00:15:35', '2025-07-04 00:17:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('646027ed-60bb-4dd8-a13e-abc2fac3e5f4', '4110303a-5cca-4c46-885d-c1e3bd335d96', 468.29, 'GBP', 'DEBIT',
        'FAILED', 'Subscription - Melton LLC Premium', NULL, '2025-06-05 16:05:40', '2025-06-05 16:40:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('443a60c1-721b-460b-8b93-93481013a171', '20683a88-7f0e-471d-a3c5-bf175725052c', 1121.54, 'USD', 'CREDIT',
        'PENDING', 'Transfer from Tyler Davis', 'ACH145573', '2025-05-31 04:13:25', '2025-05-31 04:17:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('261d68c7-5a3e-4765-9d7c-f8277f778eca', '1817a074-62f9-463a-8dd7-c44151e47f96', 377.02, 'GBP', 'TRANSFER',
        'COMPLETED', 'Transfer to Shelby Cox', 'REF251979', '2025-08-22 10:28:42', '2025-08-22 11:03:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b485dc7a-1120-45fb-a35c-fa9eddc7781e', '50682165-f2c3-4049-909e-951838384433', 1847.94, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Robert White', 'ACH763796', '2025-03-25 16:42:28', '2025-03-25 17:23:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3e62d5e2-dffc-4bd0-a747-0fa5dc0d7b2d', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 277.73, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Clayton-Miller', NULL, '2025-07-16 16:00:19', '2025-07-16 16:41:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('40c7b696-1f32-44d7-a53b-37a23a05c058', '50682165-f2c3-4049-909e-951838384433', 1104.48, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-07-05 18:53:33', '2025-07-05 19:37:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a414b550-fcde-4723-89c7-61d978fd0e2d', 'a6f93311-3bce-4db4-8395-25cde9688e47', 623.21, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF391723', '2025-07-11 17:33:32', '2025-07-11 18:03:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c8d75e0-01e3-443d-9876-a7fd87620866', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 137.14, 'EUR', 'DEBIT',
        'COMPLETED', 'Card payment - Price Group Store', NULL, '2025-06-30 12:06:37', '2025-06-30 12:29:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9913715a-579a-4ef8-8579-61c6efa2c96a', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 190.55, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Johnson-Hopkins Premium', 'TXN878579', '2025-05-31 18:34:58',
        '2025-05-31 19:28:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3ebc42c8-2098-4f66-85cf-af19becba639', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 809.09, 'USD', 'TRANSFER',
        'PENDING', 'P2P payment via mobile app', 'REF709338', '2025-03-31 15:42:45', '2025-03-31 16:42:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dbb4e035-3f18-448c-9e75-5b0f7ce9c29c', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 122.34, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Lawrence, Brown and Garza', 'REF658481', '2025-04-19 14:57:34',
        '2025-04-19 15:18:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a2d4153c-7aaa-4e8f-8f4f-fa370ea164c8', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 63.52, 'DKK', 'REFUND',
        'PENDING', 'Warranty claim refund', NULL, '2025-05-07 15:25:32', '2025-05-07 15:36:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('de3c2305-92a5-4ec7-a9f9-b9c46c2ec6f6', '523c0c30-1242-44a7-a025-f015ef7d4127', 69.69, 'GBP', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF916970', '2025-03-19 15:29:27', '2025-03-19 15:51:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a017cc60-0b0b-40f5-85b8-b87ce5b3e314', '523c0c30-1242-44a7-a025-f015ef7d4127', 760.09, 'CAD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF563859', '2025-09-04 16:48:37', '2025-09-04 17:28:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02cf0133-c35f-4f7d-8539-616e52f734aa', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 182.32, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-09-10 12:48:11', '2025-09-10 13:35:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6a3ba544-21ee-4d61-b66c-bf82f6a3d07f', '12e6cc99-7181-4fde-98dc-93ded6112abf', 74.63, 'EUR', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF172149', '2025-04-03 11:55:58', '2025-04-03 12:36:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b93ab9bf-fc71-4901-ba7e-1092c4f97721', 'a6f93311-3bce-4db4-8395-25cde9688e47', 190.31, 'GBP', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF497017', '2025-06-16 11:48:36', '2025-06-16 12:19:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16dd679d-cb29-422d-b2dd-6876e4e44560', '7a712793-0571-4844-b830-a1a4d3fdeb27', 826.55, 'DKK', 'CREDIT',
        'COMPLETED', 'Refund from Dominguez PLC', 'ACH837134', '2025-05-20 12:27:47', '2025-05-20 13:23:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dac6693d-6503-4349-97bf-8f08b30de849', 'f9cae736-64d5-4692-a257-d87446ffc401', 1467.44, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-05-31 03:10:20', '2025-05-31 03:41:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7bae1790-745b-43ae-929f-cb0d3bacb638', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 94.91, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Carter, Mendoza and Soto Premium', NULL, '2025-03-18 10:36:07',
        '2025-03-18 11:35:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8b40955-5526-4987-b720-e1309bdafa25', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 106.43, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Michael Gibson', NULL, '2025-06-20 12:46:19', '2025-06-20 12:50:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8099da80-422b-4886-91eb-f313140b7dae', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1001.54, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Jacob Brown', 'REF326571', '2025-06-26 10:05:14', '2025-06-26 11:01:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('25ccf0bd-2166-4b26-81d6-406e8bd44a53', '4692fe34-18fd-4140-9f08-06189f96fac3', 62.57, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Serrano Inc Market', 'TXN460335', '2025-05-07 16:48:06', '2025-05-07 17:37:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5186e26c-addf-4cb6-b750-1c6fb563ea41', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1114.04, 'EUR', 'TRANSFER',
        'PENDING', 'Wire transfer to Kelly Lopez', NULL, '2025-04-21 14:55:00', '2025-04-21 15:14:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7efc9653-1d2b-49d0-bb6b-75f9caf379f9', '4692fe34-18fd-4140-9f08-06189f96fac3', 31.0, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF729866', '2025-05-24 17:44:28', '2025-05-24 18:39:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4cc945b0-eb3a-4a53-bb89-ec0423519437', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 40.34, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Green, Cole and Blake Market', 'TXN819741', '2025-08-07 14:56:28',
        '2025-08-07 15:04:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('55359655-b7f1-4155-987a-56a1df7e9f46', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1346.23, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-09-05 18:44:11', '2025-09-05 19:20:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9138ae5b-9233-4b02-afbd-414f08272729', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1321.56, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Anderson-Powell', 'ACH792323', '2025-04-28 13:50:31', '2025-04-28 14:15:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('88af27a3-cd02-4c02-9c13-24e76a956f3c', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 52.96, 'USD', 'CREDIT',
        'FAILED', 'Interest payment', NULL, '2025-04-23 13:05:46', '2025-04-23 13:26:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0356e651-87fe-44c9-97cd-4b21beca9717', '4110303a-5cca-4c46-885d-c1e3bd335d96', 130.7, 'USD', 'TRANSFER',
        'CANCELLED', 'International transfer', NULL, '2025-04-23 13:15:49', '2025-04-23 14:12:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3cfa6ee2-9145-40a9-aed9-d37f514839f7', 'f9cae736-64d5-4692-a257-d87446ffc401', 1118.85, 'CAD', 'TRANSFER',
        'CANCELLED', 'Bill split with Oscar Jones', 'REF260520', '2025-05-17 13:35:47', '2025-05-17 14:06:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('156a5270-d844-4772-90dc-db2956ae8f8f', '523c0c30-1242-44a7-a025-f015ef7d4127', 150.59, 'EUR', 'REFUND',
        'COMPLETED', 'Price adjustment - Wilson-Smith', NULL, '2025-05-12 15:34:20', '2025-05-12 15:35:58');

-- Batch 5: Transactions 401-500
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b932f7d8-1b0d-4f6d-91b2-fd9f940dab4d', '1817a074-62f9-463a-8dd7-c44151e47f96', 77.57, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-07-22 17:07:23', '2025-07-22 17:53:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9ed87e5a-17f7-470a-b5ce-b2b5364006d0', '12e6cc99-7181-4fde-98dc-93ded6112abf', 464.89, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-09-06 13:42:21', '2025-09-06 14:09:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9b529c02-7e0f-4242-9782-2971a4ea91f1', 'f9cae736-64d5-4692-a257-d87446ffc401', 67.65, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF932458', '2025-06-09 14:27:57', '2025-06-09 15:13:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9e367bb9-0cb5-4a62-9140-1a539ca50b22', '4692fe34-18fd-4140-9f08-06189f96fac3', 6543.8, 'AUD', 'CREDIT',
        'COMPLETED', 'Transfer from Miss Kathryn Brown', 'ACH700417', '2025-06-19 20:42:46', '2025-06-19 21:08:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('62cfdbe4-b274-4022-afdb-144329df6258', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 887.72, 'GBP', 'TRANSFER',
        'COMPLETED', 'Transfer to Andrew Coleman', 'REF192553', '2025-08-03 00:58:48', '2025-08-03 01:05:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6eaa12a4-df38-4b3a-a490-ba758530af19', '02630652-15bc-4df0-99b7-a41c93c79986', 193.65, 'DKK', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Jeffrey Lang', 'REF563524', '2025-05-28 09:49:20', '2025-05-28 09:58:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8cfc7072-f83e-414d-8960-a9633023036e', '7a712793-0571-4844-b830-a1a4d3fdeb27', 7652.78, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Gallegos, Davis and Flores', 'ACH250018', '2025-04-27 11:49:35',
        '2025-04-27 12:47:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2eafd5d2-e83b-4a0c-8284-eb61216459dc', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 229.48, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Adkins-Anderson', NULL, '2025-09-02 11:13:40', '2025-09-02 11:52:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('25c4eadf-b818-45e1-9f71-60b0c0c05402', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 239.49, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Padilla Ltd', 'ACH606321', '2025-08-12 16:10:35', '2025-08-12 16:39:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d4f5644e-0a0f-4c6a-a169-9953b526c452', '2e3b6236-b73f-40b1-a88f-abafe787082b', 88.58, 'USD', 'DEBIT',
        'PENDING', 'Card payment - Barry-Franklin Store', 'TXN381010', '2025-04-01 21:18:42', '2025-04-01 21:59:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6dbff9d3-56e1-40a1-9aba-dac20451cce4', '7a712793-0571-4844-b830-a1a4d3fdeb27', 39.97, 'USD', 'DEBIT',
        'PENDING', 'Grocery - Jackson, Smith and Robinson Market', NULL, '2025-05-29 06:58:50', '2025-05-29 07:27:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7f5497c1-d7e8-4120-9dce-4d8a9bcc0416', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 34.4, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Moreno, Chavez and Collins Store', 'TXN134898', '2025-08-13 16:16:13',
        '2025-08-13 17:04:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5e857270-f23b-44c0-8a28-5ae50c8a8066', '1817a074-62f9-463a-8dd7-c44151e47f96', 54.31, 'JPY', 'REFUND',
        'PENDING', 'Price adjustment - Mills, Moore and Hamilton', 'REF454702', '2025-04-28 18:59:01',
        '2025-04-28 19:52:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e5167d7a-f9d0-4488-b35d-8e7070226449', '7a712793-0571-4844-b830-a1a4d3fdeb27', 956.86, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Mary Rodriguez', 'REF422724', '2025-05-25 12:58:11', '2025-05-25 13:54:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb1d224b-a7d0-4da5-bc45-9f11520224e4', '20683a88-7f0e-471d-a3c5-bf175725052c', 357.52, 'JPY', 'DEBIT',
        'COMPLETED', 'Restaurant - James Ltd', 'TXN671741', '2025-07-27 12:58:53', '2025-07-27 13:11:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b1700999-2278-483a-b83b-1f9f46bf2c45', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1884.09, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Smith-Swanson', NULL, '2025-07-05 10:07:21', '2025-07-05 10:12:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b1ab44ca-cd3b-4b8f-80ad-8bb023b04818', '523c0c30-1242-44a7-a025-f015ef7d4127', 282.4, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF588420', '2025-05-11 14:49:44', '2025-05-11 15:24:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('160ee553-319b-413b-bd8c-bb73b6a809b1', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 624.04, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF360916', '2025-06-23 15:49:51', '2025-06-23 16:21:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4a294e6d-9a6a-47a5-8af8-90f493fcd2b4', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 256.05, 'CHF', 'DEBIT',
        'COMPLETED', 'Bill payment - Wagner Ltd Services', 'TXN418955', '2025-09-02 12:06:29', '2025-09-02 12:57:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e8d80572-227c-4bdd-9dcc-18b7b97937c0', '50682165-f2c3-4049-909e-951838384433', 1673.25, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH116957', '2025-06-26 12:41:45', '2025-06-26 13:40:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c92a6388-604e-400f-ab0a-e24e034700e7', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 474.75, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF103959', '2025-04-12 13:15:01', '2025-04-12 14:00:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('693a511e-7756-456c-99bc-b7a50694f0be', '12e6cc99-7181-4fde-98dc-93ded6112abf', 94.27, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Flowers-Chang Premium', 'TXN295550', '2025-07-01 12:54:35', '2025-07-01 13:13:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fd9be539-87b9-4c44-854f-8382d99af330', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 97.97, 'DKK', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-07 14:56:04', '2025-06-07 15:42:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('098b4b39-c316-4d1a-ac22-b8160a6078e1', 'd31cdd64-e270-4aa9-a77e-a89486214984', 33.51, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF993496', '2025-09-03 10:07:10', '2025-09-03 10:43:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb720cb8-4572-4b43-b19e-0fd0b33c4045', '50682165-f2c3-4049-909e-951838384433', 19.21, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Lindsey Haynes', 'TXN683846', '2025-03-18 14:08:30', '2025-03-18 14:12:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39b0b4fd-8813-491a-b865-ff7e3ac072af', 'd31cdd64-e270-4aa9-a77e-a89486214984', 192.14, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Mcconnell-Anderson', 'REF718373', '2025-04-08 18:12:36', '2025-04-08 18:30:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31297872-4358-4cf2-9fd8-91e3cc0e1379', '02630652-15bc-4df0-99b7-a41c93c79986', 59.72, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Robles, Reed and Moore Market', NULL, '2025-07-09 11:36:11', '2025-07-09 12:35:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('27ff562f-b14c-4dd3-9ea3-620a14124c12', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 188.84, 'USD', 'REFUND',
        'CANCELLED', 'Processing fee refund', 'REF639957', '2025-08-28 14:12:05', '2025-08-28 14:36:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d429b534-ae2c-4bce-9d50-2ea7f40e4ca1', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 10.68, 'CAD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Henry-Olson', 'REF721428', '2025-08-10 09:39:30', '2025-08-10 09:43:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c6a737e-ccaf-43c1-91ae-6b46905f87f4', '12e6cc99-7181-4fde-98dc-93ded6112abf', 90.13, 'EUR', 'DEBIT',
        'COMPLETED', 'Restaurant - Kim-Young', NULL, '2025-04-26 11:58:53', '2025-04-26 12:49:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2a118189-3db7-46c4-b48c-a8f90836f412', '4110303a-5cca-4c46-885d-c1e3bd335d96', 125.78, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Black-Raymond', NULL, '2025-04-24 17:54:01', '2025-04-24 18:39:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0d87b65f-cf03-4933-8861-7539c6194922', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 129.62, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Kari Miller', 'REF758738', '2025-04-02 14:26:40', '2025-04-02 14:27:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e5290a91-354a-4c35-b7f6-42a9cae30d3f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 32.49, 'USD', 'REFUND',
        'FAILED', 'Return processing - Carlson-Sanchez', 'REF314047', '2025-07-26 11:51:40', '2025-07-26 12:06:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7207cce2-d60c-4001-bc65-59714a207aab', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 998.59, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Ball-Jones', 'ACH745193', '2025-04-04 14:12:01', '2025-04-04 14:15:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('26ee6df0-86f7-4b83-94c7-d0827c844dd6', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1486.73, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Jennifer Anderson', 'REF369033', '2025-04-07 11:07:50', '2025-04-07 11:46:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2530a1d1-3e03-43f2-b686-3706efc038a2', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 518.16, 'USD', 'DEBIT',
        'PENDING', 'Bill payment - Clark PLC Services', 'TXN606780', '2025-06-18 13:24:20', '2025-06-18 14:16:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ecb3b430-335c-46bd-8c55-4b56656013da', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 96.47, 'CHF', 'REFUND',
        'COMPLETED', 'Price adjustment - Miller and Sons', NULL, '2025-06-26 04:10:54', '2025-06-26 04:42:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5bf6307b-6a6b-4014-b577-8d692aac1303', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1710.18, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-09-08 17:43:40', '2025-09-08 18:35:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39abfb3c-00a1-4bac-b60e-4af3f46dec86', 'd49ec560-02e4-4049-b181-837031133e95', 1355.62, 'USD', 'TRANSFER',
        'PENDING', 'Savings account transfer', 'REF263385', '2025-06-16 12:19:03', '2025-06-16 12:57:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb508508-8728-46f0-acda-3bc85c8cc349', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 263.91, 'USD', 'DEBIT',
        'CANCELLED', 'Card payment - Franklin, Winters and Richard Store', NULL, '2025-08-26 23:25:16',
        '2025-08-26 23:56:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ed66af6b-444d-4e03-86f4-9c027480f19a', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 7064.0, 'EUR', 'CREDIT',
        'COMPLETED', 'Transfer from Judith Baird', 'ACH182224', '2025-04-02 20:03:04', '2025-04-02 20:08:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e3bc2e3a-cd56-4e87-a05e-f4ffaca90ca0', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 281.94, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Moore LLC', 'ACH869590', '2025-06-10 18:34:50', '2025-06-10 19:03:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('acfbe713-43ef-46ab-ab00-b725d3692556', '02630652-15bc-4df0-99b7-a41c93c79986', 923.27, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-29 00:36:16', '2025-06-29 01:15:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('38785e19-6a75-473d-9001-0a1d31b61cd9', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 31.89, 'USD', 'REFUND',
        'CANCELLED', 'Dispute resolution - James-Mcdowell', 'REF140950', '2025-03-19 16:52:13', '2025-03-19 17:11:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe3baf11-7a79-497d-b69b-7a513dc59918', '30f7fce8-3a42-4900-8129-5549a3175459', 7823.77, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH264753', '2025-07-05 18:33:17', '2025-07-05 19:11:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e1018a38-25d1-40f8-936d-6281ed8d13ca', '523c0c30-1242-44a7-a025-f015ef7d4127', 1772.25, 'USD', 'CREDIT',
        'FAILED', 'Commission payment', 'ACH221531', '2025-08-20 11:54:19', '2025-08-20 12:32:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3d25a25f-25bb-43c8-baec-07aaceeaefb8', 'd49ec560-02e4-4049-b181-837031133e95', 124.29, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF760860', '2025-04-10 15:23:07', '2025-04-10 15:54:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b93b7769-ebb0-4854-96f8-1dba45666441', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1129.37, 'USD', 'TRANSFER',
        'CANCELLED', 'Transfer to David Lewis', NULL, '2025-07-12 14:34:16', '2025-07-12 15:09:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7911300b-e67b-4718-9027-e565b8db2d08', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 632.12, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF671526', '2025-03-19 09:09:13', '2025-03-19 09:27:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b71fa190-437f-493d-aaf3-1a03c2efdeee', 'd31cdd64-e270-4aa9-a77e-a89486214984', 702.91, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF711972', '2025-07-12 13:39:58', '2025-07-12 14:34:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('533c95b8-fcfa-47c8-bf3d-0ee9a2954310', '17ad774a-8c59-447a-b309-a2953679e25a', 31.58, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Martin-Garcia', NULL, '2025-06-12 09:46:45', '2025-06-12 10:05:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2fd54676-eded-4705-93db-c3ba54646a78', '02630652-15bc-4df0-99b7-a41c93c79986', 36.54, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF303735', '2025-08-08 18:41:34', '2025-08-08 19:22:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b40989f-2477-4896-9650-d166ea0a9f78', 'd49ec560-02e4-4049-b181-837031133e95', 116.89, 'EUR', 'REFUND',
        'PENDING', 'Warranty claim refund', 'REF169545', '2025-07-17 16:50:23', '2025-07-17 17:43:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2d7f0066-dc6b-4b29-85bb-45eec27be578', '20683a88-7f0e-471d-a3c5-bf175725052c', 106.76, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Peterson, Patterson and Carlson Market', 'TXN478545', '2025-04-22 10:09:08',
        '2025-04-22 10:34:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4ed8c29-c69e-4183-b126-333a4c82efda', '17ad774a-8c59-447a-b309-a2953679e25a', 1437.56, 'GBP', 'CREDIT',
        'COMPLETED', 'Freelance payment - Huynh LLC', 'ACH199416', '2025-06-14 10:53:52', '2025-06-14 11:22:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e35cb24e-1fe6-4419-9acc-95f2b873bb83', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 12.39, 'EUR', 'DEBIT',
        'COMPLETED', 'Restaurant - Williams-Murray', NULL, '2025-06-28 12:04:27', '2025-06-28 12:31:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0b6f90c-cf10-4286-92e7-e0a2c340e209', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 184.64, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Howard-Jones', NULL, '2025-06-13 13:32:54', '2025-06-13 13:51:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7bfb843a-ddb3-4e85-b467-54527a236582', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 4928.96, 'GBP', 'CREDIT',
        'COMPLETED', 'Bonus payment - Davis LLC', 'ACH909967', '2025-05-18 15:39:18', '2025-05-18 15:39:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6501429-141a-4faa-80f7-cb52b30a31de', '1817a074-62f9-463a-8dd7-c44151e47f96', 340.46, 'USD', 'TRANSFER',
        'PENDING', 'Bill split with Kyle Miller', NULL, '2025-07-12 21:42:45', '2025-07-12 21:43:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c4479874-4646-48c8-b4f9-c5ca85b6d994', '50682165-f2c3-4049-909e-951838384433', 177.64, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Garcia, Bond and Pacheco Store', 'TXN657229', '2025-05-01 09:41:30',
        '2025-05-01 09:44:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c5beb63e-2e67-494a-a7ba-b9278663be75', '2e3b6236-b73f-40b1-a88f-abafe787082b', 147.45, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-08-10 17:25:28', '2025-08-10 17:51:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d451948-f6d8-4779-b9d1-1103d3595392', '4110303a-5cca-4c46-885d-c1e3bd335d96', 174.04, 'USD', 'TRANSFER',
        'PENDING', 'Bill split with Cody Ross', NULL, '2025-06-17 14:02:36', '2025-06-17 14:28:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ef5cff4-ecdf-4643-9d00-1a203b89edd0', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 45.84, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Taylor, Marshall and Oneal Store', 'TXN620523', '2025-06-12 02:41:15',
        '2025-06-12 03:22:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('384b25a8-1e35-43a9-a084-1a8eab0821d5', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 114.54, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Stevenson, Chang and Howell', NULL, '2025-07-25 16:41:47',
        '2025-07-25 17:41:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8a7920b1-f29b-49e7-a810-5d9ea06404f1', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 296.31, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Allen-Graham', NULL, '2025-08-24 13:48:08', '2025-08-24 14:01:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02370900-c7c4-4bb8-9775-5fbaaefd6494', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1564.22, 'CHF', 'CREDIT',
        'COMPLETED', 'Salary deposit - Atkins LLC', NULL, '2025-04-21 13:37:39', '2025-04-21 14:11:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('350dcaaa-5638-40af-a4e5-59a07f727884', 'f9cae736-64d5-4692-a257-d87446ffc401', 194.96, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Williams, Anderson and Jones', NULL, '2025-07-31 09:34:07',
        '2025-07-31 10:10:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('145d473f-15e8-4e74-a43c-78851fe17a70', '50682165-f2c3-4049-909e-951838384433', 396.67, 'USD', 'DEBIT',
        'PENDING', 'Payment to Duarte Group', NULL, '2025-08-08 10:47:09', '2025-08-08 11:45:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('19fea094-0390-4eee-b87b-11f28f8b692d', '20683a88-7f0e-471d-a3c5-bf175725052c', 88.21, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Buck and Sons', 'TXN496916', '2025-06-27 10:04:22', '2025-06-27 11:00:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6dec0907-8e82-4cc0-b573-f49a47bcc882', '1817a074-62f9-463a-8dd7-c44151e47f96', 407.29, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Andrew Rice', NULL, '2025-08-23 11:37:41', '2025-08-23 12:12:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fa7709c6-d34a-40fb-9c6a-b62fd6cfdf7a', 'a6f93311-3bce-4db4-8395-25cde9688e47', 23.77, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF730972', '2025-06-19 14:28:52', '2025-06-19 14:36:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d7659ecb-d9d1-4840-a8a7-cbc9fe449098', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 66.75, 'GBP', 'REFUND',
        'COMPLETED', 'Service credit - Patel-Snow', 'REF523313', '2025-04-29 15:51:37', '2025-04-29 16:37:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cf2d7c6f-fced-406d-a27a-0f02f7f592af', '1817a074-62f9-463a-8dd7-c44151e47f96', 439.61, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Spencer-Case Premium', 'TXN181565', '2025-06-01 12:53:20', '2025-06-01 13:52:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('68299e2d-b956-4e0c-8e9d-e5f288236330', '4692fe34-18fd-4140-9f08-06189f96fac3', 93.84, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF153110', '2025-04-26 20:37:26', '2025-04-26 21:16:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2430a314-2390-43e4-8653-1e73c38fa234', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 445.98, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Burns, Crawford and Jones', 'TXN187228', '2025-06-28 02:18:00', '2025-06-28 02:22:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b286c29e-4f75-4d09-9e6a-833e5490a98f', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 62.86, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Chavez Inc', NULL, '2025-08-18 06:30:41', '2025-08-18 06:52:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('36065246-9784-4de3-81ce-1790b15a8a49', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 883.56, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF364863', '2025-04-03 18:26:51', '2025-04-03 19:13:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a8f93664-9d1b-47af-b59a-5201246d76e0', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 68.35, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Baker and Sons Premium', 'TXN189012', '2025-04-25 17:04:54',
        '2025-04-25 17:20:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4ae8d238-b622-4380-83c8-c11caa5b0878', '4692fe34-18fd-4140-9f08-06189f96fac3', 1006.5, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Maria Simpson', 'REF859274', '2025-07-25 17:40:44', '2025-07-25 18:24:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('59e8a340-a5ab-431f-8cf4-0dcb7d7f22f9', '17ad774a-8c59-447a-b309-a2953679e25a', 9.5, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Garrett, Phelps and Barry', 'TXN375908', '2025-06-22 12:06:46',
        '2025-06-22 12:52:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3987d7ee-515a-4fc9-b552-7585e36c68e0', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 597.28, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Morgan-Hunt', 'ACH326556', '2025-06-02 02:09:37', '2025-06-02 02:59:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2574d33a-6f3d-462b-9b95-1c3b0d4af289', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1384.51, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Dennis Todd', 'REF584580', '2025-03-18 02:36:24', '2025-03-18 03:25:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('05ac57a2-9d00-46e4-8826-b5e286e581d2', '12e6cc99-7181-4fde-98dc-93ded6112abf', 197.47, 'CHF', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH555383', '2025-06-21 16:10:06', '2025-06-21 16:24:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9eebdb67-811c-4bf3-bdd0-e999202d2831', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 19.23, 'USD', 'REFUND',
        'CANCELLED', 'Processing fee refund', NULL, '2025-04-01 18:04:23', '2025-04-01 18:18:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89e60699-9c4f-4ffc-a921-32a26b441dd2', '30f7fce8-3a42-4900-8129-5549a3175459', 23.84, 'USD', 'DEBIT',
        'PENDING', 'Online purchase - Ward, Lester and Gray', 'TXN460801', '2025-08-15 11:24:29',
        '2025-08-15 11:28:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6742f780-aaba-40c3-b427-539a00bee579', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1436.56, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Erin Wilson', NULL, '2025-05-15 11:10:55', '2025-05-15 11:37:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('53e9d05a-a3ae-43a2-a358-b5a3c8ae486a', '30f7fce8-3a42-4900-8129-5549a3175459', 52.54, 'CAD', 'DEBIT',
        'COMPLETED', 'Payment to Garcia Group', 'TXN104748', '2025-06-11 10:19:50', '2025-06-11 10:49:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f07692c8-5df2-4af2-89cf-133be2a48ad6', '17ad774a-8c59-447a-b309-a2953679e25a', 176.19, 'USD', 'REFUND',
        'FAILED', 'Cancelled order refund', 'REF854950', '2025-08-15 15:40:24', '2025-08-15 15:47:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('62620505-dac1-4ff3-a216-0d6078bf745f', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1421.82, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-07-28 16:56:01', '2025-07-28 17:51:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('531ea831-add6-4bac-8c92-fb8f647ad25d', '7a712793-0571-4844-b830-a1a4d3fdeb27', 41.13, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-08-31 11:48:33', '2025-08-31 11:57:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('91840030-9ebd-4b1c-b78a-cee643c71920', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 927.24, 'EUR', 'TRANSFER',
        'FAILED', 'Family transfer', 'REF310346', '2025-03-23 12:35:50', '2025-03-23 12:59:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ff40f9e3-1d87-421e-9100-66d961059175', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 140.42, 'GBP', 'REFUND',
        'COMPLETED', 'Refund - Caldwell-Aguilar', 'REF398675', '2025-05-22 17:28:57', '2025-05-22 18:14:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8fa850ec-5ac7-425f-b643-a8c1537be1cf', 'f9cae736-64d5-4692-a257-d87446ffc401', 1926.34, 'GBP', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-07-25 14:14:54', '2025-07-25 14:24:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2908c375-268d-420d-8af3-bca1e283712d', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 89.39, 'AUD', 'REFUND',
        'COMPLETED', 'Price adjustment - Chapman Inc', 'REF775173', '2025-05-01 14:10:47', '2025-05-01 14:33:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39164523-21b1-4e63-913d-9b6150ff54c0', '4692fe34-18fd-4140-9f08-06189f96fac3', 58.24, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Watson, Brown and Edwards', NULL, '2025-06-11 16:56:45',
        '2025-06-11 17:37:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6a2ab8ee-66cb-473e-a1fc-0160878751fd', '4692fe34-18fd-4140-9f08-06189f96fac3', 185.34, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-23 12:47:51', '2025-06-23 13:06:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('af3ef416-f6d3-4118-b727-451c074bc484', '17ad774a-8c59-447a-b309-a2953679e25a', 1318.57, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF310554', '2025-06-29 01:12:09', '2025-06-29 02:10:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ccdf0f12-efb2-4f2a-b588-b6541388714b', 'd31cdd64-e270-4aa9-a77e-a89486214984', 70.47, 'USD', 'REFUND',
        'FAILED', 'Refund - Ramirez PLC', 'REF915290', '2025-04-07 10:34:06', '2025-04-07 11:07:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5e4ed33a-5652-4a5b-8d0a-903004e46b55', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 43.43, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Pearson Inc Store', 'TXN163958', '2025-06-25 09:14:21', '2025-06-25 09:36:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('534b0fea-b896-42bb-928f-5dac552a8794', 'f9cae736-64d5-4692-a257-d87446ffc401', 1979.11, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Smith, Martinez and Wilson', NULL, '2025-07-09 11:01:33', '2025-07-09 11:14:07');

-- Batch 6: Transactions 501-600
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e499f84f-c36e-48f1-a904-f4c62d05a8dd', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 172.43, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF184897', '2025-05-20 09:22:46', '2025-05-20 09:38:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0da12b9c-74ba-481c-a4a4-36011b8d2a2d', 'a6f93311-3bce-4db4-8395-25cde9688e47', 153.43, 'USD', 'CREDIT',
        'CANCELLED', 'Government benefit payment', 'ACH352923', '2025-04-21 15:37:10', '2025-04-21 15:57:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('61bec25f-092b-436e-bbb9-92d65f7974c4', '50682165-f2c3-4049-909e-951838384433', 136.66, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-08-14 17:29:17', '2025-08-14 18:17:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('03a2a388-f761-498a-a87f-9ad4bf0f2b78', '523c0c30-1242-44a7-a025-f015ef7d4127', 1735.06, 'GBP', 'CREDIT',
        'FAILED', 'Government benefit payment', 'ACH885060', '2025-09-06 13:33:42', '2025-09-06 14:01:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fbe6322c-c4af-4f64-8763-f252a8c36c89', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1190.26, 'EUR', 'CREDIT',
        'COMPLETED', 'Transfer from David Davis', 'ACH376050', '2025-08-18 17:24:33', '2025-08-18 17:51:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a448bd7c-732f-4dba-bbb5-59f9d5c14cd6', 'f9cae736-64d5-4692-a257-d87446ffc401', 82.14, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Branch-Mora Premium', 'TXN117794', '2025-06-30 16:29:43', '2025-06-30 16:40:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('52406d7f-acbc-4ce8-b698-233d0d8aabe8', '30f7fce8-3a42-4900-8129-5549a3175459', 1437.11, 'CAD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-04-16 15:42:05', '2025-04-16 16:22:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('85b9ed11-01c3-4cc2-9a3b-c9dce7717059', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1248.05, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-03-20 02:36:36', '2025-03-20 03:24:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e6997d71-5b4b-4c5e-95b0-ba7001ce5fb8', '1817a074-62f9-463a-8dd7-c44151e47f96', 1368.24, 'USD', 'TRANSFER',
        'FAILED', 'Transfer to Mary Wells', 'REF625757', '2025-04-07 03:27:51', '2025-04-07 04:25:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0c5fe2b-e11f-4b74-9a22-1e0b4aa5def5', '17ad774a-8c59-447a-b309-a2953679e25a', 30.96, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF571427', '2025-04-04 10:48:03', '2025-04-04 11:22:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('589a28fd-a0b3-4c21-bd5d-d0ce10f5afeb', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 121.1, 'EUR', 'REFUND',
        'COMPLETED', 'Price adjustment - Hall Inc', NULL, '2025-07-31 14:14:15', '2025-07-31 14:27:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3afd76e5-6801-4054-ad36-757b6c5baa76', '20683a88-7f0e-471d-a3c5-bf175725052c', 1322.9, 'USD', 'TRANSFER',
        'CANCELLED', 'Wire transfer to Michelle Boyd', NULL, '2025-04-25 17:59:33', '2025-04-25 18:31:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fd6bd962-7df7-42ef-9b00-29746ebacad4', '4692fe34-18fd-4140-9f08-06189f96fac3', 1694.96, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH671245', '2025-06-26 22:30:04', '2025-06-26 22:47:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8ca4e4bd-8ccc-46c8-ae55-2b5cd8d2d22a', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1044.29, 'USD', 'CREDIT',
        'PENDING', 'Refund from Ramos LLC', 'ACH317455', '2025-07-20 09:35:01', '2025-07-20 10:19:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('45de0d41-3903-4938-ae16-47d3f5f904ef', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 43.53, 'USD', 'DEBIT',
        'PENDING', 'Subscription - Wade Ltd Premium', 'TXN295373', '2025-08-03 21:04:34', '2025-08-03 21:12:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46edb70e-13cd-4508-93e1-22d04e48e4fe', '17ad774a-8c59-447a-b309-a2953679e25a', 1451.3, 'USD', 'TRANSFER',
        'CANCELLED', 'P2P payment via mobile app', 'REF244622', '2025-08-10 18:52:14', '2025-08-10 19:45:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2d8ba41a-a6c1-4a10-8526-d94b7ba8d830', '523c0c30-1242-44a7-a025-f015ef7d4127', 549.04, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Robert Baker', 'REF767921', '2025-09-05 12:55:24', '2025-09-05 13:48:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d4c757bc-c942-499e-91bd-c8aa3cc7e8cc', '50682165-f2c3-4049-909e-951838384433', 90.34, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Fields, Johnson and Simon Services', 'TXN845213', '2025-07-10 17:18:19',
        '2025-07-10 18:17:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('76547c0c-89ae-463f-bb14-59759e12db2f', '17ad774a-8c59-447a-b309-a2953679e25a', 194.88, 'GBP', 'REFUND',
        'COMPLETED', 'Service credit - Mack-Cochran', NULL, '2025-07-16 09:42:53', '2025-07-16 09:50:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1368a361-6a2c-4b01-8872-4408828354c2', '30f7fce8-3a42-4900-8129-5549a3175459', 39.44, 'USD', 'REFUND',
        'PENDING', 'Processing fee refund', NULL, '2025-08-31 13:15:25', '2025-08-31 13:20:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9bc6d09f-dbd3-40de-abdb-ace744f64e91', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1640.51, 'NOK', 'CREDIT',
        'COMPLETED', 'Freelance payment - Moreno-Ruiz', NULL, '2025-05-26 12:54:24', '2025-05-26 13:54:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('643fc7f6-991c-46e0-8f6b-ebc0ffa2ef7e', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 277.09, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Shawn Allison', NULL, '2025-07-21 15:06:30', '2025-07-21 15:22:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b0866c4-ab38-4735-931f-41d928a84374', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 878.14, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with Aaron Lee', NULL, '2025-05-19 11:02:17', '2025-05-19 11:55:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d9cd7971-d437-4e76-afed-fbefb397015c', '523c0c30-1242-44a7-a025-f015ef7d4127', 243.58, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Tran PLC', NULL, '2025-04-29 17:15:00', '2025-04-29 17:46:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('864076dd-7d38-4a72-a299-c569aa1c3a35', '523c0c30-1242-44a7-a025-f015ef7d4127', 1473.24, 'SEK', 'CREDIT',
        'PENDING', 'Freelance payment - Smith-Griffin', 'ACH476197', '2025-04-03 09:03:35', '2025-04-03 09:04:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e4252dc0-08cb-409a-967b-f991559f8555', '30f7fce8-3a42-4900-8129-5549a3175459', 220.09, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Lowery, Pittman and Quinn', NULL, '2025-07-18 06:30:13', '2025-07-18 06:52:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b21c9d0a-bcc3-4791-980a-c25cb916454c', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1472.22, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Phillips, Garcia and Martin', NULL, '2025-05-06 14:57:28', '2025-05-06 15:52:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8919240c-5d56-4b14-b128-e819194c6b0b', '02630652-15bc-4df0-99b7-a41c93c79986', 125.87, 'CAD', 'REFUND',
        'FAILED', 'Subscription cancellation refund', 'REF459095', '2025-07-23 13:50:16', '2025-07-23 13:58:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dc4dcd4c-5dfb-4bbb-b381-a595ccbf71b9', '7a712793-0571-4844-b830-a1a4d3fdeb27', 73.78, 'EUR', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF746749', '2025-04-06 12:52:05', '2025-04-06 13:23:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8819c69e-82ac-4241-9a0e-62d5c1ff781d', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1343.57, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF918185', '2025-05-28 10:00:53', '2025-05-28 10:41:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('690ff3f8-cb46-4cc9-bbf6-2672f729f78f', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 178.51, 'USD', 'REFUND',
        'FAILED', 'Refund - Mclaughlin, Bowman and Ball', 'REF612106', '2025-03-21 03:59:53', '2025-03-21 04:47:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4cd6ef41-3123-4107-9a70-8204b398e00b', '30f7fce8-3a42-4900-8129-5549a3175459', 1330.35, 'JPY', 'TRANSFER',
        'COMPLETED', 'Transfer to Ashley Gibson', NULL, '2025-08-25 13:21:55', '2025-08-25 13:39:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a689c61-22a9-4dc2-a772-6e907f03f6b3', '30f7fce8-3a42-4900-8129-5549a3175459', 169.94, 'CAD', 'REFUND',
        'CANCELLED', 'Service credit - Wheeler, Gardner and Graves', 'REF163074', '2025-07-17 17:07:42',
        '2025-07-17 17:59:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d68b88c6-dc53-43d6-a655-df80aa72ce55', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1727.89, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Wheeler PLC', 'ACH992204', '2025-06-20 16:54:05', '2025-06-20 17:17:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4ead2f3a-6f17-40e7-bbf7-2f02ee569a81', '2e3b6236-b73f-40b1-a88f-abafe787082b', 45.69, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Duarte PLC', 'REF899569', '2025-03-19 14:43:02', '2025-03-19 15:41:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1c25b7dd-4cff-4dab-9bc2-bbc4ec081b66', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 146.77, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Candice Marquez', 'REF879415', '2025-05-13 14:08:30', '2025-05-13 14:14:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('18b4b667-fb8a-4b9d-91c5-f0ff5e44c47f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1148.79, 'USD', 'TRANSFER',
        'CANCELLED', 'Internal account transfer', 'REF290332', '2025-03-31 11:29:29', '2025-03-31 12:06:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3165ba1f-52d6-4616-b9c7-3b15c6efd8a0', '1817a074-62f9-463a-8dd7-c44151e47f96', 756.42, 'USD', 'TRANSFER',
        'FAILED', 'P2P payment via mobile app', NULL, '2025-08-12 12:32:03', '2025-08-12 13:17:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f6cd79e-02c6-4cfe-87a6-2b56cf045bd4', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1044.15, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF277366', '2025-06-27 07:02:32', '2025-06-27 08:01:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce3ed01b-1536-4219-aef4-264e6bf08b92', 'a6f93311-3bce-4db4-8395-25cde9688e47', 128.85, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Zimmerman, Clark and Klein', 'REF667461', '2025-07-28 18:59:07',
        '2025-07-28 19:53:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c258239-a78f-4cfe-9a98-d64a01ec477e', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 79.08, 'USD', 'CREDIT',
        'CANCELLED', 'Freelance payment - Haynes-Stevens', 'ACH320480', '2025-07-21 16:00:04', '2025-07-21 16:01:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a03eb95-1631-41af-8721-479a95b354ca', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 110.52, 'USD', 'DEBIT',
        'PENDING', 'Online transfer to Edward Thompson', 'TXN319890', '2025-08-11 17:04:34', '2025-08-11 17:28:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6a74fce1-b9df-40ed-9ae0-bb54f4ba5c32', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 74.09, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF421194', '2025-07-24 14:42:56', '2025-07-24 15:19:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('66389635-a1a1-47f9-83ca-d5be3c29531f', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1274.59, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-09-07 15:41:13', '2025-09-07 15:55:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7df6ac8d-1b78-46a4-b7a1-7b91007b866e', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 32.03, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-05-12 16:45:40', '2025-05-12 17:24:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a390d35d-261a-465d-8ef2-4c47f78ac9a1', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 115.23, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-03-19 13:19:04', '2025-03-19 13:58:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2ccf5fb7-2ce6-47bb-8e91-0353a260b722', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 50.63, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Gray, Harmon and Paul', 'TXN837253', '2025-09-02 23:01:35',
        '2025-09-02 23:12:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4e5b3626-8892-4d36-80f4-847181ac5521', '1817a074-62f9-463a-8dd7-c44151e47f96', 53.13, 'CAD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Lloyd-Hopkins', NULL, '2025-06-30 06:26:13', '2025-06-30 07:24:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('449d7419-3669-4707-b422-5becd856d242', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 464.84, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF368740', '2025-08-17 15:49:12', '2025-08-17 16:47:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0e0eeb7f-8981-4f3b-a0e5-5b9c143d3419', 'a6f93311-3bce-4db4-8395-25cde9688e47', 85.34, 'EUR', 'CREDIT',
        'FAILED', 'Dividend payment - Fox, Johnson and Khan', NULL, '2025-09-02 12:58:55', '2025-09-02 13:11:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0c3575b4-7364-4303-b514-99e2811396d3', '4692fe34-18fd-4140-9f08-06189f96fac3', 95.63, 'JPY', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF831637', '2025-06-06 15:27:02', '2025-06-06 15:54:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2aecb491-5509-4908-aac6-6a84f164aae7', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1475.68, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Andrea Wright', 'REF665290', '2025-04-30 01:51:12', '2025-04-30 02:26:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('048f7e13-9a36-4362-852d-46b796ac623d', 'd49ec560-02e4-4049-b181-837031133e95', 367.56, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Brown Group', NULL, '2025-06-07 08:33:13', '2025-06-07 09:24:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d638728a-c314-4364-a07a-d12dd5b481c2', 'a6f93311-3bce-4db4-8395-25cde9688e47', 47.75, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Woodard and Sons', 'REF401656', '2025-08-24 18:42:46', '2025-08-24 19:03:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('276a8613-1d32-466d-bd29-a6d9facd6a5e', '12e6cc99-7181-4fde-98dc-93ded6112abf', 37.94, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-07-15 22:05:18', '2025-07-15 23:05:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3ce3a240-f797-473a-9e3e-5564ec293ee2', '20683a88-7f0e-471d-a3c5-bf175725052c', 18.28, 'CAD', 'DEBIT',
        'CANCELLED', 'Gas station - Novak, Patton and Ray', 'TXN363994', '2025-03-29 12:26:21', '2025-03-29 12:41:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('37aa6a03-ecf6-49f7-a4a6-93eb0a68eec4', '20683a88-7f0e-471d-a3c5-bf175725052c', 1419.47, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Ashley Roach', NULL, '2025-05-26 20:42:08', '2025-05-26 21:19:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e9633ae5-ef77-413a-b54e-b6d4e7c46a55', '4692fe34-18fd-4140-9f08-06189f96fac3', 1003.55, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-19 15:20:23', '2025-06-19 15:39:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2f1d8979-a54e-4454-ac7f-ecc119480d2f', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1098.58, 'USD', 'CREDIT',
        'CANCELLED', 'Freelance payment - Garcia LLC', 'ACH760904', '2025-07-16 03:54:18', '2025-07-16 04:50:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('281acf69-21c8-43e5-b3fc-f1cf25905f85', '1817a074-62f9-463a-8dd7-c44151e47f96', 478.04, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF596201', '2025-04-14 09:46:51', '2025-04-14 10:31:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('08b9aed9-996f-4f25-8dc6-43885dbcbd13', '523c0c30-1242-44a7-a025-f015ef7d4127', 33.49, 'CAD', 'DEBIT',
        'COMPLETED', 'Payment to Floyd-Valdez', 'TXN712476', '2025-04-19 17:49:28', '2025-04-19 18:19:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0762177-65ca-4b12-b23d-06061461d31d', '1817a074-62f9-463a-8dd7-c44151e47f96', 71.37, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 33157 Gonzalez Summit Apt. 892', 'TXN572602', '2025-04-18 14:20:37',
        '2025-04-18 14:52:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('533a8ec2-5895-4167-901f-37e9e3fe957a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1989.86, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-08-24 09:20:32', '2025-08-24 09:28:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16fb2217-55e3-4dee-b7a0-eded06fa9fc6', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 137.68, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF939729', '2025-04-12 13:14:53', '2025-04-12 14:05:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f9ad9f2-bbae-4f25-997d-385b57ff35c1', 'd49ec560-02e4-4049-b181-837031133e95', 1508.6, 'NOK', 'DEBIT',
        'CANCELLED', 'Payment to Logan Inc', NULL, '2025-07-06 11:06:17', '2025-07-06 12:00:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('711fbf54-8e85-461c-8171-c7d08ef9159b', '1817a074-62f9-463a-8dd7-c44151e47f96', 696.92, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Sean Alexander', 'REF749600', '2025-08-08 16:32:02', '2025-08-08 17:30:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('221d59b4-d747-45f8-a1aa-382dd8b0d7a9', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 191.5, 'SEK', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Raymond Richardson', 'REF191193', '2025-07-25 14:17:50', '2025-07-25 14:56:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9043eb40-27c5-4fae-a4bd-55f335f114d2', '4110303a-5cca-4c46-885d-c1e3bd335d96', 11.17, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-06-12 18:10:58', '2025-06-12 18:55:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71902fe8-60ed-4b53-b6c1-c076f6b4c1bd', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1133.49, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF442421', '2025-08-24 23:42:43', '2025-08-25 00:26:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67d86955-9845-4690-92a5-7eecd137eba2', '1817a074-62f9-463a-8dd7-c44151e47f96', 567.22, 'USD', 'CREDIT',
        'FAILED', 'Transfer from Aaron Goodwin', 'ACH612312', '2025-08-25 04:50:43', '2025-08-25 05:37:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2cb2da07-3c7f-47e7-bb36-1444709c2aec', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 925.64, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF192238', '2025-09-02 12:13:34', '2025-09-02 12:14:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6d388805-609d-4721-af2a-c2c5f828e7e2', 'a6f93311-3bce-4db4-8395-25cde9688e47', 828.23, 'CAD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH615314', '2025-07-24 14:30:01', '2025-07-24 14:32:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0ab2d0f-0077-49c9-bbe7-838dca3c3a05', '17ad774a-8c59-447a-b309-a2953679e25a', 157.58, 'USD', 'REFUND',
        'PENDING', 'Return processing - Petty-Nguyen', 'REF262648', '2025-05-31 17:33:15', '2025-05-31 17:51:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ef4f0984-56a0-4220-9e0a-c67e03a82a7b', '523c0c30-1242-44a7-a025-f015ef7d4127', 70.05, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Jackson, Fry and Robertson', 'REF829797', '2025-08-15 08:56:13',
        '2025-08-15 09:07:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f0f37f0-8514-4b2b-b80f-05f551a37c49', 'f9cae736-64d5-4692-a257-d87446ffc401', 720.52, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH680513', '2025-05-16 14:52:06', '2025-05-16 15:32:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4669e7ed-9a7b-4b09-a12e-ce8e02a42510', 'a6f93311-3bce-4db4-8395-25cde9688e47', 158.97, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF861041', '2025-05-21 01:21:10', '2025-05-21 01:27:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9e24362c-4a93-4fd0-bbeb-41aac39aef41', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 15.39, 'USD', 'DEBIT',
        'CANCELLED', 'ATM withdrawal at 5800 Ingram Land', 'TXN812199', '2025-09-09 14:21:19', '2025-09-09 14:23:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dc084225-7a69-484d-a14c-71f31bc457a6', '30f7fce8-3a42-4900-8129-5549a3175459', 630.98, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-04-25 10:24:10', '2025-04-25 11:14:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4377aed1-0ab4-40ba-baf1-39146f4c852f', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 60.74, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Adams, Williams and Huber Market', 'TXN713748', '2025-07-21 10:21:12',
        '2025-07-21 11:20:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2364b448-6f54-433f-af10-e1cb4fd76f05', '50682165-f2c3-4049-909e-951838384433', 90.3, 'USD', 'DEBIT', 'FAILED',
        'Gas station - Evans, Young and Merritt', 'TXN970547', '2025-04-23 16:38:53', '2025-04-23 16:50:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b2f03f6-43ce-4bdb-acad-c92d0afc027d', '7a712793-0571-4844-b830-a1a4d3fdeb27', 166.97, 'USD', 'REFUND',
        'PENDING', 'Service credit - Thomas, Goodwin and Ortiz', 'REF197899', '2025-04-15 12:37:35',
        '2025-04-15 13:37:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e4567a7d-ba44-4d4c-841f-5bd68fa2d66f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 90.87, 'GBP', 'DEBIT',
        'CANCELLED', 'Payment to Logan-Washington', NULL, '2025-08-24 13:18:06', '2025-08-24 14:05:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67b233ab-9c95-4fe0-9393-1e4bc5143a67', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1099.93, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-04-03 06:22:14', '2025-04-03 07:21:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93c25a0f-13b0-4551-ae73-60fd076f61f8', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 16.85, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF375461', '2025-04-13 17:06:16', '2025-04-13 18:02:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fde1914e-9689-494d-a5dd-72cc8e9b375b', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 7034.47, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Franklin-Fernandez', NULL, '2025-06-06 17:42:37', '2025-06-06 17:49:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dbef3357-de8a-4b91-bebf-ea7bfbf99995', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1407.85, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Brian Pratt', 'REF963087', '2025-09-11 09:47:22', '2025-09-11 09:50:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02af14e5-a62f-451c-be31-fae4793fc14c', '4692fe34-18fd-4140-9f08-06189f96fac3', 95.52, 'USD', 'DEBIT', 'FAILED',
        'Payment to Williams, Perez and Calderon', 'TXN688192', '2025-03-23 13:09:51', '2025-03-23 13:52:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0464baa9-309d-4a43-a883-13fe1f9afad6', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 10.18, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Smith Ltd', 'REF894264', '2025-06-25 01:37:01', '2025-06-25 02:27:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8cdbf04b-fc42-444f-8daf-f87c3b372081', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 98.78, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Reese and Sons Premium', 'TXN644251', '2025-05-19 18:30:11',
        '2025-05-19 19:09:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('135e3cd0-9266-43d2-82b0-13f9eab2b2b8', 'd31cdd64-e270-4aa9-a77e-a89486214984', 5689.29, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Solomon-Smith', 'ACH664667', '2025-08-12 15:56:38', '2025-08-12 16:56:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('557c6dd6-8691-4b36-89bf-8ffdc311dfd5', '2e3b6236-b73f-40b1-a88f-abafe787082b', 72.59, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF988354', '2025-04-19 12:32:27', '2025-04-19 12:44:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('63729d49-6e1f-4c7e-af8b-636931a76dda', 'd49ec560-02e4-4049-b181-837031133e95', 120.92, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Christina Robbins', NULL, '2025-08-24 08:36:57', '2025-08-24 09:17:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2ba3711e-41d6-4d75-9bcf-5f57833e9d7f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 85.89, 'GBP', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-08-04 00:13:37', '2025-08-04 00:46:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce3b0eb2-40f4-47a8-acf4-7942b2e3a8b2', 'f9cae736-64d5-4692-a257-d87446ffc401', 724.71, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Morgan Andrade', 'REF620332', '2025-07-02 16:30:31', '2025-07-02 16:54:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4fe3b63a-cec5-4147-ba3c-9af33c22d7ee', '523c0c30-1242-44a7-a025-f015ef7d4127', 1806.18, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Ellis, Russell and Carson', 'ACH553361', '2025-03-24 02:17:09',
        '2025-03-24 02:31:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('206d6b85-6e85-4c72-b9dc-d9acdc23dd57', '02630652-15bc-4df0-99b7-a41c93c79986', 292.03, 'GBP', 'DEBIT',
        'PENDING', 'Gas station - Burns-Dominguez', 'TXN108453', '2025-03-29 11:33:57', '2025-03-29 12:23:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e9225b90-6d38-4ce8-ab23-2efd9a47af47', 'a6f93311-3bce-4db4-8395-25cde9688e47', 18.76, 'USD', 'DEBIT',
        'CANCELLED', 'Subscription - Duncan, King and Fuller Premium', NULL, '2025-07-22 23:25:55',
        '2025-07-23 00:01:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b624384-99df-46c9-b72a-5149cb72817c', '7a712793-0571-4844-b830-a1a4d3fdeb27', 134.05, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Lee-Valdez', 'REF334648', '2025-09-04 10:03:02', '2025-09-04 11:00:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b0a58c1-73e8-4d2f-8a91-1a08fa1df28e', '7a712793-0571-4844-b830-a1a4d3fdeb27', 10.94, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Myers, Dennis and Harvey', NULL, '2025-05-12 16:51:25', '2025-05-12 17:39:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('048933a7-372a-4eb5-80de-83f8c197d211', '2e3b6236-b73f-40b1-a88f-abafe787082b', 7849.76, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH668915', '2025-05-05 12:21:46', '2025-05-05 12:52:49');

-- Batch 7: Transactions 601-700
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f3b9ec50-3e5c-45c3-961d-dc038c4d0599', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 72.66, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-06-08 04:49:52', '2025-06-08 05:38:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7b86788c-16e1-46c0-9ed2-41f5f1f2a55d', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 2362.5, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-03-21 11:21:56', '2025-03-21 12:18:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3f4007e2-89ea-4219-abe7-5724a55f71f2', 'a6f93311-3bce-4db4-8395-25cde9688e47', 2665.8, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Hart Ltd', 'ACH893742', '2025-05-24 15:40:47', '2025-05-24 16:31:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('10c518b0-dd35-472b-913a-34c4ebbaee12', '02630652-15bc-4df0-99b7-a41c93c79986', 196.65, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Hayes, Bass and Daniels', 'ACH523348', '2025-08-05 09:39:22',
        '2025-08-05 10:00:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0240715e-b970-4a3c-a4d4-e96633be8c36', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 70.3, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Gomez, Orr and Smith Premium', 'TXN606916', '2025-09-09 16:55:35',
        '2025-09-09 17:16:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a89d242c-53ec-4044-a47a-a5871417b701', '1817a074-62f9-463a-8dd7-c44151e47f96', 70.18, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Williams, Hatfield and Butler Services', NULL, '2025-03-17 18:55:53',
        '2025-03-17 19:04:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7644c925-ac03-4278-adf5-db45357f2656', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1486.33, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Brian Hernandez', NULL, '2025-09-10 17:35:08', '2025-09-10 17:56:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b71b86ef-0dd4-46ac-a663-ab31312b3c5d', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 161.25, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF184889', '2025-04-05 14:41:22', '2025-04-05 15:01:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('595ae6c2-1fc1-4b0e-aa91-04b62d02013e', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1305.61, 'GBP', 'TRANSFER',
        'COMPLETED', 'Transfer to Bryan Chapman', NULL, '2025-08-04 18:15:22', '2025-08-04 19:00:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c1f876d1-ec02-4fb5-848b-8eff33a6f6db', '30f7fce8-3a42-4900-8129-5549a3175459', 170.32, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Jimenez, Lopez and Shields', 'REF511951', '2025-08-19 09:57:38', '2025-08-19 10:50:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6b338254-2ebf-4d12-a942-fb1665207ae4', '30f7fce8-3a42-4900-8129-5549a3175459', 83.02, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Wilcox Ltd', 'ACH102966', '2025-07-28 09:23:08', '2025-07-28 09:56:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6a9619d9-587b-4060-951f-bd557ecba705', '50682165-f2c3-4049-909e-951838384433', 263.59, 'USD', 'TRANSFER',
        'PENDING', 'Savings account transfer', NULL, '2025-04-21 11:21:31', '2025-04-21 11:57:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7527e7b1-7806-40d5-b45d-5d35d7069035', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1302.98, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-06-08 14:26:46', '2025-06-08 14:27:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93fb8d66-b3af-4cf7-b4a6-f0b322618099', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 897.89, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Amanda Smith', NULL, '2025-05-17 10:33:14', '2025-05-17 11:10:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d7255637-b5e1-4ea8-b712-6642c6e762d0', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 77.14, 'USD', 'DEBIT',
        'CANCELLED', 'Restaurant - Nash and Sons', 'TXN418649', '2025-09-07 14:49:44', '2025-09-07 15:11:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5300896c-aac3-411d-b0b3-443b1e05d1b3', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 658.78, 'USD', 'CREDIT',
        'FAILED', 'Dividend payment - Molina Group', NULL, '2025-07-06 15:15:07', '2025-07-06 15:19:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('85259978-56bb-4a86-adfd-8067c8bf8361', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 257.11, 'AUD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Underwood, Davenport and Daugherty', 'ACH880237', '2025-07-27 09:15:42',
        '2025-07-27 09:26:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('76ccb1a6-5993-44c2-a550-fc3b452bd31f', 'a6f93311-3bce-4db4-8395-25cde9688e47', 101.49, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Walton-Thornton', 'REF119030', '2025-05-15 17:33:37', '2025-05-15 18:29:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92a7e406-dd20-4178-9af9-fb8a4b142a73', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1079.45, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Keith-Moran', 'ACH261555', '2025-08-21 17:22:13', '2025-08-21 17:53:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0e89f81-f96e-4673-9bca-d8fdc1af776e', '1817a074-62f9-463a-8dd7-c44151e47f96', 189.12, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-05-29 14:46:06', '2025-05-29 15:14:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a112195a-ab5d-4c35-b4bf-714da1a51c7d', '17ad774a-8c59-447a-b309-a2953679e25a', 63.32, 'AUD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF371712', '2025-08-31 11:36:07', '2025-08-31 11:57:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2bd27b8f-1a15-4329-b526-db923e1b2130', '4692fe34-18fd-4140-9f08-06189f96fac3', 581.7, 'GBP', 'TRANSFER',
        'PENDING', 'Transfer to Samuel Martinez', 'REF382637', '2025-03-24 16:26:06', '2025-03-24 16:58:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7d3c9ef6-3a98-4560-b6e2-aa1e10bc7bd7', 'a6f93311-3bce-4db4-8395-25cde9688e47', 14.95, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF235169', '2025-05-20 13:08:28', '2025-05-20 13:57:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a71a474e-cea0-4598-8e8d-d0bdffc42a1f', '50682165-f2c3-4049-909e-951838384433', 1092.37, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Thomas PLC', 'ACH384862', '2025-08-07 13:08:06', '2025-08-07 14:07:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('28ff6319-0b63-4e2b-8667-bb08bd0aa461', 'd49ec560-02e4-4049-b181-837031133e95', 825.09, 'AUD', 'TRANSFER',
        'COMPLETED', 'Transfer to Penny Morgan', NULL, '2025-05-19 09:12:32', '2025-05-19 09:17:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ad3e8871-30e7-477f-b054-c223e5b07b1f', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 60.33, 'CHF', 'DEBIT',
        'COMPLETED', 'Online purchase - Russell-Hamilton', NULL, '2025-07-24 17:47:59', '2025-07-24 18:24:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7fe89d49-52d7-48f8-af0f-3672a1cfa7fc', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 940.85, 'NOK', 'CREDIT',
        'PENDING', 'Insurance claim settlement', 'ACH870324', '2025-04-25 16:45:06', '2025-04-25 16:58:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('897af221-142d-48ea-b5f6-29f2f0289d2a', '30f7fce8-3a42-4900-8129-5549a3175459', 409.03, 'DKK', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF805391', '2025-05-10 16:51:14', '2025-05-10 17:20:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7526ce97-821c-4426-9a86-e0d24bb5cd2c', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1273.55, 'USD', 'TRANSFER',
        'PENDING', 'Investment account funding', 'REF658117', '2025-06-18 14:25:00', '2025-06-18 14:28:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('88f71bf3-4c1d-440d-a603-ffbc333585df', 'd31cdd64-e270-4aa9-a77e-a89486214984', 70.53, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Hernandez, Harvey and Romero', 'REF774414', '2025-03-18 16:10:19',
        '2025-03-18 17:00:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3e96fae3-c839-4127-b28c-8983f9269a4c', '523c0c30-1242-44a7-a025-f015ef7d4127', 154.03, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Craig, Foster and Wright', NULL, '2025-05-23 17:15:03',
        '2025-05-23 17:16:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8287f657-1aa2-4f69-932a-9c4aacd29509', '02630652-15bc-4df0-99b7-a41c93c79986', 1489.34, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-06-12 18:33:13', '2025-06-12 19:10:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ed6ada8a-8381-44fe-a5f8-0cd1665965fe', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 100.81, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-04-10 18:55:02', '2025-04-10 19:53:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('165af5f9-3d19-470b-928c-ddbae6799a30', 'd31cdd64-e270-4aa9-a77e-a89486214984', 6.64, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - George-Mcclain Services', 'TXN558500', '2025-06-02 14:44:03',
        '2025-06-02 15:31:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d56be87-d4bf-4e21-9ff1-a2532b92c30e', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 196.98, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Cook, Ramirez and Becker', NULL, '2025-07-20 17:19:41', '2025-07-20 18:01:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8f8a9c36-2ab6-4133-997f-1811d096d5e4', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1153.88, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Hannah Simpson', 'REF699536', '2025-08-24 21:43:57', '2025-08-24 22:26:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bbdff352-226d-4268-88a1-46bca94833de', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 205.72, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Wright-Rodgers', 'ACH752945', '2025-05-24 12:07:38', '2025-05-24 12:49:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f1a207bc-a01a-4e92-b069-9a68c98d9494', '1817a074-62f9-463a-8dd7-c44151e47f96', 31.74, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Andrews, Webster and Ortega', NULL, '2025-08-05 11:33:16', '2025-08-05 12:09:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89fb7c0e-ec5a-4a09-a4d2-6d7d5a876b8b', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 503.56, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-08-20 15:05:14', '2025-08-20 15:14:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('57536c24-22f2-42ca-93ba-25fa5acac9d1', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 55.82, 'GBP', 'CREDIT',
        'COMPLETED', 'Refund from Johnson, Castro and Fisher', 'ACH214390', '2025-07-17 09:32:55',
        '2025-07-17 09:35:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89d0e644-cd6b-4fea-9223-3ea846561d68', '1817a074-62f9-463a-8dd7-c44151e47f96', 147.62, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Harris LLC', NULL, '2025-08-11 09:59:02', '2025-08-11 10:33:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16087ba6-e585-428e-a7d0-865dbda7a2da', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 44.31, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-09-03 10:32:53', '2025-09-03 11:31:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9122a710-82ef-4d6c-8e53-c8910f49d62f', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 48.07, 'USD', 'DEBIT', 'FAILED',
        'Restaurant - Carroll-Lewis', 'TXN165325', '2025-08-27 16:17:55', '2025-08-27 16:56:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('132206b4-8bef-4fbd-aaa3-a6fc952cece7', '2e3b6236-b73f-40b1-a88f-abafe787082b', 250.07, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH138528', '2025-08-16 04:06:30', '2025-08-16 04:27:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('74f8e70e-5248-4edb-8b8c-ddbb95598147', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 2149.62, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Hess-Rogers', 'TXN605877', '2025-04-06 15:27:20', '2025-04-06 16:14:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21c4f9bb-5595-407c-aafc-602f029d20b9', '4692fe34-18fd-4140-9f08-06189f96fac3', 37.96, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Diaz-Brown', NULL, '2025-04-30 17:13:33', '2025-04-30 17:47:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6c993386-25ce-49d4-b807-f6f2cf84111f', 'a6f93311-3bce-4db4-8395-25cde9688e47', 270.38, 'GBP', 'TRANSFER',
        'CANCELLED', 'Family transfer', 'REF978366', '2025-08-29 22:30:22', '2025-08-29 23:24:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('11ed30d8-8307-4bee-ae3a-5d9bf0fe6f5c', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 477.57, 'AUD', 'DEBIT',
        'COMPLETED', 'Online purchase - Mcdaniel-Valentine', NULL, '2025-03-19 12:35:38', '2025-03-19 12:53:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31fbbba7-6b57-4b93-8fdc-bbe04ac0cc0b', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 142.39, 'GBP', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF928154', '2025-04-06 17:30:19', '2025-04-06 18:23:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe921b17-fc57-4c82-8f08-28bf548055c4', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 51.62, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Jackson LLC', NULL, '2025-04-28 10:38:45', '2025-04-28 11:26:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c0e89f45-8705-4f18-871a-5985c0a687be', '20683a88-7f0e-471d-a3c5-bf175725052c', 80.91, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-06-14 02:55:16', '2025-06-14 02:58:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6469c245-6fea-427a-a625-27444532110f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 167.56, 'DKK', 'DEBIT',
        'COMPLETED', 'Online purchase - Bailey, Johnson and Morrison', NULL, '2025-05-25 17:05:51',
        '2025-05-25 17:51:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ba006e2-d16d-4a18-9aea-a5857c8bf20b', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 3437.39, 'CAD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Pineda-Stevens', NULL, '2025-03-19 16:36:53', '2025-03-19 17:14:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7bd6b6df-f08f-421b-ab45-fc903bc0d34b', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1113.06, 'JPY', 'TRANSFER',
        'COMPLETED', 'Bill split with Casey Villarreal', 'REF336818', '2025-05-11 17:03:07', '2025-05-11 17:51:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8350433b-c901-4431-9f1d-7eda37b5bbfd', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 182.46, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF582349', '2025-09-04 17:02:28', '2025-09-04 17:26:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ef73e7b6-7180-4d4d-b410-ae974c05f58f', 'f9cae736-64d5-4692-a257-d87446ffc401', 120.24, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Thomas and Sons Premium', 'TXN565128', '2025-04-24 05:34:31',
        '2025-04-24 05:56:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e8644f8b-f9b2-4df4-8376-22831fc9295e', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 42.69, 'USD', 'REFUND',
        'COMPLETED', 'Refund - White, Matthews and Berger', 'REF540224', '2025-06-12 18:52:57', '2025-06-12 19:46:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6c8601a7-d00e-4308-8a14-c18a6f8c8d48', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 266.85, 'GBP', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH491207', '2025-08-18 12:09:17', '2025-08-18 12:42:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('279ae481-d4d2-4a83-9901-27841efe41f8', '12e6cc99-7181-4fde-98dc-93ded6112abf', 68.78, 'EUR', 'DEBIT',
        'COMPLETED', 'Online transfer to Marie Noble', 'TXN739074', '2025-04-24 13:20:24', '2025-04-24 14:19:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7bdac6d1-f7c2-4636-802b-8e4a108f45dd', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 381.95, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Gonzales and Sons Store', 'TXN709582', '2025-06-13 18:28:39',
        '2025-06-13 19:10:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('10966257-70a0-4e13-b296-ff7be4837ce2', '02630652-15bc-4df0-99b7-a41c93c79986', 1297.65, 'CAD', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-07-14 12:42:03', '2025-07-14 13:21:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('66518f21-9bcd-4140-bf27-d6dafef79e7e', 'f9cae736-64d5-4692-a257-d87446ffc401', 1375.14, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-06-30 09:45:26', '2025-06-30 10:01:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b8a2f789-1917-442a-a039-5131aa7403f1', '50682165-f2c3-4049-909e-951838384433', 18.82, 'CAD', 'DEBIT',
        'COMPLETED', 'Online purchase - Krause-Parker', 'TXN408228', '2025-05-05 12:22:13', '2025-05-05 13:05:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8ce3c8f5-7101-4dcd-8b7c-71cd7b51e2dd', 'f9cae736-64d5-4692-a257-d87446ffc401', 5041.17, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Thompson LLC', 'ACH110996', '2025-05-25 17:53:04', '2025-05-25 17:59:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec2cb236-093e-4ebd-9a26-7348318fa715', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1385.73, 'EUR', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Joshua Gonzalez', 'REF384894', '2025-04-11 16:35:45', '2025-04-11 17:19:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0b6f117-1a35-4ed1-be0d-9c2b7e3a4caf', 'a6f93311-3bce-4db4-8395-25cde9688e47', 39.35, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF664963', '2025-05-25 00:09:56', '2025-05-25 00:15:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('23a52cbe-6874-49d7-8a45-b35ad5984a6c', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 213.27, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Sullivan-Trevino', NULL, '2025-07-30 13:00:08', '2025-07-30 13:14:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e219c755-62c9-41c7-a105-dd0d5e179bb3', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 58.18, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Matthews LLC', 'REF742253', '2025-04-25 15:28:22', '2025-04-25 15:31:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b852baf6-3cbd-48cd-80c6-1a9d49d7d86c', '17ad774a-8c59-447a-b309-a2953679e25a', 790.73, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-04-30 09:37:13', '2025-04-30 09:38:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('482402f9-4061-4ca5-8f09-813296c3a861', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 12.53, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Jones and Sons', 'TXN915089', '2025-07-02 09:31:51', '2025-07-02 09:57:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('95c51c5a-afa1-40d2-afe1-310b6b6c649c', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1563.88, 'AUD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Wilson-Cross', 'ACH291792', '2025-08-09 14:41:53', '2025-08-09 15:02:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2dcf04c4-f425-4f9b-82f0-d57c71df076b', '4692fe34-18fd-4140-9f08-06189f96fac3', 1370.07, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-08-14 06:40:38', '2025-08-14 07:28:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('809670db-80a8-4b9a-a8de-7be8c42f816b', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 986.14, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Drew Reese', 'REF699448', '2025-09-05 12:08:58', '2025-09-05 12:39:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c5cd26a2-ba19-4952-83c0-5fe26f8251eb', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 63.49, 'EUR', 'DEBIT',
        'COMPLETED', 'Grocery - Foley Ltd Market', 'TXN779156', '2025-04-06 12:32:47', '2025-04-06 12:55:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('00e31cb8-19f2-4a0f-8eca-98d93cecc7ed', '20683a88-7f0e-471d-a3c5-bf175725052c', 3630.04, 'GBP', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH481684', '2025-03-20 00:43:54', '2025-03-20 01:06:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7b556435-f844-46cf-bb88-a89c308d1bce', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 64.92, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Moody Inc', 'REF961092', '2025-08-27 11:21:07', '2025-08-27 11:39:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('36441745-16f7-46da-8cc8-968f630e3ff7', 'a6f93311-3bce-4db4-8395-25cde9688e47', 826.07, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-05-11 15:40:49', '2025-05-11 16:00:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('80a9ac78-ce06-43cd-b07a-cadc97c73205', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 79.96, 'GBP', 'DEBIT',
        'COMPLETED', 'Restaurant - Smith-Murphy', 'TXN790960', '2025-07-19 18:53:24', '2025-07-19 19:47:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('543b33ef-6e7f-4bf1-9226-5b7554c302e7', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 897.36, 'USD', 'CREDIT',
        'CANCELLED', 'Freelance payment - Hernandez LLC', 'ACH440026', '2025-06-11 10:01:20', '2025-06-11 10:30:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a016cca8-8be5-4b03-81e3-dedf678c236f', 'd49ec560-02e4-4049-b181-837031133e95', 1297.42, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-07-23 10:10:38', '2025-07-23 10:35:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9eeeb567-d61c-4ce3-929a-da38fc157753', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 257.64, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF173299', '2025-04-18 18:15:19', '2025-04-18 18:39:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9460c394-cc55-473d-96d4-1fdb605dcb9e', '12e6cc99-7181-4fde-98dc-93ded6112abf', 129.61, 'USD', 'REFUND',
        'PENDING', 'Subscription cancellation refund', NULL, '2025-07-16 18:08:45', '2025-07-16 18:46:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('09ca8065-ca5e-412d-9fc6-b13c50363c14', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 269.45, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 37547 Kayla Mall Apt. 193', 'TXN567433', '2025-08-29 07:19:54',
        '2025-08-29 07:25:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2ef84958-5540-476d-b477-fc058cd0eb2e', 'f9cae736-64d5-4692-a257-d87446ffc401', 737.63, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF505581', '2025-08-14 10:35:16', '2025-08-14 11:10:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7188dab-a608-4908-9216-cdbf15b271d9', '50682165-f2c3-4049-909e-951838384433', 666.53, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Mary Simon MD', 'REF885952', '2025-07-30 13:55:36', '2025-07-30 14:39:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1035d9bc-9c45-4ae6-b0c5-48410049e501', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 271.22, 'CHF', 'CREDIT',
        'COMPLETED', 'Transfer from Jennifer Hall', 'ACH467581', '2025-05-11 12:35:49', '2025-05-11 13:06:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('15f10216-5027-4da6-ab49-8257eff37cce', '20683a88-7f0e-471d-a3c5-bf175725052c', 145.26, 'USD', 'CREDIT',
        'FAILED', 'Government benefit payment', 'ACH689873', '2025-06-27 15:15:14', '2025-06-27 15:19:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6dc0e160-ecbf-4f4e-90cb-f6981a9b124a', '523c0c30-1242-44a7-a025-f015ef7d4127', 499.83, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-04-18 22:24:47', '2025-04-18 23:09:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('60c0dff4-e86f-4e2f-a624-562192ab269e', '17ad774a-8c59-447a-b309-a2953679e25a', 463.09, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Edwards Ltd Services', 'TXN901890', '2025-03-16 01:44:18', '2025-03-16 02:12:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8137d359-0406-483f-aa22-a494052ad5d7', '20683a88-7f0e-471d-a3c5-bf175725052c', 928.01, 'GBP', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-05-02 12:44:47', '2025-05-02 13:39:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d022cb1c-a4b3-48f0-bbcb-1e73cb84da44', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 65.42, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Ellis, Ross and Gonzalez', NULL, '2025-06-04 17:51:56', '2025-06-04 17:55:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('26a6da36-b8a0-4976-abd9-eb4604b18922', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 120.76, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-06-27 17:44:13', '2025-06-27 18:22:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71e9d1d2-519a-4311-81a8-4e3a2d550bae', '523c0c30-1242-44a7-a025-f015ef7d4127', 1873.54, 'EUR', 'CREDIT',
        'COMPLETED', 'Transfer from Sarah Rodriguez', 'ACH510120', '2025-07-22 14:50:08', '2025-07-22 15:18:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a016c37-92fa-42c3-b27d-59de3e13411a', '17ad774a-8c59-447a-b309-a2953679e25a', 474.57, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Lynch PLC Premium', NULL, '2025-08-05 16:19:48', '2025-08-05 17:18:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46771e95-c029-4c96-aad4-efec55f74b43', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 65.85, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Smith, Charles and Hayes Market', 'TXN391817', '2025-08-09 10:22:25',
        '2025-08-09 11:19:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f75e222a-d55d-45f6-a5e8-9f8af1d8bb68', '02630652-15bc-4df0-99b7-a41c93c79986', 1160.93, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Connie Williams', 'REF573178', '2025-07-08 12:09:33', '2025-07-08 12:11:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d7297742-90b9-465e-8261-59725a8074ab', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 280.73, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH545908', '2025-06-10 17:40:59', '2025-06-10 18:18:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('62fc7723-c243-4767-a542-cca3f3366d09', '30f7fce8-3a42-4900-8129-5549a3175459', 417.66, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-08-28 11:03:24', '2025-08-28 11:28:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5b657df-a108-4ce6-ab76-b225588e6c2e', '523c0c30-1242-44a7-a025-f015ef7d4127', 97.14, 'USD', 'REFUND',
        'CANCELLED', 'Return processing - Figueroa-Bowman', 'REF507888', '2025-06-07 10:28:13', '2025-06-07 11:14:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b3e1903-a7a7-49c8-8c11-48e44c18c338', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 30.52, 'USD', 'DEBIT',
        'PENDING', 'Restaurant - Saunders, Green and Shepard', 'TXN816553', '2025-06-25 09:37:39',
        '2025-06-25 10:10:38');

-- Batch 8: Transactions 701-800
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('96b7887c-fc0d-4a9c-a597-e4f58b906c2f', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 545.08, 'EUR', 'TRANSFER',
        'FAILED', 'Investment account funding', NULL, '2025-03-25 12:19:40', '2025-03-25 13:10:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2fa146e9-0287-4339-89ad-f1c1a1d6b136', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1905.1, 'USD', 'CREDIT',
        'FAILED', 'Transfer from Lisa Chung', 'ACH265368', '2025-08-05 15:56:17', '2025-08-05 16:31:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('77a4e846-2ae8-42fe-be49-96b653b156e4', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 75.76, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Fitzpatrick-Valdez', 'REF951271', '2025-07-14 14:33:45',
        '2025-07-14 14:44:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8c5687bc-b425-414e-8155-e28321b41d92', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 7876.72, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH222898', '2025-09-05 10:34:35', '2025-09-05 10:36:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f5125bdb-5e02-402c-98da-ffc45fd80b0e', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 219.56, 'CAD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF335625', '2025-05-04 10:28:05', '2025-05-04 11:27:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7c1c0b73-2925-44bb-b9f3-c45d3d1321d6', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1639.78, 'AUD', 'CREDIT',
        'CANCELLED', 'Interest payment', NULL, '2025-04-08 15:43:41', '2025-04-08 15:53:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9eb40e1e-7e80-4a79-8c2d-76b5a25728bd', '20683a88-7f0e-471d-a3c5-bf175725052c', 180.91, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF327698', '2025-04-04 10:47:22', '2025-04-04 11:20:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e13e996e-4c9d-4efa-970e-a4793d28db23', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 399.25, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Ronald Roy', 'REF563563', '2025-05-21 12:11:03', '2025-05-21 12:20:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2b1f3d28-2893-406e-b27f-7648073a90ed', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1035.27, 'CAD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF343281', '2025-03-30 12:44:58', '2025-03-30 13:36:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cab8acab-4140-4689-8e57-b9de0cbf4749', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1090.82, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF550669', '2025-05-11 14:59:57', '2025-05-11 15:09:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c5e813db-92e5-459a-871d-29a9d338aec7', '12e6cc99-7181-4fde-98dc-93ded6112abf', 196.77, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Tom Jimenez', 'REF717640', '2025-05-26 11:57:49', '2025-05-26 12:31:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ecb9a19e-5231-4e01-9d11-ccab3269fa4b', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1000.76, 'AUD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF331734', '2025-04-16 10:34:42', '2025-04-16 10:55:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e46f398b-4985-4e4e-b975-951d49686fa6', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 4639.65, 'JPY', 'CREDIT',
        'PENDING', 'Freelance payment - Hughes, Hill and Owen', 'ACH627155', '2025-04-16 09:12:38',
        '2025-04-16 09:17:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2dc413f2-80d3-41a7-a5ec-d8b714cffd70', '12e6cc99-7181-4fde-98dc-93ded6112abf', 93.77, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH554420', '2025-04-30 14:30:52', '2025-04-30 15:26:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('65f9f1a7-c010-42fb-a122-3e178fae3bb3', 'a6f93311-3bce-4db4-8395-25cde9688e47', 271.57, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Darrell Esparza', 'REF331245', '2025-08-22 18:41:11', '2025-08-22 19:02:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('229fa140-0705-4bee-bb05-9b201134a985', 'd31cdd64-e270-4aa9-a77e-a89486214984', 37.59, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-04-07 16:22:13', '2025-04-07 17:12:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('162ffe19-45c9-423c-b417-6e49770e9487', 'd49ec560-02e4-4049-b181-837031133e95', 187.1, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Freeman, Rodriguez and Johnson Store', 'TXN762363', '2025-04-12 18:09:18',
        '2025-04-12 18:37:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('534bd3c7-30ad-44cd-b6a4-81d7cff33642', '2e3b6236-b73f-40b1-a88f-abafe787082b', 103.98, 'CAD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 8637 James Turnpike Apt. 212', 'TXN275777', '2025-04-02 18:25:09',
        '2025-04-02 19:03:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f7899222-e1c7-4ce8-84f3-8235eaaafd73', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 279.68, 'CAD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Garrett-Sanford', 'ACH145683', '2025-04-23 16:43:38', '2025-04-23 17:07:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1512d3a4-edf3-4ad2-a2c1-abb3f7e81db0', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 42.0, 'GBP', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 492 Ayala Isle', 'TXN247227', '2025-04-10 09:12:31', '2025-04-10 10:05:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce09f980-9656-4410-90f1-471e3bba025b', '4110303a-5cca-4c46-885d-c1e3bd335d96', 756.65, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-05-04 23:48:56', '2025-05-05 00:11:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e3fdce3e-eea8-4218-986a-116108c19819', '1817a074-62f9-463a-8dd7-c44151e47f96', 193.36, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF652794', '2025-05-25 11:32:58', '2025-05-25 12:19:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5f971677-57dd-442c-8ef7-8e631dbf1734', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1024.04, 'EUR', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-05-25 11:36:07', '2025-05-25 12:25:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d4e04fc4-a107-471e-8c35-ca9f1c5a8791', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 74.63, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Martin, Clark and Davis', 'ACH654168', '2025-06-16 16:27:33', '2025-06-16 17:09:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2bbdd7de-0a2b-4999-8d7a-5c059624f7b9', 'd31cdd64-e270-4aa9-a77e-a89486214984', 159.1, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Johnson Inc', 'REF228744', '2025-08-12 13:48:36', '2025-08-12 14:24:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a8b848ee-3c10-47cf-a158-45f26dfd427c', '12e6cc99-7181-4fde-98dc-93ded6112abf', 146.61, 'USD', 'TRANSFER',
        'FAILED', 'International transfer', 'REF508375', '2025-06-28 10:01:18', '2025-06-28 10:46:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('553b2bdb-c947-4f0b-9e13-b718635b79c2', '17ad774a-8c59-447a-b309-a2953679e25a', 672.82, 'USD', 'CREDIT',
        'PENDING', 'Commission payment', 'ACH125500', '2025-04-03 15:22:54', '2025-04-03 16:03:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3faa8813-d386-4e68-b9e2-6d8201254cbc', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 40.33, 'CHF', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 75397 Mendez Rapid Suite 847', 'TXN341840', '2025-04-16 07:28:44',
        '2025-04-16 07:31:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be40963d-0f95-42d8-a5a7-3d102b7ee383', '17ad774a-8c59-447a-b309-a2953679e25a', 174.32, 'USD', 'REFUND',
        'FAILED', 'Price adjustment - Hall-Lee', 'REF798765', '2025-05-30 17:16:19', '2025-05-30 18:15:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9f82f664-8984-4b32-a097-bbd6fad0653e', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 35.17, 'USD', 'TRANSFER',
        'PENDING', 'Rent payment to Joel Burch', 'REF215457', '2025-06-16 10:32:58', '2025-06-16 11:14:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b183c7c5-d4e8-49b2-a65a-8ba313acdf3a', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1354.8, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Griffin LLC Premium', 'TXN724124', '2025-03-21 12:53:43', '2025-03-21 12:59:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('af45c28a-9f4e-4160-8968-3c796d5c8eae', '2e3b6236-b73f-40b1-a88f-abafe787082b', 14.08, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Wilson Inc', 'REF675402', '2025-07-03 16:43:40', '2025-07-03 17:20:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e321b09f-a17b-42f6-a2d6-9d66ded7e296', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1347.05, 'USD', 'CREDIT',
        'PENDING', 'Commission payment', NULL, '2025-05-11 17:05:30', '2025-05-11 17:53:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fd634d9e-cfb2-442f-9d75-edbc6d227dda', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1761.57, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Russell, Evans and Dennis', 'ACH694332', '2025-09-03 10:12:53',
        '2025-09-03 11:03:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e2b9268d-ab30-46ab-ac8d-7ec46d681049', '30f7fce8-3a42-4900-8129-5549a3175459', 61.46, 'JPY', 'REFUND',
        'COMPLETED', 'Service credit - Dunn Ltd', 'REF729401', '2025-06-20 09:26:10', '2025-06-20 09:54:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1819be2e-64be-47c0-98fe-83dc8c256976', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 299.34, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-08-24 11:07:21', '2025-08-24 11:17:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('439314ad-f4cd-49c4-ba5f-f5c698c432db', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 35.21, 'USD', 'DEBIT', 'FAILED',
        'Bill payment - Peterson PLC Services', 'TXN730396', '2025-09-07 21:45:33', '2025-09-07 22:22:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('265003ed-3d7e-4d71-b89f-e95605e7d463', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1224.89, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF137000', '2025-06-23 13:41:00', '2025-06-23 14:14:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bf2bcaf5-018a-4d34-ae49-0550f18beb69', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 52.36, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Larson Group Services', 'TXN859028', '2025-06-28 16:00:05', '2025-06-28 16:18:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9b1ce9c8-cd14-40b7-b0d0-0fa4bcf441c5', '12e6cc99-7181-4fde-98dc-93ded6112abf', 478.57, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 2701 Glover Ferry Apt. 859', 'TXN898043', '2025-08-20 22:11:23',
        '2025-08-20 22:15:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31400863-d2c2-4fc1-bec2-dd533eb7723d', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 67.56, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF924283', '2025-08-10 09:43:29', '2025-08-10 09:48:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('509d7d11-b7b7-4c30-9dec-f5ca0b1415f0', 'd31cdd64-e270-4aa9-a77e-a89486214984', 609.31, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH854223', '2025-08-03 17:31:57', '2025-08-03 17:57:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dea37127-7ddd-4726-b1a9-72084f54ebe2', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 99.13, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-06-14 21:45:48', '2025-06-14 22:21:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5b166a4c-6e93-45a6-8262-0fe39e6dd2bc', '4692fe34-18fd-4140-9f08-06189f96fac3', 486.39, 'USD', 'TRANSFER',
        'FAILED', 'Wire transfer to Joseph Bailey', 'REF757188', '2025-06-07 09:09:32', '2025-06-07 09:52:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('795956f1-3e4c-40f9-bbd8-98c2a1291f68', '12e6cc99-7181-4fde-98dc-93ded6112abf', 22.36, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Wiley-Anderson', 'TXN547033', '2025-08-21 02:27:30', '2025-08-21 03:18:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8091e541-ca31-4d79-b0dc-309691f9ff42', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1329.21, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-06-19 13:36:15', '2025-06-19 13:59:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b1a7eb8a-a1be-49f7-9a42-3ddaddc35aec', 'f9cae736-64d5-4692-a257-d87446ffc401', 64.73, 'CHF', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF429560', '2025-07-03 10:21:08', '2025-07-03 11:10:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c37c00e0-f4f4-451d-b1ad-fa8161678782', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 62.42, 'USD', 'REFUND',
        'PENDING', 'Subscription cancellation refund', NULL, '2025-04-05 04:12:47', '2025-04-05 04:59:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7051ece1-338a-4ed5-8a37-889b5fdf0689', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 21.01, 'CAD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 47793 Marc Viaduct', NULL, '2025-03-17 13:36:00', '2025-03-17 14:14:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('54f397a0-cdfa-43df-945d-24988cf26e34', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 4217.05, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Terry, Lopez and Santiago', 'ACH665155', '2025-07-26 13:35:25',
        '2025-07-26 14:16:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b8ca7af-f85f-4be9-a6f6-14d3d4202dd7', '2e3b6236-b73f-40b1-a88f-abafe787082b', 18.5, 'EUR', 'DEBIT',
        'CANCELLED', 'Subscription - Ware, Cook and Green Premium', NULL, '2025-09-02 22:15:38', '2025-09-02 22:22:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('031fdd5f-7dfe-4181-a0cf-f48e7ea97c52', '17ad774a-8c59-447a-b309-a2953679e25a', 190.25, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Ortiz, Brown and Serrano', 'REF262461', '2025-03-18 12:11:51',
        '2025-03-18 12:46:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8bb8bb36-fe5a-40ef-87b9-b8ef9b9782fc', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 149.51, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Burns, Davis and Harrison', NULL, '2025-08-29 15:34:13', '2025-08-29 16:32:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71e54263-20e6-4cef-b923-d323d6b58185', '17ad774a-8c59-447a-b309-a2953679e25a', 86.39, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Wolfe Ltd', 'ACH914584', '2025-06-02 18:05:44', '2025-06-02 18:12:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e1610787-f62f-4606-a826-606298776dea', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 7163.89, 'USD', 'CREDIT',
        'PENDING', 'Refund from Sampson, Baker and Dunlap', NULL, '2025-06-23 12:00:09', '2025-06-23 12:54:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f583be14-24db-47e7-a6c3-6b764908585d', 'f9cae736-64d5-4692-a257-d87446ffc401', 991.22, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Sanchez-Perez', 'ACH655543', '2025-05-16 18:28:05', '2025-05-16 19:16:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('650c2683-f0a1-4c48-a7aa-3fcd78c63eff', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1068.63, 'CAD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Green-Foster', 'ACH942523', '2025-06-25 11:31:03', '2025-06-25 12:02:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('769551cb-45c6-4896-bb88-b3473515e087', 'd31cdd64-e270-4aa9-a77e-a89486214984', 28.79, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Cain and Sons Store', 'TXN158481', '2025-09-04 10:50:24', '2025-09-04 11:35:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a9d77aed-d977-4b83-832a-ab44e8a74046', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 69.15, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF134073', '2025-05-03 18:10:49', '2025-05-03 19:06:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0a27603-f7af-415f-84c6-862de0dbdaf6', '02630652-15bc-4df0-99b7-a41c93c79986', 132.6, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-03-21 13:34:44', '2025-03-21 13:56:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b078c02f-d406-46be-b265-30f9011ec42b', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 168.28, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH768011', '2025-06-01 18:53:13', '2025-06-01 19:45:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5249fdb2-be53-4d53-8821-0ec46ea2fdce', '30f7fce8-3a42-4900-8129-5549a3175459', 158.87, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF712781', '2025-09-02 12:51:41', '2025-09-02 13:45:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('78d68cc9-1fe2-4e1e-abe9-7ec9424fca61', '17ad774a-8c59-447a-b309-a2953679e25a', 82.13, 'AUD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 90518 Brady Shores', 'TXN357926', '2025-04-07 16:53:07', '2025-04-07 17:28:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e922d5b9-4ef4-4c49-b683-8d665400b878', '12e6cc99-7181-4fde-98dc-93ded6112abf', 211.9, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-07-09 13:48:53', '2025-07-09 14:15:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('69b03ffc-9d09-4bfb-b237-2927ef1a5633', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 134.74, 'USD', 'REFUND',
        'FAILED', 'Refund - Smith Ltd', NULL, '2025-08-08 14:38:43', '2025-08-08 14:46:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be5c22ce-8455-47c2-b3d5-babd4e05c564', '50682165-f2c3-4049-909e-951838384433', 621.92, 'CAD', 'TRANSFER',
        'COMPLETED', 'Transfer to Daniel Benton', 'REF977248', '2025-07-10 18:59:50', '2025-07-10 19:11:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('37f5ec6f-04f7-449c-9c1d-7aa941bc4e03', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 85.33, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Campbell LLC', NULL, '2025-04-02 17:18:15', '2025-04-02 18:14:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('357a34b7-3175-411a-bfd1-05fc2ea85e85', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1427.7, 'JPY', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF410651', '2025-05-30 12:19:29', '2025-05-30 12:57:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dfc4cf5c-5198-4b7e-8ace-c4995b919d9d', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 521.96, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Jacob Tapia', 'REF702189', '2025-08-03 10:18:01', '2025-08-03 10:26:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d9183236-5a9f-4de6-be37-6f907ddbcf75', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 16.14, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF397687', '2025-09-09 20:06:06', '2025-09-09 20:50:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d75be188-6372-43d6-90ca-da0d4ca11a41', '4110303a-5cca-4c46-885d-c1e3bd335d96', 808.44, 'USD', 'CREDIT',
        'FAILED', 'Insurance claim settlement', 'ACH643848', '2025-05-24 00:47:29', '2025-05-24 01:04:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('37e7338a-05e0-48ff-b7f2-80a385373ad0', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 60.45, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Franco, Cunningham and Norton', 'TXN507215', '2025-07-04 10:58:03',
        '2025-07-04 11:17:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cfa6c62e-a8aa-421e-93f7-985c710cd588', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 42.82, 'JPY', 'DEBIT',
        'CANCELLED', 'Grocery - Gardner-Barnes Market', 'TXN703142', '2025-09-11 16:42:45', '2025-09-11 16:56:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cfb7141c-59ba-4a1b-ba0e-25151701d4a1', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1242.0, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Loretta Carr', 'REF528485', '2025-09-05 20:51:22', '2025-09-05 21:06:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c591310c-9747-4ad0-a3ee-6640adf4455b', '17ad774a-8c59-447a-b309-a2953679e25a', 1621.76, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Bell PLC', NULL, '2025-06-24 17:07:25', '2025-06-24 17:38:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46aeb185-1538-412a-8e1b-ce5775d9912c', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1149.52, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF543034', '2025-05-02 04:01:13', '2025-05-02 04:33:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a251c227-c22a-4a70-8085-cacdd9953c0f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 793.77, 'AUD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-06-02 14:21:12', '2025-06-02 15:00:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5d2f1b2-d9ad-4f06-b09b-b28c3a344112', '30f7fce8-3a42-4900-8129-5549a3175459', 122.55, 'USD', 'REFUND',
        'PENDING', 'Subscription cancellation refund', 'REF546457', '2025-03-19 07:28:50', '2025-03-19 08:11:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('947fbd00-f374-4684-8592-c833bc1bd3be', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 108.2, 'CAD', 'REFUND',
        'PENDING', 'Processing fee refund', 'REF117320', '2025-08-24 13:42:04', '2025-08-24 14:11:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ed7ddd2b-aec7-4782-90b1-d480f2281706', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 83.11, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Santos Ltd', 'REF336840', '2025-06-06 09:28:03', '2025-06-06 09:28:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9ad42fd7-325d-450a-a5cb-136933cd5467', '50682165-f2c3-4049-909e-951838384433', 807.25, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH124607', '2025-06-27 14:25:19', '2025-06-27 14:58:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ccd33b87-ce2f-4b37-890b-f19c026a9413', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1409.9, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-06-20 09:28:58', '2025-06-20 09:56:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b64e91e1-b1e0-4ffc-a7a0-512b0ce0a8c7', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1431.46, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - York, Thompson and Park', 'ACH618844', '2025-05-18 08:02:48',
        '2025-05-18 08:33:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe39a179-9d58-4813-b118-a011e9c563a0', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 15.74, 'EUR', 'DEBIT',
        'COMPLETED', 'Payment to Young, Clements and Norris', NULL, '2025-05-31 10:41:50', '2025-05-31 11:02:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e2e39e18-f47e-42bc-92f4-c87f2e31594d', 'f9cae736-64d5-4692-a257-d87446ffc401', 818.35, 'AUD', 'TRANSFER',
        'COMPLETED', 'Transfer to Ronald Mitchell', 'REF355905', '2025-09-11 00:22:08', '2025-09-11 00:36:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('54a28100-4ebc-4f95-838b-e6ba1a1e2484', '02630652-15bc-4df0-99b7-a41c93c79986', 1220.3, 'GBP', 'CREDIT',
        'COMPLETED', 'Transfer from Julie Bautista', 'ACH912268', '2025-06-09 18:08:24', '2025-06-09 18:15:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('41c71e5c-d471-42d1-98b9-d79e930db6a1', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 545.58, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-03-25 13:29:59', '2025-03-25 14:20:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93bd9488-fc53-4548-9313-8bf4f7212c59', 'a6f93311-3bce-4db4-8395-25cde9688e47', 563.47, 'GBP', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF383157', '2025-08-28 07:53:23', '2025-08-28 08:45:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('84d83021-1fe6-4e74-94ac-43da08e24bd0', '12e6cc99-7181-4fde-98dc-93ded6112abf', 170.45, 'USD', 'REFUND',
        'PENDING', 'Price adjustment - English, Greer and Wilson', 'REF775679', '2025-08-29 10:41:16',
        '2025-08-29 10:57:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a990f7f7-cfa7-4ce8-9418-f2eaeab191c8', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 65.66, 'GBP', 'CREDIT',
        'COMPLETED', 'Transfer from Joseph Hernandez', 'ACH678931', '2025-05-27 12:40:19', '2025-05-27 12:44:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('814abf16-9cb2-4d6f-9603-60935dfc6e31', '4692fe34-18fd-4140-9f08-06189f96fac3', 1003.1, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF914732', '2025-04-22 22:26:11', '2025-04-22 23:03:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9a0b72f1-7875-4868-89f1-08515c077d8e', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 34.12, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Carroll-Kim', 'TXN237643', '2025-08-22 12:05:10', '2025-08-22 12:51:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f6a201dd-16df-45c2-87fd-55bf55f831d7', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1127.19, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Todd Jones', 'REF221797', '2025-08-08 17:30:51', '2025-08-08 17:51:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0cd84d1-7477-42ee-abe7-59516a2fbb99', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 91.88, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Clark-Vega Store', 'TXN480848', '2025-05-24 13:23:47', '2025-05-24 14:21:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02057819-c009-4811-87d8-129e3b2adffd', '4692fe34-18fd-4140-9f08-06189f96fac3', 1079.03, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-04-17 06:40:18', '2025-04-17 07:05:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('494cc64d-cf8c-468c-b6c1-525dc33ac4bd', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1417.28, 'AUD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF297445', '2025-03-19 07:22:15', '2025-03-19 07:36:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9605a5bb-7d9c-414c-96cd-450dbadef1e0', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 73.7, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Castillo and Sons', NULL, '2025-07-09 11:28:42', '2025-07-09 11:38:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0d1b1ee5-206c-491d-89cf-324fc726ba87', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 225.86, 'AUD', 'DEBIT',
        'COMPLETED', 'Card payment - Guzman and Sons Store', NULL, '2025-07-02 12:36:11', '2025-07-02 13:18:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6592463c-f727-49db-a2de-2321243c25cb', '4692fe34-18fd-4140-9f08-06189f96fac3', 885.54, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with Robert Jones', 'REF265657', '2025-06-30 22:03:57', '2025-06-30 22:55:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2f019c5f-b182-47f1-b551-1821754f5e9c', 'a6f93311-3bce-4db4-8395-25cde9688e47', 667.94, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF953470', '2025-04-11 13:54:48', '2025-04-11 14:43:19');

-- Batch 9: Transactions 801-900
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42b2022b-1271-40d4-b0e6-7ee61032e38c', '1817a074-62f9-463a-8dd7-c44151e47f96', 17.25, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF628362', '2025-08-24 10:32:09', '2025-08-24 11:28:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c58a223c-5e39-4a5d-96e3-1b308a397c24', '1817a074-62f9-463a-8dd7-c44151e47f96', 1194.04, 'NOK', 'TRANSFER',
        'COMPLETED', 'Bill split with April Murray', 'REF152197', '2025-06-28 15:21:11', '2025-06-28 15:26:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('86daaa52-c0f4-45df-839a-44be49e4725d', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1337.95, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Nathan Kennedy', NULL, '2025-08-25 18:17:23', '2025-08-25 18:21:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d334cee4-599b-476f-a1bd-f1c12fc573e1', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1171.39, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Stephen Lopez DDS', NULL, '2025-04-11 08:14:58', '2025-04-11 09:05:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bbe5d805-d395-40a4-8191-ed10985b0e81', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 127.29, 'EUR', 'REFUND',
        'PENDING', 'Return processing - Romero, Robinson and Young', NULL, '2025-09-01 11:54:21',
        '2025-09-01 12:50:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eed3ba1f-e00f-42ff-bef5-1ff997468a58', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 55.36, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Beasley-Morrison', 'TXN251793', '2025-08-18 12:47:29', '2025-08-18 12:50:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce0a68ac-1aa3-49ad-b467-3e303f365775', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 7.29, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Allen-Ballard Store', 'TXN156952', '2025-08-16 02:07:26', '2025-08-16 02:24:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b37de2d1-ae90-4d8b-b5bf-d90b86b890b1', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 27.95, 'EUR', 'REFUND',
        'COMPLETED', 'Refund - Brady, Hudson and Miller', 'REF624759', '2025-05-10 10:16:21', '2025-05-10 10:19:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('edd7c0c6-bc32-44e0-922c-ea41e5ffb6bf', '7a712793-0571-4844-b830-a1a4d3fdeb27', 184.79, 'GBP', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-03-21 09:21:08', '2025-03-21 10:12:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4755c18a-4c3d-4b22-b225-011be3824196', 'f9cae736-64d5-4692-a257-d87446ffc401', 5653.82, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-03-26 18:04:37', '2025-03-26 18:19:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24af9113-b380-4331-bfd4-2025706db4a5', 'd49ec560-02e4-4049-b181-837031133e95', 1393.76, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF937498', '2025-04-01 01:41:49', '2025-04-01 01:44:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cbe7cecd-fc5c-4c3f-9ebc-13c61965d43e', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 95.77, 'USD', 'DEBIT',
        'CANCELLED', 'ATM withdrawal at 1801 Jordan Avenue Apt. 812', 'TXN365882', '2025-08-02 13:01:33',
        '2025-08-02 13:32:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('72c6a988-8aed-4ad1-ade3-4c07cc85f6e8', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 55.94, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Fisher and Sons', NULL, '2025-05-17 09:59:44', '2025-05-17 10:03:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fabd5cfe-a901-4b05-8987-1f7d6c842fbd', '12e6cc99-7181-4fde-98dc-93ded6112abf', 169.73, 'USD', 'CREDIT',
        'PENDING', 'Refund from Beasley Inc', NULL, '2025-04-03 15:36:58', '2025-04-03 15:56:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a19b3a87-3e52-44d2-988a-cbfb235e7435', 'd49ec560-02e4-4049-b181-837031133e95', 126.9, 'EUR', 'REFUND',
        'CANCELLED', 'Service credit - Meyers-Werner', NULL, '2025-03-17 23:42:34', '2025-03-18 00:19:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec18a0e2-0605-429e-9dcb-cdc45a38e142', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 779.72, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH350021', '2025-08-29 11:49:46', '2025-08-29 12:05:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7fbefc9-f7df-45e1-a302-8cf9f0b87fad', 'a6f93311-3bce-4db4-8395-25cde9688e47', 169.63, 'CAD', 'REFUND',
        'COMPLETED', 'Return processing - Joseph-Reese', NULL, '2025-04-29 16:52:42', '2025-04-29 17:17:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dfbff369-b380-4e8c-93a0-6aaab0db0890', 'a6f93311-3bce-4db4-8395-25cde9688e47', 133.99, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Rowland, Wright and Carey', NULL, '2025-04-12 08:29:38',
        '2025-04-12 08:59:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8e10ae98-9e65-43df-b227-945e8745b885', '17ad774a-8c59-447a-b309-a2953679e25a', 71.55, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF610425', '2025-05-05 17:23:27', '2025-05-05 18:09:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a60248a9-7269-471f-ab9a-892a403393e4', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 216.23, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Hernandez Ltd Services', 'TXN408314', '2025-05-09 17:42:26',
        '2025-05-09 18:22:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b0a36c89-5556-4017-8ea4-f12ac9164acd', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1454.36, 'GBP', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF314036', '2025-09-07 11:38:56', '2025-09-07 12:27:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5d2fbc55-99d1-4f22-8ebf-1d24e05316ff', '1817a074-62f9-463a-8dd7-c44151e47f96', 67.91, 'JPY', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-05-01 18:11:47', '2025-05-01 18:29:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c4c1460-1520-44d8-a8d7-1c0592e95434', '523c0c30-1242-44a7-a025-f015ef7d4127', 274.94, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Jacobson, Mckenzie and Johnson', 'ACH628983', '2025-09-11 11:38:54',
        '2025-09-11 11:39:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e7da5c82-abdc-4f77-b6c4-def7c406a417', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1075.19, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF717761', '2025-08-11 11:13:06', '2025-08-11 11:13:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8bc34bd4-9072-4ad6-a068-8ca6805557df', '12e6cc99-7181-4fde-98dc-93ded6112abf', 480.6, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF733861', '2025-04-25 05:34:03', '2025-04-25 06:01:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e8017667-040b-46ef-b0f2-b976513b7799', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 92.88, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Moran-Leblanc Store', 'TXN289453', '2025-06-03 18:33:01', '2025-06-03 19:03:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7f858323-8329-4cef-9d24-8325d9cb97ff', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 455.02, 'CAD', 'DEBIT',
        'FAILED', 'Restaurant - Santos-Martin', 'TXN641161', '2025-05-19 15:07:40', '2025-05-19 15:18:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a43b1d5-a679-45ca-8394-09944c92bd90', '30f7fce8-3a42-4900-8129-5549a3175459', 1385.38, 'USD', 'TRANSFER',
        'FAILED', 'Bill split with Mr. Craig Hines', 'REF258212', '2025-09-10 03:00:25', '2025-09-10 03:52:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7c70a18-a701-4281-9300-3f64998c526d', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 54.51, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH489580', '2025-08-16 16:29:40', '2025-08-16 17:20:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a30a58d-8e52-474c-aa54-d697d4d9c668', '02630652-15bc-4df0-99b7-a41c93c79986', 158.69, 'GBP', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-04-30 16:52:16', '2025-04-30 16:56:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a8732c0-5d7e-4802-a952-795692aa07d2', '50682165-f2c3-4049-909e-951838384433', 475.38, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF115981', '2025-08-26 09:05:15', '2025-08-26 09:22:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('01120f1d-75bb-4b1d-9960-b66e4ca26121', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 78.17, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH957389', '2025-07-08 23:19:29', '2025-07-08 23:21:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('12583bae-3e8e-43a1-81b7-5cfa7615ed28', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 78.51, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Carlos Copeland', 'TXN277742', '2025-07-11 13:05:28', '2025-07-11 13:09:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a7e12cf-1cf8-47d1-8586-76b0869b6025', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1644.44, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH228790', '2025-07-27 18:08:51', '2025-07-27 18:38:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e6bf025f-1edf-446a-b4cb-e255368952b3', '523c0c30-1242-44a7-a025-f015ef7d4127', 590.78, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF859753', '2025-07-29 10:01:58', '2025-07-29 10:48:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eac5093c-fca5-474d-8864-32a3c87063a8', '12e6cc99-7181-4fde-98dc-93ded6112abf', 86.66, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-06-26 14:20:12', '2025-06-26 14:46:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('626ea63e-c034-4d0d-b499-abfe74106239', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1292.67, 'CAD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Pugh, Powell and Martinez', 'ACH833823', '2025-05-12 09:34:55',
        '2025-05-12 09:38:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('41742103-d973-4467-9c62-c89bfb6bfcce', '2e3b6236-b73f-40b1-a88f-abafe787082b', 652.48, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF164356', '2025-04-28 14:10:18', '2025-04-28 14:25:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a35f1723-d7ec-40ae-8ee2-e9ced49efdc1', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 38.95, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Andrew Cross', 'REF490251', '2025-04-14 15:06:29', '2025-04-14 15:44:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6ecabab2-3662-4be9-8cab-9d6f39a28c0d', '12e6cc99-7181-4fde-98dc-93ded6112abf', 13.11, 'EUR', 'DEBIT',
        'COMPLETED', 'Online transfer to Daniel Lindsey', 'TXN813335', '2025-08-18 12:01:50', '2025-08-18 12:57:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('96e1577e-cb01-4423-aa45-b07126484e4b', '1817a074-62f9-463a-8dd7-c44151e47f96', 191.5, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-05-08 16:46:14', '2025-05-08 16:59:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c7462f51-dfbc-4b24-b869-403ca611ecd2', '1817a074-62f9-463a-8dd7-c44151e47f96', 275.98, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH328947', '2025-05-18 10:47:04', '2025-05-18 11:21:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('900a088a-ea1c-4fe3-a999-ab42cd284c49', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 218.12, 'GBP', 'CREDIT',
        'COMPLETED', 'Salary deposit - Becker, Thompson and Green', NULL, '2025-04-26 16:04:36', '2025-04-26 16:48:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('03a6de8f-8cdc-4aec-8450-121904d940cd', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 305.4, 'USD', 'DEBIT',
        'CANCELLED', 'Online purchase - Davis PLC', 'TXN976272', '2025-05-24 11:25:18', '2025-05-24 12:00:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee7b677f-3173-4f28-9f2c-3895ec99d9a5', '4110303a-5cca-4c46-885d-c1e3bd335d96', 424.89, 'USD', 'DEBIT',
        'PENDING', 'Restaurant - Smith-May', 'TXN527462', '2025-07-04 13:31:54', '2025-07-04 13:47:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6ba9bdb5-4aae-4b1d-9f6b-08411d35d493', '1817a074-62f9-463a-8dd7-c44151e47f96', 174.69, 'USD', 'CREDIT',
        'PENDING', 'Transfer from Christie Bruce', NULL, '2025-04-28 18:17:35', '2025-04-28 19:03:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a3eea16-bab5-4d96-b530-7b5691b88369', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 148.15, 'CAD', 'REFUND',
        'COMPLETED', 'Service credit - Moore Ltd', 'REF497518', '2025-05-24 16:56:42', '2025-05-24 17:44:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ef0f0ff4-3a02-4473-bd64-812dc75c1910', '50682165-f2c3-4049-909e-951838384433', 195.72, 'USD', 'CREDIT',
        'CANCELLED', 'Bonus payment - Lopez, Romero and Johnson', 'ACH752254', '2025-05-09 18:08:24',
        '2025-05-09 18:50:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('34fb2693-4245-4331-a9b7-48f35276b391', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 85.45, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Villarreal Group Market', NULL, '2025-05-15 10:53:30', '2025-05-15 10:56:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d760301e-9b5b-438c-b6bd-b5a58ed303fc', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1034.71, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF708431', '2025-07-27 11:54:34', '2025-07-27 12:26:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('13de2515-1bc4-47de-b1b4-e3d21d167920', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 177.36, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF158644', '2025-03-28 14:20:57', '2025-03-28 14:30:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cdf0bb21-cb4a-46fa-9fdb-def96dfe4ce1', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1208.24, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Aaron Nash', 'REF261109', '2025-07-17 11:46:25', '2025-07-17 12:04:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2e5253ad-5344-4f15-9906-c4ca1e2af786', '4110303a-5cca-4c46-885d-c1e3bd335d96', 52.42, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Williams, Miller and Gallegos', 'REF228470', '2025-06-15 02:54:33',
        '2025-06-15 02:57:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('702c5106-5f4c-4c06-a6da-44bb13ebb268', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 360.23, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 311 Kayla Parks Apt. 528', 'TXN889035', '2025-09-04 17:17:30',
        '2025-09-04 17:18:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('75b3766a-228a-465f-a333-f82506f44b6c', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 81.23, 'USD', 'REFUND',
        'PENDING', 'Overpayment refund', 'REF314792', '2025-09-11 11:25:05', '2025-09-11 11:58:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('600d6011-d4b6-4536-9928-d323d166f7ab', 'd31cdd64-e270-4aa9-a77e-a89486214984', 5280.54, 'EUR', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-03-16 16:27:31', '2025-03-16 17:27:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('85e2c277-11ae-438f-aebc-aa9507792b65', '1817a074-62f9-463a-8dd7-c44151e47f96', 130.38, 'USD', 'DEBIT',
        'PENDING', 'ATM withdrawal at 250 Justin Mountains', NULL, '2025-03-20 15:48:14', '2025-03-20 16:44:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4919c13c-c1dd-44f3-8063-228dad54abcf', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 3616.32, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Garcia Group', NULL, '2025-06-02 21:38:26', '2025-06-02 22:15:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bde61aa4-a1e0-4c18-ab78-071c3143fcc7', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1432.24, 'CAD', 'TRANSFER',
        'FAILED', 'P2P payment via mobile app', NULL, '2025-06-12 18:43:47', '2025-06-12 19:39:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('adc8c602-9db6-4594-b280-b20a5193ded9', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 200.18, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 7165 Smith Ramp Apt. 508', 'TXN809579', '2025-07-02 05:30:27',
        '2025-07-02 05:57:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b1852d29-bff9-4ec4-b1c9-5f7d4cbc3105', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 107.06, 'EUR', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH940958', '2025-03-29 17:05:27', '2025-03-29 18:03:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b5b45902-992d-4231-8fdd-af6a1c6c72f6', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 894.34, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Skinner and Sons', 'ACH894381', '2025-04-16 12:41:51', '2025-04-16 13:32:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1ecfe633-5c4f-4168-8414-8d556920096f', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 871.63, 'NOK', 'CREDIT',
        'COMPLETED', 'Bonus payment - Malone, Miller and Perry', 'ACH232274', '2025-06-13 07:08:02',
        '2025-06-13 07:13:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bd6c60d3-4c04-472f-83fd-ca92e274a42c', 'f9cae736-64d5-4692-a257-d87446ffc401', 164.07, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Lee, May and Miller', 'REF934408', '2025-06-19 09:41:31',
        '2025-06-19 09:57:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('35ef9a57-b787-45ab-9d3a-fb39e2aae095', 'a6f93311-3bce-4db4-8395-25cde9688e47', 121.7, 'AUD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF632370', '2025-04-18 11:22:51', '2025-04-18 11:35:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b676f2cc-88a3-4d5c-ad5e-a6565c641551', '1817a074-62f9-463a-8dd7-c44151e47f96', 133.28, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF278529', '2025-06-17 09:32:32', '2025-06-17 09:59:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0643ee95-5752-45c5-86f3-bd45be6a4ff5', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 135.03, 'GBP', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-04-25 12:57:48', '2025-04-25 13:43:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3edfcbd-b786-41dc-8064-9cba1cb87167', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1556.96, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-05-03 20:08:06', '2025-05-03 20:18:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b91dde25-a3ab-49b3-91eb-f223d9e5f376', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 300.98, 'AUD', 'TRANSFER',
        'COMPLETED', 'Bill split with James Smith', 'REF218017', '2025-03-30 13:30:48', '2025-03-30 14:19:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1fcd2b01-5ac0-4664-afc2-674a5e7c7e7b', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 666.82, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF187343', '2025-08-05 18:09:35', '2025-08-05 18:25:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('49e0dfca-b642-4e09-84c0-743de6036288', 'f9cae736-64d5-4692-a257-d87446ffc401', 1050.4, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Huffman, Johnson and Miller', 'TXN419219', '2025-04-07 01:50:26',
        '2025-04-07 02:43:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cce30534-966c-4b8e-97e9-49ffbd86a335', 'f9cae736-64d5-4692-a257-d87446ffc401', 87.53, 'GBP', 'DEBIT',
        'COMPLETED', 'Gas station - Mitchell-Obrien', 'TXN981400', '2025-05-23 10:09:33', '2025-05-23 10:25:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0184e62-5b6c-4ce7-9dda-cad4dbb793e7', '4692fe34-18fd-4140-9f08-06189f96fac3', 1250.55, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF872263', '2025-09-05 14:10:28', '2025-09-05 14:10:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2d6c1981-4996-4a2c-9731-fc9cbad451c5', '4692fe34-18fd-4140-9f08-06189f96fac3', 361.42, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Reyes Group Premium', 'TXN680588', '2025-07-17 11:51:10', '2025-07-17 12:10:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6dbe6f84-bac8-477e-9ca5-ccc256069eab', '523c0c30-1242-44a7-a025-f015ef7d4127', 163.07, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Perez Group', 'TXN542917', '2025-06-27 15:55:28', '2025-06-27 16:12:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('09338436-2071-4876-8141-cdd6d0aad166', '4692fe34-18fd-4140-9f08-06189f96fac3', 17.29, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Welch-Spencer', NULL, '2025-06-10 21:11:48', '2025-06-10 21:36:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('602107ff-7606-409a-abff-fd83e99aebd9', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 100.5, 'AUD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF630497', '2025-07-18 17:45:44', '2025-07-18 17:47:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e497002f-819f-4a9c-83b1-323de43d6a8b', '02630652-15bc-4df0-99b7-a41c93c79986', 968.91, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH189260', '2025-03-24 09:35:03', '2025-03-24 10:14:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fc502a10-663b-4f3e-b65c-0a93cf90ad2b', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 73.5, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Smith Inc', 'REF321594', '2025-07-26 19:09:45', '2025-07-26 19:39:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92a9180d-4cc2-49b2-a073-09c3f1feb6c1', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1186.59, 'CHF', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH468120', '2025-06-16 12:28:19', '2025-06-16 12:55:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4b146ea8-fe95-4765-9d68-0eb22816ad20', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 43.02, 'EUR', 'DEBIT',
        'COMPLETED', 'Grocery - Roberts and Sons Market', 'TXN187081', '2025-05-14 02:52:26', '2025-05-14 03:30:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3e430658-9b16-45fd-aa68-1b70bf98588b', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 63.33, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF838647', '2025-05-06 09:12:17', '2025-05-06 09:26:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('589d6969-cb3f-4410-a820-625c34aa6937', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 90.74, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-06-03 15:49:20', '2025-06-03 15:58:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2d30b9d9-97cc-4cd7-ba47-e0a2e03a152f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1016.1, 'GBP', 'CREDIT',
        'COMPLETED', 'Salary deposit - Morgan, Guzman and Richardson', 'ACH530010', '2025-06-04 14:15:14',
        '2025-06-04 14:22:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('38e36460-6331-4b5a-ba6f-eeb33858b6f6', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1045.52, 'DKK', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF367488', '2025-06-24 10:53:07', '2025-06-24 11:39:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bf166366-e385-40cd-9145-b9d4a5f8f264', '12e6cc99-7181-4fde-98dc-93ded6112abf', 590.8, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH406691', '2025-07-10 09:12:02', '2025-07-10 09:59:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f156d9cd-1f95-468e-903b-4c6ef79e3e9d', '17ad774a-8c59-447a-b309-a2953679e25a', 48.9, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Brooks-Williams', NULL, '2025-07-15 11:18:51', '2025-07-15 11:32:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('20d0dc43-1553-4479-9567-84817cc62cc8', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 13.68, 'EUR', 'REFUND',
        'FAILED', 'Cancelled order refund', 'REF474665', '2025-08-11 09:58:24', '2025-08-11 10:41:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0fa8dbbd-1959-4561-9add-cca4f6647120', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 143.97, 'EUR', 'REFUND',
        'PENDING', 'Service credit - Potter Group', 'REF322492', '2025-09-03 14:12:10', '2025-09-03 14:39:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('645a5221-7a41-4b07-bd7c-01c603e79583', 'd31cdd64-e270-4aa9-a77e-a89486214984', 697.5, 'GBP', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF508782', '2025-05-14 17:19:28', '2025-05-14 18:12:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('167845c6-1950-43ab-9975-8675a67f2db5', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 22.56, 'CHF', 'REFUND',
        'FAILED', 'Return processing - Jackson Group', 'REF968525', '2025-03-31 12:58:17', '2025-03-31 13:41:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('699cad3b-b359-4baf-b9ef-2151e85ae293', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1081.52, 'EUR', 'TRANSFER',
        'PENDING', 'Transfer to Mark Watson', 'REF175317', '2025-05-13 10:54:48', '2025-05-13 11:53:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f924c04a-f69e-47ab-b5c3-0f901071fa82', 'd31cdd64-e270-4aa9-a77e-a89486214984', 165.3, 'USD', 'CREDIT',
        'PENDING', 'Insurance claim settlement', 'ACH563568', '2025-03-25 05:24:36', '2025-03-25 06:08:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b47aacae-1e1f-4b84-ad40-8c47dfc3812d', 'f9cae736-64d5-4692-a257-d87446ffc401', 67.06, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF377236', '2025-08-10 17:32:25', '2025-08-10 17:40:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('94969f56-8c3c-4639-8fba-81fe8b1873ed', '02630652-15bc-4df0-99b7-a41c93c79986', 724.1, 'JPY', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-04-06 20:22:23', '2025-04-06 20:25:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('29356995-faa8-4440-a9ea-3f136bf84160', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1196.04, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Taylor-Moore', 'ACH964759', '2025-05-27 13:01:56', '2025-05-27 13:18:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0bf65b52-313c-4bc8-a1d0-1eae5c0b9012', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 47.26, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Allen, Glenn and James Services', 'TXN474934', '2025-07-18 16:23:49',
        '2025-07-18 16:37:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b83963e1-583d-4128-93e9-bc12b47078e9', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 81.43, 'USD', 'DEBIT',
        'PENDING', 'Grocery - Martin, Guerrero and Bean Market', 'TXN595436', '2025-04-30 11:40:00',
        '2025-04-30 12:02:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24130305-b360-4be2-ab7c-ba99092147c1', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 144.96, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-07-05 12:49:15', '2025-07-05 13:28:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('28cbf7f6-9455-4d89-a3c6-2f9928a97419', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 195.51, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Thomas-Rowe', NULL, '2025-07-31 23:23:04', '2025-07-31 23:41:53');

-- Batch 10: Transactions 901-1000
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('35e8d5f4-90c2-4ae5-bced-eb455f8dde48', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1088.55, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Coleman-Mccormick', 'ACH637689', '2025-08-06 10:16:21', '2025-08-06 11:00:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2a1c9b2c-8965-4a4f-9334-e174451ffb0d', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 76.83, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Underwood-Parker', 'REF203277', '2025-08-10 10:41:30', '2025-08-10 11:35:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('352845b0-5785-4d8b-8f2e-dd6acdc2dae1', 'd49ec560-02e4-4049-b181-837031133e95', 11.16, 'SEK', 'DEBIT',
        'COMPLETED', 'Payment to Baker Ltd', 'TXN644596', '2025-08-24 18:14:15', '2025-08-24 18:40:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e944b6ab-6794-42c0-b8bc-de41216f7dcd', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 36.34, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Hammond-Fleming', NULL, '2025-04-08 17:50:40', '2025-04-08 18:06:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f00db88e-9c7f-4a4b-a261-fb07af8d22e1', '20683a88-7f0e-471d-a3c5-bf175725052c', 45.18, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 32227 Douglas Rapids Apt. 481', 'TXN273111', '2025-03-24 10:32:25',
        '2025-03-24 11:03:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d96e3e9b-9ba6-4d88-a323-8fcfad02817a', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 20.45, 'EUR', 'DEBIT',
        'COMPLETED', 'Payment to Diaz-Wheeler', NULL, '2025-06-16 11:06:52', '2025-06-16 11:45:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('db9c1815-6c9d-4f13-8032-7c70c32e0af7', '12e6cc99-7181-4fde-98dc-93ded6112abf', 192.36, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Sullivan-Burke', 'ACH602566', '2025-03-24 15:57:25', '2025-03-24 16:46:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0e286265-2158-483b-914b-93ff68a37b5c', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 292.75, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Gary Thompson', 'ACH682021', '2025-09-05 11:35:11', '2025-09-05 12:21:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4c2b95e3-5efc-4db8-a3d5-8617760b2462', '50682165-f2c3-4049-909e-951838384433', 216.86, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF270875', '2025-05-18 09:03:36', '2025-05-18 09:11:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a471921-1aae-43d0-8fd7-00e32775dd1c', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1430.97, 'GBP', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF988988', '2025-08-27 10:34:09', '2025-08-27 10:59:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eb28b501-17e3-410f-ad4d-3454510d1748', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1406.52, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with Lori Aguilar', 'REF625430', '2025-03-30 04:00:30', '2025-03-30 04:04:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('38087090-f3f2-4834-b41d-515edf7e121f', 'd49ec560-02e4-4049-b181-837031133e95', 31.49, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Williams Inc', 'TXN314672', '2025-07-16 19:41:52', '2025-07-16 19:53:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e393c352-9df1-4942-ad69-edce1f996e77', '4692fe34-18fd-4140-9f08-06189f96fac3', 1505.2, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Mason Ltd', 'ACH571451', '2025-03-28 15:11:24', '2025-03-28 15:15:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f3820753-36ce-4f0b-9b06-e469848bbc59', '20683a88-7f0e-471d-a3c5-bf175725052c', 39.61, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF327157', '2025-09-05 12:26:01', '2025-09-05 12:49:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('49400a06-fe97-4c92-95f1-b94a3f9e8663', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1210.69, 'EUR', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF727185', '2025-09-01 09:44:04', '2025-09-01 09:47:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('695adb50-e24c-4191-838c-cb80a7315be8', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 77.99, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Wells LLC Services', 'TXN253980', '2025-06-19 10:41:03', '2025-06-19 11:37:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9dff3333-5664-43cd-af00-00c9f82a3795', '4692fe34-18fd-4140-9f08-06189f96fac3', 45.72, 'CHF', 'REFUND',
        'FAILED', 'Price adjustment - Parrish Group', 'REF634524', '2025-08-10 17:52:24', '2025-08-10 18:31:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8196114a-0f1a-4fec-a8c9-de6e8d878283', '2e3b6236-b73f-40b1-a88f-abafe787082b', 78.2, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF988536', '2025-07-26 15:10:15', '2025-07-26 16:06:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6c774075-d1bf-4d4f-98c6-876dbda51d3e', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 42.97, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-06-17 06:09:34', '2025-06-17 06:24:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('853268bd-16ab-4e1b-9670-b31bb266f946', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 921.61, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-08-17 14:49:48', '2025-08-17 15:41:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b7e7a185-92c2-47ee-b42b-727c1cfc1434', 'd49ec560-02e4-4049-b181-837031133e95', 171.31, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Ryan Sullivan', 'REF741296', '2025-03-20 09:39:44', '2025-03-20 10:39:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31ab06fb-c87d-448c-9aec-12f66c9f25d3', '4110303a-5cca-4c46-885d-c1e3bd335d96', 65.93, 'GBP', 'REFUND',
        'CANCELLED', 'Processing fee refund', NULL, '2025-04-11 12:07:32', '2025-04-11 12:43:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42a80db6-13d7-4331-a64a-3ff6ec143573', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1985.57, 'CAD', 'CREDIT',
        'FAILED', 'Dividend payment - Mcintosh, Smith and Wilson', NULL, '2025-08-28 17:31:08', '2025-08-28 17:56:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('11d6d88e-6d5a-406f-8b08-913ce56e96e7', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 24.3, 'DKK', 'DEBIT', 'PENDING',
        'Payment to Lee-Ingram', 'TXN476119', '2025-06-14 14:54:57', '2025-06-14 15:35:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71e0293f-3547-45f0-b5e1-abdb73b74c16', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1025.62, 'EUR', 'CREDIT',
        'COMPLETED', 'Freelance payment - Molina-Bradley', NULL, '2025-07-23 09:48:09', '2025-07-23 10:19:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4322452-280b-4f11-84d7-d45e9434b74c', '30f7fce8-3a42-4900-8129-5549a3175459', 20.69, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Hooper, Johnson and Walsh', 'REF608191', '2025-08-09 10:35:37',
        '2025-08-09 11:20:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d1dbaa27-c694-4bd5-b6c3-0e97bbc38ac4', '12e6cc99-7181-4fde-98dc-93ded6112abf', 17.68, 'NOK', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF997165', '2025-08-13 09:17:43', '2025-08-13 10:06:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d504b4e1-d1b8-4255-8dd9-f0ceef1221b5', '20683a88-7f0e-471d-a3c5-bf175725052c', 75.08, 'GBP', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH149417', '2025-08-12 12:29:28', '2025-08-12 13:15:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b8fb026-66a6-4d55-81d4-038ea1512fdc', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 268.16, 'CAD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-09-01 14:53:53', '2025-09-01 15:14:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c899ddb-8478-4f74-96cf-51b6ed2b2d7e', '30f7fce8-3a42-4900-8129-5549a3175459', 352.22, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Melton and Sons Market', 'TXN859894', '2025-05-27 14:12:14', '2025-05-27 14:20:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c983f1b8-e6bc-4134-bcb8-1bbd033f0cb5', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 229.47, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF280574', '2025-03-27 10:30:38', '2025-03-27 11:09:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1da1071b-c0b0-49a9-a63d-d3e4a930aa17', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 83.91, 'USD', 'REFUND',
        'PENDING', 'Return processing - Jimenez, Bean and Reed', NULL, '2025-04-14 00:47:33', '2025-04-14 00:48:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('19a971a3-515c-4464-9cd2-96544bfe63bf', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 480.38, 'AUD', 'DEBIT',
        'COMPLETED', 'Payment to Nguyen and Sons', 'TXN482830', '2025-06-26 14:03:32', '2025-06-26 14:21:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b1144d3c-ba90-496c-9962-e1a78cf72f98', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 28.86, 'SEK', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 17909 Donna Port', 'TXN257329', '2025-07-10 00:45:16', '2025-07-10 00:58:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f2a09ddf-2fc8-40dc-9a41-655df937c292', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 785.92, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH727147', '2025-08-14 12:39:39', '2025-08-14 12:56:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('495459e3-096e-47ad-bfba-5afbd75cddbc', '2e3b6236-b73f-40b1-a88f-abafe787082b', 61.02, 'EUR', 'DEBIT',
        'PENDING', 'Card payment - Newton, Williams and Wilkins Store', 'TXN391851', '2025-07-29 13:14:53',
        '2025-07-29 14:06:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('839ee249-a559-453b-a2a4-64b9750f602c', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1032.5, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Clayton PLC', 'ACH158411', '2025-08-17 16:14:32', '2025-08-17 16:24:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fde1c118-9ba7-437a-9896-c630b1773d05', '30f7fce8-3a42-4900-8129-5549a3175459', 17.06, 'GBP', 'REFUND',
        'COMPLETED', 'Price adjustment - Perez, Warren and Ford', 'REF416605', '2025-07-18 13:45:48',
        '2025-07-18 13:52:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('036455be-2139-4dae-9482-dba96d1934cc', '4692fe34-18fd-4140-9f08-06189f96fac3', 1249.2, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Mr. Dalton Olson', 'REF395556', '2025-06-14 12:21:14', '2025-06-14 13:05:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3457ca58-9fc1-4ebd-9e6a-34c8a02b1bfe', '2e3b6236-b73f-40b1-a88f-abafe787082b', 47.26, 'EUR', 'DEBIT',
        'COMPLETED', 'Grocery - Burns, Cox and Jones Market', 'TXN125863', '2025-04-19 03:34:22',
        '2025-04-19 03:41:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('876fbb88-63de-44ad-993b-83408d4f2844', 'd49ec560-02e4-4049-b181-837031133e95', 445.41, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Boyd-Jensen Store', 'TXN268326', '2025-06-29 09:58:20', '2025-06-29 10:41:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4b71202-0f1a-4b7c-8730-704db3c4f922', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 42.38, 'USD', 'DEBIT',
        'CANCELLED', 'Online transfer to Stacey Poole', NULL, '2025-06-10 14:27:28', '2025-06-10 15:25:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('77587467-6c17-4995-a77f-422a794ce750', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 25.37, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Park, Hill and Gates Market', 'TXN933867', '2025-07-27 15:34:45',
        '2025-07-27 16:02:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('266bc92a-855b-4ca1-bfab-3d085c6a22a4', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 126.84, 'USD', 'REFUND',
        'CANCELLED', 'Refund - Carlson-Long', 'REF659665', '2025-04-05 12:53:57', '2025-04-05 13:05:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0c99cc92-3b9d-4147-889b-2c75eeee112e', '20683a88-7f0e-471d-a3c5-bf175725052c', 211.81, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Moore, Harris and Barrett', NULL, '2025-05-08 09:16:07', '2025-05-08 10:05:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5dcfde4-e2e1-425a-8555-095b33d6c5df', 'f9cae736-64d5-4692-a257-d87446ffc401', 6968.91, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH968171', '2025-03-31 10:01:21', '2025-03-31 10:57:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a8e2de7a-4cf0-406d-9612-f53b1b0b327e', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 607.09, 'EUR', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Desiree Brown', 'REF163540', '2025-07-23 08:29:37', '2025-07-23 09:12:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('09a72119-d0fd-4b9f-acca-e18c7b7e3839', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1544.68, 'DKK', 'CREDIT',
        'COMPLETED', 'Freelance payment - Johnson-Johnson', NULL, '2025-05-19 09:34:29', '2025-05-19 10:23:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6d77456c-4df0-4373-a32d-c90868907f9d', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 418.96, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Alexis Santiago', NULL, '2025-07-22 18:11:20', '2025-07-22 18:18:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a52fc23-e4ef-4221-9ba7-a82116f6a0e1', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1027.85, 'AUD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-05-21 13:31:00', '2025-05-21 13:43:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e43ba9e9-3d33-4169-ac66-6e6622df45cc', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 141.06, 'DKK', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF449351', '2025-06-20 14:33:02', '2025-06-20 15:19:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2ad4e3a7-9727-48af-88e6-8c290786fb33', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 58.95, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Julia Harris', 'ACH891705', '2025-06-17 17:10:46', '2025-06-17 17:25:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e132bf16-a437-41af-a789-035768392735', '50682165-f2c3-4049-909e-951838384433', 17.5, 'GBP', 'DEBIT',
        'COMPLETED', 'Bill payment - Vasquez-Martinez Services', 'TXN241110', '2025-05-31 14:31:20',
        '2025-05-31 15:11:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('806348b1-7a48-48cc-858f-0b5785ef51ab', '02630652-15bc-4df0-99b7-a41c93c79986', 586.32, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Emily Johnson', NULL, '2025-04-18 14:14:24', '2025-04-18 15:08:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9b1363f9-7761-4d5c-aef6-86f222e341e1', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 186.38, 'GBP', 'REFUND',
        'COMPLETED', 'Service credit - Kent-Thompson', 'REF122060', '2025-08-11 17:32:01', '2025-08-11 18:30:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f40c4ef8-a41a-4d2b-b434-d56876145c02', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 261.91, 'USD', 'TRANSFER',
        'CANCELLED', 'Savings account transfer', 'REF389025', '2025-05-28 13:05:27', '2025-05-28 13:21:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('48f7625e-5fe5-408f-b03f-aab6f4a5632b', '02630652-15bc-4df0-99b7-a41c93c79986', 180.67, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 7324 Day Lodge', 'TXN452319', '2025-04-08 13:14:34', '2025-04-08 13:55:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('468e7ac5-cb15-4021-8d68-53fb5faed6be', '523c0c30-1242-44a7-a025-f015ef7d4127', 1035.91, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Lisa Adams', NULL, '2025-05-20 12:45:46', '2025-05-20 13:38:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64a07be6-1bb8-49a8-8519-11d7c693f9e1', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 886.23, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Ashley Dunn', NULL, '2025-05-22 18:19:54', '2025-05-22 18:54:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e057d0c1-0613-4aa5-be2d-66c9aad02cd5', '30f7fce8-3a42-4900-8129-5549a3175459', 717.54, 'EUR', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF912297', '2025-05-18 15:50:33', '2025-05-18 16:14:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe15bcef-b71e-4c11-a968-348f04f3c336', '17ad774a-8c59-447a-b309-a2953679e25a', 205.2, 'GBP', 'DEBIT',
        'COMPLETED', 'Payment to Matthews Ltd', 'TXN865174', '2025-04-29 22:22:52', '2025-04-29 22:34:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('783efe8e-312b-4416-823e-a3e4f4ce9d38', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 478.18, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF611647', '2025-03-18 14:56:31', '2025-03-18 15:14:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d18cb7d5-0cf4-45c4-ac51-f12ec6b2e2f4', '30f7fce8-3a42-4900-8129-5549a3175459', 25.72, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Petty, Garza and Santana', NULL, '2025-05-17 07:24:11',
        '2025-05-17 07:33:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93387453-dbd8-4ed5-bf4e-6ef55f00c643', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 88.05, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF508122', '2025-04-10 08:15:26', '2025-04-10 08:38:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dd8b9e0a-9f6e-4ce0-bddf-055761296d5e', '20683a88-7f0e-471d-a3c5-bf175725052c', 73.98, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Hammond, Jordan and Holder Premium', NULL, '2025-05-15 18:10:54',
        '2025-05-15 18:49:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c93a44f3-cd0c-4824-95e4-012ee5bd48f3', '17ad774a-8c59-447a-b309-a2953679e25a', 442.81, 'CHF', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF764097', '2025-06-16 18:05:11', '2025-06-16 18:28:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('53e82bd4-8b5d-419a-91f2-9e247b79e450', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1101.36, 'CHF', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF893475', '2025-05-09 13:46:47', '2025-05-09 14:29:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7f7d71b1-9374-488a-b354-900ce29141d6', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 139.54, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Orozco and Sons', NULL, '2025-06-26 16:12:36', '2025-06-26 16:43:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c7fa071e-e8a9-4ca5-8eee-814db11d6512', '02630652-15bc-4df0-99b7-a41c93c79986', 62.28, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Freeman, Whitney and Higgins', 'TXN967479', '2025-03-25 02:53:07',
        '2025-03-25 03:35:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0c23e9c-e7f6-46d1-80c7-31a5dd92d090', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 924.55, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-05-27 14:17:43', '2025-05-27 14:39:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('caf2d65c-0a96-4b9e-85f3-680b39a713df', 'f9cae736-64d5-4692-a257-d87446ffc401', 41.75, 'EUR', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 422 Bell Hollow Apt. 057', NULL, '2025-05-31 10:17:50', '2025-05-31 11:03:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('088cb31f-d30f-4f05-8984-880dd7922a14', '50682165-f2c3-4049-909e-951838384433', 131.84, 'CAD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Douglas Stevens', NULL, '2025-04-21 12:53:42', '2025-04-21 13:40:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7aa0aace-f5ac-4ed8-96e5-def53ef386ff', 'f9cae736-64d5-4692-a257-d87446ffc401', 141.26, 'USD', 'REFUND',
        'FAILED', 'Dispute resolution - Walker, Berg and Johnson', NULL, '2025-06-20 13:54:02', '2025-06-20 14:27:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('13f19830-0c92-47b7-ba2a-2a134f608a6c', 'd49ec560-02e4-4049-b181-837031133e95', 1989.28, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Lambert LLC', NULL, '2025-06-23 18:21:39', '2025-06-23 18:51:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dbf3d614-8569-4607-b371-84b4b2ebaf99', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1394.3, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH299002', '2025-07-08 13:55:54', '2025-07-08 14:18:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64a4734c-4e93-49dc-a491-caa984847e5c', '12e6cc99-7181-4fde-98dc-93ded6112abf', 941.52, 'USD', 'TRANSFER',
        'PENDING', 'International transfer', 'REF315226', '2025-07-19 17:40:07', '2025-07-19 18:40:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d101c62e-6587-49de-8592-9cd29a56fba4', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 250.57, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Gilmore Group', 'ACH261766', '2025-05-25 21:05:41', '2025-05-25 22:00:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a54c809-8ba7-4ed4-a169-1aa8ab78cabc', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 5756.26, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH909486', '2025-07-19 22:24:25', '2025-07-19 23:22:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('91a3b24d-ece3-4661-a5ba-18aa1ab4a2b2', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 11.36, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF501754', '2025-04-29 13:12:42', '2025-04-29 13:21:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('35b51112-fa81-47b7-90dc-5ccad4890d27', '4692fe34-18fd-4140-9f08-06189f96fac3', 1144.97, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Christopher Fleming', NULL, '2025-05-02 10:37:58', '2025-05-02 11:05:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3bea9ff-9d15-4864-945f-74b053a11412', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 168.13, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Barker, Ross and Banks', 'REF150901', '2025-07-30 09:52:42', '2025-07-30 10:40:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2dc2a7a2-ae92-4635-a208-75f7e4059d21', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 974.02, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF536270', '2025-04-25 10:18:59', '2025-04-25 11:08:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('810aafc4-bc79-47fb-8961-b770da3af4c2', '1817a074-62f9-463a-8dd7-c44151e47f96', 1802.11, 'EUR', 'CREDIT',
        'COMPLETED', 'Transfer from Amy Perry', 'ACH153265', '2025-04-03 20:01:13', '2025-04-03 20:40:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ae029d6c-874e-439e-a739-51fa222f5f99', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 62.7, 'USD', 'DEBIT', 'FAILED',
        'Card payment - Jackson LLC Store', 'TXN220654', '2025-05-01 23:18:32', '2025-05-02 00:02:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cdf045e8-b16a-4b20-8c66-615e3544927d', '50682165-f2c3-4049-909e-951838384433', 35.24, 'USD', 'REFUND',
        'PENDING', 'Warranty claim refund', 'REF949616', '2025-06-13 11:16:31', '2025-06-13 11:44:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('83936d5d-2790-4d57-ac38-58fbd9b96c94', 'd49ec560-02e4-4049-b181-837031133e95', 1090.77, 'USD', 'TRANSFER',
        'PENDING', 'Investment account funding', NULL, '2025-09-03 12:02:19', '2025-09-03 12:06:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d214d988-445b-4faf-a32f-6ce274c73dad', '4692fe34-18fd-4140-9f08-06189f96fac3', 1038.69, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF398445', '2025-04-10 20:52:08', '2025-04-10 21:40:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b9c7a7dd-d2ba-4744-8aec-617b96570bab', '1817a074-62f9-463a-8dd7-c44151e47f96', 163.24, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Matthew Larson', NULL, '2025-09-03 13:20:48', '2025-09-03 14:14:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ac4299a1-3b97-4a13-b664-f698ac1f00a0', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 210.63, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH641635', '2025-04-15 12:46:57', '2025-04-15 12:51:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4e24e645-8036-4e11-83d1-a8df0b6cc0ac', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1457.69, 'GBP', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Richard Knox', 'REF772552', '2025-05-02 09:03:39', '2025-05-02 09:06:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2db379a6-114b-449e-9095-e8a12b7b4b92', 'd31cdd64-e270-4aa9-a77e-a89486214984', 3759.88, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Lin Group', 'ACH698617', '2025-07-14 13:49:41', '2025-07-14 14:00:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7ccb0e56-8c1f-4468-a0eb-bfeb809e70bf', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 86.62, 'EUR', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 277 Virginia Underpass Suite 047', 'TXN971001', '2025-04-28 07:04:14',
        '2025-04-28 07:40:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('de63afe6-489c-4a9b-914b-edfeb396fdb5', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 13.46, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF629978', '2025-08-12 12:55:06', '2025-08-12 13:30:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c79f3f28-4741-4229-a490-b1941ff13848', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1182.53, 'USD', 'CREDIT',
        'CANCELLED', 'Government benefit payment', NULL, '2025-03-19 11:33:53', '2025-03-19 12:31:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('244caebc-6588-4c55-b349-424c74382ae2', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 907.13, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-09-06 03:44:18', '2025-09-06 03:58:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b2e7b729-c374-4d34-88ee-c3828e9f9e36', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 868.9, 'USD', 'TRANSFER',
        'CANCELLED', 'Internal account transfer', 'REF242510', '2025-04-16 09:36:11', '2025-04-16 10:18:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0f104154-db3f-468a-bf58-a052bd800fa8', '2e3b6236-b73f-40b1-a88f-abafe787082b', 60.06, 'EUR', 'DEBIT',
        'CANCELLED', 'Gas station - Parsons-Miller', 'TXN796149', '2025-07-12 16:23:43', '2025-07-12 17:07:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d63adbd6-5042-4ff7-b88d-7910916ab2bb', '50682165-f2c3-4049-909e-951838384433', 95.49, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Michael, Townsend and Brooks Market', 'TXN111759', '2025-09-11 16:09:58',
        '2025-09-11 16:58:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('386e6acb-fdf2-49db-be26-53d01c256060', 'a6f93311-3bce-4db4-8395-25cde9688e47', 215.86, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Jonathan Rodriguez', 'REF390346', '2025-07-10 20:11:14', '2025-07-10 21:08:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('312885dc-5f79-4e59-a4ce-ff9363309dc6', 'a6f93311-3bce-4db4-8395-25cde9688e47', 225.55, 'USD', 'TRANSFER',
        'PENDING', 'Rent payment to Tiffany Schwartz', 'REF507569', '2025-07-07 15:58:12', '2025-07-07 16:49:16');

-- Batch 11: Transactions 1001-1100
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0797a6ea-0683-488c-9fc6-9ecdd0a1f3d0', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 73.53, 'USD', 'TRANSFER',
        'PENDING', 'Savings account transfer', 'REF300226', '2025-05-26 14:56:47', '2025-05-26 15:27:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('53a5bc58-bbcd-4f35-85a0-44b76201da06', '4110303a-5cca-4c46-885d-c1e3bd335d96', 59.65, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Juarez, Frazier and Phelps Premium', 'TXN625765', '2025-07-17 17:50:47',
        '2025-07-17 18:08:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('da16da08-e5b0-4d3b-97f0-672ee6416d3c', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 18.71, 'USD', 'DEBIT', 'FAILED',
        'Online purchase - Shepherd-Perkins', 'TXN947264', '2025-07-17 14:39:47', '2025-07-17 15:20:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2bb5d7a8-a73d-4b42-bec1-5e8b055eafac', '17ad774a-8c59-447a-b309-a2953679e25a', 760.52, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH323754', '2025-04-30 07:37:27', '2025-04-30 08:10:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b56c9ff0-9208-4ec3-9890-b7f4bf1df6e4', 'f9cae736-64d5-4692-a257-d87446ffc401', 727.65, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Bryan Garrison', NULL, '2025-06-08 10:58:38', '2025-06-08 11:26:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e91efb18-51eb-4a5b-a2ae-8ab7c47cd599', 'a6f93311-3bce-4db4-8395-25cde9688e47', 915.62, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Brett Hernandez', 'REF458995', '2025-06-07 18:35:48', '2025-06-07 19:10:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('09885353-899d-4c32-94b1-bd8e086f6584', 'd49ec560-02e4-4049-b181-837031133e95', 747.61, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-06-06 10:52:39', '2025-06-06 11:29:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5e459b98-8dc6-473d-9324-8b5e3052d8ad', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 76.97, 'EUR', 'DEBIT',
        'COMPLETED', 'Payment to Calhoun, Garcia and Taylor', 'TXN649117', '2025-08-10 19:46:49',
        '2025-08-10 20:09:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('003e77a1-6014-4438-a199-fbfbece7a5ce', 'f9cae736-64d5-4692-a257-d87446ffc401', 90.12, 'USD', 'DEBIT',
        'PENDING', 'Subscription - Jacobs Group Premium', 'TXN389710', '2025-08-18 10:09:46', '2025-08-18 10:46:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('78b400a2-216d-4cef-a1a3-dc2411dfdfa9', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 858.03, 'USD', 'CREDIT',
        'FAILED', 'Interest payment', 'ACH500802', '2025-05-04 17:51:02', '2025-05-04 17:53:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7b57a77d-481d-4a6d-94dc-879d9a42e528', '17ad774a-8c59-447a-b309-a2953679e25a', 53.33, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-08-25 08:51:53', '2025-08-25 09:21:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('28f4edd0-4656-458d-a290-6379922edc6c', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 47.45, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF499659', '2025-03-28 15:02:49', '2025-03-28 15:32:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('215d5289-25c3-41ac-80e4-43c9b4d01210', '2e3b6236-b73f-40b1-a88f-abafe787082b', 349.85, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Johnson-Whitaker', 'TXN955952', '2025-08-21 18:57:45', '2025-08-21 19:33:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('466c6a13-3acf-4f6f-8a74-a7119c282b92', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 344.74, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Hill, Thomas and Thompson Services', 'TXN478517', '2025-05-12 03:56:51',
        '2025-05-12 04:19:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1012c874-18b3-410d-bdba-38913d374038', 'd31cdd64-e270-4aa9-a77e-a89486214984', 357.15, 'SEK', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 6707 Sheila Shoal', 'TXN461643', '2025-07-18 10:30:02', '2025-07-18 11:07:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4cd7e348-f163-4d3c-8ed1-2d496fb29dea', '523c0c30-1242-44a7-a025-f015ef7d4127', 2086.65, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Jenkins, Murphy and Glover', NULL, '2025-05-10 13:01:32', '2025-05-10 13:07:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ecaf6e6e-b665-49de-bd69-3ff29f79af1d', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1028.98, 'EUR', 'CREDIT',
        'PENDING', 'Government benefit payment', 'ACH201014', '2025-07-25 14:34:23', '2025-07-25 14:46:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aa867855-25ae-49aa-afc8-df4e0547e540', '02630652-15bc-4df0-99b7-a41c93c79986', 7.89, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to April Brown', 'TXN919441', '2025-06-14 11:47:23', '2025-06-14 12:19:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e8bdbc90-1c78-4fe5-b7b6-dac00584a1e6', 'd49ec560-02e4-4049-b181-837031133e95', 116.63, 'GBP', 'TRANSFER',
        'PENDING', 'Family transfer', NULL, '2025-07-07 11:08:15', '2025-07-07 11:24:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4c933900-f083-42ba-8035-12654b23daa8', '20683a88-7f0e-471d-a3c5-bf175725052c', 11.14, 'CHF', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-08-04 08:10:07', '2025-08-04 08:41:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f16edf0c-9325-4dd5-8ec2-51aabb1b0a9a', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1359.44, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Morales Group', NULL, '2025-05-05 11:17:03', '2025-05-05 11:41:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3abc6e9d-45be-4300-ab51-b9bdebd7404f', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 157.98, 'JPY', 'REFUND',
        'COMPLETED', 'Service credit - Jennings-Anderson', NULL, '2025-07-30 14:45:01', '2025-07-30 15:16:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('32f9e941-5376-4e5d-b465-a561ee7aa4f9', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 4425.64, 'GBP', 'CREDIT',
        'COMPLETED', 'Transfer from Diana Smith', NULL, '2025-06-03 17:24:16', '2025-06-03 18:21:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cd07530b-8a06-4d42-9592-39fff03edd60', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 19.72, 'AUD', 'REFUND',
        'COMPLETED', 'Return processing - Moss PLC', 'REF158102', '2025-09-01 12:53:10', '2025-09-01 13:15:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('652f911f-59f0-4d0a-887b-5b210f2582fe', '50682165-f2c3-4049-909e-951838384433', 88.7, 'NOK', 'REFUND',
        'CANCELLED', 'Service credit - Bailey, Hill and Hernandez', 'REF910258', '2025-09-09 07:21:22',
        '2025-09-09 07:48:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fd5d0901-784f-4c38-8c74-70b27c494734', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 419.66, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF119961', '2025-04-08 17:03:23', '2025-04-08 17:47:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4385a4d6-27e0-4eab-8f92-d0d12b353519', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 125.2, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Juarez, Villegas and Sheppard', 'REF397874', '2025-09-07 17:35:12',
        '2025-09-07 18:29:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c9b7ee9-bedf-488f-83a2-5baa958f9a55', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1139.78, 'EUR', 'CREDIT',
        'FAILED', 'Insurance claim settlement', NULL, '2025-05-28 22:14:26', '2025-05-28 22:56:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4b4118b1-cf8c-4e4e-8f60-4e0adab8d0e2', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 85.84, 'AUD', 'DEBIT',
        'PENDING', 'Payment to Peterson and Sons', 'TXN175654', '2025-06-25 12:08:29', '2025-06-25 12:11:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fedbf919-b3d5-47d7-aeb6-03ed787a535e', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 55.24, 'AUD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF165653', '2025-05-17 16:48:16', '2025-05-17 17:12:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f731d85-7158-4e06-aaa2-fc1296cac356', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1349.7, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH570196', '2025-08-18 16:05:08', '2025-08-18 16:23:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('49d4986a-cf35-42e0-87cf-3615a5dc7309', 'a6f93311-3bce-4db4-8395-25cde9688e47', 85.28, 'JPY', 'DEBIT',
        'COMPLETED', 'Payment to Sanders-Love', NULL, '2025-06-02 10:40:45', '2025-06-02 10:43:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2c9edfe6-f341-42ce-9447-2ebf28ec7fb8', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 234.31, 'GBP', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 0407 James Spur Suite 374', 'TXN300636', '2025-07-19 16:13:39',
        '2025-07-19 17:02:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('04195e9d-f7d4-47db-b5af-74777057ac68', '30f7fce8-3a42-4900-8129-5549a3175459', 978.16, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-09-05 17:25:36', '2025-09-05 17:27:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e07534ed-2d1c-48ad-8ef9-754438689ff3', '50682165-f2c3-4049-909e-951838384433', 142.44, 'CAD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH828028', '2025-06-26 16:09:17', '2025-06-26 16:20:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a9602cf3-3304-46cc-b43c-9f3e39a649bd', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 641.97, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF856851', '2025-07-05 15:45:55', '2025-07-05 16:37:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('32ac1dc8-6918-45cf-ab3f-9ad905b3fc22', '30f7fce8-3a42-4900-8129-5549a3175459', 1735.44, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH942665', '2025-05-04 14:25:38', '2025-05-04 15:01:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('882ef957-9533-4bc2-accd-51a3e90d328b', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 178.41, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Anderson-Graham Market', 'TXN876271', '2025-05-14 10:42:42', '2025-05-14 11:32:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('50f18258-aadd-4b45-8312-ec07e6d287de', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1898.54, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Patterson and Sons', 'ACH177991', '2025-04-08 13:51:02',
        '2025-04-08 14:09:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21a2e8a9-2022-46ad-bbf2-8df69ca9b193', 'f9cae736-64d5-4692-a257-d87446ffc401', 68.2, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Cooper and Sons', 'TXN638894', '2025-04-27 18:12:16', '2025-04-27 18:57:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('91880c7e-f498-41f1-b4d9-d5297bd15110', 'f9cae736-64d5-4692-a257-d87446ffc401', 198.61, 'JPY', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Wesley Cox', 'REF922469', '2025-07-08 16:00:33', '2025-07-08 16:14:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('710389ca-92bd-489e-9817-b0ab83aad597', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1134.7, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Carrie Morse', 'REF342823', '2025-03-30 18:28:18', '2025-03-30 19:09:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('41a34b84-c750-477f-a232-1eadf41c3b2e', 'a6f93311-3bce-4db4-8395-25cde9688e47', 19.41, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF154512', '2025-05-15 14:31:13', '2025-05-15 15:28:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2bee06a6-8364-40e0-ae5a-5504017dc2e5', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 712.58, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF420769', '2025-05-27 13:58:05', '2025-05-27 14:41:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2b9aa80a-7ac7-4427-9feb-b6bb02d1e313', '523c0c30-1242-44a7-a025-f015ef7d4127', 24.14, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Maxwell, Hernandez and Moore', 'TXN754447', '2025-05-24 18:00:44',
        '2025-05-24 18:18:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42ece807-db5e-4f70-9392-474c0d81e73b', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 24.46, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Hernandez, Joseph and Williams', 'REF843847', '2025-04-19 16:59:22',
        '2025-04-19 17:41:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('464a3b9c-aa52-466f-9431-91e103ce2b5a', '4110303a-5cca-4c46-885d-c1e3bd335d96', 182.35, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Tonya Roberts', 'ACH895759', '2025-08-06 10:12:54', '2025-08-06 10:41:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('77bd08be-d2a3-4de9-9b21-be0f5e70e8ec', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 32.37, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Castillo, Martin and Marsh Services', 'TXN179993', '2025-07-09 11:54:02',
        '2025-07-09 12:30:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f2a0fe98-3470-445a-8771-4e9e601c31a5', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1271.43, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Hernandez, Dominguez and Carlson Market', NULL, '2025-07-20 16:00:28',
        '2025-07-20 16:05:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce82c03b-3cdc-43b1-a96e-ad2ad8ccd5be', 'd31cdd64-e270-4aa9-a77e-a89486214984', 68.39, 'AUD', 'REFUND',
        'COMPLETED', 'Price adjustment - Black-Cannon', 'REF524311', '2025-08-11 12:08:05', '2025-08-11 12:27:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3c173d9-8169-4bdd-8400-ba270af54d32', 'f9cae736-64d5-4692-a257-d87446ffc401', 1723.39, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Peterson, Burton and Daniel', 'ACH389764', '2025-06-16 06:10:21',
        '2025-06-16 06:41:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8dc7743-9d68-49a7-8e61-b6b5b2ae126a', '4692fe34-18fd-4140-9f08-06189f96fac3', 61.54, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Dr. Maria Oconnor', NULL, '2025-08-28 09:06:01', '2025-08-28 09:08:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16d1fe9e-21c7-442c-bd70-f46a24e6128a', 'd31cdd64-e270-4aa9-a77e-a89486214984', 109.83, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Jeremy Mcknight', NULL, '2025-06-14 04:46:31', '2025-06-14 05:18:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('908ba355-f771-4d5b-9199-ad34f0d8c43f', '12e6cc99-7181-4fde-98dc-93ded6112abf', 121.99, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Hunter Lang', 'ACH497292', '2025-05-02 19:42:29', '2025-05-02 20:18:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('97de6d1a-201a-48e7-b50f-0097fd087418', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1450.22, 'DKK', 'TRANSFER',
        'COMPLETED', 'Bill split with Sarah Harris', 'REF560385', '2025-07-14 15:15:08', '2025-07-14 15:43:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92f791b2-447e-4eaf-a19e-c2fbae480cdc', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 207.74, 'JPY', 'CREDIT',
        'CANCELLED', 'Refund from Phillips-Gonzalez', NULL, '2025-08-10 16:10:42', '2025-08-10 17:06:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('69ec45c4-8808-4d09-87af-752a10082bf8', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 183.24, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Michael Chandler', 'REF750809', '2025-05-23 00:29:51', '2025-05-23 00:49:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f1b4461-dfea-46d4-bcc4-004de7d35bb6', 'a6f93311-3bce-4db4-8395-25cde9688e47', 17.51, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Darryl Howard', 'TXN319906', '2025-05-01 22:59:32', '2025-05-01 23:34:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb7c71b5-9815-4e07-a483-25a7ef9f8257', '523c0c30-1242-44a7-a025-f015ef7d4127', 166.92, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Taylor PLC', NULL, '2025-04-28 20:26:39', '2025-04-28 21:09:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d24b629a-9880-4a93-a046-149b74b644af', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1278.49, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH666891', '2025-09-01 12:40:38', '2025-09-01 13:26:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6cec160c-d47a-42c4-9355-6512f2fe70bf', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 117.69, 'USD', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF602609', '2025-04-12 22:48:31', '2025-04-12 23:29:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a17bd2f-7387-4752-b0ae-99958461e483', 'f9cae736-64d5-4692-a257-d87446ffc401', 458.63, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Benson Ltd Market', 'TXN523786', '2025-07-09 17:00:39', '2025-07-09 17:02:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f033d36a-cab6-45db-acb5-3a87006b2d61', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1163.27, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF214608', '2025-03-31 13:54:27', '2025-03-31 14:41:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b14b0b17-84d3-4a76-9f74-b3655d7efb0a', '02630652-15bc-4df0-99b7-a41c93c79986', 275.85, 'CAD', 'TRANSFER',
        'COMPLETED', 'Bill split with Rodney Hernandez', 'REF262663', '2025-03-28 14:30:36', '2025-03-28 15:09:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('47839174-318d-4237-bea9-a1cb16f9acec', '12e6cc99-7181-4fde-98dc-93ded6112abf', 102.52, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF120301', '2025-08-16 16:46:15', '2025-08-16 16:56:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8ee12e6-6dc4-4cc2-b7ee-df5c671df4ae', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1470.56, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Brian Johnston', 'REF905242', '2025-06-30 18:44:00', '2025-06-30 18:59:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e7741674-694d-4955-af72-08f28976fc4f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 343.39, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF233510', '2025-08-10 11:55:03', '2025-08-10 12:18:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b2a4cc49-42b6-4c74-bfe4-1bc2e1869ee2', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1367.69, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with Dawn Walker', NULL, '2025-04-12 05:55:23', '2025-04-12 06:43:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('54903c50-741d-4527-85ca-f3bd686f9efe', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 151.7, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Larson-Gordon', 'REF345661', '2025-05-06 10:26:18', '2025-05-06 11:06:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('75c92085-8361-45af-9b1c-c930c46750f5', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1408.68, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Melissa Walters', 'REF602880', '2025-07-29 19:58:16', '2025-07-29 20:03:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('720cf593-111f-4cbc-bdaa-e1dc08677ed9', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 68.55, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF477628', '2025-07-21 15:35:14', '2025-07-21 16:11:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2e983b71-4c4d-4e6c-8564-6368f8a277c2', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 208.71, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Adams, Norris and Becker', NULL, '2025-07-16 18:30:50', '2025-07-16 18:41:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('380c127d-8a04-44e9-9957-09e5ddccbf87', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1297.11, 'USD', 'TRANSFER',
        'FAILED', 'Bill split with Laura Gates', NULL, '2025-06-17 14:34:20', '2025-06-17 15:01:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2955063b-a119-4d64-ab65-c63e50eaf929', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1180.52, 'EUR', 'TRANSFER',
        'CANCELLED', 'Rent payment to Michele Ward', 'REF309476', '2025-06-02 13:06:36', '2025-06-02 14:01:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9036bbf6-0260-416f-831b-e703eb0bb447', '523c0c30-1242-44a7-a025-f015ef7d4127', 77.27, 'CAD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF134867', '2025-07-26 11:37:39', '2025-07-26 12:23:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a79a2ce4-f2ea-4456-be3b-eed5deaf3ce0', '523c0c30-1242-44a7-a025-f015ef7d4127', 87.89, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Adkins Inc Services', 'TXN995081', '2025-05-19 19:00:36', '2025-05-19 19:29:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d3ae9c50-394e-4a4b-a6f4-e061f8a7f94f', '523c0c30-1242-44a7-a025-f015ef7d4127', 763.26, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH915866', '2025-08-16 18:04:10', '2025-08-16 18:31:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c5659899-f4c6-44ef-83f3-0e603f6602dd', '02630652-15bc-4df0-99b7-a41c93c79986', 91.56, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-03-23 19:40:17', '2025-03-23 19:53:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f6aec0d4-80ef-457a-984a-e747e9aeda36', '523c0c30-1242-44a7-a025-f015ef7d4127', 1692.94, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Hughes-Hill', NULL, '2025-04-23 16:58:40', '2025-04-23 17:39:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cd71e696-ed56-4592-a4ba-73fdecc3c6dc', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1870.1, 'EUR', 'CREDIT',
        'COMPLETED', 'Freelance payment - Bradley, Kirby and Knight', NULL, '2025-08-01 09:53:40',
        '2025-08-01 10:09:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bf5706eb-1fa4-4b75-a614-b01183eae967', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1352.71, 'USD', 'TRANSFER',
        'PENDING', 'Internal account transfer', 'REF884033', '2025-03-31 13:24:38', '2025-03-31 14:06:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('82ff5bca-bba6-4f94-89a9-6b37e4816b68', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1899.92, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Vasquez, Griffith and Pierce', NULL, '2025-06-15 17:32:47', '2025-06-15 18:19:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('943d7a65-4a61-4719-9b26-e751bcabc7fd', '17ad774a-8c59-447a-b309-a2953679e25a', 16.9, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Adams PLC Market', NULL, '2025-06-22 10:17:06', '2025-06-22 10:52:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cf3e1e8d-1dce-4dd9-8c97-1fd7cef579b3', '20683a88-7f0e-471d-a3c5-bf175725052c', 11.81, 'USD', 'DEBIT',
        'CANCELLED', 'Payment to Thomas-Becker', 'TXN269940', '2025-07-01 09:42:59', '2025-07-01 09:57:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bab28c30-4434-4ec0-b07b-ac334c20972b', 'a6f93311-3bce-4db4-8395-25cde9688e47', 84.8, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Smith PLC Services', NULL, '2025-07-30 11:52:29', '2025-07-30 12:32:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bca62e2f-7080-4efb-a1b2-12d94b2958c3', '7a712793-0571-4844-b830-a1a4d3fdeb27', 467.11, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Rivera-Willis', 'TXN879800', '2025-04-29 15:49:13', '2025-04-29 16:39:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dd34898e-c500-40b8-ad61-7274584a31ef', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 161.45, 'USD', 'CREDIT',
        'CANCELLED', 'Dividend payment - Lopez and Sons', 'ACH688769', '2025-08-23 10:26:29', '2025-08-23 10:50:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e8d8e37f-41ec-46f8-92c7-8e7051046d36', '50682165-f2c3-4049-909e-951838384433', 752.74, 'JPY', 'TRANSFER',
        'COMPLETED', 'Bill split with Yvonne Thompson', 'REF717532', '2025-06-07 18:29:34', '2025-06-07 19:25:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8939daeb-2db2-4298-a4e8-0ca2f4cf47bd', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1201.97, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Kimberly Miller', 'REF579476', '2025-07-09 13:00:09', '2025-07-09 13:49:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b369c263-c8ef-4c2e-af3a-d7ac1298631c', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 60.31, 'EUR', 'CREDIT',
        'COMPLETED', 'Bonus payment - Simmons PLC', NULL, '2025-04-07 17:40:26', '2025-04-07 18:14:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('675c44da-4944-4436-a218-6517bd95dd1d', '7a712793-0571-4844-b830-a1a4d3fdeb27', 7.65, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Obrien and Sons Market', 'TXN383850', '2025-07-02 18:23:56', '2025-07-02 19:19:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f365c6a3-5ff6-4d34-ba1b-c2421d6b247c', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1398.11, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF509164', '2025-09-09 16:24:31', '2025-09-09 16:45:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('678a31cd-8222-4d1e-98e2-2042bb3bbe63', '20683a88-7f0e-471d-a3c5-bf175725052c', 172.36, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Howell-Wright', 'REF194985', '2025-07-28 15:32:41', '2025-07-28 15:48:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('685fe049-1c8d-48f5-aeba-a4fdbb33fe32', 'f9cae736-64d5-4692-a257-d87446ffc401', 167.15, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-05-05 17:43:53', '2025-05-05 17:47:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6e6128cd-7d7a-462a-8adf-cc8c69042d57', '4110303a-5cca-4c46-885d-c1e3bd335d96', 155.96, 'JPY', 'CREDIT',
        'COMPLETED', 'Salary deposit - Brooks, Dunn and Ball', 'ACH493825', '2025-07-27 11:39:18',
        '2025-07-27 11:45:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ef235c30-7afd-4dae-bef4-c5b87169998f', '1817a074-62f9-463a-8dd7-c44151e47f96', 6243.0, 'USD', 'CREDIT',
        'PENDING', 'Freelance payment - Mejia LLC', 'ACH342804', '2025-08-18 13:56:47', '2025-08-18 14:43:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4fc7f7ae-a469-41fe-9a23-85ad43209527', 'f9cae736-64d5-4692-a257-d87446ffc401', 73.47, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Curry, Griffith and Braun', 'TXN494433', '2025-06-06 18:58:45',
        '2025-06-06 19:22:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8f75584b-f7a9-43ca-b527-370cacb70248', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1214.31, 'GBP', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-07-26 18:07:21', '2025-07-26 18:40:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d8626bf4-d7e0-4735-9f02-2c1ddd39b3c6', '523c0c30-1242-44a7-a025-f015ef7d4127', 84.16, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Rosales-Jensen Premium', 'TXN232088', '2025-05-26 16:32:54',
        '2025-05-26 17:23:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ca8ecf6e-6a1e-4bfe-a4a3-00e5304bbd81', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 563.28, 'JPY', 'CREDIT',
        'COMPLETED', 'Dividend payment - Barnett, Ibarra and Davis', 'ACH620150', '2025-06-07 05:04:51',
        '2025-06-07 05:32:18');

-- Batch 12: Transactions 1101-1200
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ced84c0f-e1c7-4ed7-8b13-3b0eb8ff74e5', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 446.7, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Robinson, Willis and Lawrence Services', 'TXN546092', '2025-07-03 15:20:09',
        '2025-07-03 15:28:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3cd8b956-56ec-4aa1-b2a0-21ed8cae05a1', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 814.64, 'EUR', 'TRANSFER',
        'FAILED', 'Savings account transfer', 'REF132823', '2025-05-14 15:40:33', '2025-05-14 16:31:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d5e5a7eb-4147-4cc6-a035-c4d522fa1b40', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 5050.03, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Dalton, Levy and Hale', 'ACH746943', '2025-08-25 20:05:43',
        '2025-08-25 20:17:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('489d23cc-0784-45bb-85d6-8d88eeaf1efb', '02630652-15bc-4df0-99b7-a41c93c79986', 766.3, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-05-11 17:22:46', '2025-05-11 18:07:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3df53dd-d5a4-4c89-93aa-a156d08d584d', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 76.64, 'JPY', 'REFUND',
        'COMPLETED', 'Dispute resolution - Mitchell-Meza', NULL, '2025-06-14 13:48:47', '2025-06-14 14:13:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8b86ba70-27ff-4cde-86a7-cc1aa5186d73', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 105.76, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH329532', '2025-09-01 14:29:26', '2025-09-01 14:42:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5da4817c-9168-4b9d-8934-eb3d0c3ee4c7', '2e3b6236-b73f-40b1-a88f-abafe787082b', 121.57, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF220544', '2025-09-06 00:35:28', '2025-09-06 01:20:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('47a2028a-3edb-4584-a317-383612650ac8', '20683a88-7f0e-471d-a3c5-bf175725052c', 946.56, 'USD', 'CREDIT',
        'PENDING', 'Government benefit payment', 'ACH840388', '2025-05-02 10:41:55', '2025-05-02 11:00:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('74d3e2e8-53e2-457a-b499-92ab22c8dc7c', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 76.19, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Chambers-Lewis', NULL, '2025-07-22 09:00:01', '2025-07-22 09:15:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e332dc50-37fb-4551-8d8f-38c000f17b5e', 'd49ec560-02e4-4049-b181-837031133e95', 1757.92, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH856013', '2025-07-21 18:54:29', '2025-07-21 19:06:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2b2cf3f3-d53b-4642-a3ab-63ef0bc5067a', '02630652-15bc-4df0-99b7-a41c93c79986', 17.62, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-07-03 13:29:45', '2025-07-03 13:41:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('68eb295f-8958-4002-86e5-b0c60c516744', '523c0c30-1242-44a7-a025-f015ef7d4127', 286.77, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH459606', '2025-05-16 22:24:47', '2025-05-16 22:32:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('853af903-0c8c-430a-b89e-fea583fe9ba2', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 37.77, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Curtis PLC', NULL, '2025-07-03 02:13:33', '2025-07-03 02:16:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b56412be-23b4-4837-9cd1-533152f9b195', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 788.22, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF971108', '2025-06-21 15:13:28', '2025-06-21 15:21:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02ee4a48-b099-49e9-95f4-1c68cae87ecb', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 57.35, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-05-30 00:37:34', '2025-05-30 01:36:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('25511871-dc71-4420-9a23-10e3ef2fc8f5', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 6.75, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Brown Inc Services', NULL, '2025-09-10 10:40:39', '2025-09-10 11:20:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('84665a5f-173f-4f09-ad09-b2762c7d6ed4', 'd49ec560-02e4-4049-b181-837031133e95', 887.05, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF117452', '2025-04-01 07:46:19', '2025-04-01 08:45:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4ea26b9-354c-4203-a3aa-da0fdda43b0e', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 110.32, 'NOK', 'CREDIT',
        'COMPLETED', 'Freelance payment - Alvarado LLC', NULL, '2025-09-06 18:30:39', '2025-09-06 19:27:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4884138d-c4aa-40ef-bee9-26f7601bc132', 'f9cae736-64d5-4692-a257-d87446ffc401', 1427.54, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Beth Franklin', NULL, '2025-04-16 14:24:22', '2025-04-16 14:37:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8e934843-7343-4b6f-94bd-046289687aa0', '17ad774a-8c59-447a-b309-a2953679e25a', 55.05, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Collins and Sons Premium', NULL, '2025-04-07 14:12:41', '2025-04-07 14:13:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8006318-f423-42a8-ab62-3c7a30ad8b96', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 386.13, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Nielsen Group', NULL, '2025-08-08 08:29:13', '2025-08-08 08:47:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d9f950ee-a473-4aca-b265-f06876c27488', 'd31cdd64-e270-4aa9-a77e-a89486214984', 162.36, 'SEK', 'REFUND',
        'COMPLETED', 'Dispute resolution - Martin LLC', 'REF288831', '2025-05-27 17:40:59', '2025-05-27 18:20:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('916f6e50-893a-4c7a-a5fe-bd036db06595', '7a712793-0571-4844-b830-a1a4d3fdeb27', 924.79, 'DKK', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-08-02 13:44:30', '2025-08-02 14:17:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93f54dad-a9d7-422f-87ba-d6a9b8652193', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 161.29, 'USD', 'REFUND',
        'PENDING', 'Service credit - Fischer, Morrison and Miller', NULL, '2025-08-26 14:34:32', '2025-08-26 15:16:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7f4705fe-6b28-4134-83c6-aaa89a922c52', 'd31cdd64-e270-4aa9-a77e-a89486214984', 63.91, 'USD', 'DEBIT', 'FAILED',
        'Online transfer to Lori Hale', 'TXN746831', '2025-03-28 11:24:15', '2025-03-28 12:07:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0aba166-dfc5-408e-8a5d-1a5e56e75209', '50682165-f2c3-4049-909e-951838384433', 1015.27, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Robert Perkins Jr.', 'REF429411', '2025-07-22 07:09:14', '2025-07-22 07:34:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8046d5eb-2603-4863-8d8c-96f482fb99ef', '02630652-15bc-4df0-99b7-a41c93c79986', 41.13, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Cooper-Ford', 'REF593105', '2025-05-17 18:09:09', '2025-05-17 19:00:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c393277f-ef3c-4426-b883-6dd0093ad600', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 43.45, 'USD', 'REFUND',
        'FAILED', 'Price adjustment - Hernandez PLC', NULL, '2025-07-21 14:57:33', '2025-07-21 15:16:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d4b3b05f-34d4-47ca-ad5b-6b3413d3b1f5', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 42.15, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-06-13 09:39:33', '2025-06-13 10:33:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be0c3f2d-a8ff-47e2-9cb9-083319acc48c', '1817a074-62f9-463a-8dd7-c44151e47f96', 1114.16, 'USD', 'CREDIT',
        'PENDING', 'Freelance payment - French, Wilson and Daugherty', 'ACH592412', '2025-08-22 06:49:14',
        '2025-08-22 07:22:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3b557206-c07d-402a-aed7-f2505c5afb0a', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 69.82, 'GBP', 'DEBIT',
        'COMPLETED', 'Online purchase - Ramirez-Duncan', 'TXN364050', '2025-07-26 15:58:21', '2025-07-26 16:29:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8113593d-4ed8-44de-abd8-2af3877d7cc4', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 27.73, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Hansen Group', 'TXN603497', '2025-03-25 03:49:59', '2025-03-25 03:58:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('604e51ba-15a4-4a74-afc9-d38c6662f2c0', '30f7fce8-3a42-4900-8129-5549a3175459', 844.23, 'USD', 'TRANSFER',
        'CANCELLED', 'Wire transfer to Taylor Mata', NULL, '2025-06-12 20:17:14', '2025-06-12 20:41:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0314dade-b1c0-42eb-9801-ad6ff52c09b8', 'd31cdd64-e270-4aa9-a77e-a89486214984', 90.51, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF998327', '2025-08-19 09:03:50', '2025-08-19 09:49:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2edd6586-c190-4522-9ebb-a3af84ed6cfa', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1186.48, 'EUR', 'CREDIT',
        'CANCELLED', 'Refund from Hess PLC', 'ACH688737', '2025-08-07 17:38:19', '2025-08-07 17:42:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7cc0d91c-2611-477d-88f7-55d3812d3802', '12e6cc99-7181-4fde-98dc-93ded6112abf', 479.04, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Jesse Clay', 'REF508745', '2025-06-17 09:23:28', '2025-06-17 09:38:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3ed5944d-b733-4089-bc56-4607fe972604', '17ad774a-8c59-447a-b309-a2953679e25a', 32.86, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Marsh, Martin and Ross Premium', 'TXN300246', '2025-03-28 14:10:57',
        '2025-03-28 14:11:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('52a202b7-a373-488c-9391-dac59e3a6aa5', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 853.9, 'USD', 'CREDIT',
        'FAILED', 'Government benefit payment', 'ACH626031', '2025-06-21 15:59:24', '2025-06-21 16:31:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4078da79-0634-47c2-9c62-6fe9e3e5ac47', '12e6cc99-7181-4fde-98dc-93ded6112abf', 76.01, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH177804', '2025-05-28 09:46:53', '2025-05-28 10:19:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4fc9cf69-bc5d-49f7-be82-2c390612a315', '30f7fce8-3a42-4900-8129-5549a3175459', 1365.94, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Carolyn Garcia', NULL, '2025-06-23 16:26:07', '2025-06-23 17:14:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('de063100-7c18-453f-9b5d-8868dc6370fc', '50682165-f2c3-4049-909e-951838384433', 160.35, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF440966', '2025-03-23 20:39:03', '2025-03-23 21:08:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('52be99c9-cee1-4f07-9e4a-05547f2b7b7c', 'f9cae736-64d5-4692-a257-d87446ffc401', 948.91, 'EUR', 'TRANSFER',
        'CANCELLED', 'Savings account transfer', 'REF470861', '2025-06-11 16:01:28', '2025-06-11 16:47:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('48a2c965-e610-459e-a5b9-8138d7cd76ea', 'd31cdd64-e270-4aa9-a77e-a89486214984', 2936.49, 'GBP', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH256677', '2025-05-26 17:01:43', '2025-05-26 17:33:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('19de3576-dc28-41ae-992c-f380dc569284', '523c0c30-1242-44a7-a025-f015ef7d4127', 203.88, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Thompson-Patrick', NULL, '2025-06-03 11:46:34', '2025-06-03 12:46:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('482ff87d-e63a-4a99-a52e-2e4eeb6edb82', '4692fe34-18fd-4140-9f08-06189f96fac3', 582.86, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF955209', '2025-04-03 13:34:03', '2025-04-03 14:28:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3641e6f4-fdfc-46f5-b26f-8bffbbf868ff', 'f9cae736-64d5-4692-a257-d87446ffc401', 1092.19, 'SEK', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF379749', '2025-08-14 15:11:38', '2025-08-14 15:11:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02230f63-8d05-461e-8c20-ea1cb03d2125', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 114.21, 'EUR', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF557624', '2025-06-05 18:09:04', '2025-06-05 18:31:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3a789a1e-0dc3-4cd5-b6e8-78dc78b0dc26', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 129.44, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF971014', '2025-08-24 14:19:16', '2025-08-24 14:39:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('265d725c-1dd2-43ec-b16f-a2d5fe52dd60', 'a6f93311-3bce-4db4-8395-25cde9688e47', 185.3, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Lewis Group', 'REF828384', '2025-05-24 14:05:37', '2025-05-24 14:25:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ae4c3e2e-8c5e-43d0-846d-625e12ef445a', '50682165-f2c3-4049-909e-951838384433', 171.27, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF800343', '2025-06-22 05:03:26', '2025-06-22 05:22:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ac6d968c-50a2-4f43-82a7-9d9862ae9c37', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 88.16, 'EUR', 'DEBIT',
        'COMPLETED', 'Restaurant - Jackson-Baldwin', 'TXN424772', '2025-06-29 16:00:47', '2025-06-29 16:32:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a76e38f9-bed5-4e8a-ad0d-97a74c5d5a9d', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1916.6, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Fox Group', 'ACH915369', '2025-03-29 06:48:05', '2025-03-29 07:42:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('749757e8-119c-4e3e-a741-73861ecbe7af', '1817a074-62f9-463a-8dd7-c44151e47f96', 41.76, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Young-Lewis', 'TXN865419', '2025-07-12 04:46:42', '2025-07-12 05:09:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7155ef1-fa23-4e06-8c50-f96bb5c770a4', '17ad774a-8c59-447a-b309-a2953679e25a', 1588.56, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH925485', '2025-07-25 12:51:50', '2025-07-25 12:55:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('363eb5d1-70bd-460b-99fe-ef6396f3cc6b', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1245.62, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF266696', '2025-08-08 17:39:11', '2025-08-08 17:58:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a84ad32-e36f-4f1b-bafd-0750c28ee4ac', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 154.12, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-05-31 18:03:37', '2025-05-31 18:04:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eb624eb9-37ae-4b3a-b37a-4b800c0e9dbd', 'f9cae736-64d5-4692-a257-d87446ffc401', 914.29, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-04-10 17:06:55', '2025-04-10 18:01:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6d4e6b48-176a-436d-949d-ca7d96c96b35', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1101.19, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Baxter, Burton and Klein', 'ACH246702', '2025-07-08 12:31:38', '2025-07-08 12:47:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('07cccd0f-2344-4402-a030-e42ba3deaad6', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 168.15, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF920197', '2025-07-29 08:33:48', '2025-07-29 09:17:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('876dc1fd-198e-4e65-81b1-697c1dac0f89', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1446.48, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Thomas Garcia', 'REF981052', '2025-07-01 13:38:11', '2025-07-01 13:49:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('763a4a10-4c5d-43c5-910f-fe4af337aacd', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 91.86, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF385374', '2025-06-08 14:27:04', '2025-06-08 14:44:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6bf5eea9-c481-464f-a912-745ef9b755d9', 'a6f93311-3bce-4db4-8395-25cde9688e47', 34.23, 'GBP', 'REFUND',
        'PENDING', 'Overpayment refund', 'REF903288', '2025-06-10 17:48:05', '2025-06-10 18:35:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8bd6c7e4-94a8-4436-893f-9f3e066276c2', '20683a88-7f0e-471d-a3c5-bf175725052c', 1791.39, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Cruz-Rivers Premium', 'TXN603390', '2025-04-27 18:36:47', '2025-04-27 19:26:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cf73db8f-280c-44dd-960b-ca3b8ab3a8b7', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 406.71, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Green Inc Services', 'TXN873180', '2025-05-14 19:15:21', '2025-05-14 20:00:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('51b92e54-cd3d-4d59-9b27-4d706edd13c3', '50682165-f2c3-4049-909e-951838384433', 739.2, 'AUD', 'TRANSFER',
        'FAILED', 'Wire transfer to James Mclaughlin', 'REF613864', '2025-03-20 12:50:34', '2025-03-20 13:37:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8a85ba0-a07c-4280-bc54-314a26dc026a', 'a6f93311-3bce-4db4-8395-25cde9688e47', 459.51, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Jones, Kelley and Anderson', NULL, '2025-08-25 09:55:22', '2025-08-25 10:00:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('87843c19-90e0-4753-aa41-696d29e86292', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1425.92, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-03-31 17:51:15', '2025-03-31 18:43:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2db54565-c97c-4c9c-a795-31bdeb8e5430', '4692fe34-18fd-4140-9f08-06189f96fac3', 7.67, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Melissa Mejia', 'TXN208151', '2025-03-17 13:45:38', '2025-03-17 14:38:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9ea3a9c3-edcc-4f10-a35a-f6f136e7d4f7', '523c0c30-1242-44a7-a025-f015ef7d4127', 50.35, 'USD', 'REFUND',
        'PENDING', 'Refund - Watts, Richardson and Mitchell', 'REF735012', '2025-09-04 16:47:20',
        '2025-09-04 17:32:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bb898fd4-e150-449c-b286-5f510c7f40b2', '12e6cc99-7181-4fde-98dc-93ded6112abf', 45.05, 'CAD', 'DEBIT',
        'COMPLETED', 'Subscription - Edwards, Powers and Long Premium', NULL, '2025-05-12 09:59:11',
        '2025-05-12 10:18:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f73614f2-175a-40c2-a383-e5159289be96', 'a6f93311-3bce-4db4-8395-25cde9688e47', 124.84, 'GBP', 'CREDIT',
        'COMPLETED', 'Salary deposit - Alexander, Gibson and Harrison', NULL, '2025-04-30 09:10:28',
        '2025-04-30 09:59:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b8e56b3-094a-460b-b5b9-16dc6d114e7d', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 508.35, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Robin Bass', 'REF927216', '2025-06-22 20:28:46', '2025-06-22 20:49:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('81e0bcf4-7752-4cff-93ed-e04e881df9f5', 'd31cdd64-e270-4aa9-a77e-a89486214984', 284.46, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Bridges-Washington', 'ACH131503', '2025-08-15 20:14:26',
        '2025-08-15 20:28:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2501473e-8eb1-4560-b548-3e3d811986c1', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 14.13, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF950630', '2025-06-21 12:15:44', '2025-06-21 12:16:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f5947419-47a1-4a6e-94e0-e10ccef679a1', '2e3b6236-b73f-40b1-a88f-abafe787082b', 177.55, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-08-13 13:34:06', '2025-08-13 14:20:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2e470587-ad5c-4dcb-bd81-10c797dac196', '02630652-15bc-4df0-99b7-a41c93c79986', 1444.71, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-12 23:40:25', '2025-06-13 00:17:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e2fd1ce7-4dbd-4e59-bd63-6fabf08f92bc', '20683a88-7f0e-471d-a3c5-bf175725052c', 150.0, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Michael Walters', 'ACH176653', '2025-04-02 11:21:14', '2025-04-02 12:15:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0ed7c3f-128f-4c78-9db4-e88439a804ad', '17ad774a-8c59-447a-b309-a2953679e25a', 95.31, 'GBP', 'REFUND',
        'COMPLETED', 'Service credit - Reese-Baker', 'REF383217', '2025-05-13 22:50:38', '2025-05-13 23:38:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a7f141a-7534-43c8-8e0e-04a375a454eb', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 171.39, 'GBP', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF709099', '2025-07-26 14:47:59', '2025-07-26 15:26:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b3ffb61a-693d-478d-82cd-583d53ffd194', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 904.25, 'EUR', 'TRANSFER',
        'PENDING', 'Transfer to Anna Griffin', 'REF307163', '2025-04-24 14:20:31', '2025-04-24 14:31:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('423a913c-34e9-4925-9845-6e454c8822b0', '17ad774a-8c59-447a-b309-a2953679e25a', 810.65, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Brett Ewing', 'ACH136592', '2025-08-24 15:03:08', '2025-08-24 15:03:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9241d3bb-46e1-4d06-b0df-d56517a717ea', '523c0c30-1242-44a7-a025-f015ef7d4127', 424.09, 'USD', 'DEBIT',
        'CANCELLED', 'ATM withdrawal at 69123 Morgan Corners Suite 161', NULL, '2025-08-27 09:17:53',
        '2025-08-27 09:29:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('51d9a832-1bde-4a37-ab7c-0d46538bad20', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 46.2, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Collins PLC Market', NULL, '2025-07-03 11:52:26', '2025-07-03 12:20:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e95446b9-f5c2-4535-9c4c-0e69518b8571', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 156.71, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Natalie Cruz', 'REF554665', '2025-06-03 10:11:17', '2025-06-03 10:28:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('afeae8ed-1c2d-4327-88af-0cc41a16f768', '17ad774a-8c59-447a-b309-a2953679e25a', 131.16, 'GBP', 'REFUND',
        'FAILED', 'Dispute resolution - Stevens-Newton', 'REF540799', '2025-06-26 12:57:02', '2025-06-26 13:44:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d3cc5adf-332c-4d29-85d3-af16441cbe92', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1424.13, 'GBP', 'TRANSFER',
        'CANCELLED', 'Rent payment to Tyler Sloan', 'REF524240', '2025-04-26 10:16:08', '2025-04-26 10:27:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e12640d0-4663-454f-9c9b-9b44a93a95ea', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 496.89, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-06-18 10:25:55', '2025-06-18 10:33:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fff1b91b-997e-497a-b5e6-d573eea6f455', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 100.71, 'EUR', 'REFUND',
        'PENDING', 'Return processing - Schroeder, Hicks and Hodges', 'REF311156', '2025-07-22 13:48:40',
        '2025-07-22 13:54:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5f0f6b37-cf47-43b1-bfa3-ec2c877e77f4', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 43.04, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Green-Berger Premium', NULL, '2025-04-22 11:34:49', '2025-04-22 12:03:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d6b7963-fe44-4d97-8762-8a7a6cc9509f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1220.67, 'AUD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-03-22 23:08:03', '2025-03-22 23:44:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0fd7f7e-d7fb-49c2-ac7f-57d2d4f0fe98', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1464.95, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF856922', '2025-08-14 13:04:05', '2025-08-14 13:51:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9c6314fe-87bb-43cc-8dc0-fa4d8ba49bd9', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 8.78, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Gay LLC Services', 'TXN267278', '2025-04-16 09:09:54', '2025-04-16 09:15:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5f72d8fa-73c4-457f-bea1-7e53ee67d5b7', 'f9cae736-64d5-4692-a257-d87446ffc401', 178.72, 'GBP', 'REFUND',
        'FAILED', 'Subscription cancellation refund', NULL, '2025-05-09 09:58:28', '2025-05-09 10:19:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31420c76-04c8-4079-9d72-1fcef251351c', 'f9cae736-64d5-4692-a257-d87446ffc401', 73.31, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Preston Group Premium', NULL, '2025-07-20 10:42:21', '2025-07-20 11:19:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1647dfa4-2d23-4985-a345-98f38669715c', 'f9cae736-64d5-4692-a257-d87446ffc401', 148.68, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Mathis-Davidson', 'REF627728', '2025-03-19 16:25:17', '2025-03-19 16:36:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('339cedc5-183c-4cfa-ae8b-75e1cbfc965c', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 44.67, 'CHF', 'DEBIT',
        'COMPLETED', 'Bill payment - Johnson, Roberts and Zuniga Services', 'TXN576210', '2025-08-30 18:34:29',
        '2025-08-30 18:40:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3fbd6b33-ec3d-4b0c-9522-9100e91a08fe', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 276.99, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Sanford, Hill and Castillo', 'ACH150776', '2025-06-13 15:07:48',
        '2025-06-13 15:23:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2cd69184-d239-4c18-a326-f72c340069ae', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 424.21, 'USD', 'DEBIT',
        'PENDING', 'Subscription - Kent, Delgado and Gentry Premium', NULL, '2025-04-11 09:45:55',
        '2025-04-11 10:32:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89053ef2-377d-4565-a016-4eccf4d93ae1', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 418.62, 'GBP', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF527438', '2025-04-04 13:10:01', '2025-04-04 13:26:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ff69f3d1-51f7-485f-88a8-67d517c0beca', '50682165-f2c3-4049-909e-951838384433', 23.43, 'CHF', 'DEBIT',
        'COMPLETED', 'Online purchase - Nguyen, Robinson and Herrera', 'TXN179932', '2025-08-20 17:22:24',
        '2025-08-20 17:52:06');

-- Batch 13: Transactions 1201-1300
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ceb1123a-6980-4928-a675-6d72055df2ae', '4110303a-5cca-4c46-885d-c1e3bd335d96', 37.74, 'AUD', 'DEBIT', 'FAILED',
        'Payment to Clark-Sampson', 'TXN327583', '2025-06-01 11:28:47', '2025-06-01 11:54:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f79b9846-dc10-4d25-b6f8-dc84a7965062', '20683a88-7f0e-471d-a3c5-bf175725052c', 156.91, 'USD', 'CREDIT',
        'PENDING', 'Government benefit payment', 'ACH296579', '2025-04-19 09:31:27', '2025-04-19 09:37:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8ca6b3f-3ee5-4e5c-9be9-a9c201c61b64', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 171.27, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Vanessa Lindsey', 'REF114828', '2025-05-05 18:29:09', '2025-05-05 19:20:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9ece2069-0d4c-4909-89dd-3761ca2d039b', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1451.01, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF510475', '2025-04-12 15:52:58', '2025-04-12 16:51:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e7ed366a-21b8-4fee-b952-23738c5d38ef', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 85.63, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Odonnell-Duncan', 'TXN683142', '2025-08-16 15:38:25', '2025-08-16 15:59:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67aaf773-4e57-48be-9be2-b24e723295b5', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1223.01, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Johnson-Farrell', NULL, '2025-05-07 14:01:59', '2025-05-07 14:07:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('245fe0b3-e1fd-48a3-b7ad-96940ae76178', '4110303a-5cca-4c46-885d-c1e3bd335d96', 212.49, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Meagan Williams', 'REF421334', '2025-06-26 10:17:24', '2025-06-26 10:28:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4eea0dbc-ecf5-46cd-a579-ac981065c3e8', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 197.11, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Miguel Jimenez', 'REF153970', '2025-06-04 02:00:44', '2025-06-04 02:48:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('78bab7ae-a8f6-4566-91bf-aaf3cffa3bf9', 'd49ec560-02e4-4049-b181-837031133e95', 134.06, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-06-10 15:37:51', '2025-06-10 15:48:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9171e320-8a2c-4d25-8ee6-451ea18c918b', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 151.05, 'AUD', 'DEBIT',
        'COMPLETED', 'Gas station - Thompson, Blackwell and Mullen', NULL, '2025-04-14 14:54:00',
        '2025-04-14 15:42:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e5c93c2f-1389-4a33-a514-a01fa14c809f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 911.13, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF447707', '2025-08-02 14:36:31', '2025-08-02 15:07:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eb4078dc-0ca6-43ba-9176-0f58615d5c39', 'd31cdd64-e270-4aa9-a77e-a89486214984', 32.32, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Collins, Ellis and Norton', 'TXN540316', '2025-07-24 05:21:27',
        '2025-07-24 05:38:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('526fc3a2-a808-4f9d-abf5-4b6a7cf78b94', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 977.29, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH703749', '2025-09-08 10:41:23', '2025-09-08 11:27:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('866e48fd-4ccd-49be-bbd8-c80478726a95', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 210.08, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Garza and Sons Store', NULL, '2025-07-28 12:38:45', '2025-07-28 13:01:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ccd364cd-5c61-47f3-bfbd-d7789c753496', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1331.51, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Joshua Norman', NULL, '2025-03-18 16:28:37', '2025-03-18 16:40:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0861729b-efd9-4910-88f5-67c3c530bd7f', '17ad774a-8c59-447a-b309-a2953679e25a', 94.45, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Lee-Brooks', 'TXN920648', '2025-05-20 08:13:20', '2025-05-20 08:53:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d69795c9-f8e9-41a1-86a7-9c1a7ec7a553', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 46.97, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-05-18 09:15:21', '2025-05-18 09:24:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('27770081-14d7-4d51-9f20-59cc8bf44588', '30f7fce8-3a42-4900-8129-5549a3175459', 115.16, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Wade PLC', NULL, '2025-05-07 17:26:14', '2025-05-07 18:02:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bacc3176-2528-443a-9e23-f693c719698b', 'f9cae736-64d5-4692-a257-d87446ffc401', 760.27, 'EUR', 'TRANSFER',
        'PENDING', 'Transfer to Cindy White', NULL, '2025-06-04 18:56:25', '2025-06-04 19:56:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c03751c6-58a9-42e5-9464-87d2e479bb1b', '4110303a-5cca-4c46-885d-c1e3bd335d96', 86.45, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Combs Inc', 'TXN177621', '2025-05-05 13:04:02', '2025-05-05 13:58:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9189aa34-fc22-42a8-8da5-3829e07d4e55', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 104.27, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Jenkins, Underwood and Mcclain', 'ACH984073', '2025-09-10 03:13:03',
        '2025-09-10 03:25:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b25cfd0-4bb8-4058-b74c-470916a76357', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1025.6, 'EUR', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH768049', '2025-05-27 09:21:00', '2025-05-27 09:53:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1e5bbd65-871e-409b-8adc-9fb19f13e22f', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 414.44, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - White-Hunt Market', 'TXN736674', '2025-08-10 11:50:42', '2025-08-10 12:35:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a436926-4001-4221-a4ee-7f966f91c2e3', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 83.58, 'EUR', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-05-11 12:40:59', '2025-05-11 13:01:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f544071d-c32a-40aa-97f2-409d535bc4eb', '4692fe34-18fd-4140-9f08-06189f96fac3', 753.01, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Matthew Smith', NULL, '2025-04-07 01:07:02', '2025-04-07 01:58:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f9fc7bf8-db9a-4962-9784-608bd6c0a408', '50682165-f2c3-4049-909e-951838384433', 196.81, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Higgins Ltd', 'REF161973', '2025-08-12 01:00:32', '2025-08-12 01:46:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('333fc941-3cb8-4e02-b7ca-c64bc5643768', '4692fe34-18fd-4140-9f08-06189f96fac3', 127.65, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH809334', '2025-03-21 06:02:56', '2025-03-21 06:58:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3d32bb51-fbcc-48ec-9f49-a583ffa38101', 'a6f93311-3bce-4db4-8395-25cde9688e47', 239.45, 'JPY', 'CREDIT',
        'COMPLETED', 'Salary deposit - Brown PLC', 'ACH340565', '2025-05-24 15:03:58', '2025-05-24 15:15:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7cd6a442-b67f-4c6d-901b-b9b0954a74a8', '1817a074-62f9-463a-8dd7-c44151e47f96', 153.24, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-06-29 17:22:01', '2025-06-29 18:07:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5e625298-351a-4dd4-929a-fb1d29541ca8', '12e6cc99-7181-4fde-98dc-93ded6112abf', 155.53, 'USD', 'DEBIT',
        'FAILED', 'Restaurant - Mccarty-Fox', 'TXN190306', '2025-07-01 11:38:54', '2025-07-01 11:40:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9034b0d8-94fc-41b4-a65b-1aa8acb697f7', '50682165-f2c3-4049-909e-951838384433', 294.66, 'SEK', 'DEBIT',
        'COMPLETED', 'Online purchase - Glenn and Sons', 'TXN337881', '2025-07-07 06:31:52', '2025-07-07 07:16:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('12604fbe-dce4-4e68-86ea-f28abbd22469', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 322.12, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-05-18 13:15:53', '2025-05-18 13:28:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9d9ba846-5ef8-4fde-a4c6-99f94e556840', '50682165-f2c3-4049-909e-951838384433', 73.45, 'CAD', 'DEBIT',
        'PENDING', 'Gas station - Barnes, Zamora and Lucero', 'TXN287629', '2025-05-04 04:02:32',
        '2025-05-04 04:03:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0da65dc0-763d-41b9-9e5d-ec9fc360d253', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1142.51, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-03-21 21:51:07', '2025-03-21 22:28:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be78d337-5532-4585-92fc-8994b44dddda', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 11.86, 'JPY', 'DEBIT',
        'COMPLETED', 'Subscription - Robinson-Collins Premium', 'TXN999154', '2025-07-22 18:51:18',
        '2025-07-22 19:11:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe9f0c8a-ef04-4a08-88a2-bb35dc690897', 'a6f93311-3bce-4db4-8395-25cde9688e47', 412.36, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Virginia Lam', 'REF704199', '2025-05-23 10:14:41', '2025-05-23 10:29:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec85f71e-3d47-4eda-926e-307368e1c8db', '17ad774a-8c59-447a-b309-a2953679e25a', 4768.05, 'EUR', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH416173', '2025-08-06 12:54:54', '2025-08-06 13:06:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7d17441a-4133-435c-b498-fa9d1b3cb30a', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 816.59, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH157616', '2025-07-20 18:44:12', '2025-07-20 19:22:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f2be9126-8eeb-4ed3-bc30-07da4b3b9f5c', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 146.22, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF748180', '2025-08-28 12:28:12', '2025-08-28 12:28:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2256098e-7e9f-4f5a-90b4-c750f8052f45', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1003.41, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF709285', '2025-07-18 18:47:38', '2025-07-18 19:27:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('acc5383a-b1b5-4c4c-9c5f-983589da5123', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1254.9, 'GBP', 'TRANSFER',
        'CANCELLED', 'Rent payment to Steven Leach', NULL, '2025-04-03 11:27:30', '2025-04-03 12:27:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9c074535-defb-40be-a313-56c84703506a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1821.12, 'USD', 'CREDIT',
        'FAILED', 'Commission payment', NULL, '2025-09-05 20:26:24', '2025-09-05 20:49:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('79a8fd84-1b6e-4222-9cab-057626e078d1', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 12.01, 'USD', 'DEBIT',
        'PENDING', 'Online transfer to Kevin Ferrell', 'TXN866879', '2025-06-11 17:00:28', '2025-06-11 17:23:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6fca03c6-190a-4851-b8dc-f222d6a54126', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 82.57, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF749793', '2025-05-31 15:35:45', '2025-05-31 16:20:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ace523de-f601-450f-b6ad-dd18233cd80b', '30f7fce8-3a42-4900-8129-5549a3175459', 111.95, 'JPY', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF443961', '2025-08-04 11:27:09', '2025-08-04 11:59:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('94477735-0710-427d-b307-3917e504e158', '30f7fce8-3a42-4900-8129-5549a3175459', 62.59, 'USD', 'CREDIT',
        'CANCELLED', 'Refund from Mcmillan LLC', 'ACH285150', '2025-04-03 20:49:12', '2025-04-03 21:25:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dadc5959-785f-4bb8-8cae-07156b0c9c9f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 167.59, 'AUD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF157133', '2025-08-28 18:29:21', '2025-08-28 18:45:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('53dd4516-a674-4397-82eb-d22aadcde9a7', '50682165-f2c3-4049-909e-951838384433', 76.27, 'CAD', 'REFUND',
        'CANCELLED', 'Dispute resolution - Ortiz, Sparks and Miller', NULL, '2025-05-14 18:27:17',
        '2025-05-14 19:20:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('adc8077f-f996-45ce-9d23-184478fed420', '20683a88-7f0e-471d-a3c5-bf175725052c', 488.19, 'USD', 'DEBIT',
        'FAILED', 'Gas station - Kennedy-Perkins', 'TXN899061', '2025-06-05 09:18:39', '2025-06-05 09:35:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0354de7-74b3-47a5-b378-bb5817d41678', '523c0c30-1242-44a7-a025-f015ef7d4127', 380.37, 'GBP', 'DEBIT',
        'COMPLETED', 'Online transfer to William Hill', 'TXN957330', '2025-03-25 14:07:34', '2025-03-25 14:55:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c50c0c89-fa80-4d92-a543-31b403d85a13', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 73.94, 'GBP', 'DEBIT',
        'COMPLETED', 'Payment to Parker, Washington and Saunders', NULL, '2025-08-16 15:15:55', '2025-08-16 15:35:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b57c1557-50d5-4fda-b130-bee78da28a95', '523c0c30-1242-44a7-a025-f015ef7d4127', 67.63, 'EUR', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF264699', '2025-04-03 22:17:47', '2025-04-03 22:23:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6e3a510-d9f0-4b52-b28b-e862679a94b7', 'd31cdd64-e270-4aa9-a77e-a89486214984', 172.34, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Powell Group', 'REF215374', '2025-06-30 08:46:08', '2025-06-30 09:33:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('374b0c51-1d21-4977-a766-5beae91bb16c', '12e6cc99-7181-4fde-98dc-93ded6112abf', 29.45, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Lam-Shaffer', 'TXN378207', '2025-08-22 08:55:44', '2025-08-22 09:41:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a9824f5b-61e8-42fd-b7b8-aa8ba641ce13', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 95.5, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Jennifer Jenkins', 'TXN554748', '2025-06-03 11:16:00', '2025-06-03 11:48:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('576d3b7f-85f4-458f-8afe-8ea8325699f3', '30f7fce8-3a42-4900-8129-5549a3175459', 45.46, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Atkinson-Taylor', NULL, '2025-08-05 09:31:48', '2025-08-05 09:57:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('43b728ad-c22d-4704-8a67-dbb76e3ca3f4', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 38.69, 'GBP', 'REFUND',
        'COMPLETED', 'Price adjustment - Gamble LLC', 'REF442717', '2025-07-24 15:52:32', '2025-07-24 16:40:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64f04247-f1d1-4ad8-8760-c18a09d6a3e0', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1173.57, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Weber Ltd', 'ACH234405', '2025-04-02 16:04:40', '2025-04-02 16:26:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('08bd11ad-3346-41cb-b766-28c9e4e48892', '523c0c30-1242-44a7-a025-f015ef7d4127', 195.13, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 57116 Pope Point', 'TXN996763', '2025-09-04 18:27:37', '2025-09-04 18:55:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a9d8e79-8bb8-4eb4-84eb-a1067342b260', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 433.73, 'DKK', 'DEBIT',
        'COMPLETED', 'Grocery - Oconnor, Knight and Fernandez Market', 'TXN592318', '2025-07-10 10:18:42',
        '2025-07-10 10:22:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('61b26ef2-8139-45f7-9b76-fe290c854395', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 117.75, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 7949 Walter Grove', 'TXN649510', '2025-05-07 00:34:38', '2025-05-07 01:12:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f412dfd-c16a-4969-b9b3-3e8cadaeef31', '30f7fce8-3a42-4900-8129-5549a3175459', 3653.79, 'GBP', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH238531', '2025-06-20 15:18:21', '2025-06-20 16:00:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c86a0fe1-fa5f-4f04-93ca-e46b32e71f05', '02630652-15bc-4df0-99b7-a41c93c79986', 1455.27, 'AUD', 'TRANSFER',
        'COMPLETED', 'Bill split with Stacey Russell', 'REF865154', '2025-04-26 14:49:10', '2025-04-26 15:39:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('44bcf714-4885-450e-92ba-686d92a144f7', '17ad774a-8c59-447a-b309-a2953679e25a', 198.52, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Dodson, Howe and Mendez', NULL, '2025-05-15 12:31:39', '2025-05-15 12:44:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('45934a8f-6dd1-4ac0-b91b-933c2ef0ae5c', '12e6cc99-7181-4fde-98dc-93ded6112abf', 103.8, 'EUR', 'TRANSFER',
        'COMPLETED', 'Wire transfer to James Cameron', 'REF289455', '2025-08-29 13:43:36', '2025-08-29 14:24:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0701ba8f-04b8-4ea5-b12f-cd074a60f71a', '523c0c30-1242-44a7-a025-f015ef7d4127', 470.07, 'SEK', 'DEBIT',
        'FAILED', 'Bill payment - Gutierrez PLC Services', NULL, '2025-04-20 13:38:40', '2025-04-20 13:44:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2956c1e7-87f4-493e-90da-3c921fce472d', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1644.49, 'GBP', 'CREDIT',
        'COMPLETED', 'Refund from Vaughan Group', 'ACH959426', '2025-07-30 16:21:08', '2025-07-30 16:53:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2949a9a3-dab1-469c-bedc-820932234366', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 804.96, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Brittany Martin', 'REF175487', '2025-04-26 16:39:56', '2025-04-26 17:13:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92ba383f-dd5b-47ea-8aba-9c8d3e82da5d', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 222.34, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF319181', '2025-03-22 17:04:21', '2025-03-22 18:00:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c48ca135-7468-4cf8-97e9-7ad43b80ed63', '50682165-f2c3-4049-909e-951838384433', 533.4, 'CHF', 'CREDIT',
        'PENDING', 'Commission payment', 'ACH671097', '2025-06-18 13:32:17', '2025-06-18 14:15:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('db59116e-6acb-4f3e-8ebe-8b3afd2ab61d', 'a6f93311-3bce-4db4-8395-25cde9688e47', 6017.94, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Andrew Johnson', NULL, '2025-05-13 18:01:53', '2025-05-13 18:18:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('741c4e27-82b3-4ad4-8279-f3d4fe5ad942', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 219.3, 'CAD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH563742', '2025-03-22 11:14:19', '2025-03-22 11:36:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c82c8241-c2c9-4982-87ce-29480439fdc6', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 120.73, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF431915', '2025-04-20 16:29:52', '2025-04-20 16:46:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d18168cd-8cf7-4b84-9aac-e3729d1db3d1', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 52.3, 'GBP', 'DEBIT',
        'COMPLETED', 'Gas station - Gibson PLC', 'TXN857480', '2025-07-25 10:04:27', '2025-07-25 10:25:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5823b213-f3dc-44b4-b1b9-234dab99239f', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 352.9, 'JPY', 'DEBIT',
        'COMPLETED', 'Grocery - Hall Ltd Market', NULL, '2025-03-28 10:13:28', '2025-03-28 11:01:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('977c1b2a-4d15-4dbc-bd25-616feeb1f6fb', 'd31cdd64-e270-4aa9-a77e-a89486214984', 40.13, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Stewart LLC Store', 'TXN133254', '2025-06-23 09:00:21', '2025-06-23 09:59:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7006b62c-4507-49de-acc6-3e49d6f3b52a', '2e3b6236-b73f-40b1-a88f-abafe787082b', 243.3, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Steven Watson', 'ACH978711', '2025-04-02 12:40:16', '2025-04-02 12:51:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('36b3510b-6857-47f4-a43d-10c6d6ae0fef', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 173.24, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Nixon-Knapp', 'REF718330', '2025-04-30 13:09:44', '2025-04-30 14:07:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1441254d-5843-41ed-b900-01ee2e7c751e', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 193.77, 'USD', 'REFUND',
        'PENDING', 'Dispute resolution - Cox-Watkins', 'REF161713', '2025-05-02 16:53:37', '2025-05-02 17:48:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2f2cfb70-8257-457b-a394-e97e82cbcc42', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 73.34, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Mitchell-Gonzalez', NULL, '2025-04-22 13:59:44', '2025-04-22 14:29:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('33baf64b-a009-40e8-a49b-dac35a4bede5', 'd49ec560-02e4-4049-b181-837031133e95', 158.35, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Mills, Reynolds and Pittman', 'ACH102397', '2025-04-14 14:36:36',
        '2025-04-14 15:07:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7e04e8ab-ae4d-47dc-bd58-68cf90cc5d04', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 553.57, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Austin Espinoza', NULL, '2025-08-19 16:50:57', '2025-08-19 17:26:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('91c0643f-a03b-4723-bd07-9a1d5ef90b5d', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 425.02, 'JPY', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF197500', '2025-05-19 18:42:54', '2025-05-19 19:03:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('22f929c9-7bcc-4c21-8129-5d74ef49af40', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 22.75, 'USD', 'REFUND',
        'CANCELLED', 'Service credit - Andrews-Green', 'REF117370', '2025-04-27 18:20:01', '2025-04-27 19:11:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16ca10ed-fcbd-4666-b76d-4c610fbf5102', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 67.24, 'AUD', 'DEBIT',
        'CANCELLED', 'Gas station - Harrison, Ashley and Walton', NULL, '2025-06-26 17:00:33', '2025-06-26 17:43:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4150189c-01e6-48bd-875a-c42be7a4d121', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 73.01, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Johnston Group', 'TXN799734', '2025-05-19 11:43:42', '2025-05-19 12:29:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64085a7c-da20-4449-9c2b-eb5fd687cb10', '20683a88-7f0e-471d-a3c5-bf175725052c', 86.18, 'EUR', 'DEBIT', 'FAILED',
        'Restaurant - Vaughn, Williams and Gould', 'TXN728008', '2025-07-23 17:32:10', '2025-07-23 18:02:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d6e01e7a-de7d-434e-a68f-b5c88e679ac6', '02630652-15bc-4df0-99b7-a41c93c79986', 42.69, 'EUR', 'DEBIT',
        'COMPLETED', 'Bill payment - Jefferson Group Services', NULL, '2025-06-01 17:43:03', '2025-06-01 17:46:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b40d08af-6823-4dc8-8bbc-2e14aba96e21', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 136.49, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF191681', '2025-07-26 11:01:39', '2025-07-26 11:08:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c9d2c333-bf61-4329-b001-ec94478695c3', '02630652-15bc-4df0-99b7-a41c93c79986', 38.68, 'GBP', 'DEBIT',
        'COMPLETED', 'Online purchase - Smith-Randall', NULL, '2025-07-26 12:35:03', '2025-07-26 12:39:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a70b1c3a-345a-49dd-92a1-2656af601fac', '4110303a-5cca-4c46-885d-c1e3bd335d96', 99.6, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF564559', '2025-08-10 09:01:18', '2025-08-10 09:56:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('972b8e57-14d6-4b44-904e-84d4f4e21d2f', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1075.0, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Larsen Group', 'ACH462064', '2025-07-27 15:49:05', '2025-07-27 16:12:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e5c41783-67ba-4c28-b09a-3115b0269793', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1323.87, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-07-24 19:57:11', '2025-07-24 20:13:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6ce4093b-7f39-4dae-b4ce-1741fbd033d8', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1394.36, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF781317', '2025-06-17 17:46:09', '2025-06-17 18:05:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7bfe8c24-2512-40f3-a474-ccca6ae147ae', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 935.73, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Anthony Cook', NULL, '2025-07-18 17:20:46', '2025-07-18 17:30:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dd0a6893-5497-4c89-9ebc-d8070a66a4cd', '30f7fce8-3a42-4900-8129-5549a3175459', 158.61, 'EUR', 'DEBIT',
        'COMPLETED', 'Payment to Kent Inc', 'TXN399152', '2025-06-26 09:30:12', '2025-06-26 09:30:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3eaa5c63-630a-4f70-8532-3e46f34a3a00', '30f7fce8-3a42-4900-8129-5549a3175459', 154.76, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Baker, Valentine and Nicholson', 'REF612433', '2025-04-12 10:09:41',
        '2025-04-12 10:28:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ebddea5-8f08-45ac-be93-21397406e49a', 'a6f93311-3bce-4db4-8395-25cde9688e47', 34.76, 'EUR', 'REFUND',
        'COMPLETED', 'Refund - Eaton and Sons', 'REF818624', '2025-05-30 13:07:00', '2025-05-30 13:28:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d1d86674-b27e-4456-8973-37903ebe7f1c', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 159.74, 'CHF', 'REFUND',
        'COMPLETED', 'Service credit - Dorsey-Brooks', 'REF205171', '2025-07-28 20:15:49', '2025-07-28 21:03:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d399c955-6a6a-4d6d-ad5b-aa3be0c3c29c', '523c0c30-1242-44a7-a025-f015ef7d4127', 18.86, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Robinson Group Market', NULL, '2025-03-31 16:09:26', '2025-03-31 16:24:11');

-- Batch 14: Transactions 1301-1400
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0da44ce8-f7e7-4c2b-b76a-a290ce2f3478', '02630652-15bc-4df0-99b7-a41c93c79986', 157.45, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH660895', '2025-09-07 09:38:54', '2025-09-07 09:39:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f189228e-8b58-4314-b113-c605e8e1221e', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 76.46, 'AUD', 'DEBIT',
        'COMPLETED', 'Online transfer to Timothy Garza', 'TXN210327', '2025-08-01 13:51:46', '2025-08-01 14:17:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4d50252-7082-4262-aec5-ecd90efb0865', '2e3b6236-b73f-40b1-a88f-abafe787082b', 189.69, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF716304', '2025-06-09 16:49:02', '2025-06-09 17:34:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee68b5e6-6827-474b-957b-b9a6ef005fcd', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 69.84, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Tate and Sons', NULL, '2025-09-09 17:27:20', '2025-09-09 17:44:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ff9454d8-d1cc-4ec4-bcf7-cefabe77a130', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 164.39, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Copeland Group', 'REF786481', '2025-05-23 18:39:10', '2025-05-23 19:31:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9937c224-9a37-4030-92ab-4b72437ee25f', '17ad774a-8c59-447a-b309-a2953679e25a', 57.0, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF779027', '2025-06-08 12:02:18', '2025-06-08 12:16:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('518f44cb-add5-4c1d-8bcc-abef1cde5bf0', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 959.45, 'EUR', 'CREDIT',
        'COMPLETED', 'Bonus payment - Franco LLC', NULL, '2025-05-26 13:56:47', '2025-05-26 14:00:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8975c0b4-8f0c-4605-b91d-7281488101c0', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1932.69, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH987136', '2025-04-22 16:17:27', '2025-04-22 16:41:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2a1bb2f7-944f-437c-a2cc-56fd0ec1e44c', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 167.32, 'NOK', 'DEBIT',
        'COMPLETED', 'Payment to Garcia Inc', NULL, '2025-07-17 14:58:34', '2025-07-17 15:04:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cbce0cd5-3e83-45ba-a556-b0b24f9b6559', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 367.83, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Robin Dillon', 'REF719704', '2025-06-19 04:48:07', '2025-06-19 05:35:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3245b092-7dc0-4fe5-9f6b-a0a7e81a6944', '17ad774a-8c59-447a-b309-a2953679e25a', 159.75, 'USD', 'REFUND',
        'FAILED', 'Cancelled order refund', NULL, '2025-05-16 12:55:06', '2025-05-16 13:36:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fbc64e4c-aae1-4405-b1f9-90310b674397', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 232.14, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Edward Graves', 'ACH961335', '2025-06-14 04:35:48', '2025-06-14 04:52:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93abb80b-d74a-41ee-b9c2-5246c92d09da', '523c0c30-1242-44a7-a025-f015ef7d4127', 155.37, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Robinson-Vasquez', 'REF773435', '2025-05-24 08:23:41', '2025-05-24 08:43:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('44beb509-2701-4423-8f9f-2f6485b6cc8a', '4692fe34-18fd-4140-9f08-06189f96fac3', 21.31, 'USD', 'REFUND',
        'PENDING', 'Subscription cancellation refund', 'REF111595', '2025-05-18 15:28:11', '2025-05-18 16:28:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('54b6f4d9-52d2-46cd-bf00-01f1b34bf703', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1143.18, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Sanders LLC', 'ACH786197', '2025-05-27 18:08:07', '2025-05-27 18:46:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('db5d63c3-428b-4a34-acc8-2695d80efb58', '7a712793-0571-4844-b830-a1a4d3fdeb27', 157.38, 'GBP', 'REFUND',
        'FAILED', 'Refund - Serrano LLC', 'REF614726', '2025-07-15 14:48:16', '2025-07-15 15:45:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2cad5745-9827-4857-93a0-05a6a7b128b2', '4692fe34-18fd-4140-9f08-06189f96fac3', 327.57, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Hart-Baker Premium', NULL, '2025-07-26 10:23:04', '2025-07-26 10:42:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('145e64bf-0fa1-4f0a-b8f2-857f8242e37c', '20683a88-7f0e-471d-a3c5-bf175725052c', 25.94, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - May-Thomas', 'REF532349', '2025-05-28 12:41:33', '2025-05-28 12:59:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16b6fce7-1b14-41f9-a434-f417a501addc', '30f7fce8-3a42-4900-8129-5549a3175459', 1964.48, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Bradley Randall', 'ACH560344', '2025-07-11 09:00:31', '2025-07-11 09:18:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b402fc1f-f009-49cd-8832-467e480a6a57', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 200.35, 'CHF', 'DEBIT',
        'PENDING', 'Grocery - Garza PLC Market', NULL, '2025-09-04 16:49:32', '2025-09-04 17:12:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ebf2c68a-7d30-4c16-ae84-5251f886f855', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 848.74, 'AUD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF600714', '2025-04-27 12:28:41', '2025-04-27 13:13:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c9dbae7a-f3ad-43fd-94bc-9af0c2839391', '17ad774a-8c59-447a-b309-a2953679e25a', 1226.94, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF920869', '2025-05-29 14:48:00', '2025-05-29 15:13:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9e3cf148-8e1e-4fec-bea7-15071fa05d73', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 152.2, 'EUR', 'CREDIT',
        'FAILED', 'Interest payment', 'ACH989217', '2025-03-20 12:14:55', '2025-03-20 13:13:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f4b71105-6d24-4b0a-a59b-c429c3a8471a', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 199.99, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Lewis, Parks and Williams', 'REF985624', '2025-08-29 09:30:24', '2025-08-29 09:34:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e297f140-791a-4018-b660-94ae41307eb9', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 83.89, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Roberts-Spencer', 'REF590781', '2025-08-04 11:01:37', '2025-08-04 11:25:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('670e7743-7b08-4d8c-8fed-9d742cd9f593', '1817a074-62f9-463a-8dd7-c44151e47f96', 1124.26, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Higgins-Miller', 'ACH780379', '2025-08-26 13:47:50', '2025-08-26 14:13:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4cec811b-dd9e-4908-bb39-43c466dd13aa', 'd31cdd64-e270-4aa9-a77e-a89486214984', 180.4, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Taylor, Espinoza and Robinson', 'REF461402', '2025-06-01 16:48:06',
        '2025-06-01 17:43:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4cd3b1f6-81ae-47e8-8e96-ead580bbdaff', '17ad774a-8c59-447a-b309-a2953679e25a', 219.19, 'USD', 'CREDIT',
        'FAILED', 'Dividend payment - Rivera LLC', NULL, '2025-06-01 18:34:22', '2025-06-01 18:50:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7ae9a6be-884b-423a-be33-9dc3e2d84f4b', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 32.59, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Henry Inc Market', 'TXN403036', '2025-04-29 18:13:47', '2025-04-29 18:44:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('733cc6c9-074e-45b5-82da-3e734cd8646b', 'd49ec560-02e4-4049-b181-837031133e95', 107.89, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF143832', '2025-08-19 05:46:25', '2025-08-19 06:04:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d995455a-bd65-45be-9e11-1213ca45a25b', 'f9cae736-64d5-4692-a257-d87446ffc401', 44.11, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Smith, Kline and Schmidt Store', 'TXN535631', '2025-07-06 10:17:01',
        '2025-07-06 10:50:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4bf3ab0-2c73-46aa-ad12-a1bc49ec243a', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 46.18, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF630462', '2025-05-25 12:07:44', '2025-05-25 12:10:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1c847b96-48a9-48ff-8ed2-a989680a4128', '4692fe34-18fd-4140-9f08-06189f96fac3', 183.45, 'CHF', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF456222', '2025-03-24 12:28:02', '2025-03-24 12:37:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('19b44404-2075-44e5-a877-4a61a27caa46', '1817a074-62f9-463a-8dd7-c44151e47f96', 63.7, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Coleman, Ross and Morales', 'TXN734943', '2025-08-22 10:09:44',
        '2025-08-22 10:25:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('27ba9b71-8eee-4d4b-aec7-64a825fb53ca', '4110303a-5cca-4c46-885d-c1e3bd335d96', 85.98, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Morris and Sons', 'REF296556', '2025-07-19 23:20:12', '2025-07-20 00:15:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e09cc81b-d7a4-46b7-94a3-51fa7c217238', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 139.16, 'AUD', 'REFUND',
        'COMPLETED', 'Dispute resolution - French Ltd', 'REF150174', '2025-05-19 09:00:47', '2025-05-19 09:42:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9accf075-62b0-40f5-a33e-abc947f1c762', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1524.18, 'CAD', 'CREDIT',
        'COMPLETED', 'Refund from Adams, Rose and Silva', 'ACH800174', '2025-03-30 14:51:50', '2025-03-30 15:35:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5462695-3c64-46b9-b9ba-4b8e3db3b63c', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 126.42, 'AUD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 8433 Patel Oval Suite 741', 'TXN827188', '2025-05-22 14:10:05',
        '2025-05-22 14:12:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9dfb9f78-bda5-459d-acd0-848122148998', '4692fe34-18fd-4140-9f08-06189f96fac3', 650.31, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF850724', '2025-06-21 14:23:02', '2025-06-21 15:05:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92227cb2-4ff9-4faf-9aab-ef31c8d02daa', '523c0c30-1242-44a7-a025-f015ef7d4127', 206.99, 'CAD', 'TRANSFER',
        'PENDING', 'Transfer to Kristin Camacho', 'REF228354', '2025-04-13 18:30:43', '2025-04-13 19:13:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('da11ffa1-2196-4fcc-9487-d54660f23704', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 150.37, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - King-Hoffman', NULL, '2025-06-19 15:45:03', '2025-06-19 16:08:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('df00fa4e-e92b-457a-8236-2fa614c88a44', 'd31cdd64-e270-4aa9-a77e-a89486214984', 796.94, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with David Ford', 'REF883682', '2025-03-27 09:55:07', '2025-03-27 10:26:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('54887a78-525a-47e3-b5f9-3a0ec4ddf5b0', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1478.95, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Mccullough-Harris', NULL, '2025-08-07 16:04:36', '2025-08-07 16:20:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('37c6e031-13af-480c-908c-6a5849862981', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1068.65, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF239282', '2025-03-27 17:06:54', '2025-03-27 17:15:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('588891a6-74e4-4851-99c6-5dc0b0c4ec43', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1269.73, 'EUR', 'TRANSFER',
        'FAILED', 'International transfer', 'REF663940', '2025-04-28 12:34:18', '2025-04-28 13:30:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('95129ea4-6472-411a-b624-c33862ff264d', '12e6cc99-7181-4fde-98dc-93ded6112abf', 461.52, 'JPY', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF888897', '2025-04-29 10:16:58', '2025-04-29 10:55:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('075aed8f-ed6d-4361-90a1-640d2a1ddc55', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 36.64, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Anthony Ltd Services', 'TXN730406', '2025-07-01 12:26:39', '2025-07-01 12:27:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c063585f-b273-4b70-ba18-1621ea231be0', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1262.32, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF450294', '2025-04-02 15:28:37', '2025-04-02 16:01:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a40b1e32-85e5-4a5a-9809-5c7375e0e4d4', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 817.9, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF793446', '2025-04-17 16:52:18', '2025-04-17 17:08:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('378410fe-d3fc-47c6-8eeb-fbff5c4cd997', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 188.32, 'EUR', 'REFUND',
        'PENDING', 'Warranty claim refund', 'REF154233', '2025-05-23 15:12:53', '2025-05-23 15:16:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5cd7461f-8e90-4759-95f9-0ecad9a4de5c', 'd31cdd64-e270-4aa9-a77e-a89486214984', 38.07, 'CHF', 'REFUND',
        'FAILED', 'Cancelled order refund', 'REF265418', '2025-08-01 14:28:41', '2025-08-01 14:38:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ea475d6f-81a6-4ad5-8e49-a7bf52a42b76', '30f7fce8-3a42-4900-8129-5549a3175459', 58.91, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Martinez-Lutz', 'REF812839', '2025-08-29 23:07:47', '2025-08-29 23:27:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21686565-2694-4c80-ab62-27eacf498bc2', 'd31cdd64-e270-4aa9-a77e-a89486214984', 169.84, 'EUR', 'REFUND',
        'PENDING', 'Subscription cancellation refund', 'REF478879', '2025-06-20 14:46:59', '2025-06-20 15:40:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5f01d3db-fcb8-4145-b348-f4494fc0083a', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 173.54, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Edwards PLC', 'ACH418456', '2025-09-06 20:26:24', '2025-09-06 20:32:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5e106be3-896f-4cb2-9d0d-c5ae232c975c', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 26.84, 'SEK', 'DEBIT', 'FAILED',
        'Restaurant - Hogan and Sons', 'TXN216455', '2025-04-10 10:06:21', '2025-04-10 10:27:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6c814fba-1905-4060-bb52-ddc5e990e60c', '30f7fce8-3a42-4900-8129-5549a3175459', 25.72, 'EUR', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF840683', '2025-07-18 11:18:36', '2025-07-18 12:16:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1d15177d-e38c-44f8-8eb0-bff2a398754a', '523c0c30-1242-44a7-a025-f015ef7d4127', 159.47, 'GBP', 'TRANSFER',
        'COMPLETED', 'Transfer to Curtis Fitzpatrick', 'REF580809', '2025-07-07 17:23:27', '2025-07-07 17:27:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4ccc5f2a-3b7c-45f2-b49c-558d324c0fdc', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 690.68, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF967292', '2025-04-30 07:30:59', '2025-04-30 07:39:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('00ee6598-1fba-478b-bec6-76aaeab3bed1', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 729.49, 'EUR', 'TRANSFER',
        'FAILED', 'Rent payment to Madison Jackson', 'REF778153', '2025-05-10 12:27:23', '2025-05-10 12:32:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f7008969-f9c2-48b6-a970-8e560d37ebac', '4110303a-5cca-4c46-885d-c1e3bd335d96', 926.17, 'DKK', 'DEBIT',
        'COMPLETED', 'Payment to Martinez-White', 'TXN531620', '2025-06-09 14:53:12', '2025-06-09 15:40:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cce5c13d-a106-4829-9b55-e72b84154a57', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 1652.94, 'USD', 'CREDIT',
        'PENDING', 'Salary deposit - Blackwell-Miles', 'ACH241565', '2025-04-23 13:34:51', '2025-04-23 13:35:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6bf96e11-7afb-4a7c-a528-88b93d13abff', '30f7fce8-3a42-4900-8129-5549a3175459', 1445.05, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-07-26 09:01:32', '2025-07-26 09:11:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bce16bce-4789-4b21-959c-2f4d87fb90d9', '4110303a-5cca-4c46-885d-c1e3bd335d96', 304.49, 'CHF', 'DEBIT',
        'COMPLETED', 'Grocery - Jensen PLC Market', 'TXN408529', '2025-07-14 05:04:44', '2025-07-14 05:46:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4d95213-93ac-4a8b-b826-4de0eed869e5', '4692fe34-18fd-4140-9f08-06189f96fac3', 151.91, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF777187', '2025-06-02 12:03:20', '2025-06-02 12:23:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8e9c9814-f9ae-4f7b-b6c3-d8396a6e66cd', '12e6cc99-7181-4fde-98dc-93ded6112abf', 189.39, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Pennington-Walker', 'REF521829', '2025-07-06 11:07:15', '2025-07-06 11:43:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('92a52371-97d8-49e2-b0bf-5fac661a781a', '4692fe34-18fd-4140-9f08-06189f96fac3', 699.12, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - King-Woods', 'ACH270882', '2025-05-17 10:02:46', '2025-05-17 10:33:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5bc8d6f5-59fb-4ca7-846b-94f402469c10', '50682165-f2c3-4049-909e-951838384433', 5406.59, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH656553', '2025-08-27 16:48:04', '2025-08-27 17:24:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bce97934-2464-4d86-aa2e-23ab8395dcd5', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 31.46, 'GBP', 'REFUND',
        'FAILED', 'Processing fee refund', NULL, '2025-04-24 11:36:51', '2025-04-24 12:00:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d80ffb63-5002-403f-bc03-961d1334e896', 'a6f93311-3bce-4db4-8395-25cde9688e47', 191.29, 'EUR', 'REFUND',
        'FAILED', 'Service credit - Palmer-Hale', NULL, '2025-07-12 16:58:38', '2025-07-12 17:39:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e727f9bb-a0eb-42eb-9a3f-c3ee6f8b8ecc', '12e6cc99-7181-4fde-98dc-93ded6112abf', 128.49, 'GBP', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-03-21 09:56:19', '2025-03-21 10:54:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('22132085-8927-409b-bdb6-2e5b138ec8b8', '20683a88-7f0e-471d-a3c5-bf175725052c', 1100.43, 'EUR', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF809420', '2025-03-27 04:12:01', '2025-03-27 04:47:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d9ff67ed-caf1-4c70-8745-bbb338caf32b', '12e6cc99-7181-4fde-98dc-93ded6112abf', 140.79, 'CAD', 'REFUND',
        'COMPLETED', 'Service credit - Dennis-Harrison', 'REF125007', '2025-03-24 16:29:43', '2025-03-24 17:02:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e5c7309a-5643-44db-a1e7-81a8e6681934', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 149.51, 'AUD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF920768', '2025-07-15 14:16:03', '2025-07-15 14:40:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4ac934f-643b-422e-9f59-c892e544a125', '30f7fce8-3a42-4900-8129-5549a3175459', 422.58, 'GBP', 'DEBIT',
        'COMPLETED', 'Restaurant - Ortega-Stanley', 'TXN818032', '2025-08-02 10:04:59', '2025-08-02 10:43:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1ed23818-a1c7-45f3-83df-cc45152c63fb', '20683a88-7f0e-471d-a3c5-bf175725052c', 1482.89, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Wright-Madden', 'ACH662541', '2025-06-12 02:08:24', '2025-06-12 02:10:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9d73cfcb-bd1d-4fac-9923-2777c261eb0f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 648.08, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Wright-Fisher', 'ACH277374', '2025-04-06 09:10:01', '2025-04-06 09:52:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('43da89ae-68ed-4f31-a9f3-9db654e90c0f', 'f9cae736-64d5-4692-a257-d87446ffc401', 5532.07, 'USD', 'CREDIT',
        'FAILED', 'Dividend payment - Maddox, Williams and Munoz', 'ACH544949', '2025-06-16 12:56:21',
        '2025-06-16 12:56:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c5d8a08b-0a43-4c2f-9f07-30ea0c4c6ad2', '4110303a-5cca-4c46-885d-c1e3bd335d96', 65.03, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 84638 Gray Island', 'TXN840311', '2025-03-16 13:13:02', '2025-03-16 13:44:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('72b000f8-60c7-4564-b125-6d7189b6286f', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 95.53, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF735998', '2025-04-02 11:46:22', '2025-04-02 11:46:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ef0d47c8-563a-4fe4-a2aa-b633e17e48f0', '17ad774a-8c59-447a-b309-a2953679e25a', 99.42, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - White LLC', 'TXN222068', '2025-04-20 13:21:06', '2025-04-20 13:34:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('621c525f-5dfd-44f5-99c8-8ddbe74ac291', '12e6cc99-7181-4fde-98dc-93ded6112abf', 7632.53, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Pugh-Robbins', 'ACH843286', '2025-06-30 10:34:44', '2025-06-30 10:49:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d7d47b8c-c9a1-4e30-a58c-b3eb2e176563', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1332.24, 'GBP', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF467028', '2025-04-16 16:35:13', '2025-04-16 16:40:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5af91322-3ab4-4349-a751-bbddb05ab667', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 172.79, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Marshall-Cunningham', 'REF770118', '2025-08-20 18:49:25',
        '2025-08-20 19:26:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5a902e1-1d99-45b9-b9b7-5fa98d950c53', '02630652-15bc-4df0-99b7-a41c93c79986', 305.34, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-09-07 12:35:48', '2025-09-07 13:09:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ece3fc5f-1d84-4d1c-83f7-f66deb5acfc3', '30f7fce8-3a42-4900-8129-5549a3175459', 549.89, 'GBP', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF811701', '2025-07-21 23:13:46', '2025-07-21 23:47:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7348d008-401a-4408-9792-365f60e4a667', '17ad774a-8c59-447a-b309-a2953679e25a', 140.6, 'CAD', 'REFUND',
        'FAILED', 'Processing fee refund', 'REF961567', '2025-06-05 14:42:47', '2025-06-05 15:22:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ee080ca-33b6-44f5-91f1-4dc189df93e6', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 125.25, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Carolyn Davis', 'REF971250', '2025-03-22 09:43:25', '2025-03-22 09:59:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6ed6726-9cb4-4b12-bc8f-faf70ac8dff9', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 646.68, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Stacey Wood', 'REF312491', '2025-05-06 11:12:33', '2025-05-06 12:10:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d4297268-58a8-4a8f-8634-725af690112e', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 390.04, 'JPY', 'DEBIT',
        'COMPLETED', 'Online transfer to Richard Roberts', 'TXN871310', '2025-05-27 18:10:13', '2025-05-27 18:33:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f73efe5-372f-4209-8743-77217804d018', 'd31cdd64-e270-4aa9-a77e-a89486214984', 124.64, 'CHF', 'CREDIT',
        'COMPLETED', 'Transfer from Thomas Duncan', 'ACH241868', '2025-08-16 15:50:32', '2025-08-16 16:13:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('95e17431-ab0a-4d9a-9e6f-41cdb7166683', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1953.44, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Conway, Perkins and Baldwin', NULL, '2025-05-30 14:46:25', '2025-05-30 15:17:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f0fcec5-95cd-4c87-91a1-1e981197f39c', '20683a88-7f0e-471d-a3c5-bf175725052c', 1468.83, 'EUR', 'TRANSFER',
        'PENDING', 'Investment account funding', 'REF480510', '2025-04-04 17:54:48', '2025-04-04 18:50:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f7e32ea-57eb-4e39-b67e-0f0b28b8eb08', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 46.8, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-05-10 15:14:17', '2025-05-10 15:25:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cf38c739-9fd5-48b8-8449-17d1e5465168', '12e6cc99-7181-4fde-98dc-93ded6112abf', 56.27, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-08-26 14:10:01', '2025-08-26 14:29:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f0bf2108-9818-4c6c-a7e0-b8c291b58c84', '50682165-f2c3-4049-909e-951838384433', 87.04, 'USD', 'DEBIT',
        'CANCELLED', 'Grocery - Graham Group Market', 'TXN292183', '2025-04-16 17:24:34', '2025-04-16 17:29:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('73fd859e-ace9-46f5-a9b7-07f89747e0fb', '1817a074-62f9-463a-8dd7-c44151e47f96', 673.46, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF781446', '2025-03-17 11:54:50', '2025-03-17 12:23:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bd7b21c8-bf7e-409c-b6f3-2006d8934ca4', 'd49ec560-02e4-4049-b181-837031133e95', 61.36, 'GBP', 'TRANSFER',
        'COMPLETED', 'Bill split with Carrie Smith', NULL, '2025-05-22 09:31:03', '2025-05-22 10:17:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1ae90565-29ff-4794-a485-f572b6afed26', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 119.31, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Estrada and Sons', NULL, '2025-04-13 11:23:11', '2025-04-13 11:44:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('20ab89df-3981-4f32-bc3f-ccb41ca80659', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 401.58, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Wright-Porter Store', NULL, '2025-03-21 16:17:39', '2025-03-21 16:40:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a2f37f1d-aceb-4de3-937f-0f5e96b48cd6', '12e6cc99-7181-4fde-98dc-93ded6112abf', 35.21, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Hernandez-Anderson Market', 'TXN868398', '2025-07-03 13:12:00', '2025-07-03 13:45:44');

-- Batch 15: Transactions 1401-1500
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3a85fc85-fb2b-4d8f-b7c5-96d65e3230f2', 'f9cae736-64d5-4692-a257-d87446ffc401', 845.59, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Pham-Miller', 'ACH446638', '2025-04-27 10:09:14', '2025-04-27 10:35:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('526cb548-2690-4523-9a60-09efd3dc6395', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1005.96, 'USD', 'CREDIT',
        'PENDING', 'Government benefit payment', 'ACH450337', '2025-05-25 18:27:56', '2025-05-25 19:01:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('100c1785-9b0e-420d-aff8-d8e5efd0fd8f', '4110303a-5cca-4c46-885d-c1e3bd335d96', 77.94, 'USD', 'REFUND',
        'PENDING', 'Service credit - Harrington Group', 'REF585760', '2025-07-26 09:36:32', '2025-07-26 10:07:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6b882bfa-9f26-490f-ae0c-7941cfb09e09', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 13.17, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Brown Inc', 'TXN298702', '2025-05-12 02:08:07', '2025-05-12 02:50:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f572f93e-0a4e-484d-8449-6bee6665b716', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 112.07, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-07-29 07:13:00', '2025-07-29 07:40:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4b04b80f-4803-4859-a0e8-db8c6c7ff0d6', '523c0c30-1242-44a7-a025-f015ef7d4127', 2634.04, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH931781', '2025-06-26 09:02:30', '2025-06-26 09:54:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('74f83789-fc12-45b5-ae19-c945e262b375', '30f7fce8-3a42-4900-8129-5549a3175459', 4320.85, 'GBP', 'CREDIT',
        'COMPLETED', 'Salary deposit - Abbott Group', NULL, '2025-07-14 09:56:31', '2025-07-14 10:33:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('40a87c25-b2c4-43e5-920a-6a543ef0d9ee', '30f7fce8-3a42-4900-8129-5549a3175459', 170.86, 'CHF', 'REFUND',
        'COMPLETED', 'Price adjustment - Long, Castro and Bell', 'REF758698', '2025-05-27 17:34:24',
        '2025-05-27 17:44:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('209044bf-816b-4d12-8357-7c79157b4b25', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 227.09, 'CAD', 'CREDIT',
        'COMPLETED', 'Refund from Pineda Inc', NULL, '2025-05-04 16:14:19', '2025-05-04 16:21:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a37e1aab-f526-4500-892b-f38bad5ed7a4', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 30.28, 'AUD', 'REFUND',
        'PENDING', 'Price adjustment - Adams-Bradley', 'REF225918', '2025-06-20 06:12:20', '2025-06-20 07:02:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('566fe7f4-35c3-418a-ba11-476683c0eb64', '523c0c30-1242-44a7-a025-f015ef7d4127', 1195.22, 'GBP', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Michael Turner', 'REF405464', '2025-03-16 14:15:12', '2025-03-16 14:17:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e868d102-294f-4613-99bf-d109eeb44f9c', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 317.18, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Bailey-Ryan', 'TXN134440', '2025-04-20 18:13:08', '2025-04-20 18:45:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f378cca-9fb2-44a7-8337-cb429a358f93', '4110303a-5cca-4c46-885d-c1e3bd335d96', 14.21, 'EUR', 'DEBIT',
        'COMPLETED', 'Card payment - Martin PLC Store', 'TXN841273', '2025-05-10 10:49:16', '2025-05-10 10:51:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('294dff6b-8ea9-4e9e-b14c-4ab10b8f77e8', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 152.61, 'EUR', 'REFUND',
        'FAILED', 'Dispute resolution - Calderon Group', 'REF801673', '2025-09-11 18:23:07', '2025-09-11 18:45:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0ed7514-e804-481e-817f-ae781ae9036e', 'd31cdd64-e270-4aa9-a77e-a89486214984', 191.66, 'GBP', 'REFUND',
        'COMPLETED', 'Return processing - Ochoa, Simmons and Miles', 'REF789593', '2025-05-02 18:21:40',
        '2025-05-02 18:27:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3d1cf456-82d4-4766-9cc4-0cc250f4f5d5', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1163.52, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF307644', '2025-04-07 10:13:43', '2025-04-07 10:18:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7f91d763-ca64-4a40-a824-e44fd4f0959e', '20683a88-7f0e-471d-a3c5-bf175725052c', 1158.19, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF782316', '2025-06-01 12:37:29', '2025-06-01 12:43:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('04c11a40-59ca-4753-a8a0-952c7716a5ef', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 364.18, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Vargas, Rivers and Green Store', NULL, '2025-08-15 09:50:26',
        '2025-08-15 10:32:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5e20b885-c45f-4074-8ce4-bc6f508472e4', '523c0c30-1242-44a7-a025-f015ef7d4127', 63.83, 'CHF', 'REFUND',
        'PENDING', 'Cancelled order refund', NULL, '2025-07-26 18:58:46', '2025-07-26 19:21:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7eedecf3-8d93-4c74-b84f-5884a8d93822', 'f9cae736-64d5-4692-a257-d87446ffc401', 60.72, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Chavez, Ellis and Clark Market', NULL, '2025-09-04 16:23:02', '2025-09-04 17:10:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9a494b46-8796-4fe2-b9c4-244e7a279b63', '17ad774a-8c59-447a-b309-a2953679e25a', 1798.1, 'GBP', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH623828', '2025-08-18 10:28:48', '2025-08-18 11:16:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d933bec1-23f2-442e-9d4a-e5e75ac5ca58', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 169.5, 'GBP', 'CREDIT',
        'CANCELLED', 'Insurance claim settlement', 'ACH904065', '2025-03-23 09:25:07', '2025-03-23 10:08:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ccf88ee7-127f-4e20-ab4f-ffb26319581f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 211.77, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Wolf Inc', 'ACH780358', '2025-05-24 17:15:32', '2025-05-24 17:29:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e14ea5b6-0b88-4594-906f-499c81fa7586', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1022.01, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF594512', '2025-06-09 15:47:08', '2025-06-09 16:27:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5072c811-5271-46ef-8ec2-e884877fa792', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 113.96, 'EUR', 'REFUND',
        'COMPLETED', 'Service credit - Perez, Elliott and Conrad', 'REF577419', '2025-07-31 09:11:26',
        '2025-07-31 09:39:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0d2cf122-dca7-4f4c-be51-e2da20f237ff', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 113.9, 'CAD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF994497', '2025-08-06 13:11:03', '2025-08-06 13:52:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24e601f0-144b-465b-9ac6-6fdf99418624', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 896.38, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-05-28 09:23:52', '2025-05-28 10:16:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3b6a21fe-f9a6-464b-a244-888260324e28', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1639.34, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Rollins-Murphy', 'ACH807670', '2025-04-04 11:41:27', '2025-04-04 12:22:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4b2239be-2569-49af-a9e6-88525970ef1b', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 322.92, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Evans-Allen', 'TXN570852', '2025-04-02 15:00:20', '2025-04-02 15:29:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec60a337-d181-4678-80f7-c562dc37f1ff', '17ad774a-8c59-447a-b309-a2953679e25a', 185.2, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Mcguire, Mason and Bartlett', 'REF780414', '2025-05-11 03:53:09',
        '2025-05-11 04:36:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64c9d35b-ee01-4228-b6b2-a2033a15577d', '523c0c30-1242-44a7-a025-f015ef7d4127', 3578.51, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH467897', '2025-07-22 14:31:42', '2025-07-22 14:59:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d80af0b1-8eb6-4044-996b-7702caac20a8', '50682165-f2c3-4049-909e-951838384433', 164.48, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Jones, Tucker and Vargas', 'REF449141', '2025-06-18 11:42:45',
        '2025-06-18 12:04:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8070ed2-5361-4a91-b2a1-574bfaf02544', '20683a88-7f0e-471d-a3c5-bf175725052c', 467.02, 'GBP', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 81849 Hunter Views Suite 200', 'TXN836082', '2025-06-01 18:44:12',
        '2025-06-01 19:07:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('54386f38-9d48-43da-8da1-f38400fa7915', '30f7fce8-3a42-4900-8129-5549a3175459', 440.88, 'GBP', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF423879', '2025-06-12 20:18:06', '2025-06-12 21:13:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aaf62dc9-f6c3-4ffa-998e-4623c341e22e', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 114.54, 'JPY', 'REFUND',
        'COMPLETED', 'Dispute resolution - Garza Group', NULL, '2025-03-19 12:26:10', '2025-03-19 13:03:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3e39e6f6-7c4a-4905-ac36-97197c99dd82', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1967.5, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Marshall Inc', 'ACH114354', '2025-04-21 11:17:40', '2025-04-21 11:34:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('049c4777-661a-482c-ae2f-f252009f4d6b', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 155.96, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF634930', '2025-07-30 12:06:26', '2025-07-30 12:36:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9ce539fc-0eca-4744-8931-f379c407c83b', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 183.18, 'EUR', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF572954', '2025-07-11 18:40:12', '2025-07-11 19:15:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7766148d-a1e5-41a1-8367-77f0b3279fff', '02630652-15bc-4df0-99b7-a41c93c79986', 161.93, 'EUR', 'REFUND',
        'COMPLETED', 'Price adjustment - Nunez-Morales', NULL, '2025-08-08 14:29:30', '2025-08-08 15:04:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('03bd3947-3e82-4700-8141-41aca7f76167', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 142.53, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF248423', '2025-05-21 12:15:45', '2025-05-21 12:26:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f1d9cff3-821a-431d-bb66-dcdd1e39077b', '2e3b6236-b73f-40b1-a88f-abafe787082b', 6291.73, 'NOK', 'CREDIT',
        'FAILED', 'Transfer from Julie Williams', NULL, '2025-09-08 10:56:10', '2025-09-08 11:20:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c86780f0-95d0-48c3-bc17-cec0f8b220cf', '523c0c30-1242-44a7-a025-f015ef7d4127', 1082.26, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Thompson-Simpson', 'ACH530376', '2025-08-16 10:46:31', '2025-08-16 10:50:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d4ffb24f-aa3f-46f8-a61d-41980e08936c', '4692fe34-18fd-4140-9f08-06189f96fac3', 73.53, 'CAD', 'REFUND',
        'COMPLETED', 'Return processing - Oconnor-Perez', 'REF426406', '2025-04-17 17:39:21', '2025-04-17 17:44:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fbe3b837-e382-4760-ae67-689efd112a10', '02630652-15bc-4df0-99b7-a41c93c79986', 1452.39, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Terri Rice', NULL, '2025-04-08 15:03:59', '2025-04-08 15:52:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b5510226-302a-47d8-8b0f-6c3a1400e811', '02630652-15bc-4df0-99b7-a41c93c79986', 48.43, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF563987', '2025-06-30 15:22:15', '2025-06-30 16:11:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8c8657f6-3866-44c5-9144-e84e70f062e2', '2e3b6236-b73f-40b1-a88f-abafe787082b', 17.14, 'USD', 'REFUND',
        'PENDING', 'Subscription cancellation refund', 'REF546655', '2025-04-28 17:47:19', '2025-04-28 18:46:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('43502a00-5d87-400d-9053-3e02be46be67', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 65.82, 'GBP', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH637350', '2025-04-20 15:18:00', '2025-04-20 15:20:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39f06a5b-bcf5-4b2b-93e1-00ee0e9c4567', 'd31cdd64-e270-4aa9-a77e-a89486214984', 17.69, 'EUR', 'REFUND',
        'COMPLETED', 'Dispute resolution - Thompson-Black', 'REF226235', '2025-07-11 11:54:10', '2025-07-11 12:21:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee7e8977-3364-4188-a96d-d093a248ffdf', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 101.39, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH485659', '2025-08-31 15:28:10', '2025-08-31 16:25:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bb930bba-2a08-47e4-a9b1-09079e580a72', 'd49ec560-02e4-4049-b181-837031133e95', 700.21, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Manning and Sons', 'ACH291434', '2025-06-10 09:18:32', '2025-06-10 09:20:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('96ed0576-d108-4ae8-9e86-bd13949be44d', 'f9cae736-64d5-4692-a257-d87446ffc401', 63.29, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-06-07 09:21:27', '2025-06-07 09:37:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cb732cc1-c9cd-4bf6-a859-953d56273c04', '2e3b6236-b73f-40b1-a88f-abafe787082b', 116.06, 'CHF', 'REFUND',
        'COMPLETED', 'Refund - Duncan, Delacruz and Fleming', 'REF275579', '2025-08-13 12:00:19',
        '2025-08-13 12:30:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dca3e68a-8175-4ef8-a897-3bd0d2c1edc4', '30f7fce8-3a42-4900-8129-5549a3175459', 58.82, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Bender, Benitez and Munoz Market', 'TXN975823', '2025-06-26 03:59:55',
        '2025-06-26 04:47:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1569f6d3-ad1b-46f2-b176-6cf2729a6656', '523c0c30-1242-44a7-a025-f015ef7d4127', 2645.06, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Richardson-Perkins', NULL, '2025-04-23 18:15:02', '2025-04-23 18:29:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ff080d7-7741-4613-9d9d-a5edd2293ed0', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 92.26, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Jared Wright', NULL, '2025-08-19 14:55:29', '2025-08-19 15:51:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8173017e-7430-4c9a-87a3-7cde8b5e98d5', '50682165-f2c3-4049-909e-951838384433', 672.26, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Timothy Smith', 'REF178187', '2025-06-16 17:58:26', '2025-06-16 18:05:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6099e1ff-af61-4c90-ba64-3773b08de538', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 404.02, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Arias, Walter and Conner Services', 'TXN490852', '2025-04-05 12:17:45',
        '2025-04-05 12:49:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bc83aa9d-b1f4-4cc4-983c-742dc7c35963', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 68.35, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Torres-Flores', 'REF131048', '2025-04-05 12:47:10', '2025-04-05 13:14:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4d3afc8-2e4d-4be5-8264-a50d1d991be5', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 205.29, 'AUD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF908049', '2025-04-10 13:00:12', '2025-04-10 13:17:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7ade0de5-caf7-40be-b0ba-9329edca4d5c', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 90.85, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Conner, Johnson and Martin Market', NULL, '2025-08-17 21:37:40', '2025-08-17 22:18:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64192c3b-65df-4457-88f2-588024a859ed', '523c0c30-1242-44a7-a025-f015ef7d4127', 1998.92, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Haley LLC', NULL, '2025-07-27 16:49:22', '2025-07-27 17:33:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bec52338-a0cc-4cd2-98e7-47a15086903c', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 183.15, 'USD', 'REFUND',
        'FAILED', 'Overpayment refund', 'REF239677', '2025-05-12 00:53:28', '2025-05-12 01:21:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('57acc8d3-127f-4ff6-8ed6-2d608cc80c81', '4692fe34-18fd-4140-9f08-06189f96fac3', 77.92, 'USD', 'REFUND',
        'PENDING', 'Dispute resolution - Smith PLC', 'REF155740', '2025-08-31 16:28:44', '2025-08-31 16:37:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21360ef5-6e25-420c-a626-8bf79ed66764', '1817a074-62f9-463a-8dd7-c44151e47f96', 286.56, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Obrien-Howe Store', 'TXN968772', '2025-07-09 15:50:14', '2025-07-09 16:04:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3786f1ef-7c7c-4b28-8a5b-c89426c094d5', '523c0c30-1242-44a7-a025-f015ef7d4127', 88.19, 'USD', 'DEBIT',
        'PENDING', 'Card payment - Trujillo, Robinson and Gallegos Store', 'TXN849179', '2025-08-21 14:24:52',
        '2025-08-21 15:10:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8da24bd4-d177-4f28-ac75-a00c195a59a9', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 2370.35, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Sanchez-Jones', NULL, '2025-08-05 23:57:54', '2025-08-06 00:35:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7fb2feeb-97b1-4bfb-9059-f13551fa3070', '2e3b6236-b73f-40b1-a88f-abafe787082b', 43.5, 'CAD', 'REFUND', 'FAILED',
        'Refund - Rivera, Reed and Miller', NULL, '2025-04-25 03:16:11', '2025-04-25 03:49:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e22d4465-b0de-430f-ab98-d49628ef6a22', '30f7fce8-3a42-4900-8129-5549a3175459', 181.02, 'USD', 'REFUND',
        'PENDING', 'Processing fee refund', 'REF752511', '2025-07-06 10:44:45', '2025-07-06 10:55:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f66d0b58-8c31-4fbf-bbf6-c819c06f4483', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 91.85, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Durham, Sherman and Swanson', 'REF651427', '2025-06-07 17:03:26', '2025-06-07 17:39:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('737676a9-b71f-4b28-bcd1-f36e79f29ea3', '4692fe34-18fd-4140-9f08-06189f96fac3', 516.37, 'AUD', 'TRANSFER',
        'PENDING', 'Rent payment to Paula Hammond', 'REF442731', '2025-08-20 13:33:01', '2025-08-20 13:40:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('345b155d-4ee9-4c02-944a-c53db38f032b', '17ad774a-8c59-447a-b309-a2953679e25a', 39.87, 'EUR', 'REFUND',
        'PENDING', 'Warranty claim refund', 'REF238317', '2025-08-03 09:59:32', '2025-08-03 10:14:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0a8ccb70-51b3-4840-8122-631580906052', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 323.71, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Nichole Escobar', 'REF519294', '2025-03-30 10:38:41', '2025-03-30 10:58:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4652cdd4-497e-41e7-bf13-29a6a05a9d09', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 27.91, 'GBP', 'DEBIT',
        'PENDING', 'Bill payment - Douglas, Allen and Frey Services', NULL, '2025-08-31 13:26:51',
        '2025-08-31 13:44:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('50c225d1-bd81-4d4e-9d06-ee150f85bb18', '50682165-f2c3-4049-909e-951838384433', 36.24, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Christian, Frank and Curry', NULL, '2025-07-06 17:44:17', '2025-07-06 18:35:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('78dc0715-923b-42c9-958c-942e4d2ca33d', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 86.87, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Nicole Anderson', NULL, '2025-06-28 11:30:12', '2025-06-28 12:11:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f51ad31f-d050-42dc-914b-9e3277533bed', '17ad774a-8c59-447a-b309-a2953679e25a', 125.44, 'USD', 'REFUND',
        'FAILED', 'Return processing - Shepard, Cunningham and Norton', NULL, '2025-07-16 16:05:43',
        '2025-07-16 16:46:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb9c0631-d8b9-42ae-9bf8-fc020d698b03', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 36.94, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF183287', '2025-04-10 22:35:57', '2025-04-10 22:58:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e72b07b4-4b59-4a1d-9a60-93c7a6e34da6', 'd49ec560-02e4-4049-b181-837031133e95', 213.71, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Clark, Levine and Marks', 'TXN615912', '2025-06-19 20:07:21', '2025-06-19 21:02:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('73afed1b-74b9-4be5-9baf-58383be2983f', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 16.3, 'EUR', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF603529', '2025-09-05 22:52:22', '2025-09-05 23:20:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ab426554-bef5-409f-b6a0-e96941895aab', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 59.14, 'EUR', 'DEBIT',
        'COMPLETED', 'Bill payment - Brock, Serrano and Campbell Services', 'TXN911270', '2025-07-24 14:04:50',
        '2025-07-24 15:00:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f00512f2-cfa9-4009-abde-531f7e0b20b7', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1774.47, 'AUD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Edwards, Hernandez and Ibarra', 'ACH728170', '2025-06-03 14:52:16',
        '2025-06-03 15:09:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8ea4c112-6f5e-44fd-bf4d-7e188ac3bb64', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1914.41, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Walker, Ellis and Tucker', 'ACH694099', '2025-05-30 14:40:53',
        '2025-05-30 15:04:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bd94b8b0-6ad9-4aa6-baf0-ebaf69e8d9da', '523c0c30-1242-44a7-a025-f015ef7d4127', 102.67, 'GBP', 'REFUND',
        'FAILED', 'Service credit - Horne-Castillo', 'REF902146', '2025-06-27 11:07:30', '2025-06-27 12:05:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3f3f2af4-4ab7-4353-81f6-fd85e80a4ee7', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 97.97, 'GBP', 'REFUND',
        'PENDING', 'Dispute resolution - Salinas, Schroeder and Moon', NULL, '2025-04-08 10:01:21',
        '2025-04-08 10:38:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6903ff14-790e-4fed-87fb-a6774932d57d', '1817a074-62f9-463a-8dd7-c44151e47f96', 86.97, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH324802', '2025-09-07 18:39:56', '2025-09-07 19:00:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee47ac46-b3c0-4225-99a8-63a16412b4cb', '20683a88-7f0e-471d-a3c5-bf175725052c', 157.94, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF276603', '2025-07-28 08:33:16', '2025-07-28 08:45:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ffd277e5-eec4-4abc-91ee-d04688428721', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 167.31, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-03-18 10:35:17', '2025-03-18 10:56:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8cd89b9e-c075-4b89-a20b-05a7fbf80dcc', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 8.35, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Garrison-Campbell', 'TXN848360', '2025-03-22 10:29:50', '2025-03-22 11:26:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3f5a19f6-5a7a-4fcc-b77d-26e03d0a60c8', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 824.31, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-07-21 17:08:37', '2025-07-21 17:22:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3d971b66-69a5-4f89-8880-5f5c51a69926', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1432.03, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Brandi Ray', 'REF147380', '2025-03-31 14:33:17', '2025-03-31 14:37:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d9538ca1-695b-43a0-902a-75d78200576e', '2e3b6236-b73f-40b1-a88f-abafe787082b', 5175.23, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-07-03 10:53:06', '2025-07-03 11:49:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3fcfe0a3-61c8-41e1-abc7-07bfdae2b5ac', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1023.14, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-07-17 00:04:56', '2025-07-17 00:57:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec64badd-b7fa-47dc-b33e-4d1d6f47ea8b', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1473.79, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-04-13 18:32:32', '2025-04-13 19:24:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('688af380-4a0a-4b31-a37a-742d3d875823', '20683a88-7f0e-471d-a3c5-bf175725052c', 9.92, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Peterson-Walters', 'TXN131250', '2025-06-18 10:00:25', '2025-06-18 10:30:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d72b481-ea78-4d83-a5fa-0489283980a2', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 170.15, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Fowler LLC', 'ACH900610', '2025-04-12 15:34:40', '2025-04-12 15:45:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1d219b43-643a-4e25-8b9d-3c5d4c1f823e', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 100.11, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF838953', '2025-08-19 09:46:12', '2025-08-19 10:21:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7c9f06b2-27e3-46f3-9a43-ccdd09f8cc04', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 904.23, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Rodriguez Inc', NULL, '2025-04-06 05:42:09', '2025-04-06 06:18:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6baf5d0f-892d-4ee1-b6af-f5f08cb9e6de', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 763.42, 'USD', 'DEBIT',
        'FAILED', 'Online transfer to Laurie King', 'TXN827889', '2025-03-27 18:01:57', '2025-03-27 18:21:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('809b3ef3-a956-461d-9d60-4528e633a348', '7a712793-0571-4844-b830-a1a4d3fdeb27', 495.57, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Hall Inc Store', 'TXN924464', '2025-05-21 01:30:51', '2025-05-21 02:10:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e03a4415-44fa-40c9-8761-b735f84fcd49', '02630652-15bc-4df0-99b7-a41c93c79986', 56.04, 'EUR', 'REFUND',
        'COMPLETED', 'Price adjustment - Galvan Ltd', 'REF729617', '2025-03-29 09:23:10', '2025-03-29 10:02:14');

-- Batch 16: Transactions 1501-1600
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('95da5412-0800-4bcd-9bd2-42856357491a', '02630652-15bc-4df0-99b7-a41c93c79986', 128.71, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH110552', '2025-04-22 16:59:10', '2025-04-22 17:59:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c2d92534-3190-4c31-8b94-e1c12232c997', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 2340.33, 'AUD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Taylor-Frost', 'ACH255245', '2025-07-25 10:32:07', '2025-07-25 11:30:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('049c25e9-d1c3-4530-8aff-0fe2dd21745b', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 9.17, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 05372 Ashley Vista Apt. 697', NULL, '2025-04-10 14:47:34',
        '2025-04-10 15:44:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cdc2cafd-0507-49c8-ba98-942847859f0a', '4692fe34-18fd-4140-9f08-06189f96fac3', 65.56, 'USD', 'CREDIT',
        'PENDING', 'Commission payment', 'ACH848380', '2025-06-09 09:34:41', '2025-06-09 09:39:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a79b10b6-a9d5-46b3-9d51-c1dbc1b29c8b', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 38.59, 'CAD', 'DEBIT',
        'COMPLETED', 'Online purchase - Wagner-Herrera', 'TXN696590', '2025-07-14 13:02:07', '2025-07-14 13:19:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f82b7e3-34c6-480c-8481-00b608d44374', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 94.22, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Rodriguez-Gonzalez', 'TXN791349', '2025-06-14 14:07:12', '2025-06-14 14:49:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f18a8ef-442c-4c05-8a69-cd87692ae2be', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 14.01, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 664 Dean Springs Apt. 434', NULL, '2025-08-12 11:26:52', '2025-08-12 11:32:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5629f4a7-fc8e-4d21-96ca-eda68c3f899e', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 181.0, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-20 13:44:10', '2025-06-20 14:17:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9d7a64a7-39c5-4d3e-aeb5-eac574fc63d1', '4110303a-5cca-4c46-885d-c1e3bd335d96', 168.94, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-05-13 17:12:47', '2025-05-13 17:30:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7ff2079f-e29c-4b49-8138-d79b5c1b5f02', '523c0c30-1242-44a7-a025-f015ef7d4127', 48.61, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Krause, White and Stephens', 'TXN428445', '2025-06-04 18:52:31',
        '2025-06-04 19:47:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0afdcee3-3efd-40e0-aeac-f6ba0f960831', '1817a074-62f9-463a-8dd7-c44151e47f96', 68.91, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Wall, Brock and Daniels', NULL, '2025-04-02 06:45:44', '2025-04-02 07:42:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bd2e83d6-8a3a-43cc-b6c9-145bb502c952', '523c0c30-1242-44a7-a025-f015ef7d4127', 97.91, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Graham Group', 'TXN979518', '2025-07-31 09:09:20', '2025-07-31 09:37:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('207382e3-7934-4c18-834f-2104f4589895', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 134.75, 'EUR', 'REFUND',
        'COMPLETED', 'Service credit - Lopez, Parker and Thomas', 'REF367586', '2025-06-09 17:29:31',
        '2025-06-09 17:30:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6b4a71ce-09ff-4f07-a42b-f10f40dd0c79', '12e6cc99-7181-4fde-98dc-93ded6112abf', 123.71, 'SEK', 'REFUND',
        'FAILED', 'Return processing - Walker and Sons', 'REF981680', '2025-07-20 00:01:26', '2025-07-20 00:23:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('baa8896e-725f-4e55-acb9-3edd109f6a93', 'a6f93311-3bce-4db4-8395-25cde9688e47', 733.33, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF435326', '2025-07-20 16:08:00', '2025-07-20 16:09:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('01540a7e-114a-47df-af33-99278da1d365', '17ad774a-8c59-447a-b309-a2953679e25a', 365.13, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Martha Bradley', 'REF715893', '2025-05-05 17:43:35', '2025-05-05 18:02:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7e473ce-eb6a-4035-a409-8def0a3fda80', '50682165-f2c3-4049-909e-951838384433', 25.16, 'EUR', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 751 Steven Mountain', NULL, '2025-07-25 12:06:27', '2025-07-25 12:39:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7953e67b-fc12-4f71-8bf5-51f14ef28179', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 305.94, 'USD', 'DEBIT',
        'CANCELLED', 'Online transfer to Vickie Lawrence', 'TXN128260', '2025-08-27 14:07:37', '2025-08-27 14:51:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ba7f8c11-7678-4b08-9893-d0a72e975ad2', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 111.67, 'USD', 'REFUND',
        'CANCELLED', 'Cancelled order refund', 'REF821034', '2025-04-11 14:28:15', '2025-04-11 14:38:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b086adb7-a254-4f5d-9be2-a432cd2d731b', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 125.47, 'AUD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF595939', '2025-04-07 16:44:20', '2025-04-07 16:46:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0fb281a4-d1b2-48c4-bbb0-41fee04705fd', '30f7fce8-3a42-4900-8129-5549a3175459', 309.29, 'CAD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF909724', '2025-04-18 18:02:11', '2025-04-18 18:06:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4831bc89-b2a3-4663-a04c-14235a230ce1', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1179.29, 'EUR', 'TRANSFER',
        'CANCELLED', 'Investment account funding', 'REF448034', '2025-04-05 13:59:18', '2025-04-05 14:16:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('01da5cbc-b93c-4d61-837c-2a78e922ea52', '17ad774a-8c59-447a-b309-a2953679e25a', 108.25, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-03-16 18:22:28', '2025-03-16 18:58:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6b4621f3-2915-4343-9eaf-e8fd221250f6', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 4598.23, 'CAD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH612364', '2025-08-24 11:42:10', '2025-08-24 12:10:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c17d048e-afa9-4cd6-8d48-a465606c3fec', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1186.91, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Porter-Greene', NULL, '2025-03-18 18:32:01', '2025-03-18 18:34:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('78411a76-560a-463e-8b94-c588b5facaee', '523c0c30-1242-44a7-a025-f015ef7d4127', 56.77, 'USD', 'DEBIT', 'FAILED',
        'Gas station - Williams Group', 'TXN529874', '2025-07-19 14:27:00', '2025-07-19 14:50:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39a134c2-66e7-4edf-a4e7-88043174819d', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1958.05, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-03-19 13:58:47', '2025-03-19 14:44:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ac6f8d7d-f8f3-4e49-b057-fbc1083ca83c', '50682165-f2c3-4049-909e-951838384433', 171.73, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Johnson, Weaver and Davis', 'ACH149964', '2025-04-22 15:14:43',
        '2025-04-22 15:38:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8695da37-03ea-4f68-b110-f227e0b186c8', 'd49ec560-02e4-4049-b181-837031133e95', 136.64, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Morgan-Leon', 'REF309246', '2025-07-25 23:45:41', '2025-07-26 00:29:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6c2d380d-126c-4bff-b81b-e0d8a3962fe1', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1165.04, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-07-25 18:33:45', '2025-07-25 19:24:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0364e005-2d95-4375-a337-6fb90f5cde74', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 401.99, 'CAD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF405320', '2025-04-07 18:33:38', '2025-04-07 18:38:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e3549ae0-1e97-4ae6-8db3-d16755846357', '02630652-15bc-4df0-99b7-a41c93c79986', 1485.1, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Fleming-Grimes', NULL, '2025-05-18 13:38:06', '2025-05-18 14:28:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('63362611-4223-45dc-a3f6-7c4a78a951ec', '4692fe34-18fd-4140-9f08-06189f96fac3', 97.92, 'USD', 'REFUND',
        'CANCELLED', 'Return processing - Harris, Savage and Harrison', 'REF165362', '2025-06-14 00:05:46',
        '2025-06-14 00:46:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('20ff77e0-2786-442c-92e2-2aae6220481d', '17ad774a-8c59-447a-b309-a2953679e25a', 21.27, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Vasquez, Foster and Roberts', 'TXN202732', '2025-08-08 16:01:03',
        '2025-08-08 16:57:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4ea9e9af-38b1-49db-8753-81447e7c50d4', '4692fe34-18fd-4140-9f08-06189f96fac3', 1926.15, 'USD', 'CREDIT',
        'CANCELLED', 'Insurance claim settlement', 'ACH442446', '2025-06-07 02:16:02', '2025-06-07 02:37:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c2333c6a-d3a4-48e4-8c3d-53ca5e9fb9c7', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 92.86, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Beasley-Gardner', 'REF828358', '2025-08-18 14:12:28', '2025-08-18 14:33:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6061f22-d266-4296-bed8-cb06d28efb79', '4692fe34-18fd-4140-9f08-06189f96fac3', 57.35, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-03-26 15:24:34', '2025-03-26 16:17:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e548292a-740b-47ff-81ab-0b662f6e12be', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 52.39, 'NOK', 'DEBIT',
        'COMPLETED', 'Subscription - French-Whitehead Premium', 'TXN222704', '2025-07-11 12:25:05',
        '2025-07-11 13:02:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3ecd6bbb-4be5-4bbf-9483-f883975f8c63', '12e6cc99-7181-4fde-98dc-93ded6112abf', 71.84, 'GBP', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Gabrielle Lopez', 'REF435818', '2025-06-14 10:09:06', '2025-06-14 10:11:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3951782e-d43f-4dd3-89dc-6a6bcc13c511', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 93.35, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Brown-Bates', NULL, '2025-06-22 10:59:18', '2025-06-22 11:30:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bba2c3b7-02bd-4e66-b97b-c1dddb2a5e45', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 77.06, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF623288', '2025-07-11 13:55:54', '2025-07-11 13:58:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0fc42ebd-e6e8-4b26-a393-68ea899f4cff', '20683a88-7f0e-471d-a3c5-bf175725052c', 179.36, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF358467', '2025-04-28 11:20:11', '2025-04-28 12:17:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee52d609-651d-494b-bf1c-aa863249f99a', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1710.86, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Mills-King', 'ACH349301', '2025-05-10 12:27:50', '2025-05-10 12:37:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31d73eba-41b3-4b02-b063-5a00a1de0367', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1715.93, 'NOK', 'CREDIT',
        'COMPLETED', 'Dividend payment - Williams, Sanders and Thomas', 'ACH255632', '2025-08-17 17:32:45',
        '2025-08-17 17:43:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6963fb77-2b60-4557-a031-d1249df243f5', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 664.44, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-03-26 11:03:11', '2025-03-26 11:27:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('29daf301-4285-4b01-af62-7bd27b38b63a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1286.51, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH602238', '2025-04-18 03:13:48', '2025-04-18 03:15:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a68cd3a6-8069-4395-99b6-c77bebf6f6bb', '30f7fce8-3a42-4900-8129-5549a3175459', 1349.8, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Howard, Flynn and Mcgrath Store', NULL, '2025-08-31 12:47:26',
        '2025-08-31 13:08:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7dbd3e40-1ebb-4cee-a8b8-a97c8f410cb6', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 20.04, 'USD', 'REFUND',
        'FAILED', 'Refund - Fox-Gonzalez', NULL, '2025-07-26 03:22:25', '2025-07-26 04:13:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('781b1d3a-ffbb-4bdd-a6d6-36a8311b8845', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 434.55, 'GBP', 'DEBIT',
        'COMPLETED', 'Subscription - Maynard-Baker Premium', 'TXN804253', '2025-04-20 13:21:22', '2025-04-20 13:29:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1450be33-4297-4ebb-99a1-9fe8cfb81563', '20683a88-7f0e-471d-a3c5-bf175725052c', 1916.63, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Baker PLC', 'TXN353448', '2025-05-26 17:19:24', '2025-05-26 17:19:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3ed84bd-359d-4275-b180-bb83da8d61e5', '4110303a-5cca-4c46-885d-c1e3bd335d96', 72.22, 'USD', 'DEBIT',
        'PENDING', 'Card payment - Lopez-Jensen Store', 'TXN814551', '2025-07-25 15:19:25', '2025-07-25 16:08:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b10275bc-446d-44c5-93d0-9ab2446f6e45', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 70.89, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Gonzalez, Martin and Brewer Premium', 'TXN394101', '2025-06-14 01:33:21',
        '2025-06-14 01:56:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aa36d4d7-a1af-448a-885e-e175b270fbb5', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 810.37, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF145171', '2025-05-29 19:08:09', '2025-05-29 19:49:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5696a46b-ae80-4d68-bc6b-39b2b049f777', '523c0c30-1242-44a7-a025-f015ef7d4127', 170.9, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Brown Inc', 'ACH190026', '2025-09-05 09:40:15', '2025-09-05 09:57:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b8bd11d0-661f-4dd5-8d09-779178f67ce4', '17ad774a-8c59-447a-b309-a2953679e25a', 1808.81, 'GBP', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH319938', '2025-04-30 09:44:07', '2025-04-30 10:29:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2e2cbbf1-c680-4d74-b6bb-6e62bc2acaf2', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 566.64, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Jeff Barton', 'REF728850', '2025-03-19 18:43:59', '2025-03-19 19:24:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a3dd1c2-e321-4d8f-be6f-d5842d1fa7b2', '30f7fce8-3a42-4900-8129-5549a3175459', 295.1, 'GBP', 'TRANSFER',
        'CANCELLED', 'Internal account transfer', 'REF861387', '2025-05-09 00:10:24', '2025-05-09 01:03:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('52f863a0-6c43-47fa-9f40-e39d254cdba2', 'd49ec560-02e4-4049-b181-837031133e95', 85.95, 'CAD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF941079', '2025-07-27 23:51:04', '2025-07-28 00:28:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5d0c297e-5ad3-4259-823c-a4a980999850', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 130.22, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF172387', '2025-05-18 11:36:35', '2025-05-18 11:40:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16cccb94-411a-41d1-b2ae-7a9222f0389d', 'a6f93311-3bce-4db4-8395-25cde9688e47', 143.35, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Stewart and Sons', 'ACH685383', '2025-04-20 12:23:12', '2025-04-20 12:33:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('73ee0116-f2e8-4d6d-8e67-83b7e0542db4', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 74.9, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF500452', '2025-07-06 11:52:15', '2025-07-06 12:34:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2c6c2a83-1429-420d-bc89-02e3ca1817f9', '1817a074-62f9-463a-8dd7-c44151e47f96', 814.24, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Brittney Woodard', 'REF208205', '2025-08-01 10:41:48', '2025-08-01 11:00:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b39d697c-1bd4-41a8-aed2-29434dd00943', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 6019.28, 'GBP', 'CREDIT',
        'COMPLETED', 'Bonus payment - Johnson and Sons', 'ACH794556', '2025-04-09 17:09:45', '2025-04-09 17:13:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4423eb03-7e56-4984-9828-41fde6580032', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 198.87, 'EUR', 'TRANSFER',
        'COMPLETED', 'Rent payment to Ivan Spencer', NULL, '2025-07-06 23:57:30', '2025-07-07 00:51:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bf6a9430-e1f0-44f3-a072-9ce2a2cedfb5', '7a712793-0571-4844-b830-a1a4d3fdeb27', 19.21, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Snow, Barrera and Day', 'TXN294897', '2025-05-13 07:41:05', '2025-05-13 08:11:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d6fd561c-a237-4082-ae09-e6b54a4c663d', 'd31cdd64-e270-4aa9-a77e-a89486214984', 347.52, 'AUD', 'TRANSFER',
        'COMPLETED', 'Bill split with John Johnson', 'REF582050', '2025-08-05 13:59:40', '2025-08-05 14:10:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21f6e312-a3e9-4306-b4ea-1fe200e12cc7', 'f9cae736-64d5-4692-a257-d87446ffc401', 683.93, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF962053', '2025-08-05 12:00:14', '2025-08-05 12:45:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('23fe740b-5c6c-4f55-9edb-d7a90db8b360', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 880.23, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-06-26 12:19:32', '2025-06-26 13:16:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f55df36f-afd5-4203-816b-4989010d296a', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 94.5, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Parker-Contreras', 'REF911938', '2025-05-19 09:49:42', '2025-05-19 10:19:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('08eaad6c-42ab-40fb-a99b-a82baf12491a', 'd49ec560-02e4-4049-b181-837031133e95', 11.59, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Atkinson Group Premium', 'TXN552539', '2025-09-11 05:27:21',
        '2025-09-11 05:47:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89208396-4258-4661-8f87-84ff641c1e06', 'd31cdd64-e270-4aa9-a77e-a89486214984', 826.27, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Anderson-Haynes', 'ACH600850', '2025-06-04 13:00:24', '2025-06-04 13:03:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6c78da0-6482-44e4-bad6-df113d6dc44b', '4692fe34-18fd-4140-9f08-06189f96fac3', 530.28, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-05-28 09:14:38', '2025-05-28 09:35:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2913ca37-4501-467d-b2a7-d0e7f5af260c', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 931.73, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Rhonda James', 'TXN717607', '2025-08-22 13:54:57', '2025-08-22 14:20:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('425b4dc3-bb1f-4ecf-91b7-6908fa2e3a7c', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 203.35, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH774743', '2025-08-05 17:21:04', '2025-08-05 17:58:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71e94d39-cca8-4d4b-ab1d-2fb344f1a81e', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 7950.1, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Armstrong, Decker and Armstrong', NULL, '2025-05-17 09:19:27', '2025-05-17 10:06:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f468026b-bec5-4c5f-960f-d195a7d5b72a', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 80.0, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Mcintosh PLC', 'TXN187595', '2025-05-27 14:32:34', '2025-05-27 15:28:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bd4021b9-1691-4fd1-b0d0-a965905bd049', 'd49ec560-02e4-4049-b181-837031133e95', 1788.78, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Lewis and Sons', 'ACH952511', '2025-04-30 17:52:12', '2025-04-30 18:37:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bf1415f4-466a-48a1-93dc-fb56028de33b', 'a6f93311-3bce-4db4-8395-25cde9688e47', 273.17, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Harrell-Ward Market', 'TXN511801', '2025-06-11 14:10:10', '2025-06-11 14:20:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5b3af009-f6a4-44bf-aa42-d7182b68123c', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 200.56, 'EUR', 'CREDIT',
        'CANCELLED', 'Bonus payment - Williams LLC', 'ACH469540', '2025-04-12 14:05:23', '2025-04-12 14:17:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fcfb171c-25db-4d4f-9e70-2f705dc98192', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 37.11, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-05-01 11:44:23', '2025-05-01 11:54:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24285361-eb88-4f65-af48-637d7d2a76ef', '4692fe34-18fd-4140-9f08-06189f96fac3', 157.76, 'EUR', 'REFUND',
        'COMPLETED', 'Price adjustment - Welch LLC', 'REF529091', '2025-05-07 13:33:30', '2025-05-07 14:21:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8e288bee-afbd-4248-997b-ba30c7158290', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 776.87, 'EUR', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Kristin Burton', NULL, '2025-06-30 10:31:05', '2025-06-30 10:40:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6f8dd46c-06cc-49d2-b1ed-05feffb025fd', '02630652-15bc-4df0-99b7-a41c93c79986', 627.63, 'DKK', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-08-28 15:00:03', '2025-08-28 15:14:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1818ecde-2e2d-464d-be63-629bc0b8da9e', '02630652-15bc-4df0-99b7-a41c93c79986', 169.69, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Dean-Novak', 'REF413955', '2025-06-26 11:34:01', '2025-06-26 11:39:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8b1700a-7d91-4041-81a4-71b00176eca5', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1465.3, 'GBP', 'TRANSFER',
        'PENDING', 'P2P payment via mobile app', 'REF452306', '2025-08-09 14:27:10', '2025-08-09 15:24:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aa25d5d4-4020-49a0-96f4-d02797430832', 'a6f93311-3bce-4db4-8395-25cde9688e47', 185.75, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF209687', '2025-04-28 14:47:30', '2025-04-28 15:25:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42292ba8-3fbe-47f7-a304-15b50af3baf1', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 31.64, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Lee PLC', NULL, '2025-08-22 04:52:06', '2025-08-22 05:44:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('77f75dfb-bc27-4336-b3bc-3ec942cdc830', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 762.64, 'EUR', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH926764', '2025-08-08 10:17:52', '2025-08-08 10:59:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c49d2d8a-394d-463f-9f99-7dfe1588833f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 7461.57, 'AUD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH351192', '2025-08-27 10:02:45', '2025-08-27 10:09:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dc6218bb-7f35-407f-965b-d78100369ed9', '7a712793-0571-4844-b830-a1a4d3fdeb27', 43.78, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Salazar-Baker', 'REF568059', '2025-04-02 15:03:16', '2025-04-02 15:41:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('febe5fca-2678-459a-83a2-a3a96e293edb', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 274.34, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Derrick Gonzales', NULL, '2025-05-31 06:29:25', '2025-05-31 06:42:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f83a4370-2e94-4f33-b309-4c81f48e44d6', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 26.91, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Wright-King Premium', NULL, '2025-08-31 14:13:12', '2025-08-31 14:49:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f71d2f58-1c8b-455d-8b50-c94cb86c6775', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 233.0, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Weaver-Cook Services', NULL, '2025-08-18 11:15:58', '2025-08-18 11:26:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1998698d-0616-4078-8230-6db27d4abb35', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 170.28, 'EUR', 'DEBIT',
        'COMPLETED', 'Card payment - White PLC Store', NULL, '2025-05-08 09:23:43', '2025-05-08 09:40:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bc91cf28-027e-40a1-8126-6b1a83871103', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 33.12, 'EUR', 'DEBIT',
        'PENDING', 'Online transfer to Lindsey Edwards', NULL, '2025-04-24 10:26:44', '2025-04-24 11:16:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('649a9b43-f02d-4efc-b7c0-c45d2c56cda1', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1041.75, 'GBP', 'TRANSFER',
        'COMPLETED', 'Family transfer', 'REF277472', '2025-04-26 16:22:31', '2025-04-26 16:39:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7d2e647-5587-431c-8a2b-2bd36a0befad', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 107.03, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Morgan Ltd', 'REF185125', '2025-07-07 09:47:38', '2025-07-07 10:08:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c9ef2c97-b86a-4a16-9f17-7c7b37ee27ba', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 187.47, 'JPY', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF925360', '2025-07-03 06:00:48', '2025-07-03 06:48:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8c1b7e50-992a-41ec-b891-650f1b305599', '12e6cc99-7181-4fde-98dc-93ded6112abf', 132.95, 'CAD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Fleming Ltd', NULL, '2025-09-09 11:03:29', '2025-09-09 11:19:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('18da92d8-d32a-415c-8c6c-ac250fe71df1', 'f9cae736-64d5-4692-a257-d87446ffc401', 1416.08, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Stephen Murphy', 'REF974172', '2025-09-07 16:08:00', '2025-09-07 16:51:22');

-- Batch 17: Transactions 1601-1700
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f1869b28-5aad-4004-a2cc-cdce91e387cd', 'd31cdd64-e270-4aa9-a77e-a89486214984', 48.57, 'GBP', 'DEBIT',
        'PENDING', 'Bill payment - Miller LLC Services', NULL, '2025-04-06 19:11:24', '2025-04-06 19:26:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f3c294ca-d840-4d82-bedd-29a332bb545d', '523c0c30-1242-44a7-a025-f015ef7d4127', 41.58, 'CAD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-05-28 16:42:12', '2025-05-28 16:42:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('32327958-7379-4703-b5e7-0a6dc184624f', '4110303a-5cca-4c46-885d-c1e3bd335d96', 902.9, 'USD', 'TRANSFER',
        'CANCELLED', 'Wire transfer to Anthony Williams', 'REF656975', '2025-05-05 15:38:11', '2025-05-05 16:09:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f2761ad8-6c9e-4849-bd61-744cce58e316', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 236.0, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 69575 Richardson Forge Suite 012', 'TXN577567', '2025-07-11 12:11:10',
        '2025-07-11 12:40:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f673c531-d7df-456f-8a31-01cf036267d3', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 763.66, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Jesse Mcclain', 'ACH515371', '2025-04-19 02:10:15', '2025-04-19 02:24:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('58d1bd0b-9bd9-4915-b55f-0b5b120bd59f', 'd49ec560-02e4-4049-b181-837031133e95', 38.05, 'EUR', 'DEBIT',
        'COMPLETED', 'Online transfer to Paul Potter', NULL, '2025-07-09 16:21:29', '2025-07-09 16:41:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('139c6785-2086-4718-a8b9-c12e618e9ce8', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1744.83, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - West Ltd', 'ACH772261', '2025-05-29 15:22:36', '2025-05-29 16:07:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a98586fd-9195-462f-ace3-2dd9e4aa2606', '4692fe34-18fd-4140-9f08-06189f96fac3', 928.82, 'USD', 'TRANSFER',
        'FAILED', 'Savings account transfer', 'REF605026', '2025-04-15 16:32:27', '2025-04-15 17:00:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4b098ae7-8d08-4892-bdcd-c2266b39b11c', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1127.38, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF442534', '2025-08-31 15:21:52', '2025-08-31 15:34:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('13a0983e-f0f0-4af4-9b25-e4153011ccbd', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 595.77, 'AUD', 'TRANSFER',
        'COMPLETED', 'Transfer to Catherine Harper', 'REF482012', '2025-04-25 20:28:19', '2025-04-25 20:50:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0b005a11-9364-416c-9be1-935efd3847a6', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 86.17, 'USD', 'DEBIT', 'FAILED',
        'ATM withdrawal at 77749 Reese Rapids', 'TXN597069', '2025-03-27 18:12:39', '2025-03-27 18:15:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('04cadb37-c179-4557-a9a8-1cf25af00039', '4110303a-5cca-4c46-885d-c1e3bd335d96', 866.6, 'USD', 'CREDIT',
        'PENDING', 'Transfer from Calvin Rodriguez', NULL, '2025-06-24 11:28:57', '2025-06-24 11:54:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8ea0e976-9250-4a46-a038-339cce842f3b', '17ad774a-8c59-447a-b309-a2953679e25a', 196.56, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - White-Davis', 'REF569006', '2025-06-25 15:15:17', '2025-06-25 15:29:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24923046-31ab-4b7b-bb67-2d905edfbbc3', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 825.67, 'USD', 'TRANSFER',
        'PENDING', 'Investment account funding', 'REF270938', '2025-08-04 12:56:48', '2025-08-04 13:01:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c3148645-02a7-47a4-9b0e-0ebda7ed5e00', '20683a88-7f0e-471d-a3c5-bf175725052c', 419.63, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Lopez Group Services', 'TXN661672', '2025-04-05 14:54:04', '2025-04-05 15:16:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('074a496b-1a8f-43ad-9b9c-881c84c7db2f', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 267.3, 'GBP', 'TRANSFER',
        'COMPLETED', 'Transfer to Jessica Cross', NULL, '2025-06-25 18:52:38', '2025-06-25 18:57:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a86cd582-a5f7-4688-9940-021a8e4a6c86', '20683a88-7f0e-471d-a3c5-bf175725052c', 154.22, 'CAD', 'REFUND',
        'COMPLETED', 'Return processing - Daniel-White', 'REF901248', '2025-05-28 19:51:26', '2025-05-28 20:46:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d39c2f67-d5db-432a-aa5a-b29d23554913', '20683a88-7f0e-471d-a3c5-bf175725052c', 73.41, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF854450', '2025-06-26 10:11:57', '2025-06-26 10:56:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0f58ce9a-505b-4242-9986-793cd61219af', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 178.03, 'USD', 'CREDIT',
        'PENDING', 'Interest payment', NULL, '2025-05-30 10:01:45', '2025-05-30 10:44:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7cfeef6b-5685-4f66-b124-7eebac9ed459', 'd49ec560-02e4-4049-b181-837031133e95', 124.15, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Randall PLC', 'REF447171', '2025-06-13 14:02:16', '2025-06-13 14:16:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('788e208c-1e60-4bcc-b179-8536b221f932', '4110303a-5cca-4c46-885d-c1e3bd335d96', 267.77, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Potts, Gonzalez and Valencia', NULL, '2025-08-27 11:14:25', '2025-08-27 11:48:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d7005c88-2e8c-4427-b7c5-dafe7c03fa10', 'd31cdd64-e270-4aa9-a77e-a89486214984', 146.3, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF925459', '2025-03-30 11:40:12', '2025-03-30 12:37:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('32ff1bca-39b8-4e96-b779-904e3ca892e6', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 127.21, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH601370', '2025-08-17 15:36:54', '2025-08-17 15:55:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4a09f1ec-d7b0-4d7b-800a-bf4b97a3ea32', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 186.54, 'AUD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Vargas Group', 'REF157201', '2025-07-17 09:01:39', '2025-07-17 09:13:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0c8f41a9-3c95-47ec-8d74-50879b3b2715', '02630652-15bc-4df0-99b7-a41c93c79986', 1283.14, 'SEK', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', NULL, '2025-03-30 14:29:34', '2025-03-30 15:27:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('82cf892f-01d8-4efb-846a-f0b1312bca55', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 88.16, 'EUR', 'DEBIT',
        'COMPLETED', 'Subscription - Garner-Pitts Premium', 'TXN376334', '2025-09-01 15:17:22', '2025-09-01 15:42:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3a535369-4438-4c31-a265-b8cf1b2147b7', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 108.62, 'AUD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Samantha Wilson DVM', NULL, '2025-03-31 13:48:59', '2025-03-31 13:53:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('509d6ad5-363b-47ef-8ab2-dc1de2f9a76f', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 112.61, 'GBP', 'DEBIT',
        'COMPLETED', 'Online purchase - Brown-Gomez', 'TXN479829', '2025-03-31 18:13:26', '2025-03-31 18:15:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('20b4d66d-16f9-4d32-87be-c2d66665b6f5', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 11.78, 'CHF', 'DEBIT',
        'COMPLETED', 'Gas station - Brown, Taylor and Livingston', 'TXN238494', '2025-08-09 12:04:51',
        '2025-08-09 12:15:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a59097bd-812b-4d02-aa78-fd5a833deaee', '30f7fce8-3a42-4900-8129-5549a3175459', 1299.42, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF993200', '2025-03-16 10:00:30', '2025-03-16 10:56:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ae53b832-12cd-4878-8b1f-64e6809d0470', 'f9cae736-64d5-4692-a257-d87446ffc401', 1661.45, 'CAD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Best-Orozco', 'ACH896552', '2025-03-25 05:08:24', '2025-03-25 05:10:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('56275ef0-3571-4d57-8755-125fda187839', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1393.49, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF550463', '2025-07-20 17:08:20', '2025-07-20 17:43:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('babc1dd1-3f5b-45ea-be97-4e624a395407', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 94.79, 'GBP', 'REFUND',
        'COMPLETED', 'Price adjustment - Brady-Harrison', 'REF793158', '2025-04-14 12:22:00', '2025-04-14 12:37:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5eab0c7d-4032-4eb8-add7-3a63f9d312a0', '4110303a-5cca-4c46-885d-c1e3bd335d96', 360.63, 'EUR', 'DEBIT',
        'CANCELLED', 'Card payment - Roberts Inc Store', 'TXN831093', '2025-08-07 17:09:36', '2025-08-07 17:33:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('251990d3-081e-45ed-899a-60aa76849259', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 169.76, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Flynn, Jackson and Johnson Premium', NULL, '2025-04-09 11:26:10',
        '2025-04-09 12:23:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('10d16084-c0df-4781-97e2-69fd01cb04a0', '12e6cc99-7181-4fde-98dc-93ded6112abf', 136.05, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Duke, Butler and Clarke', 'ACH286733', '2025-06-10 14:33:47',
        '2025-06-10 15:25:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec706aa3-87cc-4dfd-af03-f850fd2b39b0', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 19.08, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Ford, Terry and Richardson Market', 'TXN914695', '2025-06-23 09:43:36',
        '2025-06-23 10:31:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('64dc17f5-9023-47e1-87d4-e1b2ee41d6a5', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 119.81, 'USD', 'REFUND',
        'FAILED', 'Return processing - King LLC', 'REF652737', '2025-09-04 14:48:42', '2025-09-04 15:40:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('156fbd96-758c-4462-8be0-5613f80f38ef', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1269.99, 'USD', 'TRANSFER',
        'FAILED', 'Bill split with Jermaine Barron', 'REF235553', '2025-08-31 10:02:14', '2025-08-31 10:50:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b7937c6e-565e-427b-be62-ade303e06ec9', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 232.95, 'CHF', 'CREDIT',
        'COMPLETED', 'Interest payment', NULL, '2025-04-30 11:09:14', '2025-04-30 11:09:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4db7b366-83a5-4c3d-b3c6-991ac9af008f', 'd31cdd64-e270-4aa9-a77e-a89486214984', 273.7, 'GBP', 'DEBIT',
        'COMPLETED', 'Online purchase - Lee, Kelly and House', NULL, '2025-06-30 17:50:38', '2025-06-30 18:26:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b52a1a8f-ca47-4114-88d8-a1f0297beb9c', 'd49ec560-02e4-4049-b181-837031133e95', 1390.73, 'USD', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF202611', '2025-05-05 11:20:00', '2025-05-05 11:37:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bb9dbf7e-b1be-4a81-b3a2-d7e531ba94bd', '4110303a-5cca-4c46-885d-c1e3bd335d96', 12.63, 'USD', 'REFUND',
        'PENDING', 'Overpayment refund', 'REF912777', '2025-07-08 20:28:48', '2025-07-08 21:01:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('389dfa74-8f78-4f40-b5b8-cfa5dcaf4983', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1297.64, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF768618', '2025-06-29 18:24:24', '2025-06-29 18:28:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c825b31-722f-4e72-9d9e-fdc8426e6fb1', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 12.04, 'USD', 'REFUND',
        'PENDING', 'Return processing - Ross-Pollard', 'REF757350', '2025-06-12 11:39:37', '2025-06-12 12:17:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('acda8aaa-c298-4194-b123-2ae02adc00d3', '2e3b6236-b73f-40b1-a88f-abafe787082b', 58.29, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Rodriguez-Hall', NULL, '2025-06-12 16:03:08', '2025-06-12 16:57:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a6b3e457-81f1-4fe5-b71b-eaa0384d8d93', '50682165-f2c3-4049-909e-951838384433', 1309.3, 'GBP', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF498485', '2025-08-26 12:45:16', '2025-08-26 12:54:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('50a92ad4-8447-46f5-8efc-0eecda84613d', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 181.13, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-08-31 09:54:59', '2025-08-31 10:47:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c8ac06e4-7344-4c1a-9a0a-cde12615fe9c', '4110303a-5cca-4c46-885d-c1e3bd335d96', 23.91, 'GBP', 'DEBIT',
        'COMPLETED', 'Subscription - Lane-Gonzalez Premium', 'TXN911439', '2025-07-19 14:30:59', '2025-07-19 14:42:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cb5b9c5b-8db8-4325-98a0-75155ff34095', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 147.68, 'EUR', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF309220', '2025-05-15 18:44:36', '2025-05-15 19:15:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('49098738-f2da-4d37-9129-1f3d36ea38ee', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 166.76, 'USD', 'REFUND',
        'FAILED', 'Cancelled order refund', 'REF891350', '2025-06-29 11:32:20', '2025-06-29 12:11:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0927c1d5-61e5-45c3-b8ca-1d6adadb1d3d', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1219.18, 'EUR', 'CREDIT',
        'COMPLETED', 'Freelance payment - Delgado, Wilson and Adams', 'ACH231800', '2025-05-30 18:43:13',
        '2025-05-30 19:38:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d6b1de83-46c9-428c-bee9-17d8dd6ed9e4', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 200.27, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Powers-Garcia', 'TXN860492', '2025-04-12 17:29:22', '2025-04-12 18:27:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4c7571c-62a8-48e0-9285-7885ca48d9d5', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 1498.85, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-06-19 12:46:05', '2025-06-19 13:26:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24d9e6eb-834c-44d8-ae01-a0842d6bc071', '4110303a-5cca-4c46-885d-c1e3bd335d96', 746.74, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF487642', '2025-04-12 13:56:54', '2025-04-12 14:23:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2888d975-e31d-4c41-9596-df23ee158c59', '7a712793-0571-4844-b830-a1a4d3fdeb27', 882.62, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Dylan Smith', 'REF805541', '2025-05-06 11:21:38', '2025-05-06 12:14:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b45c24e2-554e-4c17-85e4-3db614d0fdf2', '7a712793-0571-4844-b830-a1a4d3fdeb27', 1445.3, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Burns-Gonzalez', 'TXN637179', '2025-09-11 09:48:15', '2025-09-11 10:23:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('892a483b-c8fa-405a-833d-e38ad677eb8d', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 81.23, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-08-22 13:31:53', '2025-08-22 14:01:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c18f62a3-d520-4773-b151-577a8fa6c66d', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 67.48, 'GBP', 'DEBIT',
        'PENDING', 'Online purchase - Carey-Wallace', 'TXN894336', '2025-04-10 11:43:05', '2025-04-10 12:20:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6c9f4b1c-5b2e-49c1-b83f-05333133194c', '4692fe34-18fd-4140-9f08-06189f96fac3', 237.71, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Davis Ltd Market', 'TXN294533', '2025-05-13 12:37:09', '2025-05-13 13:10:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee9c53f4-6cda-4a63-b333-2b8d1f18e1df', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 38.26, 'EUR', 'DEBIT',
        'COMPLETED', 'Bill payment - Potter-Wilson Services', 'TXN481730', '2025-05-06 09:36:53',
        '2025-05-06 09:58:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1c8653e4-a94c-44bc-9c71-c13d4611b372', '523c0c30-1242-44a7-a025-f015ef7d4127', 5030.16, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Vang-Gonzales', 'ACH924956', '2025-05-16 10:59:22', '2025-05-16 11:03:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e9dfdd88-2442-45a4-910a-f62dbc660db5', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 92.29, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF810850', '2025-04-28 01:56:06', '2025-04-28 02:15:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('01fe69da-ffbf-4e37-ab97-a717f0fd6cff', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 359.89, 'CHF', 'DEBIT',
        'COMPLETED', 'Gas station - Scott-Wilson', 'TXN841576', '2025-05-19 00:56:35', '2025-05-19 01:20:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b9962476-3530-4d8e-a106-55dc642a23b6', 'f9cae736-64d5-4692-a257-d87446ffc401', 77.37, 'USD', 'DEBIT',
        'PENDING', 'Bill payment - Hurst, Salazar and Thomas Services', NULL, '2025-06-21 09:18:54',
        '2025-06-21 09:23:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fd53c1d1-c67f-4f0b-9a59-4adb9029976c', '02630652-15bc-4df0-99b7-a41c93c79986', 994.17, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Scott Price', NULL, '2025-05-30 13:47:05', '2025-05-30 14:05:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('85e7137a-e4d0-4596-ba40-c1174e6584e1', '2e3b6236-b73f-40b1-a88f-abafe787082b', 97.02, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Perez-Jones', 'REF947571', '2025-06-26 15:34:55', '2025-06-26 16:27:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('652028f9-c1f9-4171-ae9e-a8a7d05206f0', 'd31cdd64-e270-4aa9-a77e-a89486214984', 515.9, 'USD', 'TRANSFER',
        'CANCELLED', 'Rent payment to Matthew White', NULL, '2025-06-30 16:06:48', '2025-06-30 16:55:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2e6ca26d-035f-4ab4-99a5-1f42fd714ef3', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 3168.78, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Mccarty, Miller and Buckley', 'ACH740045', '2025-07-11 18:54:50',
        '2025-07-11 19:12:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('77d50abe-ba9b-4555-bb9b-e67d2e92a699', '30f7fce8-3a42-4900-8129-5549a3175459', 59.01, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-07-09 15:25:02', '2025-07-09 15:34:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b563a20c-8850-44fa-8e70-abc8d6583e21', '30f7fce8-3a42-4900-8129-5549a3175459', 1265.15, 'EUR', 'TRANSFER',
        'COMPLETED', 'Bill split with Amber Brown', 'REF896548', '2025-07-18 16:28:56', '2025-07-18 16:32:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2d2cba41-3a04-4869-91b6-ef42440e3a89', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1742.64, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Novak-Henry', 'ACH973443', '2025-06-13 09:45:57', '2025-06-13 09:45:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0f06c34-4f32-45d2-8719-f3dda7a5ac33', '50682165-f2c3-4049-909e-951838384433', 82.33, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF683951', '2025-04-04 16:58:23', '2025-04-04 17:14:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b7971b1d-5c80-498c-b88f-c2816d5aaf7e', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 13.32, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Holder, Norris and Shaffer', 'REF610087', '2025-09-03 13:13:30',
        '2025-09-03 13:32:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f56e67df-725e-4c43-8c74-bd05ef28143d', '20683a88-7f0e-471d-a3c5-bf175725052c', 575.25, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Megan Herrera', 'REF412297', '2025-07-24 13:59:08', '2025-07-24 14:47:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1018d134-3828-49eb-93e6-d1fa419b5a54', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 781.87, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Castro-Butler', NULL, '2025-06-14 15:19:08', '2025-06-14 15:41:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bcc7fa54-b472-4f39-9b65-9b3c3d53fdb6', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 500.04, 'EUR', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Kimberly Perry', 'REF918920', '2025-04-27 12:20:27', '2025-04-27 12:56:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0329595d-0465-46ef-a09d-cfb6bca1ea41', 'f9cae736-64d5-4692-a257-d87446ffc401', 90.59, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Davis, Ferguson and Snyder Services', 'TXN954596', '2025-08-19 09:12:13',
        '2025-08-19 09:23:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8e271d93-cd93-4cdc-b25a-8509ca9579e1', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1043.58, 'AUD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Kelley and Sons', 'ACH703275', '2025-07-06 09:02:48', '2025-07-06 09:53:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('36f45cf2-4538-4a92-b736-ed15e607f774', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 16.73, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Franklin Group', 'TXN404739', '2025-06-01 15:36:33', '2025-06-01 16:08:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d1ae7afc-95bf-488f-acab-f9a1795bc580', '50682165-f2c3-4049-909e-951838384433', 787.87, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF447025', '2025-06-25 12:40:42', '2025-06-25 12:53:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bfaf0360-4f03-45b0-ab5a-92aa83e53e10', '20683a88-7f0e-471d-a3c5-bf175725052c', 1489.63, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF354099', '2025-08-17 12:04:42', '2025-08-17 12:52:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3201ed98-aee4-4183-8ec0-0f8b52ad0e23', '7a712793-0571-4844-b830-a1a4d3fdeb27', 173.35, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF656362', '2025-07-07 15:27:11', '2025-07-07 15:46:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4576f0f4-0d57-43e1-b377-f4e8154f46dc', '4692fe34-18fd-4140-9f08-06189f96fac3', 113.46, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Wilkinson-Potter', 'REF543458', '2025-07-28 16:38:09', '2025-07-28 17:31:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c37fda55-ca1f-443b-8878-cc2ac0c19179', '12e6cc99-7181-4fde-98dc-93ded6112abf', 277.7, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH380074', '2025-07-26 13:57:28', '2025-07-26 14:24:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe1b4fae-994f-42df-bc7a-ec3e12a7a647', 'f9cae736-64d5-4692-a257-d87446ffc401', 525.5, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Janet Rodriguez', 'REF118375', '2025-07-02 18:40:33', '2025-07-02 19:03:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a62ad55c-7d8f-4cad-823b-233351dd0fc7', 'd49ec560-02e4-4049-b181-837031133e95', 82.73, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Nelson-Anderson Store', 'TXN893165', '2025-06-16 12:50:41', '2025-06-16 12:56:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b737cf7e-1ca2-440b-863b-f6ca52c5b935', 'd49ec560-02e4-4049-b181-837031133e95', 79.25, 'CAD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF120412', '2025-04-19 08:21:57', '2025-04-19 09:06:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('25a701da-408b-423f-8ccb-88fb328b4d42', '1817a074-62f9-463a-8dd7-c44151e47f96', 74.57, 'JPY', 'DEBIT',
        'COMPLETED', 'Card payment - Vincent, Ramirez and Chang Store', NULL, '2025-05-23 15:29:13',
        '2025-05-23 16:18:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0ab90b3e-a555-4ef6-bc9c-5da28395c2a9', '12e6cc99-7181-4fde-98dc-93ded6112abf', 11.92, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Stewart PLC', NULL, '2025-08-09 13:42:20', '2025-08-09 14:25:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('375718cc-34ad-4a17-ad7f-46a521e5406b', '20683a88-7f0e-471d-a3c5-bf175725052c', 1333.87, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Gonzalez-Watson', 'ACH483212', '2025-09-06 22:07:08', '2025-09-06 22:14:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('80a406ba-2d30-46f3-a0d8-06ed83338a28', '4692fe34-18fd-4140-9f08-06189f96fac3', 10.02, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Walsh LLC', NULL, '2025-08-31 21:24:16', '2025-08-31 21:31:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1c5253b4-874d-46f7-9652-7539d17371d5', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 665.09, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-04-26 16:22:54', '2025-04-26 16:32:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ce8320ca-816a-44e4-8bbc-191831689183', 'a6f93311-3bce-4db4-8395-25cde9688e47', 13.36, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to May, Davis and Harvey', 'TXN336938', '2025-08-28 10:56:26', '2025-08-28 10:56:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('19c45f46-6862-439c-aa14-50e76bfe76b8', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1108.17, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF313545', '2025-08-20 20:57:47', '2025-08-20 21:15:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ff5c0d7-dbc8-4520-b484-fffc95606fca', 'a6f93311-3bce-4db4-8395-25cde9688e47', 156.22, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH503814', '2025-08-19 15:38:16', '2025-08-19 15:45:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('698c0fd2-9b1c-42ab-8a20-0835625da33a', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 154.99, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Colleen Barry', 'REF488405', '2025-03-27 15:42:27', '2025-03-27 16:20:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7af75e5d-bcba-4de6-a735-b77e01d4499e', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1762.18, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH115941', '2025-07-11 17:30:27', '2025-07-11 18:25:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e7c28c02-90f2-45fe-8d0d-45c529800ae3', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 35.89, 'CAD', 'DEBIT',
        'COMPLETED', 'Card payment - Martin-Mccullough Store', 'TXN344418', '2025-04-29 20:40:35',
        '2025-04-29 20:48:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('05aafe58-e36d-4b8b-a26d-4d34d352407d', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1463.42, 'DKK', 'TRANSFER',
        'PENDING', 'P2P payment via mobile app', 'REF502970', '2025-08-16 10:52:53', '2025-08-16 11:35:05');

-- Batch 18: Transactions 1701-1800
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b0b5a9f1-d0a8-470f-be6f-55e45a446bbc', '4110303a-5cca-4c46-885d-c1e3bd335d96', 60.2, 'GBP', 'REFUND', 'FAILED',
        'Dispute resolution - Ball, Anderson and Thompson', 'REF510098', '2025-05-30 18:44:00', '2025-05-30 19:39:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('74e7ba1c-d593-4042-88b6-4302ef6033aa', '1817a074-62f9-463a-8dd7-c44151e47f96', 854.52, 'GBP', 'TRANSFER',
        'FAILED', 'Bill split with Grace Phillips', NULL, '2025-03-20 16:59:33', '2025-03-20 17:30:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('71698871-093d-441e-8cc3-2f1135ad22e1', '1817a074-62f9-463a-8dd7-c44151e47f96', 93.21, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Rogers-Ferguson', 'TXN562728', '2025-04-01 09:44:43', '2025-04-01 09:56:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a450e30-bfce-403f-8148-7cb008ad9fcb', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 141.63, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF114186', '2025-08-29 21:23:40', '2025-08-29 22:08:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('18084631-d5d7-466e-97fc-7e07902fb24c', '12e6cc99-7181-4fde-98dc-93ded6112abf', 343.37, 'CHF', 'DEBIT',
        'COMPLETED', 'Gas station - Scott, Vance and Smith', 'TXN672780', '2025-05-29 17:49:46', '2025-05-29 18:03:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a3f0b19-0404-49ee-b66e-bdbd947c1bc3', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 262.0, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF910847', '2025-06-28 12:47:55', '2025-06-28 13:08:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('67a41b7c-5151-4434-b003-99a412cfecf0', '30f7fce8-3a42-4900-8129-5549a3175459', 550.04, 'EUR', 'TRANSFER',
        'COMPLETED', 'Transfer to Stephanie Dunn', 'REF969066', '2025-05-20 16:41:11', '2025-05-20 16:56:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1ebbb488-0193-40e2-bd2e-f159e2088ad0', '30f7fce8-3a42-4900-8129-5549a3175459', 13.06, 'JPY', 'DEBIT',
        'COMPLETED', 'Online purchase - Farrell Group', 'TXN913917', '2025-08-10 14:55:30', '2025-08-10 15:02:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1267a1cd-82f1-426b-a6c0-f02434ff4d55', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 661.87, 'USD', 'CREDIT',
        'PENDING', 'Government benefit payment', 'ACH188774', '2025-04-17 14:54:21', '2025-04-17 15:10:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4323883-e141-4bb3-ad47-3f722c7eea51', '1817a074-62f9-463a-8dd7-c44151e47f96', 1451.36, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Shaffer Inc', 'ACH930409', '2025-07-08 09:28:14', '2025-07-08 10:21:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('187aa1b3-cc0e-4576-aafa-cdc79d6b68de', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 81.61, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Rodriguez Inc Market', 'TXN580723', '2025-04-18 17:25:08', '2025-04-18 18:07:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d5008b27-1ca5-4524-ad33-f4b35d1462ac', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 66.55, 'JPY', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-11 09:58:37', '2025-06-11 10:26:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5a2278ba-0c86-42c1-82ef-30e3d6601186', 'd31cdd64-e270-4aa9-a77e-a89486214984', 559.69, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Robert Logan', NULL, '2025-04-28 12:22:36', '2025-04-28 12:28:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('25e2c9b5-1ef9-440c-9ec2-2a9182f6957b', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 449.09, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Alan Barr', 'REF957635', '2025-04-27 15:04:45', '2025-04-27 15:20:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e6657266-bc52-4ee4-85a0-0b8195bf7297', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 39.53, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 402 Medina Garden Apt. 086', 'TXN432528', '2025-04-18 17:13:23',
        '2025-04-18 18:12:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6a29ae6d-5e37-4f5d-9cbe-9ab377130e41', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 3154.72, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH338274', '2025-04-09 02:26:57', '2025-04-09 03:13:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('434ed3e5-157b-452c-8787-2561ad16944e', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1238.75, 'EUR', 'CREDIT',
        'PENDING', 'Insurance claim settlement', 'ACH247682', '2025-09-04 13:53:58', '2025-09-04 14:14:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4ebd8c5f-3023-4e9a-9c31-7b1f65c4d70a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1859.33, 'USD', 'CREDIT',
        'CANCELLED', 'Insurance claim settlement', 'ACH885581', '2025-03-16 16:48:53', '2025-03-16 17:04:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d5b9080-d48f-477e-90a4-3b63b6b6415f', '7a712793-0571-4844-b830-a1a4d3fdeb27', 255.47, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-07-25 15:14:04', '2025-07-25 15:26:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('56efbff1-dbe7-4912-8112-5637ffa9154b', '50682165-f2c3-4049-909e-951838384433', 1886.09, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH928720', '2025-05-03 08:40:56', '2025-05-03 09:15:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('643f15ae-f80d-42f6-afa5-75ade3ccfb42', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 954.9, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Mcgrath LLC', 'ACH215725', '2025-04-09 14:44:58', '2025-04-09 14:46:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b6a8009d-05b3-4b83-af28-2d9427926e52', 'f9cae736-64d5-4692-a257-d87446ffc401', 58.0, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Carlson LLC Market', 'TXN541101', '2025-03-18 14:11:07', '2025-03-18 14:53:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8dcf9168-2e7e-4294-b544-aae2937363ef', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1220.42, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Shannon Long', 'REF841163', '2025-05-13 15:12:25', '2025-05-13 15:33:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b545fc8e-5a8d-4bbe-b40b-acb5149717e7', '1817a074-62f9-463a-8dd7-c44151e47f96', 35.05, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Rodriguez-Raymond', NULL, '2025-06-25 17:51:41', '2025-06-25 17:59:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b3b440bb-b8ee-410f-b098-d445e0fd47d4', '17ad774a-8c59-447a-b309-a2953679e25a', 1973.51, 'AUD', 'CREDIT',
        'CANCELLED', 'Transfer from Jack Li', 'ACH204431', '2025-05-08 10:51:35', '2025-05-08 11:16:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('264a1af0-476a-488b-8d97-54503e87d921', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 34.58, 'AUD', 'REFUND',
        'COMPLETED', 'Service credit - Jarvis, Stevens and Hansen', 'REF819302', '2025-04-19 14:35:45',
        '2025-04-19 14:54:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('65db02e3-04b7-4ce4-be7c-133c1f5a2ccc', '50682165-f2c3-4049-909e-951838384433', 95.71, 'GBP', 'REFUND',
        'PENDING', 'Subscription cancellation refund', 'REF137646', '2025-07-16 10:08:33', '2025-07-16 10:57:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('33a966ea-d2da-4c5c-ad6c-0d20aa8b6c1a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 78.56, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF710007', '2025-04-22 12:14:25', '2025-04-22 12:46:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3cae118f-3049-43fc-bf21-c9d3929a8679', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 188.79, 'GBP', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF206104', '2025-07-16 11:13:12', '2025-07-16 11:46:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('994eb33d-a103-4373-bd79-9e238ae16bf4', 'f9cae736-64d5-4692-a257-d87446ffc401', 1158.87, 'USD', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF204497', '2025-04-12 15:37:24', '2025-04-12 16:31:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e8172d49-a1f2-4a8f-95e8-bc5fac5c3699', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 6986.37, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Brown-Smith', 'ACH908686', '2025-06-23 14:55:43', '2025-06-23 15:21:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f6ec6676-0727-4cba-891e-90d107e0f391', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1313.58, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-04-04 02:23:25', '2025-04-04 02:33:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46033525-d92f-4855-b03b-0c1cf2bf0d8a', 'd49ec560-02e4-4049-b181-837031133e95', 80.69, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Drake, Lane and Jackson Store', 'TXN811800', '2025-07-16 20:23:45',
        '2025-07-16 20:32:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f3d738d2-c7ac-4e75-9358-8fd75338755e', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 82.26, 'USD', 'REFUND',
        'FAILED', 'Service credit - Wiley LLC', 'REF888743', '2025-03-18 12:28:49', '2025-03-18 13:03:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5796c14c-f19d-4ad1-bcb8-327aa7ec039a', '02630652-15bc-4df0-99b7-a41c93c79986', 211.11, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-05-07 09:34:44', '2025-05-07 10:10:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e43d1e28-7f80-4628-a423-43a65cf3e7f8', '50682165-f2c3-4049-909e-951838384433', 125.71, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF403968', '2025-04-03 12:35:53', '2025-04-03 13:26:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b95adb26-a91a-4c25-9ee4-7fbfbcfb3dc1', '2e3b6236-b73f-40b1-a88f-abafe787082b', 155.37, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', NULL, '2025-07-10 17:53:23', '2025-07-10 18:05:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93e788e8-0a8f-40ea-bac6-a55d69bfcd54', '50682165-f2c3-4049-909e-951838384433', 113.45, 'AUD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF162105', '2025-05-20 22:12:44', '2025-05-20 22:13:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('90f4692c-074f-4584-892b-920b9e149fc6', '4692fe34-18fd-4140-9f08-06189f96fac3', 116.86, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF400271', '2025-05-11 09:40:22', '2025-05-11 10:14:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6a7ede49-d95f-4011-b2a7-c7466d067ecd', '17ad774a-8c59-447a-b309-a2953679e25a', 90.0, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Floyd, Acevedo and Jones', NULL, '2025-08-04 09:33:07',
        '2025-08-04 10:14:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e312c743-908d-474f-b2f0-d5c89270ad5e', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 118.44, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Gilmore-Williams', 'ACH998735', '2025-05-25 09:12:03', '2025-05-25 09:24:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f8a247f3-b6e7-4c25-b329-821172c464d1', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 915.55, 'JPY', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF301201', '2025-08-22 08:14:48', '2025-08-22 09:11:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('24e161ca-72fb-427a-9aa2-0d6b9f560087', 'd31cdd64-e270-4aa9-a77e-a89486214984', 188.22, 'EUR', 'REFUND',
        'CANCELLED', 'Price adjustment - Vasquez, Roberts and Johnson', 'REF765884', '2025-05-28 17:00:12',
        '2025-05-28 17:43:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('70ee469b-8637-4bfa-95ab-b9f2db0e236d', '50682165-f2c3-4049-909e-951838384433', 261.37, 'USD', 'CREDIT',
        'CANCELLED', 'Refund from Rodriguez Ltd', NULL, '2025-06-25 12:20:42', '2025-06-25 12:58:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('04c02a59-4e00-4558-9b79-6a0f5d6933fa', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 195.82, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Carlson, Gillespie and Rogers', NULL, '2025-08-15 13:53:36',
        '2025-08-15 14:18:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d95c29e6-9b26-4913-9909-0bfecd63b7fa', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1992.52, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Rodriguez and Sons', 'ACH960583', '2025-09-08 10:10:21', '2025-09-08 10:19:33');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4ca34836-a91e-4707-acb6-59b57eddb4f6', 'd31cdd64-e270-4aa9-a77e-a89486214984', 698.72, 'GBP', 'TRANSFER',
        'COMPLETED', 'Rent payment to Michele Hall', 'REF752848', '2025-07-29 17:45:25', '2025-07-29 17:49:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fe6b26a5-1cdc-4e02-8f44-88a269c9ecdd', 'd31cdd64-e270-4aa9-a77e-a89486214984', 129.21, 'EUR', 'REFUND',
        'COMPLETED', 'Service credit - Farley, Ashley and Rich', NULL, '2025-08-22 11:51:44', '2025-08-22 12:51:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('609c05e5-f155-4b09-bd0c-21e5366f6adf', 'd31cdd64-e270-4aa9-a77e-a89486214984', 93.1, 'GBP', 'DEBIT', 'PENDING',
        'ATM withdrawal at 428 Michelle Course Apt. 686', 'TXN844000', '2025-05-15 17:46:43', '2025-05-15 17:59:21');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f3774ae7-c94a-4ba7-9a4c-e95ac8c46ce3', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 727.32, 'AUD', 'TRANSFER',
        'FAILED', 'Internal account transfer', 'REF803602', '2025-05-09 14:55:46', '2025-05-09 15:33:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3b7ca000-12f9-4f07-8a15-69841986f8a7', '4692fe34-18fd-4140-9f08-06189f96fac3', 250.42, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH320998', '2025-04-26 10:12:48', '2025-04-26 10:45:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0ffc5494-fa59-43d6-98ef-f9b445217d16', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 2086.77, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Anthony Smith', NULL, '2025-07-17 14:48:27', '2025-07-17 15:08:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('69567ed3-e1ce-4e70-98ec-576171e889e0', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 276.43, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Dunn-Sanchez', NULL, '2025-08-04 14:21:01', '2025-08-04 15:17:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c35099b-f3bf-4add-b231-66570aef42cd', '50682165-f2c3-4049-909e-951838384433', 207.2, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Martinez-Evans Market', 'TXN701572', '2025-06-29 12:57:59', '2025-06-29 13:14:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('152b456c-265e-4905-bb11-472969507394', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1400.24, 'NOK', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF735668', '2025-06-25 11:57:29', '2025-06-25 12:44:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1f5f39d9-0746-4efa-bfe4-521ff7512504', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1928.63, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Brown, Wallace and Mcbride', 'ACH430917', '2025-05-25 14:25:06',
        '2025-05-25 14:46:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1b3649e7-06b8-44fb-9fcb-14ccb2fb1b26', 'd49ec560-02e4-4049-b181-837031133e95', 1241.15, 'GBP', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF634826', '2025-06-12 16:44:15', '2025-06-12 17:00:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4580dfa1-7497-4ed0-be43-6c9ed814ae70', 'd49ec560-02e4-4049-b181-837031133e95', 137.76, 'CHF', 'REFUND',
        'COMPLETED', 'Service credit - Dougherty and Sons', 'REF718985', '2025-05-03 15:51:11', '2025-05-03 16:12:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aff625a2-0c13-4b8a-8fe2-ffe3e5d9e332', '2e3b6236-b73f-40b1-a88f-abafe787082b', 23.02, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Rodriguez, Harris and Cruz', 'REF307697', '2025-09-05 15:42:51',
        '2025-09-05 16:35:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('225db77c-0608-4f4d-99c6-e925866ec52d', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 197.84, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Jackson LLC', NULL, '2025-03-19 12:58:32', '2025-03-19 13:54:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('37b92eb9-eadc-484d-a3a9-fa23d872b926', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 360.9, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF145713', '2025-05-31 14:52:56', '2025-05-31 15:50:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4f8a723e-1523-487b-8e80-2395d14c7b64', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 639.32, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Angela Shaw', 'REF603203', '2025-06-30 15:08:31', '2025-06-30 16:04:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7a068528-b4ad-444d-ab98-7e3296768e28', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1928.68, 'GBP', 'CREDIT',
        'PENDING', 'Refund from Vasquez-White', 'ACH550027', '2025-05-07 09:10:43', '2025-05-07 09:50:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2a532797-f2a2-488e-8b11-2c4807d6eea5', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 31.43, 'GBP', 'DEBIT',
        'CANCELLED', 'Gas station - Johnson, Long and Alexander', NULL, '2025-07-05 14:25:24', '2025-07-05 15:11:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cdb6d8c9-db5e-4e6d-a769-d388520213a7', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 240.41, 'JPY', 'CREDIT',
        'PENDING', 'Insurance claim settlement', 'ACH494856', '2025-09-11 16:58:23', '2025-09-11 17:26:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('183dde34-5040-40e7-b23a-d3e914f807b9', 'a6f93311-3bce-4db4-8395-25cde9688e47', 745.37, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Erica White', 'REF794835', '2025-06-23 11:51:33', '2025-06-23 11:55:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be27c127-520c-4b6d-9794-764ca0b7e70c', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1783.0, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Martin, Johnson and Ross', 'ACH409399', '2025-07-07 19:52:00',
        '2025-07-07 20:30:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e05a578d-c959-464d-b884-fdd3faf10260', '12e6cc99-7181-4fde-98dc-93ded6112abf', 340.89, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Rodriguez, Sanchez and Brown Market', 'TXN831946', '2025-08-22 16:56:52',
        '2025-08-22 17:31:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('895e0ab1-362a-4f5a-a11f-31452fba544f', '2e3b6236-b73f-40b1-a88f-abafe787082b', 480.11, 'GBP', 'DEBIT',
        'COMPLETED', 'Online transfer to Cindy Walker', 'TXN626380', '2025-07-15 17:50:50', '2025-07-15 17:57:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cc78a223-c5c5-4b7b-b92e-ba87f2154b40', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 7076.79, 'GBP', 'CREDIT',
        'COMPLETED', 'Bonus payment - Dixon, Jones and Stewart', NULL, '2025-05-02 09:18:31', '2025-05-02 09:54:54');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4bdecb50-1786-4ef4-9c2a-b244ce719cc9', '17ad774a-8c59-447a-b309-a2953679e25a', 134.52, 'USD', 'CREDIT',
        'PENDING', 'Refund from Pierce, Travis and Haynes', NULL, '2025-08-19 00:23:27', '2025-08-19 00:40:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e7da31b0-41cc-4726-ac10-33d3be58d1ba', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 382.57, 'CHF', 'TRANSFER',
        'CANCELLED', 'Investment account funding', 'REF361447', '2025-06-25 06:24:18', '2025-06-25 06:29:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a4c88640-bd70-4560-ae84-edf83d1226c5', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 125.23, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Raymond-Mora', 'REF602309', '2025-06-21 14:04:48', '2025-06-21 14:28:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f6d317f4-e80e-4fa6-9374-34699664924f', '523c0c30-1242-44a7-a025-f015ef7d4127', 65.33, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Garcia Group', NULL, '2025-05-16 19:29:19', '2025-05-16 20:27:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('39f87b4b-bd63-4e86-8ea3-5d5bb4b177ad', '7a712793-0571-4844-b830-a1a4d3fdeb27', 778.77, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-04-04 19:35:42', '2025-04-04 19:55:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bc2665ba-5fc9-4c70-b21e-e1b49c92f905', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 401.71, 'CAD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Alejandro Cohen', 'REF168594', '2025-04-28 18:58:52', '2025-04-28 19:54:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1acaa6e4-13e3-488b-8ac2-1687dc522208', '30f7fce8-3a42-4900-8129-5549a3175459', 64.94, 'USD', 'DEBIT',
        'COMPLETED', 'Restaurant - Johnson-Phelps', NULL, '2025-05-29 11:48:36', '2025-05-29 11:56:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d39f9399-7924-4eaa-8181-4426d67a6a32', 'a6f93311-3bce-4db4-8395-25cde9688e47', 53.46, 'USD', 'REFUND',
        'PENDING', 'Cancelled order refund', 'REF380467', '2025-07-29 15:53:07', '2025-07-29 16:16:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6446b73f-8552-4e6b-bc3c-4c73308a3963', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1045.11, 'USD', 'TRANSFER',
        'PENDING', 'International transfer', 'REF314617', '2025-07-08 14:52:07', '2025-07-08 15:45:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aecbc3aa-304c-4ab7-a250-ca015f38c699', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 59.62, 'USD', 'DEBIT',
        'PENDING', 'Online purchase - French and Sons', 'TXN820454', '2025-04-16 12:21:52', '2025-04-16 12:41:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1bcf5ee1-adef-4767-9f31-e7693e0c3a17', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 437.8, 'USD', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', NULL, '2025-03-19 16:34:53', '2025-03-19 17:07:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('be6969ca-c8b2-4cb1-9548-67ef3268472b', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 109.38, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Joel Jones', 'REF140714', '2025-03-24 11:32:41', '2025-03-24 12:30:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a0be762b-b35b-4335-b54b-35439c77166b', '4110303a-5cca-4c46-885d-c1e3bd335d96', 243.84, 'EUR', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH768488', '2025-04-12 13:18:23', '2025-04-12 13:48:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fbaca10f-b13a-4db9-b32f-cf8074be4318', '50682165-f2c3-4049-909e-951838384433', 125.96, 'CAD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH220933', '2025-07-04 14:34:50', '2025-07-04 15:31:00');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b707d470-a246-460d-999c-93e0cecd02cf', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 632.72, 'AUD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Williams-Rogers', 'ACH417705', '2025-08-03 09:10:55', '2025-08-03 10:07:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ca5ffcc-c987-42d0-9e3c-00e2db7e7457', '30f7fce8-3a42-4900-8129-5549a3175459', 419.4, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Kelly Jackson', 'REF770874', '2025-07-13 08:46:41', '2025-07-13 09:08:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('87ab3f43-ac5c-455b-9ae9-3406be8be8ad', '7a712793-0571-4844-b830-a1a4d3fdeb27', 188.32, 'JPY', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF563094', '2025-04-16 10:45:38', '2025-04-16 10:59:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6628f021-7bb0-49cd-ae1e-8039c8628408', '02630652-15bc-4df0-99b7-a41c93c79986', 149.58, 'EUR', 'CREDIT',
        'COMPLETED', 'Commission payment', NULL, '2025-05-04 03:29:47', '2025-05-04 04:07:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('494d5fdf-a65a-440f-b5a6-0608229fa957', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 494.83, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Eric Santiago', 'REF894812', '2025-05-05 00:39:26', '2025-05-05 00:57:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('662d37be-ce35-429d-9d0b-71afa1cae207', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 792.15, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Scott Carr Jr.', 'REF401632', '2025-04-08 20:40:34', '2025-04-08 21:19:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9e7bc970-c6df-4f3a-a2b8-19adcaa08a90', '02630652-15bc-4df0-99b7-a41c93c79986', 85.39, 'GBP', 'DEBIT',
        'PENDING', 'Card payment - Silva LLC Store', 'TXN748556', '2025-05-14 15:22:09', '2025-05-14 15:22:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b2678e99-b5aa-4df9-9171-9d2aef00ed55', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 167.01, 'USD', 'DEBIT',
        'COMPLETED', 'Gas station - Parker-Hampton', NULL, '2025-07-17 15:06:23', '2025-07-17 16:05:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c882ab06-0bdd-440e-8a48-76abc1986d2e', '30f7fce8-3a42-4900-8129-5549a3175459', 121.01, 'USD', 'CREDIT',
        'PENDING', 'Interest payment', NULL, '2025-06-01 12:30:04', '2025-06-01 13:01:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('49dece45-7e0b-4b4c-a0ff-2e9b000dddab', 'a6f93311-3bce-4db4-8395-25cde9688e47', 171.64, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Miller-Gonzalez', 'REF664585', '2025-08-27 09:54:19', '2025-08-27 10:00:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0f9a8f84-2452-4d58-ae6e-d20afcbd38b6', 'f9cae736-64d5-4692-a257-d87446ffc401', 714.61, 'AUD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF925681', '2025-07-11 17:30:29', '2025-07-11 18:15:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('35012f66-4b37-4fda-abda-71d3c9e21c58', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 12.56, 'GBP', 'DEBIT',
        'COMPLETED', 'Restaurant - Lewis, Morris and Curry', 'TXN836774', '2025-04-18 01:36:02', '2025-04-18 02:32:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5b085d87-b39a-4d73-9379-b80ab2cb4f97', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 90.52, 'USD', 'CREDIT',
        'CANCELLED', 'Bonus payment - Shelton Group', 'ACH398895', '2025-04-09 14:30:46', '2025-04-09 15:03:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('10a13c33-74b3-416e-beee-3c90b00c300b', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1151.53, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Cooley-Carter', NULL, '2025-04-15 15:23:25', '2025-04-15 15:56:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9afca311-4e7c-4dff-8c8c-4a061aee4c0c', 'd49ec560-02e4-4049-b181-837031133e95', 243.71, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF298014', '2025-03-17 15:50:33', '2025-03-17 16:26:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f892be52-aa11-46e6-bee3-758547aa1192', '523c0c30-1242-44a7-a025-f015ef7d4127', 752.32, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Nicole Dunn', 'REF895300', '2025-04-25 13:48:31', '2025-04-25 14:36:46');

-- Batch 19: Transactions 1801-1900
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('72057c67-e936-454d-9971-5f7f20505a83', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1350.15, 'USD', 'TRANSFER',
        'COMPLETED', 'Rent payment to Mark Flores', NULL, '2025-07-25 12:11:57', '2025-07-25 13:09:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ab4b3294-5f2c-4304-a7ae-155c813c0de2', '7a712793-0571-4844-b830-a1a4d3fdeb27', 81.55, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF459860', '2025-05-06 11:09:05', '2025-05-06 11:37:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('244c8875-5f60-4c96-b509-7139556bc892', '523c0c30-1242-44a7-a025-f015ef7d4127', 124.74, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH948085', '2025-08-15 10:14:11', '2025-08-15 10:59:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b0a38205-f331-40f3-b264-36676975553f', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 184.19, 'USD', 'CREDIT',
        'FAILED', 'Refund from Trujillo, Schultz and Smith', 'ACH476655', '2025-05-29 12:31:08', '2025-05-29 12:41:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b2eafe05-14fb-4587-8253-b99265304d6f', 'd31cdd64-e270-4aa9-a77e-a89486214984', 58.13, 'GBP', 'TRANSFER',
        'CANCELLED', 'Internal account transfer', 'REF136113', '2025-07-04 11:54:13', '2025-07-04 12:24:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3bc96fbe-4fa6-4f4c-b4ff-39c43f649a9b', '02630652-15bc-4df0-99b7-a41c93c79986', 42.93, 'AUD', 'DEBIT',
        'COMPLETED', 'Payment to Taylor-Allen', 'TXN403787', '2025-08-07 14:49:32', '2025-08-07 15:10:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e214f4a0-5999-4926-b18d-2f61b7aa478c', '17ad774a-8c59-447a-b309-a2953679e25a', 829.29, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF552819', '2025-03-29 09:38:41', '2025-03-29 10:11:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('02699ae0-96fa-4ec2-93a7-d6a0ef889ac1', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 633.66, 'GBP', 'CREDIT',
        'COMPLETED', 'Salary deposit - Barnes-Johnson', 'ACH997433', '2025-05-20 16:07:35', '2025-05-20 16:54:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d6a06cf0-1690-4ac9-bbf4-a29511cefa42', 'd31cdd64-e270-4aa9-a77e-a89486214984', 148.94, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Hendricks Inc', 'REF831252', '2025-07-20 15:22:17', '2025-07-20 15:49:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1706c83d-6a92-4b4a-817c-7bbe866b1769', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 638.63, 'USD', 'TRANSFER',
        'CANCELLED', 'Family transfer', NULL, '2025-09-01 18:44:54', '2025-09-01 19:26:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('694df1ee-44f0-452a-8c76-4bfed419959d', 'd49ec560-02e4-4049-b181-837031133e95', 61.31, 'GBP', 'DEBIT',
        'COMPLETED', 'Online purchase - Knox, Davis and Miller', NULL, '2025-07-09 11:50:51', '2025-07-09 12:01:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('25a8c15e-a936-4b14-97db-8948e17e6c84', '30f7fce8-3a42-4900-8129-5549a3175459', 126.13, 'USD', 'REFUND',
        'COMPLETED', 'Price adjustment - Kaiser, Casey and Bush', NULL, '2025-03-24 15:40:44', '2025-03-24 16:29:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a35f3453-d47d-4d0c-89d5-677e17887d8f', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 26.37, 'USD', 'DEBIT',
        'CANCELLED', 'Gas station - Sims PLC', NULL, '2025-07-20 14:12:22', '2025-07-20 14:51:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('56d8a736-04ff-4e87-9b3e-90e8727e8b8a', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 1527.6, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Craig-Sawyer', 'ACH236175', '2025-08-06 10:00:08', '2025-08-06 10:16:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('74fa5271-9842-4dd5-b072-53beab16a7dc', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1438.58, 'JPY', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-04-08 06:04:57', '2025-04-08 06:05:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c6816d4b-dd7a-40d9-9f21-2789bf8dd6e5', '12e6cc99-7181-4fde-98dc-93ded6112abf', 37.09, 'CHF', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-06-24 00:23:37', '2025-06-24 00:57:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5fd16ae-8845-4b0f-afeb-5d8a3966840b', '30f7fce8-3a42-4900-8129-5549a3175459', 131.42, 'EUR', 'REFUND',
        'PENDING', 'Subscription cancellation refund', 'REF304737', '2025-04-01 18:12:01', '2025-04-01 19:03:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ef64db9-65f2-4a20-ab79-b6fc80223c73', '12e6cc99-7181-4fde-98dc-93ded6112abf', 125.23, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Baker, Brown and Hendricks', 'REF739982', '2025-05-02 10:08:07',
        '2025-05-02 10:57:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7affd3dd-843a-4d87-9131-dd15e225feda', '50682165-f2c3-4049-909e-951838384433', 39.15, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF418386', '2025-06-26 11:41:38', '2025-06-26 12:15:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3b94be51-5561-4aeb-aa60-f453976394b4', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 122.81, 'CAD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Holly Lam', NULL, '2025-03-25 18:48:34', '2025-03-25 19:14:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3082b04d-12c0-4e7c-adfc-12209c1e0af0', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 121.97, 'EUR', 'REFUND',
        'COMPLETED', 'Service credit - Baldwin, Welch and Francis', 'REF719753', '2025-07-28 12:31:59',
        '2025-07-28 12:42:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b18d146d-bbad-42cb-beb8-be097a68eda9', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1111.83, 'EUR', 'CREDIT',
        'CANCELLED', 'Transfer from Barbara Hunter', 'ACH426216', '2025-08-14 22:29:16', '2025-08-14 22:47:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fa883af6-9b8b-4411-a996-34e565b8f1bc', 'd31cdd64-e270-4aa9-a77e-a89486214984', 101.62, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Thompson-Mason', NULL, '2025-04-20 10:26:33', '2025-04-20 11:05:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('75514352-08fd-4a14-b952-594740fa7053', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 651.75, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Branch-King', 'ACH605467', '2025-05-11 13:31:03', '2025-05-11 14:23:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4808a4d4-7c7d-4175-aeb6-0e1c90d616d4', '4110303a-5cca-4c46-885d-c1e3bd335d96', 48.76, 'EUR', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-08-26 12:19:32', '2025-08-26 12:50:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c3a31d6f-4d7a-46b8-acf8-1dd5685679e4', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 8.46, 'SEK', 'DEBIT',
        'COMPLETED', 'Bill payment - Powell Group Services', 'TXN476234', '2025-08-14 07:32:32', '2025-08-14 08:03:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('870cdb91-c920-4217-b2e5-1bfce2f68efb', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 160.21, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-03-27 09:27:33', '2025-03-27 09:59:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c9752810-84ba-4fe5-9ce0-87868fd0f401', 'd31cdd64-e270-4aa9-a77e-a89486214984', 213.19, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Morgan, Brown and Long Market', NULL, '2025-08-03 10:13:51', '2025-08-03 10:40:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e233296d-7288-4846-9356-d1174aae321a', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 358.56, 'EUR', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF539524', '2025-08-02 09:52:43', '2025-08-02 10:52:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('430276ea-97bf-4cd7-b949-dbb6c757207b', '17ad774a-8c59-447a-b309-a2953679e25a', 1042.15, 'USD', 'TRANSFER',
        'PENDING', 'Internal account transfer', 'REF387760', '2025-08-19 18:15:45', '2025-08-19 19:02:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0f23ba21-4c34-4e0c-a40e-a63da16aa182', '1817a074-62f9-463a-8dd7-c44151e47f96', 588.39, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-06-30 18:18:36', '2025-06-30 18:24:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3760b3ee-9164-4a21-8734-f4c843759a1b', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 368.05, 'DKK', 'DEBIT',
        'COMPLETED', 'Restaurant - Baker, Odom and Simmons', NULL, '2025-07-01 18:42:47', '2025-07-01 19:31:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0ddfece5-5573-4cdf-9171-ce185133cf37', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 426.57, 'GBP', 'DEBIT',
        'COMPLETED', 'Online purchase - Moon, Ingram and Valenzuela', NULL, '2025-04-22 00:27:55',
        '2025-04-22 01:08:47');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d0fe7771-dced-4fc3-bd78-d57c8908bb39', '30f7fce8-3a42-4900-8129-5549a3175459', 7073.56, 'EUR', 'CREDIT',
        'FAILED', 'Refund from Anderson Ltd', 'ACH350763', '2025-08-06 17:29:00', '2025-08-06 17:32:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ebc08386-c21d-41b5-b208-837f245e7f27', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 23.65, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF381028', '2025-08-30 14:42:48', '2025-08-30 15:37:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('65f84833-6ea9-4d22-98ac-5311f2a37faa', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 78.81, 'CHF', 'REFUND',
        'COMPLETED', 'Return processing - Smith-Mendez', NULL, '2025-07-14 17:43:13', '2025-07-14 17:56:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f343bae1-3919-4439-9da8-57cb0eccaccd', 'a6f93311-3bce-4db4-8395-25cde9688e47', 76.15, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', NULL, '2025-04-13 14:06:22', '2025-04-13 14:52:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f2766cd6-b99a-4e39-8eaf-e50a7f4494dd', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1176.79, 'JPY', 'TRANSFER',
        'PENDING', 'Bill split with Sarah Ellis', 'REF557416', '2025-06-08 00:21:52', '2025-06-08 01:16:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3646e074-108c-4fd3-be5f-139d4b086e93', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 56.82, 'USD', 'REFUND',
        'FAILED', 'Refund - Mcbride Inc', 'REF679575', '2025-05-17 13:03:24', '2025-05-17 13:19:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('36b5769d-c92f-42bc-b32f-e397a7030bd7', '30f7fce8-3a42-4900-8129-5549a3175459', 1454.24, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-08-01 18:03:47', '2025-08-01 18:29:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('17ff412a-0fde-4398-bca2-cb30ace46281', 'd49ec560-02e4-4049-b181-837031133e95', 20.41, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Andrade, Nelson and Tucker', 'TXN577707', '2025-04-03 15:07:12',
        '2025-04-03 15:27:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('734d4ecf-482c-49d9-9914-a201ae2f2f49', '20683a88-7f0e-471d-a3c5-bf175725052c', 1082.55, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH945564', '2025-08-28 12:24:06', '2025-08-28 13:21:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b21371ba-0b8f-4bf8-b7a3-63ea9a8ca8ae', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1693.58, 'EUR', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH885719', '2025-06-25 17:04:47', '2025-06-25 17:06:07');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aeb89710-7a6e-4edd-afb3-8b419c0c75a7', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1235.35, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-06-21 12:52:08', '2025-06-21 13:25:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('06d43f3e-92e0-4f03-8333-19d44b8e383a', 'd31cdd64-e270-4aa9-a77e-a89486214984', 130.07, 'CAD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF453060', '2025-03-18 06:56:47', '2025-03-18 07:13:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7294161f-a017-40e0-aae4-7116a27165af', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 134.34, 'USD', 'DEBIT',
        'COMPLETED', 'Grocery - Robles, Stone and Evans Market', 'TXN746172', '2025-08-20 09:59:04',
        '2025-08-20 10:06:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c8eac51f-1c70-4461-a8e4-15c7140360d5', '12e6cc99-7181-4fde-98dc-93ded6112abf', 1095.56, 'GBP', 'CREDIT',
        'COMPLETED', 'Dividend payment - Gay, Robinson and Walker', NULL, '2025-09-05 16:29:33', '2025-09-05 16:53:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('69b45b9a-9a22-47ae-bba8-c82714b2c173', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 342.52, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 4349 Garcia Mountains', 'TXN150630', '2025-07-28 12:19:56',
        '2025-07-28 13:02:49');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('761dc1cf-486f-4751-aec8-efe9f309f155', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 685.49, 'AUD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF529706', '2025-08-29 16:04:51', '2025-08-29 16:26:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b44c6445-e4ec-4237-8f87-406d65a3e97b', '7a712793-0571-4844-b830-a1a4d3fdeb27', 142.88, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH634123', '2025-08-04 20:20:29', '2025-08-04 20:25:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('31b1aed1-0789-4f9e-a11c-da3b3b7139c0', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 24.85, 'AUD', 'REFUND',
        'COMPLETED', 'Dispute resolution - King, Wilson and Smith', 'REF450669', '2025-08-17 15:50:54',
        '2025-08-17 16:08:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a0619df7-dda3-4037-950c-4f852225966d', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 72.91, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Christian Hernandez', 'TXN738580', '2025-07-30 04:26:58',
        '2025-07-30 05:02:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f83b35a3-b6bb-456a-a4f1-6da79aae4f9b', 'f9cae736-64d5-4692-a257-d87446ffc401', 188.06, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Johnson, Deleon and Marsh', 'REF906034', '2025-05-18 13:10:28', '2025-05-18 13:57:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f54535fb-fa58-4d80-8298-becf1af46f1e', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 189.38, 'USD', 'REFUND',
        'PENDING', 'Refund - Schneider Inc', NULL, '2025-04-19 13:21:58', '2025-04-19 14:07:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a418bc96-f823-4233-8e86-7a94a5d8e49f', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 124.47, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-06-01 15:10:46', '2025-06-01 16:06:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b2e24199-148c-45c4-9a09-752c43314f1f', '523c0c30-1242-44a7-a025-f015ef7d4127', 829.28, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Crawford-Avery', 'ACH492237', '2025-04-13 22:51:29', '2025-04-13 22:55:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('abf12e36-d1a0-424f-99a1-4dabeab30824', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 140.45, 'GBP', 'REFUND',
        'COMPLETED', 'Processing fee refund', 'REF239398', '2025-03-31 16:37:53', '2025-03-31 16:47:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9cd67560-b34b-4b11-b720-0986f295da13', '20683a88-7f0e-471d-a3c5-bf175725052c', 235.9, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Chase Inc Store', NULL, '2025-08-12 11:28:47', '2025-08-12 11:40:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('464a0d2e-1807-4092-963c-8b9d84988c64', '02630652-15bc-4df0-99b7-a41c93c79986', 1409.87, 'USD', 'TRANSFER',
        'COMPLETED', 'Family transfer', NULL, '2025-05-08 12:31:42', '2025-05-08 13:05:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b0c57ab3-f359-4450-8fea-a337db375385', '1817a074-62f9-463a-8dd7-c44151e47f96', 198.67, 'GBP', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF495628', '2025-03-25 10:23:46', '2025-03-25 10:30:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6cb77665-7137-4a98-83e2-bdf0c6fe6a14', 'f9cae736-64d5-4692-a257-d87446ffc401', 419.87, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-04-15 19:09:18', '2025-04-15 19:42:26');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ee2331dc-6531-423c-adfa-b07d569384a5', 'd49ec560-02e4-4049-b181-837031133e95', 159.03, 'SEK', 'DEBIT',
        'COMPLETED', 'Restaurant - Fuller Ltd', 'TXN758178', '2025-05-26 15:46:25', '2025-05-26 16:09:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3c72892-02e9-472e-982a-c9860216a331', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1962.38, 'USD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH185877', '2025-09-09 23:12:08', '2025-09-09 23:23:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f26c6909-1686-41f4-9d26-6380d166117f', 'f9cae736-64d5-4692-a257-d87446ffc401', 247.45, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-06-01 12:50:00', '2025-06-01 12:53:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('93664841-2739-412a-bbd5-2fe51689d0cf', '50682165-f2c3-4049-909e-951838384433', 363.33, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', NULL, '2025-04-17 23:15:13', '2025-04-18 00:10:08');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2d86def3-0a87-4766-9441-a5d9ce57b796', 'a6f93311-3bce-4db4-8395-25cde9688e47', 331.22, 'CAD', 'TRANSFER',
        'COMPLETED', 'Bill split with Chris Sexton', 'REF238438', '2025-04-16 10:32:26', '2025-04-16 11:20:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('2dd85dde-1b39-4d9e-9f2f-6065abb6b494', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 8.25, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Flores, Morrison and Bailey Premium', NULL, '2025-06-06 12:13:06',
        '2025-06-06 12:46:27');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5d625e33-89e6-4250-9633-f20fbc2a8836', '7a712793-0571-4844-b830-a1a4d3fdeb27', 229.62, 'AUD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 9029 Blair Place', 'TXN486826', '2025-08-21 08:26:17', '2025-08-21 08:40:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('028dc69a-33b7-42b1-b871-5a625565631f', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 89.29, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', NULL, '2025-06-18 11:35:33', '2025-06-18 11:54:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb1b86d2-4a2b-4f53-96b4-19674b9b4e99', '20683a88-7f0e-471d-a3c5-bf175725052c', 61.39, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF613303', '2025-07-05 14:32:08', '2025-07-05 14:32:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('588bde76-0384-4c37-88f8-5a417050e4b1', '30f7fce8-3a42-4900-8129-5549a3175459', 977.92, 'EUR', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF767069', '2025-09-11 11:29:11', '2025-09-11 12:27:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('09dd48d1-5e7e-48c1-a8c8-b72f9ec1b0b5', 'f9cae736-64d5-4692-a257-d87446ffc401', 359.75, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF242847', '2025-03-29 18:24:55', '2025-03-29 19:05:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e3be8d0c-28a4-4d87-acf1-bcbb263f8c54', 'f9cae736-64d5-4692-a257-d87446ffc401', 60.73, 'EUR', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-08-29 13:15:21', '2025-08-29 14:00:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5d2e86ec-e852-4d7e-8b59-1eed992b8ee7', '4110303a-5cca-4c46-885d-c1e3bd335d96', 88.13, 'EUR', 'DEBIT',
        'COMPLETED', 'Payment to Peterson, Blake and Rodriguez', 'TXN146822', '2025-05-30 10:45:25',
        '2025-05-30 11:01:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fa561e55-1217-4758-ab47-6bc95a9cca01', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1301.86, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Davis, Medina and Barnes', 'ACH684938', '2025-07-29 14:39:14',
        '2025-07-29 14:58:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('07f99e17-6d04-4821-8a18-f08160b37943', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 483.24, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Bryant Group Store', 'TXN468669', '2025-07-23 11:31:33', '2025-07-23 12:16:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('12019912-1391-4eb2-90d2-db3e81372d12', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 29.96, 'USD', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-05-27 11:50:12', '2025-05-27 12:39:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('045e99e7-353a-4ad3-bbea-ff07c6382486', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1049.02, 'EUR', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF594696', '2025-04-09 08:49:57', '2025-04-09 08:52:06');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5c1b0066-ad96-4df3-8e62-3eaeda09d49a', 'd31cdd64-e270-4aa9-a77e-a89486214984', 187.09, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Kemp Group', NULL, '2025-03-31 13:02:58', '2025-03-31 13:21:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c8bcccc7-12d5-488a-afd1-7cd57d47ec59', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 152.07, 'EUR', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF947226', '2025-07-22 03:24:34', '2025-07-22 04:07:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1d37f798-2315-4ba7-b8ae-34026d6329f6', '12e6cc99-7181-4fde-98dc-93ded6112abf', 195.67, 'AUD', 'REFUND',
        'COMPLETED', 'Price adjustment - Lowery-Reese', 'REF126065', '2025-09-11 10:21:43', '2025-09-11 10:44:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4abb0800-350b-4af9-8720-64994fb6edc6', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 52.7, 'USD', 'REFUND',
        'COMPLETED', 'Service credit - Sullivan, Phillips and Eaton', NULL, '2025-06-17 14:28:49',
        '2025-06-17 15:11:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ade4d57f-3c52-4e99-b7f4-b1afaa2fc4e2', '17ad774a-8c59-447a-b309-a2953679e25a', 659.48, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF859462', '2025-03-29 21:42:25', '2025-03-29 22:32:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8f1c4e5e-2498-418c-a4de-89dbcf888808', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 402.79, 'GBP', 'DEBIT',
        'COMPLETED', 'Bill payment - Day, Williams and Brooks Services', 'TXN901898', '2025-08-22 19:24:34',
        '2025-08-22 20:08:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d61ce9f5-c543-41ad-86be-afa10a40d656', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 273.12, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-04-26 04:08:17', '2025-04-26 04:49:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b5553846-dd07-44d6-a56a-d4c51361dadb', 'f9cae736-64d5-4692-a257-d87446ffc401', 106.23, 'EUR', 'REFUND',
        'COMPLETED', 'Return processing - Foster-Mccormick', NULL, '2025-07-06 17:32:20', '2025-07-06 18:05:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8fcd2a3c-a17e-4e49-8aca-9e7493ed3a86', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 999.31, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Hill, Brown and Bell', 'ACH704341', '2025-07-29 11:23:13',
        '2025-07-29 12:17:14');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ae5a3e52-8475-4b03-8243-45db152b9505', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 534.99, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Rodney Brock', NULL, '2025-07-26 10:45:21', '2025-07-26 10:57:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e4b29087-1059-418c-8984-18820072cc15', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 881.47, 'EUR', 'DEBIT',
        'COMPLETED', 'Online purchase - Hodges, Knight and Johnson', 'TXN866064', '2025-04-08 11:55:08',
        '2025-04-08 12:24:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cbb14ff4-e1c0-41db-90de-8130f9daf118', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1276.37, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Amy Armstrong', 'REF409478', '2025-09-10 02:26:58', '2025-09-10 02:54:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7064630-7101-4989-b46a-aa2b9f45a2e2', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 69.91, 'CAD', 'DEBIT',
        'COMPLETED', 'Grocery - Hanson Ltd Market', 'TXN196144', '2025-03-22 16:40:31', '2025-03-22 17:19:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e25419a3-11b0-405e-bbde-7627ca066411', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 153.56, 'USD', 'REFUND',
        'COMPLETED', 'Refund - Wilson and Sons', NULL, '2025-05-27 05:45:18', '2025-05-27 06:21:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8d0442e4-e52b-4dfe-939a-8a56ee456972', '1817a074-62f9-463a-8dd7-c44151e47f96', 169.76, 'GBP', 'REFUND',
        'COMPLETED', 'Refund - Mcbride LLC', 'REF615807', '2025-06-29 22:41:11', '2025-06-29 22:49:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42f67cac-d6ef-47af-86ed-40f6f00a41d2', '2e3b6236-b73f-40b1-a88f-abafe787082b', 475.27, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Ms. Grace Miller MD', 'TXN919182', '2025-09-08 18:29:29',
        '2025-09-08 18:30:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eb19e2e0-a79f-4fcf-91a7-dda7b79d6072', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 1003.26, 'CAD', 'CREDIT',
        'COMPLETED', 'Commission payment', 'ACH768953', '2025-03-23 15:08:56', '2025-03-23 15:52:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('daf04ede-6a25-4771-a1a7-289ee526ffcc', '02630652-15bc-4df0-99b7-a41c93c79986', 186.54, 'EUR', 'CREDIT',
        'COMPLETED', 'Freelance payment - Middleton-Swanson', 'ACH781022', '2025-04-20 22:14:17',
        '2025-04-20 22:17:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('292b241b-bbea-45ec-9c8d-f2f1c468a4fa', '20683a88-7f0e-471d-a3c5-bf175725052c', 105.2, 'USD', 'DEBIT',
        'COMPLETED', 'Online purchase - Sandoval-Landry', 'TXN596881', '2025-05-24 06:07:49', '2025-05-24 06:59:04');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4debc29-b7bb-4c66-a9ec-7b0701cbb2a1', '17ad774a-8c59-447a-b309-a2953679e25a', 38.67, 'CHF', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF499205', '2025-03-22 11:37:13', '2025-03-22 12:27:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b3aa9ef2-d70f-4858-88cd-61ee99bf09c4', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1499.68, 'USD', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF307231', '2025-07-21 15:39:23', '2025-07-21 15:59:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e077fff5-54ab-44c2-9c8e-e49848d3e7ed', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 7.0, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Yoder PLC Premium', 'TXN592949', '2025-07-30 10:30:54', '2025-07-30 11:04:52');

-- Batch 20: Transactions 1901-2000
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6bca796d-801b-46cb-ac84-d5ba3b728fcb', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 296.03, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Anderson-Black', 'ACH697156', '2025-06-19 18:34:41', '2025-06-19 18:40:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3c010bf5-b84e-4145-81d5-de8402cfe251', '4692fe34-18fd-4140-9f08-06189f96fac3', 460.73, 'USD', 'TRANSFER',
        'COMPLETED', 'Wire transfer to Brandon Flores', 'REF272097', '2025-06-06 15:06:15', '2025-06-06 15:47:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3a3cbf8c-4d1b-4e0d-bf58-625af6b0bb32', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 29.43, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-07-19 15:30:31', '2025-07-19 15:55:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5287c0bb-602a-4dbe-9350-3639bdec3cc9', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 81.8, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Reed-Brown', 'TXN841157', '2025-06-07 20:05:22', '2025-06-07 21:01:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d61341f2-58a8-4d22-b66c-d3629d91de93', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 1408.69, 'USD', 'CREDIT',
        'COMPLETED', 'Bonus payment - Franklin, Wheeler and Taylor', 'ACH505414', '2025-05-25 17:09:32',
        '2025-05-25 18:09:15');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('702310d0-7785-4557-bf63-f208971d57c6', '4692fe34-18fd-4140-9f08-06189f96fac3', 6579.37, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Cook Group', 'ACH864797', '2025-06-27 11:05:25', '2025-06-27 11:25:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('165865e9-f58a-421f-95a9-5659a5ff2fa2', '17ad774a-8c59-447a-b309-a2953679e25a', 93.13, 'USD', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', NULL, '2025-05-24 14:55:49', '2025-05-24 14:57:39');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fbd84e59-fe40-486d-a1ab-ea7f17d38a00', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 773.42, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF471438', '2025-05-01 14:12:59', '2025-05-01 14:15:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5f7cb76a-7a23-40b3-8cda-85b47d4dc2d9', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 137.0, 'USD', 'REFUND',
        'PENDING', 'Dispute resolution - Webb-Mercer', 'REF477136', '2025-04-03 16:19:14', '2025-04-03 16:21:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('26a564a1-04c2-489d-963d-1c6ec819b7b4', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1427.62, 'USD', 'CREDIT',
        'PENDING', 'Dividend payment - Brown, Bailey and Wheeler', 'ACH698094', '2025-07-06 17:48:47',
        '2025-07-06 17:57:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5c1e3410-eb4c-4e43-9eee-787c31e9f84f', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1491.46, 'USD', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF276307', '2025-06-07 09:12:10', '2025-06-07 10:03:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a0b0f0aa-c817-4c19-8431-baf8f09f5d33', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 118.68, 'EUR', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF974788', '2025-05-26 18:58:01', '2025-05-26 19:00:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a5c8f4af-ce3e-446d-bee7-77a5251de710', '2e3b6236-b73f-40b1-a88f-abafe787082b', 200.4, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Rachael Brown', 'REF612062', '2025-05-25 17:01:33', '2025-05-25 17:52:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('165e15ad-ed92-46d5-8f25-26844be7bbe3', '20683a88-7f0e-471d-a3c5-bf175725052c', 268.57, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Torres LLC Services', 'TXN111231', '2025-09-04 09:13:54', '2025-09-04 09:17:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e07c9468-dacb-4b3f-88fa-619f81ba3d12', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 83.45, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Everett Ltd', 'TXN514863', '2025-04-26 09:54:29', '2025-04-26 10:07:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('96d28fc3-8cba-4e32-81fd-c3bf75704892', '02630652-15bc-4df0-99b7-a41c93c79986', 66.5, 'USD', 'DEBIT',
        'COMPLETED', 'Bill payment - Tate Group Services', NULL, '2025-04-26 11:03:02', '2025-04-26 11:45:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cabd94b5-eb8c-41b8-a35a-fa5839821f9d', '2e3b6236-b73f-40b1-a88f-abafe787082b', 158.7, 'GBP', 'REFUND',
        'COMPLETED', 'Overpayment refund', NULL, '2025-08-03 12:07:17', '2025-08-03 12:22:23');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1a884155-fc80-4da0-a9af-55fe01a46c8d', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 673.21, 'USD', 'CREDIT',
        'FAILED', 'Salary deposit - Stone-Conley', 'ACH508702', '2025-08-04 18:44:42', '2025-08-04 18:56:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3d710da-8176-4c72-917e-d2fe8010775c', '1817a074-62f9-463a-8dd7-c44151e47f96', 165.85, 'USD', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF920510', '2025-06-14 18:09:33', '2025-06-14 18:09:35');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b7a25848-1f19-4cfd-97a1-79c8fd3502d2', '7a712793-0571-4844-b830-a1a4d3fdeb27', 893.7, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Jordan Blackwell', 'REF180250', '2025-08-24 15:58:45', '2025-08-24 16:29:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('11495468-cca4-4d8a-afa0-f6b420f7c7f2', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 2650.9, 'GBP', 'CREDIT',
        'COMPLETED', 'Bonus payment - Perez-Gill', 'ACH706478', '2025-07-16 13:05:10', '2025-07-16 13:26:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ffea17c1-a6bd-4ff7-aba6-de077049840e', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1610.19, 'USD', 'CREDIT',
        'CANCELLED', 'Bonus payment - Parsons-Cooper', 'ACH672017', '2025-07-12 09:49:02', '2025-07-12 10:05:31');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ec1d22b9-0081-4037-90cc-2cd31c9542d6', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 215.87, 'EUR', 'CREDIT',
        'COMPLETED', 'Dividend payment - Curry, Johnson and Perez', 'ACH855407', '2025-03-26 06:09:00',
        '2025-03-26 06:33:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('11ecfb10-7174-4b1a-b058-84da81aca77f', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 623.36, 'GBP', 'TRANSFER',
        'COMPLETED', 'P2P payment via mobile app', 'REF746131', '2025-05-24 07:43:16', '2025-05-24 08:04:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('35415d62-ab6f-4e21-b6bb-0e6dca81b0ca', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 274.82, 'USD', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH491069', '2025-06-12 17:26:09', '2025-06-12 17:50:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('46539ba1-aff6-4c86-99f8-828fd142d36e', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 163.73, 'GBP', 'REFUND',
        'COMPLETED', 'Subscription cancellation refund', 'REF888129', '2025-06-21 06:56:32', '2025-06-21 07:09:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5379d44d-2c21-4c30-8540-e7e09757f992', 'f9cae736-64d5-4692-a257-d87446ffc401', 126.68, 'EUR', 'CREDIT',
        'COMPLETED', 'Salary deposit - Carr, Ewing and Bradley', NULL, '2025-04-05 11:40:52', '2025-04-05 11:41:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f857be42-5f41-4de3-8911-58ce8ed46a2f', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 39.99, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Richardson, Warner and Owens Store', NULL, '2025-08-19 04:34:49',
        '2025-08-19 05:04:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cc7963b4-881f-41cd-b52e-c00fe1ea6fe5', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 133.54, 'JPY', 'DEBIT',
        'COMPLETED', 'Online purchase - Thomas, Hernandez and Harris', 'TXN207923', '2025-07-10 17:13:12',
        '2025-07-10 17:58:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('cdab0971-8ccb-49fe-8363-388b67df0e54', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 74.25, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Elizabeth Ortiz', NULL, '2025-05-27 16:35:06', '2025-05-27 17:12:56');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d8c8436-3e84-40ea-b469-571ab116a832', '4110303a-5cca-4c46-885d-c1e3bd335d96', 248.1, 'EUR', 'CREDIT',
        'COMPLETED', 'Insurance claim settlement', 'ACH816504', '2025-05-18 12:32:07', '2025-05-18 12:56:17');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('133fc68a-683b-4bc4-a0d2-1d6e009b8669', '523c0c30-1242-44a7-a025-f015ef7d4127', 549.03, 'USD', 'TRANSFER',
        'COMPLETED', 'Bill split with Toni Lawrence', 'REF305264', '2025-08-24 11:39:32', '2025-08-24 12:04:38');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4282b548-ac6c-4490-9842-e132096e7696', '2e3b6236-b73f-40b1-a88f-abafe787082b', 1709.45, 'CHF', 'DEBIT',
        'COMPLETED', 'Online transfer to Gregory Harrington', NULL, '2025-06-20 08:06:52', '2025-06-20 08:09:02');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('04e75ebe-1e07-4dcb-93c0-9ffb068a879c', '523c0c30-1242-44a7-a025-f015ef7d4127', 263.0, 'USD', 'DEBIT',
        'COMPLETED', 'Subscription - Bennett Inc Premium', NULL, '2025-03-29 10:48:50', '2025-03-29 10:59:05');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('55cbeb2d-7ee5-4152-a098-0ce1993eb50a', '4692fe34-18fd-4140-9f08-06189f96fac3', 1644.79, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Connie West', NULL, '2025-08-13 11:37:20', '2025-08-13 12:26:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3cb82133-0518-4184-8a7f-d6ab26cd9136', '30f7fce8-3a42-4900-8129-5549a3175459', 100.42, 'USD', 'REFUND',
        'COMPLETED', 'Processing fee refund', NULL, '2025-08-02 14:13:36', '2025-08-02 14:40:18');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89c39256-cd30-42d3-9418-1b1c2aa1cc98', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 3172.05, 'USD', 'CREDIT',
        'PENDING', 'Interest payment', NULL, '2025-09-05 15:13:26', '2025-09-05 15:56:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('16b692c4-a347-49ee-a2b1-630fd8d3a950', '7a712793-0571-4844-b830-a1a4d3fdeb27', 17.01, 'USD', 'REFUND',
        'COMPLETED', 'Return processing - Fleming PLC', 'REF508752', '2025-04-13 17:59:02', '2025-04-13 18:02:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b73b8374-4a16-44a8-804a-e7b56ae06ecc', '4110303a-5cca-4c46-885d-c1e3bd335d96', 1519.42, 'USD', 'CREDIT',
        'COMPLETED', 'Salary deposit - Lane, Landry and Sampson', 'ACH711158', '2025-05-18 10:57:46',
        '2025-05-18 11:40:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c590cc93-823e-4722-a272-53f639624186', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 1262.83, 'USD', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF699291', '2025-04-10 04:29:15', '2025-04-10 05:11:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('76e2db61-c6c8-4c44-a5b1-f15c608d5b15', '20683a88-7f0e-471d-a3c5-bf175725052c', 670.8, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Simpson LLC', 'ACH541246', '2025-06-12 18:05:18', '2025-06-12 18:13:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('845c1b02-c0ee-4b20-b4dd-cf2826c64291', '17ad774a-8c59-447a-b309-a2953679e25a', 247.77, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Thomas, Malone and Donovan', NULL, '2025-07-25 02:42:57',
        '2025-07-25 03:37:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e0a29599-d008-4dd7-afac-7b59ae0a3d5e', '4110303a-5cca-4c46-885d-c1e3bd335d96', 64.77, 'AUD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF169711', '2025-04-16 07:09:40', '2025-04-16 08:00:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d69687eb-2317-45f3-b611-a1302dcd5651', 'f9cae736-64d5-4692-a257-d87446ffc401', 616.5, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', NULL, '2025-04-28 10:13:09', '2025-04-28 11:11:59');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4cc5e7da-66b2-4aff-a907-e31f293955ca', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 6356.07, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Wilkinson, Smith and Davis', 'ACH199929', '2025-05-02 15:17:20',
        '2025-05-02 16:12:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3fe9d09d-2168-4d99-b09b-0cf751d6506c', 'f9cae736-64d5-4692-a257-d87446ffc401', 299.47, 'USD', 'TRANSFER',
        'COMPLETED', 'International transfer', 'REF231338', '2025-08-24 13:08:07', '2025-08-24 14:00:10');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9e8af6d0-0edb-4499-85ed-8137e027fd40', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 236.19, 'GBP', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH460113', '2025-05-20 10:39:15', '2025-05-20 10:50:45');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e6d30c98-0658-448c-b04b-32a445a5b63f', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 113.72, 'JPY', 'DEBIT',
        'COMPLETED', 'Restaurant - Carney Group', 'TXN738549', '2025-07-14 12:40:02', '2025-07-14 13:12:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('42ea376a-664b-409f-9408-543872573e7c', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 1765.26, 'EUR', 'CREDIT',
        'COMPLETED', 'Transfer from Maxwell Camacho', 'ACH695053', '2025-04-15 04:26:30', '2025-04-15 05:10:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('99b7b865-aa43-49a8-8141-8363fee2b3b8', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 284.23, 'CAD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-07-10 09:39:57', '2025-07-10 10:13:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9a6971de-5080-4bb5-b2f3-f5cca3f98a65', '4110303a-5cca-4c46-885d-c1e3bd335d96', 174.27, 'EUR', 'REFUND',
        'PENDING', 'Warranty claim refund', 'REF457920', '2025-06-23 17:15:57', '2025-06-23 18:14:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d217373b-ee0b-4efa-9f1c-d4d6e2327ac2', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1981.97, 'USD', 'CREDIT',
        'COMPLETED', 'Interest payment', 'ACH349983', '2025-08-18 12:00:24', '2025-08-18 12:15:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('21ab1ee2-6e51-424b-9406-7ef6a391a675', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 290.66, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Ashley Mcintosh', 'REF205334', '2025-03-24 02:42:08', '2025-03-24 02:52:42');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('eb297dc6-10ff-450b-8850-1164c4990b14', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 77.04, 'CHF', 'REFUND',
        'COMPLETED', 'Return processing - Adams-Oconnor', 'REF910245', '2025-08-27 21:02:29', '2025-08-27 21:43:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('bf2d0852-65b3-4e23-b7c6-baca355a7f02', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 1774.94, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Becker, Massey and Rogers', 'ACH152103', '2025-06-11 10:58:33',
        '2025-06-11 11:24:13');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('287affb3-2a05-4c2a-967d-0bb0c642b63a', '50682165-f2c3-4049-909e-951838384433', 748.27, 'EUR', 'CREDIT',
        'COMPLETED', 'Refund from Garner, Valdez and Mejia', NULL, '2025-04-20 16:07:30', '2025-04-20 17:02:46');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a3c94d70-666f-4acb-bab2-03ccd5dee040', '4692fe34-18fd-4140-9f08-06189f96fac3', 265.66, 'CAD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH939463', '2025-04-08 04:46:52', '2025-04-08 05:03:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('566df2da-ab5a-49fa-91a0-96e2c7972dbe', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 130.87, 'GBP', 'REFUND',
        'COMPLETED', 'Dispute resolution - Simpson, Herrera and Freeman', NULL, '2025-04-18 16:46:35',
        '2025-04-18 16:58:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c0867c52-92f3-4a6e-8348-b59303cee6c4', '02630652-15bc-4df0-99b7-a41c93c79986', 988.2, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to Benjamin Kim', NULL, '2025-05-21 14:18:24', '2025-05-21 14:33:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('8fa448dd-b247-4ce0-8ff9-e8bbd82121c6', '20683a88-7f0e-471d-a3c5-bf175725052c', 1449.14, 'USD', 'TRANSFER',
        'FAILED', 'International transfer', NULL, '2025-08-11 08:37:05', '2025-08-11 09:18:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('caaa530f-3f84-42c5-8308-6d9fc37c426f', '20683a88-7f0e-471d-a3c5-bf175725052c', 214.23, 'USD', 'TRANSFER',
        'FAILED', 'Investment account funding', 'REF356413', '2025-05-12 09:35:12', '2025-05-12 10:34:16');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('7274f7bd-37bc-4559-93d1-0ef6a3ea2f87', '12e6cc99-7181-4fde-98dc-93ded6112abf', 188.84, 'GBP', 'DEBIT',
        'COMPLETED', 'Card payment - Martin, Blankenship and Harrison Store', 'TXN852019', '2025-07-20 08:45:24',
        '2025-07-20 09:12:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ed32e467-16ca-427f-9071-7f08d3712170', '4110303a-5cca-4c46-885d-c1e3bd335d96', 461.94, 'USD', 'DEBIT',
        'PENDING', 'Payment to Scott, Cervantes and Frederick', NULL, '2025-06-14 17:05:52', '2025-06-14 17:29:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f98bcb22-f3d9-4743-8675-a3ae8f7034dc', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 1334.32, 'EUR', 'TRANSFER',
        'COMPLETED', 'Internal account transfer', 'REF577839', '2025-06-21 13:15:09', '2025-06-21 13:41:57');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('aa39042c-dde2-4d7d-a69c-5625dc483263', 'f9cae736-64d5-4692-a257-d87446ffc401', 384.09, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', NULL, '2025-08-20 22:51:57', '2025-08-20 23:26:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b8b5ab28-0a24-4277-9738-db97a964e6a6', '50682165-f2c3-4049-909e-951838384433', 94.86, 'USD', 'REFUND',
        'COMPLETED', 'Dispute resolution - Hartman-Wells', 'REF776425', '2025-04-11 20:17:23', '2025-04-11 20:46:11');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('f1e03341-f377-4425-9f1a-b7a9796d0897', 'ba0ef53c-72ee-4e1d-af97-70534abe4388', 1380.16, 'EUR', 'TRANSFER',
        'COMPLETED', 'Investment account funding', 'REF161905', '2025-07-29 13:50:42', '2025-07-29 14:09:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('622ff52d-b5b9-44bc-acb8-77d738e89819', 'd31cdd64-e270-4aa9-a77e-a89486214984', 1052.47, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Joshua Cole', NULL, '2025-08-09 10:53:18', '2025-08-09 11:22:53');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('a7c1ffed-57af-4490-95e4-e0785a65b49e', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 93.64, 'EUR', 'REFUND',
        'COMPLETED', 'Price adjustment - Rowland-Johnson', 'REF611444', '2025-03-26 18:58:06', '2025-03-26 19:16:19');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5c46dc84-2065-4be9-97d4-aadc30b12268', 'e354f584-cbe0-485d-bd8c-ac988be30f78', 1407.7, 'USD', 'TRANSFER',
        'PENDING', 'Investment account funding', 'REF867199', '2025-04-28 11:29:20', '2025-04-28 11:51:09');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('01f63b28-2eff-44b1-8ec6-4fd79851152f', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 491.89, 'JPY', 'DEBIT',
        'COMPLETED', 'Online transfer to Patrick Waller', 'TXN853537', '2025-07-12 15:06:55', '2025-07-12 15:41:29');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('653224c1-ecc3-4cc2-a06f-a7154d91187a', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 159.55, 'EUR', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF255421', '2025-03-29 16:02:38', '2025-03-29 16:14:52');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('5ac75d3f-65cd-4c00-bbbf-afbe991ef003', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 835.92, 'USD', 'TRANSFER',
        'PENDING', 'Family transfer', NULL, '2025-07-23 09:23:23', '2025-07-23 09:34:30');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('00dce951-e896-4965-b425-f225443a4ba6', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 148.78, 'USD', 'TRANSFER',
        'COMPLETED', 'Savings account transfer', 'REF491328', '2025-08-05 12:16:43', '2025-08-05 12:20:44');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('75bd8ba3-4c49-4807-8e29-9bc581600430', 'aadd97fe-d937-49d7-919a-761b33a58cb9', 253.5, 'AUD', 'DEBIT',
        'COMPLETED', 'Restaurant - Reeves-Sutton', 'TXN673272', '2025-06-05 18:27:00', '2025-06-05 18:40:41');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e82c87fb-aac0-4335-9737-27c75a36009b', '17ad774a-8c59-447a-b309-a2953679e25a', 1605.99, 'USD', 'CREDIT',
        'COMPLETED', 'Freelance payment - Franklin, White and Odom', 'ACH166034', '2025-05-30 20:25:43',
        '2025-05-30 21:19:20');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6dfd4bc6-890f-4c70-8e1b-e7b139595dc9', 'f9cae736-64d5-4692-a257-d87446ffc401', 433.16, 'AUD', 'TRANSFER',
        'COMPLETED', 'Bill split with Randy Brooks', 'REF556835', '2025-06-25 11:06:45', '2025-06-25 11:27:28');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('fb3f3627-4e42-4635-843e-af9ab45d69a9', '523c0c30-1242-44a7-a025-f015ef7d4127', 645.96, 'USD', 'TRANSFER',
        'COMPLETED', 'Transfer to Stephanie Wilson', 'REF282827', '2025-08-19 17:25:24', '2025-08-19 17:52:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('d98ad782-bb87-490e-9356-26f934cb5427', 'a6f93311-3bce-4db4-8395-25cde9688e47', 74.61, 'USD', 'CREDIT',
        'FAILED', 'Government benefit payment', 'ACH257357', '2025-05-24 10:58:05', '2025-05-24 11:12:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('27bb9048-d4ee-478a-a734-94d2464e84c5', '151ecd0f-23dd-4c92-a912-d2f8d2bebe63', 441.86, 'USD', 'DEBIT',
        'COMPLETED', 'Online transfer to April Wright', 'TXN684029', '2025-06-08 09:24:43', '2025-06-08 10:05:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('52e1f47a-9a0a-42aa-a571-16fbe9fbeca9', 'fe0c9dbf-4447-4454-851f-c74eba36df69', 91.9, 'USD', 'DEBIT',
        'COMPLETED', 'Payment to Wong, Krause and Cisneros', 'TXN351749', '2025-07-17 13:43:31', '2025-07-17 14:27:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('948e4b4b-eada-46da-9eb7-679d689dc428', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 31.46, 'USD', 'DEBIT',
        'COMPLETED', 'Card payment - Anderson, Benjamin and Wood Store', 'TXN491979', '2025-04-19 11:39:42',
        '2025-04-19 12:02:50');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('91eced03-d795-4053-b75d-c56bf6a14cfd', 'dad65bdc-f58a-4b60-b045-74d2288ed4f4', 1086.86, 'USD', 'TRANSFER',
        'PENDING', 'Wire transfer to Brittany Galvan', 'REF147466', '2025-03-28 14:56:51', '2025-03-28 15:47:12');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('3919cc92-07fe-4f38-a085-8e5d024cd6ab', '870ea22e-0a6c-470c-b138-c25a4beeb7ac', 161.47, 'USD', 'REFUND',
        'COMPLETED', 'Cancelled order refund', 'REF752010', '2025-03-29 17:09:04', '2025-03-29 17:29:24');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('6bbffc21-e00d-4b9e-8708-fb663859af19', '6cf443bf-28ab-44cb-886a-d6dd9f01faae', 73.74, 'USD', 'DEBIT',
        'COMPLETED', 'ATM withdrawal at 0034 Mitchell Mountains', NULL, '2025-04-21 12:14:30', '2025-04-21 12:49:51');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('b4404dfb-b23e-4715-881c-b8ad56ff5480', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 449.71, 'EUR', 'DEBIT',
        'COMPLETED', 'Gas station - Pacheco-Garrison', 'TXN733572', '2025-06-05 17:22:11', '2025-06-05 18:13:43');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('c0301c8a-c748-401d-a816-c52fca8f6266', '7a712793-0571-4844-b830-a1a4d3fdeb27', 2245.79, 'EUR', 'DEBIT',
        'COMPLETED', 'Grocery - Moore-Johnson Market', 'TXN792546', '2025-04-15 01:25:49', '2025-04-15 01:44:03');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4d014583-2477-404a-99ae-51ef4aaddc77', 'a6f93311-3bce-4db4-8395-25cde9688e47', 1007.57, 'USD', 'TRANSFER',
        'PENDING', 'Family transfer', 'REF798673', '2025-09-07 11:06:48', '2025-09-07 11:08:25');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('dcf7b466-388f-4334-9281-db04d8ce7398', '599905bd-5e32-4bed-ab79-01b9a10a99d1', 737.24, 'CAD', 'CREDIT',
        'PENDING', 'Dividend payment - Gonzales LLC', 'ACH294380', '2025-07-26 03:44:41', '2025-07-26 04:30:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9fab6940-8195-4873-8492-e867f7991a1e', 'd8982e6d-6e2c-4457-a1d2-1d2842a386f2', 178.19, 'USD', 'CREDIT',
        'PENDING', 'Government benefit payment', NULL, '2025-08-21 17:35:20', '2025-08-21 17:43:40');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('ba4493d1-eeef-4f6a-a748-514c250348f2', 'a7b9a0f8-dfe1-4666-ac49-d8351de056cc', 34.58, 'USD', 'TRANSFER',
        'CANCELLED', 'Investment account funding', 'REF867516', '2025-08-20 18:18:04', '2025-08-20 18:44:58');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('32b07450-d8e1-4464-bf3b-7f9723461d1c', 'ac445c89-d8c6-47fe-8930-bfdceb2206bf', 1420.54, 'EUR', 'CREDIT',
        'COMPLETED', 'Government benefit payment', NULL, '2025-09-10 15:47:08', '2025-09-10 16:05:22');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('9f667efc-2598-4c08-bcbd-4bce3c7cc744', '30f7fce8-3a42-4900-8129-5549a3175459', 151.88, 'USD', 'CREDIT',
        'COMPLETED', 'Government benefit payment', 'ACH439562', '2025-05-06 09:57:19', '2025-05-06 10:49:48');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('1329b072-ca18-4488-9b66-cecf35c46b5d', '12e6cc99-7181-4fde-98dc-93ded6112abf', 71.35, 'USD', 'CREDIT',
        'COMPLETED', 'Transfer from Tyler Cisneros', 'ACH864079', '2025-07-25 15:22:52', '2025-07-25 15:27:34');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('4fab5d30-1dcb-4a00-a814-f44a2298612b', '17ad774a-8c59-447a-b309-a2953679e25a', 44.71, 'EUR', 'REFUND',
        'COMPLETED', 'Warranty claim refund', 'REF108984', '2025-08-21 14:13:14', '2025-08-21 14:26:55');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('22edcce4-8b69-4bb6-9ec7-b7d1594cb5a4', 'f9cae736-64d5-4692-a257-d87446ffc401', 235.94, 'USD', 'CREDIT',
        'COMPLETED', 'Dividend payment - Hughes-Miller', NULL, '2025-06-02 05:04:29', '2025-06-02 05:37:37');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('e3b6335d-2f7b-48d2-9b4a-1a8635150b75', '219ca517-fff4-4bc9-a4ab-cf2a9f2d3d2e', 266.87, 'SEK', 'DEBIT',
        'COMPLETED', 'Online purchase - Hodges and Sons', 'TXN705266', '2025-07-20 05:48:40', '2025-07-20 05:55:36');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('89d8d17a-c49e-4c4d-80c8-daa51d385f3a', '30f7fce8-3a42-4900-8129-5549a3175459', 164.7, 'GBP', 'REFUND',
        'COMPLETED', 'Overpayment refund', 'REF341308', '2025-04-13 11:17:52', '2025-04-13 12:06:01');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('0251f109-a929-4ddc-8d72-3e1995aaf243', '2730c89b-4edb-478d-9fc7-44f5e7d2e610', 1519.03, 'USD', 'CREDIT',
        'COMPLETED', 'Refund from Kim-Adams', 'ACH576355', '2025-06-19 19:18:26', '2025-06-19 20:16:32');
INSERT INTO transactions (id, user_id, amount, currency, type, status, description, reference_id, created_at,
                          updated_at)
VALUES ('106b76a7-c63c-41cb-b304-307c6f14b96a', '2e3b6236-b73f-40b1-a88f-abafe787082b', 19.19, 'GBP', 'DEBIT',
        'COMPLETED', 'Grocery - Montes, Smith and Johnson Market', NULL, '2025-07-09 13:23:50', '2025-07-09 14:01:23');

