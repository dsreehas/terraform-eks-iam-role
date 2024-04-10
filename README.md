# Terraform AWS IAM Roles for Amazon EKS

## Overview

This Terraform module is designed to create the necessary AWS IAM roles required for provisioning an Amazon EKS (Elastic Kubernetes Service) cluster. It helps streamline the process of setting up IAM roles with appropriate permissions for Amazon EKS clusters.

## Submodules

This module includes the following submodules:

-   eks-cluster-role: Creates IAM roles and policies for Amazon EKS cluster.
-   eks-node-group-role: Creates IAM roles and policies for Amazon EKS node group.

## Usage

    module "eks_iam_roles" {
      source = "github.com/dsreehas/terraform-eks-iam-role"
    
      # Specify input variables here, if any
    }

## Output Values
`aws_iam_role.eks_cluster.arn`, `aws_iam_role.eks_node_group.arn`