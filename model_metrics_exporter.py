from prometheus_client import start_http_server, Gauge
import time
import random  # Replace with real queries later

# Custom gauges (expose on port 8000)
rmse_gauge = Gauge('model_latest_rmse', 'Latest test RMSE from MLflow')
drift_p_gauge = Gauge('drift_latest_p_value', 'Latest drift p-value (lower = more drift)')

# Start exporter
start_http_server(8000)
print("Custom metrics exporter running on http://localhost:8000/metrics")

# Simulate values (in real: Query MLflow API for latest run metrics)
while True:
    rmse_gauge.set(random.uniform(20.0, 25.0))  # Your ~23 RMSE
    drift_p_gauge.set(random.uniform(0.01, 0.2))  # Simulate p-value
    time.sleep(30)  # Update every 30s