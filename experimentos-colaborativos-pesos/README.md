Experimento Pesos
1. Base
- Correr: 902_run_workflow_base.r
- script modificado para incluir más meses: 916_workflow_base_f202106.r
- No hay etapas modificadas
2. Experimento 1 (decaimiento exponencial suave):
- Correr: 902_run_workflow_exp1.r
- Script asociado:916_workflow_exp1_f202106.r
- Etapa/s modificada/s: 
  - 1301_FE_intrames_manual_exp1.r
  - 1311_FE_rfatributes_exp1.r
  - 2201_HT_lightgbm_gan_exp1.r
  - 2301_FM_final_models_lightgbm_exp1.r
  - 2401_SC_scoring_lightgbm_exp.r
3. Experimento 2 (decaimiento exponencial abrupto):
- Correr:902_run_workflow_exp2.r
- Script asociado:916_workflow_exp2_f202106.r
- Etapa/s modificada/s:
  - 1301_FE_intrames_manual_exp2.r
4. Experimento 3 (trigonométrica anual):
- Correr:902_run_workflow_exp3.r
- Script asociado:916_workflow_exp3_f202106.r
- Etapa/s modificada/s:
  - 1301_FE_intrames_manual_exp3.r
5. Experimento 4 (trigonométrica semestral):
- Correr:902_run_workflow_exp4.r
- Script asociado:916_workflow_exp4_f202106.r
- Etapa/s modificada/s:
  - 1301_FE_intrames_manual_exp4.r
6. Experimento 5 (customizado, meses parecidos, rotos, pandemia):
- Correr:902_run_workflow_exp5.r
- Script asociado:916_workflow_exp5_f202106.r
- Etapa/s modificada/s:
  - 1301_FE_intrames_manual_exp5.r
7. Experimento 6 (proporción baja+2 por mes):
- Correr:902_run_workflow_exp6.r
- Script asociado:916_workflow_exp6_f202106.r
- Etapa/s modificada/s:
  - 1301_FE_intrames_manual_exp6.r
8. Análisis:
- En la carpeta "Archivos" se encuentras las salidas generadas de la etapa Evaluate.