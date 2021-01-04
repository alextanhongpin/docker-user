# Bad practice, specify the exact version of the container instead of using latest.
FROM ubuntu:latest

# Directory does not need to be created to be assigned the permission.
#RUN mkdir /home/nonroot

# NOTE: UIDs below 10,000 are a security risk, as a container breakout could
# result in the container being # ran as a more privilged user on the host
# kernel with th same UID.
# Add user 10001 with group 10001.
RUN groupadd -g 10001 nonroot && \
    useradd -r -u 10001 -g nonroot -d /home/nonroot nonroot

#RUN chown -R nonroot:nonroot /home/nonroot/

# Run the application with the non-root user.
USER nonroot
