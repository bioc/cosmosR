% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/support_ORA.R
\name{extract_nodes_for_ORA}
\alias{extract_nodes_for_ORA}
\title{Extract COSMOS nodes for ORA analysis}
\usage{
extract_nodes_for_ORA(sif, att)
}
\arguments{
\item{sif}{df; COSMOS network solution in sif format like the first list
element returned by the format_cosmos_res function}

\item{att}{df; attributes of the nodes of the COMSOS network solution like 
the second list element returned by the format_cosmos_res function}
}
\value{
List with 2 objects: the success and the background genes
}
\description{
Function to extract the nodes that appear in the COSMOS output network and
the background genes (all genes present in the prior knowledge network)
}
\examples{
CARNIVAL_options <- cosmosR::default_CARNIVAL_options("lpSolve")
data(toy_network)
data(toy_signaling_input)
data(toy_metabolic_input)
data(toy_RNA)
test_for <- preprocess_COSMOS_signaling_to_metabolism(meta_network = toy_network,
signaling_data = toy_signaling_input,
metabolic_data = toy_metabolic_input,
diff_expression_data = toy_RNA,
maximum_network_depth = 15,
remove_unexpressed_nodes = TRUE,
CARNIVAL_options = CARNIVAL_options
)
test_result_for <- run_COSMOS_signaling_to_metabolism(data = test_for,
CARNIVAL_options = CARNIVAL_options)
test_result_for <- format_COSMOS_res(test_result_for)
extreacted_nodes <- extract_nodes_for_ORA(
sif = test_result_for[[1]],
att = test_result_for[[2]]
)
}
