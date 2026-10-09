# Bug Tracer

Bug Tracer is a full-stack bug tracking web application designed to help developers and teams manage, track, and resolve software issues efficiently. Built with Ruby on Rails, it features robust user authentication, hierarchical issue tracking, and automated email notifications to keep teams aligned on project bugs.

## 🚀 Features

*   **User Authentication & Authorization:** Secure user registration, login, and session management powered by Devise.
*   **Comprehensive Bug Lifecycle:** Track bugs through various states (Active, Processing, Archived) with dedicated views.
*   **Collaborative Debugging:** Built-in commenting and reply system on individual bug tickets.
*   **Automated SMTP Notifications:** Email alerts triggered by specific actions or status updates to keep assignees informed.
*   **Secure Configuration:** Integrated AWS Systems Manager (SSM) for secure environment variable and parameter storage.
*   **Cookie Compliance:** Frontend cookie consent integration for privacy compliance.

## 🛠️ Tech Stack

*   **Backend:** Ruby on Rails
*   **Database:** PostgreSQL
*   **Frontend:** HTML, CSS, JavaScript, SCSS
*   **Infrastructure/Services:** AWS (SSM Parameter Store), SMTP for mailing

## 📋 Prerequisites

Ensure you have the following installed on your local machine before getting started:

*   Ruby (check `.ruby-version` for the specific version)
*   Ruby on Rails
*   PostgreSQL
*   Node.js & Yarn (for managing JavaScript dependencies)

## ⚙️ Local Setup and Installation

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/metacoder87/bug_tracer.git](https://github.com/metacoder87/bug_tracer.git)
   cd bug_tracer

```

2. **Install dependencies:**
```bash
bundle install
yarn install

```


3. **Environment Configuration:**
Create a `.env` file in the root directory (or use your preferred secrets manager) and configure your database, AWS SSM credentials, and SMTP settings.
4. **Database setup:**
Create the PostgreSQL database, run the migrations, and populate it with seed data for testing:
```bash
rails db:create
rails db:migrate
rails db:seed

```


5. **Start the Rails server:**
```bash
rails server

```


The application will be accessible at `http://localhost:3000`.

## 📁 Repository Structure Highlights

* `app/models/`: Contains the core data structures (`Bug`, `User`, `Comment`, `Reply`).
* `app/controllers/`: Manages routing logic, including specialized bug state views (`active`, `processing`, `archive`).
* `app/mailers/`: Houses the `UserMailer` for outbound SMTP notifications.
* `config/`: Includes routing, AWS SSM initialization snippets, and database configuration.

## 🤝 Contributing

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request