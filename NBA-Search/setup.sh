#!/bin/bash

function install_python_packages {
	pip.exe install --requirement requirements.txt
}

function install_spacy_cnn {
	python3.exe -m spacy download en_core_web_sm
	python3.exe -m spacy download en_core_web_md
}

function train_models {
	python3.exe query_classifier.py
}

install_python_packages
install_spacy_cnn
train_models
