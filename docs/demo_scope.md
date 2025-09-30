# 🔍 Demo Scope: Red Teaming the AI-Augmented Enterprise: Exploiting the Hidden Risks in Modern ML Pipelines

## 🎯 Objective
Demonstrate how modern ML pipelines can be exploited by adversaries through overlooked or invisible attack surfaces introduced by automation and AI-native workflows.

The demo simulates real-world red teaming scenarios within a simplified enterprise ML environment deployed in Docker.

---

## 🧩 Target System
- A Dockerized ML model exposed via a REST API (e.g., Flask)
- Represents a component in a modern enterprise pipeline (e.g., internal model deployment for predictions or customer input)

---

## 🛠️ Attack Scenarios
1. **Adversarial Input Injection**
   - Modify input data to trick the model into misclassification.
   - Example: Change an image slightly to make a benign item classified as malicious or vice versa.

2. **Prompt Injection (for LLM-integrated APIs — optional extension)**
   - If integrating a small LLM API later, simulate how a user can manipulate the prompt behavior to leak or alter model output.

3. **Model Extraction / Theft (Advanced - Optional)**
   - Repeated API queries to extract model behavior (Mimic model with stolen dataset)

4. **Data Poisoning (If time permits)**
   - Introduce poisoned samples during retraining to shift model behavior.

---

## 🧪 Tools & Libraries
- PyTorch / TensorFlow (for model training)
- CleverHans / TextAttack (for adversarial input)
- Flask (API wrapper)
- Docker (environment containment)
- Postman / Curl (manual API testing)

---

## 🧱 Environment Setup
- All components run inside Docker
- API exposes `POST /predict` for the ML model
- Red team scripts simulate attack flows externally

---

## 🎥 Demo Format
- A **pre-recorded demo video** showing:
  - Normal vs. adversarial input behavior
  - Code snippets of the red team attacker
  - Logs or API output confirming success
  - Terminal output or browser calls

---

## 💥 Impact to Demonstrate
- Adversarial input bypassing model logic
- Automation blindly accepting manipulated input
- Failure of traditional logging/threat detection

---

## 📌 Next Steps
- Finalize and train the ML model (Week 2)
- Integrate attack scripts into the pipeline
- Record demo walkthrough

