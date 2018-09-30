FROM ubuntu:latest

# Add user 1000 with group 1000.
RUN groupadd -g 1000 user && \
    useradd -r -u 1000 -g user user 

# Change ownership of the directory to user.
RUN chown -R user:user /tmp

# Override the root user to user.
USER user
