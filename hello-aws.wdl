task hello {
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

workflow updatedName {
  call hello

  output {
     hello.message
  }
}
