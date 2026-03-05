# 🚀 Full-Stack Workout Tracker



🛠️ Challenges Faced & Solutions
During the development of this 24-hour assignment, I encountered several critical blockers. Here is how I navigated them:

Challenge: Local Environment & Storage Constraints

Problem: My local machine had insufficient storage to unzip and initialize the Flutter SDK, causing "Command Not Recognized" errors.

Solution: Instead of giving up, I shifted the frontend development to a Cloud-based environment (Zapp.run). This allowed me to write, test, and verify the Flutter UI logic without being limited by local hardware.

Challenge: Environment Path Configuration

Problem: Manual Path configuration was failing due to administrative restrictions and zip file corruption.

Solution: I used PowerShell scripting to attempt a direct environment variable injection and eventually pivoted to a cloud-workflow to ensure the assignment was completed within the 24-hour deadline.

Challenge: Full-Stack Integration in Limited Time

Problem: Managing a Node.js backend and a Flutter frontend simultaneously within a strict 24-hour window.

Solution: I prioritized a Modular Approach. I built a robust Mock-API logic within the Flutter app first to ensure the UI was functional, while keeping the Node.js backend structure ready for seamless integration.

Challenge: State Management & Real-time Updates

Problem: Ensuring the "Workout Streak" updated immediately when a user marked a task as done.

Solution: Implemented Flutter’s StatefulWidget and setState() to manage local state efficiently, providing instant user feedback.

This project consists of a **Node.js Backend** and a **Flutter Mobile Frontend**.

### 📂 Project Structure
- **/backend**: Express.js server with workout API logic.
- **/mobile**: Flutter app with workout list and detail views.

### 🛠️ Key Highlights
- **Architecture:** Clean separation of concerns (Frontend & Backend).
- **Frontend Logic:** Built with Flutter using `StatefulWidget` for real-time streak updates.
- **Backend Logic:** RESTful API structure for workout data management.

---
*Note: The mobile UI was verified using Zapp.run due to local environment constraints.*