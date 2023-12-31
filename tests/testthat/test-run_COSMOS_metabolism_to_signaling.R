


test_that("test run COSMOS signaling to metabolism", {
  
  meta_network <- cosmosR:::meta_network_test
  signaling_data <- cosmosR:::signaling_input_test
  expression_data <- cosmosR:::expression_data_test
  metabolic_data <- cosmosR:::metabolic_data_test
  
  
  res <- preprocess_COSMOS_metabolism_to_signaling(signaling_data = signaling_data,
                           meta_network = meta_network,
                           metabolic_data = metabolic_data,
                           diff_expression_data = expression_data,
                           remove_unexpressed_nodes = FALSE,
                           maximum_network_depth = 15,
                           filter_tf_gene_interaction_by_optimization = FALSE)
  
  CARNIVAL_options = CARNIVAL::defaultLpSolveCarnivalOptions()
  
  res_network = run_COSMOS_metabolism_to_signaling(data = res,
                                                   CARNIVAL_options = CARNIVAL_options)

  expect_length(res_network, 5)
  expect_true(all(c("weightedSIF",
                    "N_networks",
                    "nodesAttributes",
                    "individual_networks",
                    "individual_networks_node_attributes") %in% names(res_network)))
 
})
