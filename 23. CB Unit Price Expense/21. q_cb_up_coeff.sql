CREATE OR REPLACE VIEW -- ok
q_cb_up_coeff AS
SELECT q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.pc AS up_pr_code, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.r_1_code AS up_rs_l1, q_cb_res_up_market_coeff.r_2_code AS up_rs_l2, q_cb_res_up_market_coeff.r_3_code AS up_rs_l3, q_cb_res_up_market_coeff.r_4_code AS up_rs_l4, q_cb_res_up_market_coeff.g_month, q_cb_res_up_market_coeff.up_cost_coeff, q_cb_curr_escalation_rates.k_usd, q_cb_curr_escalation_rates.k_eur, round(up_cost_coeff*k_usd*k_eur,6) AS up_cost_coeff_all, q_cb_res_up_market_coeff.up_cost, q_cb_res_up_market_coeff.currency AS rs_currency, q_cb_res_up_market_coeff.key_full, q_cb_res_up_market_coeff.an_rs_quantity, q_cb_res_up_market_coeff.key_r_pc_l6
FROM q_cb_res_up_market_coeff LEFT JOIN q_cb_curr_escalation_rates ON q_cb_res_up_market_coeff.key_full_comb = q_cb_curr_escalation_rates.key_full_comb
GROUP BY q_cb_res_up_market_coeff.rep_month, q_cb_res_up_market_coeff.pc, q_cb_res_up_market_coeff.l_1, q_cb_res_up_market_coeff.l_2, q_cb_res_up_market_coeff.l_3, q_cb_res_up_market_coeff.l_4, q_cb_res_up_market_coeff.l_5, q_cb_res_up_market_coeff.l_6, q_cb_res_up_market_coeff.r_1_code, q_cb_res_up_market_coeff.r_2_code, q_cb_res_up_market_coeff.r_3_code, q_cb_res_up_market_coeff.r_4_code, q_cb_res_up_market_coeff.g_month, q_cb_res_up_market_coeff.up_cost_coeff, q_cb_curr_escalation_rates.k_usd, q_cb_curr_escalation_rates.k_eur, round(up_cost_coeff*k_usd*k_eur,6), q_cb_res_up_market_coeff.up_cost, q_cb_res_up_market_coeff.currency, q_cb_res_up_market_coeff.key_full, q_cb_res_up_market_coeff.an_rs_quantity, q_cb_res_up_market_coeff.key_r_pc_l6;
