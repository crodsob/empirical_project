* Encoding: UTF-8.
GLM acq_csp_sacc_amplitude acq_csm_sacc_amplitude BY iu_group WITH sticsa_total_centred 
  /WSFACTOR=stimulus 2 Polynomial 
  /MEASURE=acq_sacc_amplitude
  /METHOD=SSTYPE(3) 
  /EMMEANS=TABLES(OVERALL) WITH(sticsa_total_centred=MEAN) 
  /EMMEANS=TABLES(iu_group) WITH(sticsa_total_centred=MEAN)COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(stimulus) WITH(sticsa_total_centred=MEAN)COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus) WITH(sticsa_total_centred=MEAN) COMPARE (iu_group) ADJ(BONFERRONI)
  /EMMEANS=TABLES(iu_group*stimulus) WITH(sticsa_total_centred=MEAN) COMPARE (stimulus) ADJ(BONFERRONI)
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=stimulus 
  /DESIGN=sticsa_total_centred iu_group.

 GLM e_ext_csp_sacc_amplitude l_ext_csp_sacc_amplitude e_ext_csm_sacc_amplitude l_ext_csm_sacc_amplitude BY iu_group WITH sticsa_total_centred
  /WSFACTOR=stimulus 2 Polynomial time 2 POLYNOMIAL    
  /MEASURE=ext_sacc_amplitude
  /METHOD=SSTYPE(3) 
  /POSTHOC=iu_group(BONFERRONI) 
  /EMMEANS=TABLES(OVERALL) WITH(sticsa_total_centred=MEAN)
  /EMMEANS=TABLES(iu_group) WITH(sticsa_total_centred=MEAN) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(stimulus) WITH(sticsa_total_centred=MEAN) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(time) WITH(sticsa_total_centred=MEAN) COMPARE ADJ(BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus)  WITH(sticsa_total_centred=MEAN) COMPARE (iu_group) ADJ(BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus) WITH(sticsa_total_centred=MEAN) COMPARE (stimulus) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*time) WITH(sticsa_total_centred=MEAN) COMPARE (iu_group) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*time) WITH(sticsa_total_centred=MEAN) COMPARE (time) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(stimulus*time) WITH(sticsa_total_centred=MEAN) COMPARE (stimulus) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(stimulus*time) WITH(sticsa_total_centred=MEAN) COMPARE (time) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus*time) WITH(sticsa_total_centred=MEAN) COMPARE (iu_group) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus*time) WITH(sticsa_total_centred=MEAN) COMPARE (stimulus) ADJ (BONFERRONI) 
  /EMMEANS=TABLES(iu_group*stimulus*time) WITH(sticsa_total_centred=MEAN) COMPARE (time) ADJ (BONFERRONI) 
  /PRINT=DESCRIPTIVE ETASQ 
  /CRITERIA=ALPHA(.05) 
  /WSDESIGN=stimulus time stimulus*time 
  /DESIGN=sticsa_total_centred iu_group.
