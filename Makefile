# This code is part of Qiskit.
#
# (C) Copyright IBM 2018, 2019.
#
# This code is licensed under the Apache License, Version 2.0. You may
# obtain a copy of this license in the LICENSE.txt file in the root directory
# of this source tree or at http://www.apache.org/licenses/LICENSE-2.0.
#
# Any modifications or derivative works of this code must retain this
# copyright notice, and modified files need to carry a notice indicating
# that they have been altered from the originals.


.PHONY: lint style test

lint:
	pylint -rn --errors-only qiskit/aqua test

style:
	pycodestyle --max-line-length=170 qiskit/aqua test

test:
	python -m unittest discover -v test
