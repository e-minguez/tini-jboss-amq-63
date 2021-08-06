FROM registry.access.redhat.com/jboss-amq-6/amq63-openshift:1.4-44.1622516129

ENV TINI_VERSION v0.19.0
USER root
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
USER 185
ENTRYPOINT ["/tini", "--"]
CMD ["/opt/amq/bin/launch.sh"]
