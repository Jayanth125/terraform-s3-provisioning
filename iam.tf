data "aws_iam_role" "ecs_task_execution" {
  name = "${var.project_name}-ecs-execution-role"
}
