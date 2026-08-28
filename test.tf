terraform {
  required_version = ">= 1.0.0"
}

# 1. 5분(300초) 동안 Agent 파드 유지
resource "terraform_data" "delay_5_minutes" {
  provisioner "local-exec" {
    command = "sleep 300"
  }
}

# 2. 의미 없는 테스트용 Output 5개
output "test_repo" {
  value       = "ddim-test-9"
  description = "Target repository identifier"
}

output "test_status" {
  value       = "concurrency-simulation-running"
  description = "Execution status"
}

output "test_message" {
  value       = "TFE capacity and concurrency load test"
  description = "Test description"
}

output "test_environment" {
  value       = "skax-airgap-eks"
  description = "Target environment"
}

output "test_result" {
  value       = "passed-dummy-validation"
  description = "Final validation result"
}
