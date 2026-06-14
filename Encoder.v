module encoder(
  input A,
  input B,
  input C,
  input D,
  output X,
  output Y
);
  assign X=(C==0 && D==0)? 0:1;
  assign Y=(A==0 && C==0)? 1:0;
  endmodule
