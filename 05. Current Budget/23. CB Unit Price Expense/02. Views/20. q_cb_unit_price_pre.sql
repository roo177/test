-- View: public.q_cb_unit_price_pre

DROP VIEW public.q_cb_unit_price_pre;

CREATE OR REPLACE VIEW public.q_cb_unit_price_pre
 AS
 SELECT q_cb_up_pre_coeff_activem_indexes.rep_month,
    q_cb_up_pre_coeff_activem_indexes.pc,
    q_cb_up_pre_coeff_activem_indexes.l_1,
    q_cb_up_pre_coeff_activem_indexes.l_2,
    q_cb_up_pre_coeff_activem_indexes.l_3,
    q_cb_up_pre_coeff_activem_indexes.l_4,
    q_cb_up_pre_coeff_activem_indexes.l_5,
    q_cb_up_pre_coeff_activem_indexes.l_6,
    q_cb_up_pre_coeff_activem_indexes.exp_cb_mon AS month,
    q_cb_up_pre_coeff_activem_indexes.curr,
    q_cb_up_pre_coeff_activem_indexes.key_r_pc_l6,
        CASE
            WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
            ELSE
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
            END
        END AS cost_exc_inf_usd,
        CASE
            WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
            ELSE
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
            END
        END AS cost_exc_inf_eur,
    q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) AS cost_market,
        CASE
            WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
            ELSE
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'EUR'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_usd_eur) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
                ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_usd * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_usd)
            END
        END +
        CASE
            WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'TRY'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_try) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
            ELSE
            CASE
                WHEN q_cb_up_pre_coeff_activem_indexes.curr::text = 'USD'::text THEN q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.rt_eur_usd) * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
                ELSE q_cb_up_pre_coeff_activem_indexes.up_cost * r4_code.w_inf_eur * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_inf_eur)
            END
        END + q_cb_up_pre_coeff_activem_indexes.up_cost * (r4_code.w_ufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_ufe) + r4_code.w_tufe * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_tufe) + r4_code.w_metal * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_metal) + r4_code.w_petrol * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_petrol) + r4_code.w_cement * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_cement) + r4_code.w_electricity * (1::numeric + q_cb_up_pre_coeff_activem_indexes.bb_electricity)) AS up_cost_total,
    t_cb_analysis.an_rs_quantity
   FROM q_cb_up_pre_coeff_activem_indexes
     LEFT JOIN r4_code ON q_cb_up_pre_coeff_activem_indexes.key_r4_simple::text = r4_code.key_r4_simple::text
     LEFT JOIN t_cb_analysis ON q_cb_up_pre_coeff_activem_indexes.key_full::text = t_cb_analysis.key_full::text;

ALTER TABLE public.q_cb_unit_price_pre
    OWNER TO ictasadmin;
