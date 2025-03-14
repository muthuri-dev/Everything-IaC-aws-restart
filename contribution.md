# Contributing to Terraform with AWS

We appreciate your interest in contributing to this project. Contributions, whether bug reports, feature requests, or pull requests, are welcome and help make this repository more useful to the community.

---

## Getting Started

1. **Familiarize Yourself**

   - Review the existing documentation and code structure.
   - Understand how Terraform and the AWS Provider interact.

2. **Discuss Changes**

   - Before making significant changes, open an issue or discussion to align on scope and approach.

3. **Fork & Clone**
   - Fork the repository to your own GitHub account.
   - Clone your fork locally and install any necessary dependencies (like Terraform).

---

## Branching & Workflow

1. **Create a Branch**

   - Use a descriptive name, for example: `feature/s3-logging` or `bugfix/ec2-keypair-issue`.

2. **Commit Messages**
   - Write clear and concise commit messages that reflect the changes, such as:
     ```
     Add logging feature to S3
     Fix EC2 keypair creation
     ```
3. **Pull Requests**
   - Open a pull request (PR) once you’re ready for feedback or review.
   - Provide a detailed description of what your changes do and why they are needed.

---

## Code Conventions

- **Terraform Files**: Use the Terraform HCL (HashiCorp Configuration Language) properly with indentation and proper naming conventions.
- **Naming**: Follow logical naming conventions for resources.
- **Modular Structure**: When adding new AWS services, consider creating a new folder with a main.tf and variables.tf to keep the code organized.

---

## Testing

1. **Validate and Format**

   - Always run:
     ```bash
     terraform validate
     ```
   - Ensure your code passes Terraform’s format checks and references valid resources.

2. **Plan**

   - Run:
     ```bash
     terraform plan
     ```
   - Check for errors or unexpected changes.

3. **Apply (Optional)**
   - If appropriate, apply the changes in a test or development environment to confirm correct functionality.

---

## Guidelines for Issues

- **Bug Reports**:

  - Include the expected behavior, the observed behavior, and steps to reproduce the problem.
  - Provide relevant Terraform or AWS CLI output if available.

- **Feature Requests**:
  - Explain why the feature is important, how it benefits the project, and any potential alternatives.

---

## Code of Conduct

Please note that we expect contributors to follow our code of conduct, ensuring a respectful and harassment-free environment. Keep all discussions constructive, courteous, and on-topic.

---

## License

By contributing, you agree that your contributions will be licensed under the same license as this repository.

---

Thank you for taking the time to contribute! Your work will help improve this Terraform with AWS project for everyone.
