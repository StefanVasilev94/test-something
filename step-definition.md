    - id: dispatch
      name: Dispatching
      action: github:actions:dispatch
      input:
        allowedHosts: ['github.com']
        repoUrl: github.com?owner=Conclusion-Enablement&repo=<repo name>
        workflowId: add_workload.yml
        branchOrTagName: main
        workflowInputs: 
          workload_name: ${{ parameters.workload_name }}