# Red Teaming the AI-Augmented Enterprise: ML Security Demo

This project is a simulation of real-world attacks on Machine Learning (ML) pipelines, focused on:
- Generating adversarial inputs to fool models.
- Performing black-box model extraction (stealing).
- Deploying and testing a vulnerable ML model API.

## 📦 Project Structure

| Folder | Purpose |
|--------|---------|
| `/model/` | Code to train a simple ML model (image classifier). |
| `/api/` | Flask API to serve model predictions (simulate production endpoint). |
| `/attacks/` | Python scripts to perform adversarial attacks and model theft. |
| `/data/` | Folder for input images and generated adversarial samples. |
| `/notebooks/` | Optional Jupyter notebooks to debug / visualize results. |

## 🚀 Quickstart

### 1. Build the Docker image

```bash
docker build -t ml-redteam-demo .
```

### 2. Run the container

```bash
docker run -it -p 5000:5000 -v "$PWD":/app ml-redteam-demo
```

### 3. Train the Model (inside Docker)

```bash
cd model
python3 train_model.py
```

### 4. Start the API

```bash
cd api
python3 app.py
```

API will run at `http://localhost:5000/predict`

### 5. Run Adversarial Attack

```bash
cd attacks
# (Script coming soon)
```

## 🧪 Attacks Simulated

- **FGSM Adversarial Example** using Foolbox
- **Model Stealing** using a substitute model trained on API outputs

## 📚 Requirements

Listed in `requirements.txt`, installed automatically by Docker.

## 🔐 Disclaimer

This project is for educational purposes only and should not be used for unauthorized testing of real-world systems.
