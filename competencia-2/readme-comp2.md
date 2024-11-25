## Instructivo para replicar resultados de Kaggle
1. Agregar clase ternaria [clase_ternaria_c2.R](./clase_ternaria_c2.R).
2. Ejecutar [semi9-909_run_order227.r](./semi9-909_run_order227.r)

Modificaciones realizadas a [semi9-990_workflow_orden227_SEMI.r](./semi9-990_workflow_orden227_SEMI.r)
- semilla primigenia
- Etapa FE_historia: Tendencias de segundo orden
- Etapa FE_rfatributes: num_iterations=25
- Etapa TS_training_strategy: apagué 202104 y 202103 y undersampling cambié a 0.1
- en la función final indiqué 25 bo iteraciones