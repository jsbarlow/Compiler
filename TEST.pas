VAR A,B,C,D;
PROCEDURE ONE (REF W; VAL X; REF Y; REF Z);
	BEGIN
		WRITELN(W,X,Y,Z);
		WRITELN(A,B,C,D);
		W := 5 + W;
		X := Y;
		Y := W;
		Z := 100;
		WRITELN(W,X,Y,Z);
	END;
BEGIN
	A := 5;
	B := 15;
	C := 20;
	D := C;
	WRITELN(A,B,C,D);
    COBEGIN
        ONE(A,B,C,D);
        ONE(D,C,B,A)
    COEND;
	WRITELN(A,B,C,D);
END.