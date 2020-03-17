{ 
  lib
  , buildPythonPackage
  , pyserial
  , numpy
}:

buildPythonPackage rec {
  pname = "mecode";
  rev = "e8efbf6b8e03964d682e74b9e7d2a6d0b72ccb74";
  version = "git-${lib.substring 0 8 rev}";

  src = ./mecode ;

  propagatedBuildInputs = [
    pyserial
    numpy
  ];

  meta = with lib; {
    description = "Gcode generator";
    homepage = "https://github.com/jminardi/mecode";
    license = licenses.mit;
    maintainers = with maintainers; [ marcus7070 ];
  };
}
