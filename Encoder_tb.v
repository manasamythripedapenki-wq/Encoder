module test;
  reg A,B,C,D;
  wire X,Y;
encoder uut
  (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .X(X),
    .Y(Y)
  );
  initial begin
     $dumpfile("encoder.vcd");
    $dumpvars(0,test);
    A=1; B=0; C=0; D=0; #10;
    A=0; B=1; C=0; D=0; #10;
    A=0; B=0; C=1; D=0; #10;
    A=0; B=0; C=0; D=1; #10;
  end
  initial begin
    $monitor("A=%b B=%b C=%b D=%b X=%b Y=%b",A,B,C,D,X,Y);
  end
endmodule