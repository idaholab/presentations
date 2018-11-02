## AD Kernels

In an ADKernel subclass the computeQpResidual() function must be overridden. This is where you
implement your PDE weak form terms. By using an ADKernel as opposed to an ordinary Kernel, you are
automatically computing the Jacobian, so you do not have to worry about hand-coding a Jacobian, which
is prone to error.
