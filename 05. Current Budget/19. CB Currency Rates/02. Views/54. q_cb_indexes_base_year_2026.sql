-- View: public.q_cb_indexes_base_year_2026

-- DROP VIEW public.q_cb_indexes_base_year_2026;

CREATE OR REPLACE VIEW public.q_cb_indexes_base_year_2026
 AS
 SELECT foo.year,
    foo.month,
    foo.ufe,
    foo.tufe,
    foo.inf_usd,
    foo.inf_eur,
    foo.metal,
    foo.electricity,
    foo.cement,
    foo.petrol,
    foo.usdtry,
    foo.eurtry
   FROM ( SELECT q_cb_monthly_real_plan_2025.year,
            q_cb_monthly_real_plan_2025.month,
            q_cb_monthly_real_plan_2025.cb_ufe AS ufe,
            q_cb_monthly_real_plan_2025.cb_tufe AS tufe,
            q_cb_monthly_real_plan_2025.cb_inf_usd AS inf_usd,
            q_cb_monthly_real_plan_2025.cb_inf_eur AS inf_eur,
            q_cb_monthly_real_plan_2025.cb_metal AS metal,
            q_cb_monthly_real_plan_2025.cb_electricity AS electricity,
            q_cb_monthly_real_plan_2025.cb_cement AS cement,
            q_cb_monthly_real_plan_2025.cb_petrol AS petrol,
            q_cb_monthly_real_plan_2025.cb_usdtry AS usdtry,
            q_cb_monthly_real_plan_2025.cb_eurtry AS eurtry
           FROM q_cb_monthly_real_plan_2025
          GROUP BY q_cb_monthly_real_plan_2025.year, q_cb_monthly_real_plan_2025.month, q_cb_monthly_real_plan_2025.cb_ufe, q_cb_monthly_real_plan_2025.cb_tufe, q_cb_monthly_real_plan_2025.cb_inf_usd, q_cb_monthly_real_plan_2025.cb_inf_eur, q_cb_monthly_real_plan_2025.cb_metal, q_cb_monthly_real_plan_2025.cb_electricity, q_cb_monthly_real_plan_2025.cb_cement, q_cb_monthly_real_plan_2025.cb_petrol, q_cb_monthly_real_plan_2025.cb_usdtry, q_cb_monthly_real_plan_2025.cb_eurtry
          ORDER BY q_cb_monthly_real_plan_2025.month DESC) foo
 LIMIT 1;

ALTER TABLE public.q_cb_indexes_base_year_2026
    OWNER TO ictasadmin;