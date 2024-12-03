from setuptools import setup, find_packages

description: str

with open("README.md", "r", encoding="utf-8") as fp:
    description = fp.read()

setup(
    name="my_package",
    version="0.0.1",
    author="Arye Zamir",
    author_email="arye.zamir@gmail.com",
    description="",
    long_description=description,
    long_description_content_type="text/markdown",
    url="",
    packages=find_packages(),
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent",
    ],
    python_requires=">=3.9, <4.0",
)
