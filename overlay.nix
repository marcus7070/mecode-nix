self: super: {
  python3 = super.python3.override {
    packageOverrides = python-self: python-super: {
      mecode = python-super.callPackage ./mecode { };
    };
  };
}
