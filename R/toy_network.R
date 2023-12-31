#' Toy Input Network
#' 
#' This signaling network is the reduced COSMOS network solution obtained in the
#' cosmos test on 786-O NCI60 data.  Here, this network solution is reused as an
#' exemplary input prior knowledge network (PKN).
#'
#' @docType data
#'
#' @usage data(toy_network)
#'
#' @format An object of class \dQuote{\code{data.frame}} with 19 rows
#'   (interactions) and three variables:
#'   \describe{
#'     \item{\code{source}}{Source node, either metabolite or protein}
#'     \item{\code{interaction}}{Type of interaction, 1 = Activation, -1 = Inhibition}
#'     \item{\code{target}}{Target node, either metabolite or protein}
#'   A detailed description of the identifier formatting can be found under 
#'   \url{https://metapkn.omnipathdb.org/00__README.txt}.
#'   }
#'
#' @source  The network data are available on github:
#'   \url{https://github.com/saezlab/COSMOS_MSB/tree/main/results/COSMOS_result/COSMOS_res_session.RData}.
#'   The toy_network is the combined network of the COSMOS network solutions 
#'   CARNIVAL_Result2 and CARNIVAL_Result_rerun subsequently reduced to 19
#'   exemplary nodes.
#'   
#' @references {
#'   Dugourd, A., Kuppe, C. and Sciacovelli, M. et. al. (2021) \emph{Molecular 
#'   Systems Biology}. \bold{17}, e9730.
#' }
#' 
#' @examples
#' data(toy_network)
#' 
#' @keywords datasets
"toy_network"