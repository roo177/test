-- View: public.q_cb_curr_escalation_rates

-- DROP VIEW public.q_cb_curr_escalation_rates;

CREATE OR REPLACE VIEW public.q_cb_curr_escalation_rates
 AS
 SELECT q_cb_active_months_res_qty.rep_month,
    q_cb_active_months_res_qty.pc,
    q_cb_active_months_res_qty.l_1,
    q_cb_active_months_res_qty.l_2,
    q_cb_active_months_res_qty.l_3,
    q_cb_active_months_res_qty.l_4,
    q_cb_active_months_res_qty.l_5,
    q_cb_active_months_res_qty.l_6,
    q_cb_active_months_res_qty.exp_cb_mon AS month,
    q_cb_active_months_res_qty.rs_l1,
    q_cb_active_months_res_qty.rs_l2,
    q_cb_active_months_res_qty.rs_l3,
    q_cb_active_months_res_qty.rs_l4,
        CASE
            WHEN r4_code.currency::text = 'TRY'::text AND r4_code.w_inf_usd <> 0::numeric THEN 1::numeric + round(q_cb_monthly_curr_rates_inc.rt_usd_try * r4_code.w_inf_usd, 6)
            ELSE
            CASE
                WHEN r4_code.currency::text = 'EUR'::text AND r4_code.w_inf_usd <> 0::numeric THEN 1::numeric + round(q_cb_monthly_curr_rates_inc.rt_usd_eur * r4_code.w_inf_usd, 6)
                ELSE 1::numeric
            END
        END AS k_usd,
        CASE
            WHEN r4_code.currency::text = 'TRY'::text AND r4_code.w_inf_eur <> 0::numeric THEN 1::numeric + round(q_cb_monthly_curr_rates_inc.rt_eur_try * r4_code.w_inf_eur, 6)
            ELSE
            CASE
                WHEN r4_code.currency::text = 'USD'::text AND r4_code.w_inf_eur <> 0::numeric THEN 1::numeric + round(q_cb_monthly_curr_rates_inc.rt_eur_usd * r4_code.w_inf_eur, 6)
                ELSE 1::numeric
            END
        END AS k_eur,
    r4_code.w_inf_usd,
    r4_code.w_inf_eur,
    r4_code.currency AS rs_currency,
    q_cb_active_months_res_qty.key_r4_simple,
    q_cb_active_months_res_qty.key_full,
    q_cb_active_months_res_qty.key_r_pc_l6,
    q_cb_active_months_res_qty.key_r4,
    (((q_cb_active_months_res_qty.key_full::text || '.'::text) || r4_code.currency::text) || '.'::text) || q_cb_active_months_res_qty.exp_cb_mon AS key_full_comb
   FROM q_cb_active_months_res_qty
     LEFT JOIN q_cb_monthly_curr_rates_inc ON q_cb_active_months_res_qty.rep_month::text = q_cb_monthly_curr_rates_inc.rep_month::text AND q_cb_active_months_res_qty.pc::text = q_cb_monthly_curr_rates_inc.pc::text AND q_cb_active_months_res_qty.exp_cb_mon = q_cb_monthly_curr_rates_inc.exp_cb_mon
     LEFT JOIN r4_code ON q_cb_active_months_res_qty.key_r4_simple::text = r4_code.key_r4_simple::text;

ALTER TABLE public.q_cb_curr_escalation_rates
    OWNER TO ictasadmin;

