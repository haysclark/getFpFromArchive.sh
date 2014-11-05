#!/usr/bin/env bats

setup() {
	EXPECTED_USAGE="Usage: getFpFromArchive.sh <FlashPlayer Archile Url>"
	TEST_PATH="file://`pwd`/test/test_fp_archive.zip"
	FLASH_PLAYER="Flash Player Debugger.app"
}

teardown() {
	if [ -d "$FLASH_PLAYER" ]
	then
		rm -r ${FLASH_PLAYER}
	fi
}

@test "Check that the getFpFromArchive.sh client is available" {
    command -v getFpFromArchive.sh
}

@test "Script Should Output Expected Requirements" {
	run getFpFromArchive.sh

	[ "$status" -eq 1 ]
	[ "${lines[0]}" = "Missing required argument." ]
	[ "${lines[1]}" = "${EXPECTED_USAGE}" ]
}

@test "Script Should Alert User If Too Many Arguments are used." {
	run getFpFromArchive.sh expected notExpected 

	[ "$status" -eq 1 ]
	[ "${lines[0]}" = "Too many arguments." ]
	[ "${lines[1]}" = "${EXPECTED_USAGE}" ]
}

@test "Script Should Exit 0 When Successful." {
	run getFpFromArchive.sh $TEST_PATH

	[ "$status" -eq 0 ]
}

@test "Script Should Unzip Flash Player Debug.app When Successful." {
	run getFpFromArchive.sh $TEST_PATH

	[ -d "$FLASH_PLAYER" ]
}
