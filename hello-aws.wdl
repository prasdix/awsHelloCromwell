task task1 {
  String addressee
  command {
    echo "Hello ${addressee}! Welcome to Cromwell . . . on AWS!"
  }
  output {
    String message = read_string(stdout())
  }
  runtime {
    docker: "ubuntu:latest"
  }
}

task task2 {
  String addressee
  command {
    echo "Hello ${addressee}! Welcome to Cromwell . . . on AWS!"
  }
  output {
    String message = read_string(stdout())
  }
  runtime {
    docker: "ubuntu:latest"
  }
}

task task3 {
  String addressee
  command {
    echo "Hello ${addressee}! Welcome to Cromwell . . . on AWS!"
  }
  output {
    String message = read_string(stdout())
  }
  runtime {
    docker: "ubuntu:latest"
  }
}

task task4 {
  String addressee
  command {
    echo "Hello ${addressee}! Welcome to Cromwell . . . on AWS!"
  }
  output {
    String message = read_string(stdout())
  }
  runtime {
    docker: "ubuntu:latest"
  }
}

workflow wf_hello {
  call task1
  call task2
  call task3
  call task4

  output {
     task1.message
     task2.message
     task3.message
     task4.message
  }
}
