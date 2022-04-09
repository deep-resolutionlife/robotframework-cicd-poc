webdrivermanager chrome
robot -d ./app/tests/results/ --loglevel TRACE ./app/tests/GoogleTest.robot
robotmetrics -M ./app/tests/results/metrics.html --inputpath ./app/tests/results/ --output output.xml