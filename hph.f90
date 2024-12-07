PROGRAM MAIN
 IMPLICIT NONE 
 INTEGER :: I,J,K
 
 DO I = 1,3
 	WRITE (*,*)
 END DO
 
 DO I = 1,9
 	WRITE (*,'(A)',ADVANCE = 'no') '  '
 	CALL H_PRINT(I)
 	CALL A_PRINT(I)
 	CALL P_PRINT(I)
 	CALL P_PRINT(I)
 	CALL Y_PRINT(I)
 	WRITE (*,'(A)',ADVANCE = 'no') '         	'
 	CALL H_PRINT(I)
 	CALL O_PRINT(I)
 	CALL L_PRINT(I)
 	CALL I_PRINT(I)
 	CALL D_PRINT(I)
 	CALL A_PRINT(I)
 	CALL Y_PRINT(I)
 	WRITE (*,'(A)',ADVANCE = 'no') '  '
 	CALL S_PRINT(I)
 	CALL SPACE_TIME(I)
 	WRITE (*,*)
 END DO
 
 DO I = 1,3
 	WRITE (*,*)
 END DO
 

END PROGRAM


SUBROUTINE A_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: A
 
 A = ' '
 IF (LINE_NUM.EQ.5) THEN 
 	DO I = 9-LINE_NUM+1,LINE_NUM+9-1
 		A(I:I) = '*'
 	END DO
 ELSE 
 	A(9-LINE_NUM+1:9-LINE_NUM+1) = '*'
 	A(LINE_NUM+9-1:LINE_NUM+9-1) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') A(1:18)
 
END SUBROUTINE 

SUBROUTINE D_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: D
 D = ' '
  IF (LINE_NUM.EQ.1.OR.LINE_NUM.EQ.9) THEN 
 	D(1:1) = '*'
 	D(2:2) = '*'
 	D(3:3) = '*'
 	D(4:4) = '*'
 END IF
 IF (LINE_NUM.EQ.2.OR.LINE_NUM.EQ.8) THEN
 	D(6:6) = '*'
 	D(1:1) = '*'
 END IF
 IF (LINE_NUM.EQ.3.OR.LINE_NUM.EQ.7) THEN
 	D(1:1) = '*'
 	D(7:7) = '*'
 END IF
 IF (LINE_NUM.EQ.4.OR.LINE_NUM.EQ.6) THEN
 	D(1:1) = '*'
 	D(8:8) = '*'
 END IF
 IF (LINE_NUM.EQ.5) THEN
 	D(1:1) = '*'
 	D(8:8) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') D(1:9)
END SUBROUTINE 

SUBROUTINE H_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: H
 H = ' '
 IF (LINE_NUM.LT.5.OR.LINE_NUM.GT.5) THEN 
 	H(1:1) = '*'
 	H(10:10) = '*'
 ELSE
 	DO I = 1,10
 		H(I:I) = '*'
 	END DO
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') H(1:11)
END SUBROUTINE 

SUBROUTINE I_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: II
 
 II = ' '
 IF (LINE_NUM.EQ.9.OR.LINE_NUM.EQ.1) THEN 
 	DO I = 1,5
 		II(I:I) = '*'
 	END DO
 ELSE 
 	II(3:3) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') II(1:8)
 
END SUBROUTINE 

SUBROUTINE L_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: L
 
 L = ' '
 IF (LINE_NUM.EQ.9) THEN 
 	DO I = 1,6
 		L(I:I) = '*'
 	END DO
 ELSE 
 	L(1:1) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') L(1:7)
 
END SUBROUTINE 

SUBROUTINE O_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: O
 
 O = ' '
 IF (LINE_NUM.EQ.1.OR.LINE_NUM.EQ.9) THEN 
 	O(5:5) = '*'
 	O(4:4) = '*'
 	O(6:6) = '*'
 END IF
 IF (LINE_NUM.EQ.2.OR.LINE_NUM.EQ.8) THEN
 	O(2:8) = '*'
 	O(8:8) = '*'
 END IF
 IF (LINE_NUM.EQ.3.OR.LINE_NUM.EQ.7) THEN
 	O(1:1) = '*'
 	O(9:9) = '*'
 END IF
 IF (LINE_NUM.EQ.4.OR.LINE_NUM.EQ.6) THEN
 	O(1:1) = '*'
 	O(9:9) = '*'
 END IF
 IF (LINE_NUM.EQ.5) THEN
 	O(1:1) = '*'
 	O(9:9) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') O(1:10)
 
END SUBROUTINE 

SUBROUTINE P_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: P
 
 P = ' '
 IF (LINE_NUM.GT.5) P(1:1) = '*'
 IF (LINE_NUM.EQ.2.OR.LINE_NUM.EQ.4) THEN 
 	P(1:1) = '*'
 	P(6:6) = '*'
 END IF
 IF (LINE_NUM.EQ.1.OR.LINE_NUM.EQ.5) THEN 
 	DO I = 1,5
 		P(I:I) = '*'
 	END DO
 END IF
 IF (LINE_NUM.EQ.3) THEN 
 	P(1:1) = '*'
 	P(7:7) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') P(1:8)
 
END SUBROUTINE 

SUBROUTINE S_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: S
 
 S = ' '
 IF (LINE_NUM.EQ.1.OR.LINE_NUM.EQ.9) THEN 
 	S(2:2) = '*'
 	S(3:3) = '*'
 	S(4:4) = '*'
 END IF
 IF (LINE_NUM.EQ.2) THEN 
 	S(1:1) = '*'
 	S(5:5) = '*'
 END IF
 IF (LINE_NUM.EQ.8) THEN 
 	S(5:5) = '*'
 	S(1:1) = '*'
 END IF
 IF (LINE_NUM.EQ.3) THEN 
 	S(1:1) = '*'
 END IF
 IF (LINE_NUM.EQ.7) THEN 
 	S(5:5) = '*'
 END IF
 IF (LINE_NUM.EQ.4) THEN 
 	S(2:2) = '*'
 END IF
 IF (LINE_NUM.EQ.6) THEN 
 	S(4:4) = '*'
 END IF
 
 IF (LINE_NUM.EQ.5) THEN 
 	S(3:3) = '*'
 END IF
 
 WRITE (*,'(A)',ADVANCE = 'no') S(1:6)
 
END SUBROUTINE 

SUBROUTINE Y_PRINT(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: Y
 
 Y = ' '
 IF (LINE_NUM.GT.5) THEN 
 	Y(5:5) = '*'
 ELSE 
 	Y(9-LINE_NUM+1:9-LINE_NUM+1) = '*'
 	Y(LINE_NUM+1-1:LINE_NUM+1-1) = '*'
 END IF
 WRITE (*,'(A)',ADVANCE = 'no') Y(1:10)
 
END SUBROUTINE 

SUBROUTINE SPACE_TIME(LINE_NUM)
 IMPLICIT NONE 
 INTEGER :: LINE_NUM,I
 CHARACTER (LEN = 25) :: ST
 
 ST = ' '
 IF (LINE_NUM.NE.8) THEN 
 	ST(5:5) = '*'
 END IF
 
 WRITE (*,'(A)',ADVANCE = 'no') ST(1:5)
 
END SUBROUTINE 

