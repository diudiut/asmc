;
; https://www.opengl.org/archives/resources/code/samples/redbook/bezcurve.c
;
include GL/glut.inc

    .data
    ctrlpoints real4 -4.0, -4.0, 0.0
               real4 -2.0, 4.0, 0.0
               real4 2.0, -4.0, 0.0
               real4 4.0, 4.0, 0.0
    .code

init proc

   glClearColor(0.0, 0.0, 0.0, 0.0)
   glShadeModel(GL_FLAT);
   glMap1f(GL_MAP1_VERTEX_3, 0.0, 1.0, 3, 4, &ctrlpoints)
   glEnable(GL_MAP1_VERTEX_3)
   ret

init endp

display proc uses rsi

   glClear(GL_COLOR_BUFFER_BIT)
   glColor3f(1.0, 1.0, 1.0)
   glBegin(GL_LINE_STRIP)
   .for (esi = 0: esi <= 30: esi++)
        cvtsi2ss xmm0,esi
        divss xmm0,30.0
        glEvalCoord1f(xmm0)
   .endf
   glEnd()
   ;; The following code displays the control points as dots.
   glPointSize(5.0)
   glColor3f(1.0, 1.0, 0.0)
   glBegin(GL_POINTS)
   .for (esi = 0: esi < 4: esi++)
        imul eax,esi,3*4
        lea  rcx,ctrlpoints
        add  rcx,rax
        glVertex3fv(rcx)
   .endf
   glEnd()
   glFlush()
   ret

display endp

reshape proc w:int_t, h:int_t

   glViewport(0, 0, w, h)
   glMatrixMode(GL_PROJECTION)
   glLoadIdentity()

   cvtsi2ss  xmm3,h
   cvtsi2ss  xmm1,w

   .if w <= h
      divss  xmm3,xmm1
      movss  xmm2,-5.0
      mulss  xmm2,xmm3
      mulss  xmm3,5.0
      glOrtho(-5.0, 5.0, xmm2, xmm3, -5.0, 5.0)
   .else
      divss  xmm1,xmm3
      movss  xmm0,-5.0
      mulss  xmm0,xmm1
      mulss  xmm1,5.0
      glOrtho(xmm0, xmm1, -5.0, 5.0, -5.0, 5.0)
   .endif
   glMatrixMode(GL_MODELVIEW)
   glLoadIdentity()
   ret

reshape endp

keyboard proc key:byte, x:int_t, y:int_t

   .switch key
      .case 27
         exit(0)
         .endc
    .endsw
    ret
keyboard endp

main proc argc:int_t, argv:array_t

   glutInit(&argc, argv)
   glutInitDisplayMode(GLUT_SINGLE or GLUT_RGB)
   glutInitWindowSize(500, 500)
   glutInitWindowPosition(100, 100)
   mov rcx,argv
   glutCreateWindow([rcx])
   init()
   glutDisplayFunc(&display)
   glutReshapeFunc(&reshape)
   glutKeyboardFunc(&keyboard)
   glutMainLoop()
   xor eax,eax
   ret

main endp

    end _tstart
