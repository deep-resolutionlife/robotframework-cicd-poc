pipenv run webdrivermanager chrome
pipenv run robot -d ./app/tests/results/ --loglevel TRACE ./app/tests/GoogleTest.robot
pipenv run robotmetrics