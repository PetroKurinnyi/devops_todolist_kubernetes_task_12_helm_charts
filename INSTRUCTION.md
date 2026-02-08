# Інструкція валідації


1. **Run bootstrap:**
   ```bash
   ./bootstrap.sh
   ```

2. **Check cluster:**
   ```bash
   kubectl cluster-info
   kubectl get nodes
   ```

3. **Check taints:**
   ```bash
   kubectl describe nodes | grep -A 5 Taints
   ```

4. **Check namespaces:**
   ```bash
   kubectl get ns
   ```
   expected: `todoapp` and `mysql` namespaces

5. **Check deployments and statefulsets:**
   ```bash
   kubectl get deployment -n todoapp
   kubectl get statefulset -n mysql
   ```

6. **Check secrets:**
   ```bash
   kubectl get secret -n todoapp
   kubectl get secret -n mysql
   ```

7. **Check configmaps:**
   ```bash
   kubectl get configmap -n todoapp
   kubectl get configmap -n mysql
   ```

8. **Check persistent volumes:**
   ```bash
   kubectl get pv,pvc -A
   ```

9. **Check HPA:**
   ```bash
   kubectl get hpa -n todoapp
   ```