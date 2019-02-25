import json
import os
from collections import OrderedDict
import numpy as np

planning_steps = [0, 2, 5, 10, 20]
runs = range(1,6)
filename = "agt_9_performance_records.json"

aggregate = OrderedDict()

for ps in planning_steps:
  averages = []
  for run in range(1,6):
    folder = f'DDQ_k{ps}_run{run}'
    full_path = os.path.join(folder, filename)
    data = json.load(open(full_path, "r"))
    results = [data['success_rate'][str(x)] for x in range(400:500)]
    print(results)
    averages.append(np.average(results))

  avg_of_averages = np.average(averages)
  aggregate[f'k{ps}_results'] = {"mean": avg_of_averages, "variance": averages}
  print("avg of averages:", avg_of_averages)


json.dump(aggregate, open("aggregate_performance.json", "w"))

