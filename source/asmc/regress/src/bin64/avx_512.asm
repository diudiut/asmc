;
; v2.26 -- AVX-512
;
ifndef __ASMC64__
    .x64
    .model flat
endif
    .code

    vmovd eax,xmm1
    vmovd eax,xmm20
    vmovd xmm20,eax
    vmovd xmm30,eax
    vmovd xmm30,ebp
    vmovd xmm30,r13d
    vmovd xmm20,dword ptr [rax]
    vmovd xmm30,dword ptr [rcx]
    vmovd xmm30,dword ptr [rax+r14*8+0x123]
    vmovd xmm30,dword ptr [rdx+0x1fc]
    vmovd xmm30,dword ptr [rdx+0x200]
    vmovd xmm30,dword ptr [rdx-0x200]
    vmovd xmm30,dword ptr [rdx-0x204]
    vmovd dword ptr [rax],xmm20
    vmovd dword ptr [rcx],xmm30
    vmovd dword ptr [rax+r14*8+0x123],xmm30
    vmovd dword ptr [rdx+0x1fc],xmm30
    vmovd dword ptr [rdx+0x200],xmm30
    vmovd dword ptr [rdx-0x200],xmm30
    vmovd dword ptr [rdx-0x204],xmm30

    vmovq xmm0,rax
    vmovq xmm3,r8
    vmovq xmm30,rax
    vmovq xmm30,r8
    vmovq xmm20,qword ptr [rax]
    vmovq xmm30,qword ptr [rcx]
    vmovq xmm30,qword ptr [rax+r14*8+0x123]
    vmovq xmm30,qword ptr [rdx+0x3f8]
    vmovq xmm30,qword ptr [rdx+0x400]
    vmovq xmm30,qword ptr [rdx-0x400]
    vmovq xmm30,qword ptr [rdx-0x408]
    vmovq qword ptr [rax],xmm20
    vmovq qword ptr [rcx],xmm30
    vmovq qword ptr [rax+r14*8+0x123],xmm30
    vmovq qword ptr [rdx+0x3f8],xmm30
    vmovq qword ptr [rdx+0x400],xmm30
    vmovq qword ptr [rdx-0x400],xmm30
    vmovq qword ptr [rdx-0x408],xmm30
    vmovq xmm30,xmm29
    vmovq xmm30,qword ptr [rcx]
    vmovq xmm30,qword ptr [rax+r14*8+0x123]
    vmovq xmm30,qword ptr [rdx+0x3f8]
    vmovq xmm30,qword ptr [rdx+0x400]
    vmovq xmm30,qword ptr [rdx-0x400]
    vmovq xmm30,qword ptr [rdx-0x408]
    vmovq qword ptr [rcx],xmm29
    vmovq qword ptr [rax+r14*8+0x123],xmm29
    vmovq qword ptr [rdx+0x3f8],xmm29
    vmovq qword ptr [rdx+0x400],xmm29
    vmovq qword ptr [rdx-0x400],xmm29
    vmovq qword ptr [rdx-0x408],xmm29

    vaddpd xmm1,xmm2,xmm3
    vaddps xmm1,xmm2,xmm3
    vaddsd xmm1,xmm2,xmm3
    vaddss xmm1,xmm2,xmm3
    vaddpd xmm1{k1}{z},xmm2,xmm3
    vaddps xmm1{k1}{z},xmm2,xmm3
    vaddsd xmm1{k1}{z},xmm2,xmm3
    vaddss xmm1{k1}{z},xmm2,xmm3
    vaddpd ymm1,ymm2,ymm3
    vaddps ymm1,ymm2,ymm3
    vaddpd ymm1{k1}{z},ymm2,ymm3
    vaddps ymm1{k1}{z},ymm2,ymm3
    vaddpd zmm1,zmm2,zmm3
    vaddps zmm1,zmm2,zmm3
    vaddpd zmm1{k1}{z},zmm2,zmm3
    vaddps zmm1{k1}{z},zmm2,zmm3
    vaddpd xmm1,xmm2,[rax]
    vaddps xmm1,xmm2,[rax]
    vaddsd xmm1,xmm2,[rax]
    vaddss xmm1,xmm2,[rax]
    vaddpd xmm1{k1}{z},xmm2,[rax]
    vaddps xmm1{k1}{z},xmm2,[rax]
    vaddsd xmm1{k1}{z},xmm2,[rax]
    vaddss xmm1{k1}{z},xmm2,[rax]
    vaddpd ymm1,ymm2,[rax]
    vaddps ymm1,ymm2,[rax]
    vaddpd ymm1{k1}{z},ymm2,[rax]
    vaddps ymm1{k1}{z},ymm2,[rax]
    vaddpd zmm1,zmm2,[rax]
    vaddps zmm1,zmm2,[rax]
    vaddpd zmm1{k1}{z},zmm2,[rax]
    vaddps zmm1{k1}{z},zmm2,[rax]

    vaddpd xmm16,xmm1,xmm2
    vaddpd xmm16,xmm31,xmm2
    vxorpd xmm17,xmm16,xmm16
    vxorpd xmm17,xmm16,[rax]
    vaddps xmm16,xmm1,xmm2
    vaddps xmm16,xmm1,[rax]
    vaddps ymm16,ymm1,ymm2
    vaddps ymm16,ymm1,[rax]
    vaddsd xmm16,xmm1,xmm2
    vaddsd xmm16,xmm1,[rax]
    vaddss xmm16,xmm1,xmm2
    vaddss xmm16,xmm1,[rax]

    vaddpd xmm16,xmm2,xmm3
    vaddps xmm16,xmm2,xmm3
    vaddsd xmm16,xmm2,xmm3
    vaddss xmm16,xmm2,xmm3
    vaddpd xmm16{k1}{z},xmm2,xmm3
    vaddps xmm16{k1}{z},xmm2,xmm3
    vaddsd xmm16{k1}{z},xmm2,xmm3
    vaddss xmm16{k1}{z},xmm2,xmm3
    vaddpd ymm16,ymm2,ymm3
    vaddps ymm16,ymm2,ymm3
    vaddpd ymm16{k1}{z},ymm2,ymm3
    vaddps ymm16{k1}{z},ymm2,ymm3
    vaddpd xmm16,xmm2,[rax]
    vaddps xmm16,xmm2,[rax]
    vaddsd xmm16,xmm2,[rax]
    vaddss xmm16,xmm2,[rax]
    vaddpd xmm16{k1}{z},xmm2,[rax]
    vaddps xmm16{k1}{z},xmm2,[rax]
    vaddsd xmm16{k1}{z},xmm2,[rax]
    vaddss xmm16{k1}{z},xmm2,[rax]
    vaddpd ymm16,ymm2,[rax]
    vaddps ymm16,ymm2,[rax]
    vaddpd ymm16{k1}{z},ymm2,[rax]
    vaddps ymm16{k1}{z},ymm2,[rax]

    vaddpd zmm30,zmm29,zmm28
    vaddpd zmm30{k7},zmm29,zmm28
    vaddpd zmm30{k7}{z},zmm29,zmm28
    vaddpd zmm30,zmm29,zmm28,{rn-sae}
    vaddpd zmm30,zmm29,zmm28,{ru-sae}
    vaddpd zmm30,zmm29,zmm28,{rd-sae}
    vaddpd zmm30,zmm29,zmm28,{rz-sae}
    vaddpd zmm30,zmm29,zword ptr [rcx]
    vaddpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vaddpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vaddpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vaddpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vaddpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vaddpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vaddpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vaddpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vaddpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vaddpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vaddps zmm30,zmm29,zmm28
    vaddps zmm30{k7},zmm29,zmm28
    vaddps zmm30{k7}{z},zmm29,zmm28
    vaddps zmm30,zmm29,zmm28,{rn-sae}
    vaddps zmm30,zmm29,zmm28,{ru-sae}
    vaddps zmm30,zmm29,zmm28,{rd-sae}
    vaddps zmm30,zmm29,zmm28,{rz-sae}
    vaddps zmm30,zmm29,zword ptr [rcx]
    vaddps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vaddps zmm30,zmm29,dword ptr [rcx]{1to16}
    vaddps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vaddps zmm30,zmm29,zword ptr [rdx+0x2000]
    vaddps zmm30,zmm29,zword ptr [rdx-0x2000]
    vaddps zmm30,zmm29,zword ptr [rdx-0x2040]
    vaddps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vaddps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vaddps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vaddps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vaddsd xmm30{k7},xmm29,xmm28
    vaddsd xmm30{k7}{z},xmm29,xmm28
    vaddsd xmm30{k7},xmm29,xmm28,{rn-sae}
    vaddsd xmm30{k7},xmm29,xmm28,{ru-sae}
    vaddsd xmm30{k7},xmm29,xmm28,{rd-sae}
    vaddsd xmm30{k7},xmm29,xmm28,{rz-sae}
    vaddsd xmm30{k7},xmm29,qword ptr [rcx]
    vaddsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vaddsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vaddsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vaddsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vaddsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vaddss xmm30{k7},xmm29,xmm28
    vaddss xmm30{k7}{z},xmm29,xmm28
    vaddss xmm30{k7},xmm29,xmm28,{rn-sae}
    vaddss xmm30{k7},xmm29,xmm28,{ru-sae}
    vaddss xmm30{k7},xmm29,xmm28,{rd-sae}
    vaddss xmm30{k7},xmm29,xmm28,{rz-sae}
    vaddss xmm30{k7},xmm29,dword ptr [rcx]
    vaddss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vaddss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vaddss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vaddss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vaddss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vdivpd xmm1,xmm2,xmm3
    vdivps xmm1,xmm2,xmm3
    vdivsd xmm1,xmm2,xmm3
    vdivss xmm1,xmm2,xmm3
    vdivpd xmm1{k1}{z},xmm2,xmm3
    vdivps xmm1{k1}{z},xmm2,xmm3
    vdivsd xmm1{k1}{z},xmm2,xmm3
    vdivss xmm1{k1}{z},xmm2,xmm3
    vdivpd ymm1,ymm2,ymm3
    vdivps ymm1,ymm2,ymm3
    vdivpd ymm1{k1}{z},ymm2,ymm3
    vdivps ymm1{k1}{z},ymm2,ymm3
    vdivpd zmm1,zmm2,zmm3
    vdivps zmm1,zmm2,zmm3
    vdivpd zmm1{k1}{z},zmm2,zmm3
    vdivps zmm1{k1}{z},zmm2,zmm3
    vdivpd xmm1,xmm2,[rax]
    vdivps xmm1,xmm2,[rax]
    vdivsd xmm1,xmm2,[rax]
    vdivss xmm1,xmm2,[rax]
    vdivpd xmm1{k1}{z},xmm2,[rax]
    vdivps xmm1{k1}{z},xmm2,[rax]
    vdivsd xmm1{k1}{z},xmm2,[rax]
    vdivss xmm1{k1}{z},xmm2,[rax]
    vdivpd ymm1,ymm2,[rax]
    vdivps ymm1,ymm2,[rax]
    vdivpd ymm1{k1}{z},ymm2,[rax]
    vdivps ymm1{k1}{z},ymm2,[rax]
    vdivpd zmm1,zmm2,[rax]
    vdivps zmm1,zmm2,[rax]
    vdivpd zmm1{k1}{z},zmm2,[rax]
    vdivps zmm1{k1}{z},zmm2,[rax]

    vdivpd xmm16,xmm1,xmm2
    vdivpd xmm16,xmm1,[rax]
    vdivpd ymm16,ymm1,ymm2
    vdivpd ymm16,ymm1,[rax]
    vdivps xmm16,xmm1,xmm2
    vdivps xmm16,xmm1,[rax]
    vdivps ymm16,ymm1,ymm2
    vdivps ymm16,ymm1,[rax]
    vdivsd xmm20,xmm1,xmm2
    vdivsd xmm20,xmm1,[rax]
    vdivss xmm20,xmm1,xmm2
    vdivss xmm20,xmm1,[rax]

    vdivpd zmm30,zmm29,zmm28
    vdivpd zmm30{k7},zmm29,zmm28
    vdivpd zmm30{k7}{z},zmm29,zmm28
    vdivpd zmm30,zmm29,zmm28,{rn-sae}
    vdivpd zmm30,zmm29,zmm28,{ru-sae}
    vdivpd zmm30,zmm29,zmm28,{rd-sae}
    vdivpd zmm30,zmm29,zmm28,{rz-sae}
    vdivpd zmm30,zmm29,zword ptr [rcx]
    vdivpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vdivpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vdivpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vdivpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vdivpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vdivpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vdivpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vdivpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vdivpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vdivpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vdivps zmm30,zmm29,zmm28
    vdivps zmm30{k7},zmm29,zmm28
    vdivps zmm30{k7}{z},zmm29,zmm28
    vdivps zmm30,zmm29,zmm28,{rn-sae}
    vdivps zmm30,zmm29,zmm28,{ru-sae}
    vdivps zmm30,zmm29,zmm28,{rd-sae}
    vdivps zmm30,zmm29,zmm28,{rz-sae}
    vdivps zmm30,zmm29,zword ptr [rcx]
    vdivps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vdivps zmm30,zmm29,dword ptr [rcx]{1to16}
    vdivps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vdivps zmm30,zmm29,zword ptr [rdx+0x2000]
    vdivps zmm30,zmm29,zword ptr [rdx-0x2000]
    vdivps zmm30,zmm29,zword ptr [rdx-0x2040]
    vdivps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vdivps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vdivps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vdivps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vdivsd xmm30{k7},xmm29,xmm28
    vdivsd xmm30{k7}{z},xmm29,xmm28
    vdivsd xmm30{k7},xmm29,xmm28,{rn-sae}
    vdivsd xmm30{k7},xmm29,xmm28,{ru-sae}
    vdivsd xmm30{k7},xmm29,xmm28,{rd-sae}
    vdivsd xmm30{k7},xmm29,xmm28,{rz-sae}
    vdivsd xmm30{k7},xmm29,qword ptr [rcx]
    vdivsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vdivsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vdivsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vdivsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vdivsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vdivss xmm30{k7},xmm29,xmm28
    vdivss xmm30{k7}{z},xmm29,xmm28
    vdivss xmm30{k7},xmm29,xmm28,{rn-sae}
    vdivss xmm30{k7},xmm29,xmm28,{ru-sae}
    vdivss xmm30{k7},xmm29,xmm28,{rd-sae}
    vdivss xmm30{k7},xmm29,xmm28,{rz-sae}
    vdivss xmm30{k7},xmm29,dword ptr [rcx]
    vdivss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vdivss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vdivss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vdivss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vdivss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vmaxpd xmm1,xmm2,xmm3
    vmaxps xmm1,xmm2,xmm3
    vmaxsd xmm1,xmm2,xmm3
    vmaxss xmm1,xmm2,xmm3
    vmaxpd xmm1{k1}{z},xmm2,xmm3
    vmaxps xmm1{k1}{z},xmm2,xmm3
    vmaxsd xmm1{k1}{z},xmm2,xmm3
    vmaxss xmm1{k1}{z},xmm2,xmm3
    vmaxpd ymm1,ymm2,ymm3
    vmaxps ymm1,ymm2,ymm3
    vmaxpd ymm1{k1}{z},ymm2,ymm3
    vmaxps ymm1{k1}{z},ymm2,ymm3
    vmaxpd zmm1,zmm2,zmm3
    vmaxps zmm1,zmm2,zmm3
    vmaxpd zmm1{k1}{z},zmm2,zmm3
    vmaxps zmm1{k1}{z},zmm2,zmm3
    vmaxpd xmm1,xmm2,[rax]
    vmaxps xmm1,xmm2,[rax]
    vmaxsd xmm1,xmm2,[rax]
    vmaxss xmm1,xmm2,[rax]
    vmaxpd xmm1{k1}{z},xmm2,[rax]
    vmaxps xmm1{k1}{z},xmm2,[rax]
    vmaxsd xmm1{k1}{z},xmm2,[rax]
    vmaxss xmm1{k1}{z},xmm2,[rax]
    vmaxpd ymm1,ymm2,[rax]
    vmaxps ymm1,ymm2,[rax]
    vmaxpd ymm1{k1}{z},ymm2,[rax]
    vmaxps ymm1{k1}{z},ymm2,[rax]
    vmaxpd zmm1,zmm2,[rax]
    vmaxps zmm1,zmm2,[rax]
    vmaxpd zmm1{k1}{z},zmm2,[rax]
    vmaxps zmm1{k1}{z},zmm2,[rax]

    vmaxpd zmm30,zmm29,zmm28
    vmaxpd zmm30{k7},zmm29,zmm28
    vmaxpd zmm30{k7}{z},zmm29,zmm28
    vmaxpd zmm30,zmm29,zmm28,{sae}
    vmaxpd zmm30,zmm29,zword ptr [rcx]
    vmaxpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vmaxpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vmaxpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vmaxpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vmaxpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vmaxpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vmaxpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vmaxpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vmaxpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vmaxpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vmaxps zmm30,zmm29,zmm28
    vmaxps zmm30{k7},zmm29,zmm28
    vmaxps zmm30{k7}{z},zmm29,zmm28
    vmaxps zmm30,zmm29,zmm28,{sae}
    vmaxps zmm30,zmm29,zword ptr [rcx]
    vmaxps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vmaxps zmm30,zmm29,dword ptr [rcx]{1to16}
    vmaxps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vmaxps zmm30,zmm29,zword ptr [rdx+0x2000]
    vmaxps zmm30,zmm29,zword ptr [rdx-0x2000]
    vmaxps zmm30,zmm29,zword ptr [rdx-0x2040]
    vmaxps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vmaxps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vmaxps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vmaxps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vmaxsd xmm30{k7},xmm29,xmm28
    vmaxsd xmm30{k7}{z},xmm29,xmm28
    vmaxsd xmm30{k7},xmm29,xmm28,{sae}
    vmaxsd xmm30{k7},xmm29,qword ptr [rcx]
    vmaxsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vmaxsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vmaxsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vmaxsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vmaxsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vmaxss xmm30{k7},xmm29,xmm28
    vmaxss xmm30{k7}{z},xmm29,xmm28
    vmaxss xmm30{k7},xmm29,xmm28,{sae}
    vmaxss xmm30{k7},xmm29,dword ptr [rcx]
    vmaxss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vmaxss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vmaxss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vmaxss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vmaxss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vminpd xmm1,xmm2,xmm3
    vminps xmm1,xmm2,xmm3
    vminsd xmm1,xmm2,xmm3
    vminss xmm1,xmm2,xmm3
    vminpd xmm1{k1}{z},xmm2,xmm3
    vminps xmm1{k1}{z},xmm2,xmm3
    vminsd xmm1{k1}{z},xmm2,xmm3
    vminss xmm1{k1}{z},xmm2,xmm3
    vminpd ymm1,ymm2,ymm3
    vminps ymm1,ymm2,ymm3
    vminpd ymm1{k1}{z},ymm2,ymm3
    vminps ymm1{k1}{z},ymm2,ymm3
    vminpd zmm1,zmm2,zmm3
    vminps zmm1,zmm2,zmm3
    vminpd zmm1{k1}{z},zmm2,zmm3
    vminps zmm1{k1}{z},zmm2,zmm3
    vminpd xmm1,xmm2,[rax]
    vminps xmm1,xmm2,[rax]
    vminsd xmm1,xmm2,[rax]
    vminss xmm1,xmm2,[rax]
    vminpd xmm1{k1}{z},xmm2,[rax]
    vminps xmm1{k1}{z},xmm2,[rax]
    vminsd xmm1{k1}{z},xmm2,[rax]
    vminss xmm1{k1}{z},xmm2,[rax]
    vminpd ymm1,ymm2,[rax]
    vminps ymm1,ymm2,[rax]
    vminpd ymm1{k1}{z},ymm2,[rax]
    vminps ymm1{k1}{z},ymm2,[rax]
    vminpd zmm1,zmm2,[rax]
    vminps zmm1,zmm2,[rax]
    vminpd zmm1{k1}{z},zmm2,[rax]
    vminps zmm1{k1}{z},zmm2,[rax]

    vminpd zmm30,zmm29,zmm28
    vminpd zmm30{k7},zmm29,zmm28
    vminpd zmm30{k7}{z},zmm29,zmm28
    vminpd zmm30,zmm29,zmm28,{sae}
    vminpd zmm30,zmm29,zword ptr [rcx]
    vminpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vminpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vminpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vminpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vminpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vminpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vminpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vminpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vminpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vminpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vminps zmm30,zmm29,zmm28
    vminps zmm30{k7},zmm29,zmm28
    vminps zmm30{k7}{z},zmm29,zmm28
    vminps zmm30,zmm29,zmm28,{sae}
    vminps zmm30,zmm29,zword ptr [rcx]
    vminps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vminps zmm30,zmm29,dword ptr [rcx]{1to16}
    vminps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vminps zmm30,zmm29,zword ptr [rdx+0x2000]
    vminps zmm30,zmm29,zword ptr [rdx-0x2000]
    vminps zmm30,zmm29,zword ptr [rdx-0x2040]
    vminps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vminps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vminps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vminps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vminsd xmm30{k7},xmm29,xmm28
    vminsd xmm30{k7}{z},xmm29,xmm28
    vminsd xmm30{k7},xmm29,xmm28,{sae}
    vminsd xmm30{k7},xmm29,qword ptr [rcx]
    vminsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vminsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vminsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vminsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vminsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vminss xmm30{k7},xmm29,xmm28
    vminss xmm30{k7}{z},xmm29,xmm28
    vminss xmm30{k7},xmm29,xmm28,{sae}
    vminss xmm30{k7},xmm29,dword ptr [rcx]
    vminss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vminss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vminss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vminss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vminss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vmulpd xmm1,xmm2,xmm3
    vmulps xmm1,xmm2,xmm3
    vmulsd xmm1,xmm2,xmm3
    vmulss xmm1,xmm2,xmm3
    vmulpd xmm1{k1}{z},xmm2,xmm3
    vmulps xmm1{k1}{z},xmm2,xmm3
    vmulsd xmm1{k1}{z},xmm2,xmm3
    vmulss xmm1{k1}{z},xmm2,xmm3
    vmulpd ymm1,ymm2,ymm3
    vmulps ymm1,ymm2,ymm3
    vmulpd ymm1{k1}{z},ymm2,ymm3
    vmulps ymm1{k1}{z},ymm2,ymm3
    vmulpd zmm1,zmm2,zmm3
    vmulps zmm1,zmm2,zmm3
    vmulpd zmm1{k1}{z},zmm2,zmm3
    vmulps zmm1{k1}{z},zmm2,zmm3
    vmulpd xmm1,xmm2,[rax]
    vmulps xmm1,xmm2,[rax]
    vmulsd xmm1,xmm2,[rax]
    vmulss xmm1,xmm2,[rax]
    vmulpd xmm1{k1}{z},xmm2,[rax]
    vmulps xmm1{k1}{z},xmm2,[rax]
    vmulsd xmm1{k1}{z},xmm2,[rax]
    vmulss xmm1{k1}{z},xmm2,[rax]
    vmulpd ymm1,ymm2,[rax]
    vmulps ymm1,ymm2,[rax]
    vmulpd ymm1{k1}{z},ymm2,[rax]
    vmulps ymm1{k1}{z},ymm2,[rax]
    vmulpd zmm1,zmm2,[rax]
    vmulps zmm1,zmm2,[rax]
    vmulpd zmm1{k1}{z},zmm2,[rax]
    vmulps zmm1{k1}{z},zmm2,[rax]

    vmulpd zmm30,zmm29,zmm28
    vmulpd zmm30{k7},zmm29,zmm28
    vmulpd zmm30{k7}{z},zmm29,zmm28
    vmulpd zmm30,zmm29,zmm28,{rn-sae}
    vmulpd zmm30,zmm29,zmm28,{ru-sae}
    vmulpd zmm30,zmm29,zmm28,{rd-sae}
    vmulpd zmm30,zmm29,zmm28,{rz-sae}
    vmulpd zmm30,zmm29,zword ptr [rcx]
    vmulpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vmulpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vmulpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vmulpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vmulpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vmulpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vmulpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vmulpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vmulpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vmulpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vmulps zmm30,zmm29,zmm28
    vmulps zmm30{k7},zmm29,zmm28
    vmulps zmm30{k7}{z},zmm29,zmm28
    vmulps zmm30,zmm29,zmm28,{rn-sae}
    vmulps zmm30,zmm29,zmm28,{ru-sae}
    vmulps zmm30,zmm29,zmm28,{rd-sae}
    vmulps zmm30,zmm29,zmm28,{rz-sae}
    vmulps zmm30,zmm29,zword ptr [rcx]
    vmulps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vmulps zmm30,zmm29,dword ptr [rcx]{1to16}
    vmulps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vmulps zmm30,zmm29,zword ptr [rdx+0x2000]
    vmulps zmm30,zmm29,zword ptr [rdx-0x2000]
    vmulps zmm30,zmm29,zword ptr [rdx-0x2040]
    vmulps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vmulps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vmulps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vmulps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vmulsd xmm30{k7},xmm29,xmm28
    vmulsd xmm30{k7}{z},xmm29,xmm28
    vmulsd xmm30{k7},xmm29,xmm28,{rn-sae}
    vmulsd xmm30{k7},xmm29,xmm28,{ru-sae}
    vmulsd xmm30{k7},xmm29,xmm28,{rd-sae}
    vmulsd xmm30{k7},xmm29,xmm28,{rz-sae}
    vmulsd xmm30{k7},xmm29,qword ptr [rcx]
    vmulsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vmulsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vmulsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vmulsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vmulsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vmulss xmm30{k7},xmm29,xmm28
    vmulss xmm30{k7}{z},xmm29,xmm28
    vmulss xmm30{k7},xmm29,xmm28,{rn-sae}
    vmulss xmm30{k7},xmm29,xmm28,{ru-sae}
    vmulss xmm30{k7},xmm29,xmm28,{rd-sae}
    vmulss xmm30{k7},xmm29,xmm28,{rz-sae}
    vmulss xmm30{k7},xmm29,dword ptr [rcx]
    vmulss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vmulss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vmulss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vmulss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vmulss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vsubpd xmm1,xmm2,xmm3
    vsubps xmm1,xmm2,xmm3
    vsubsd xmm1,xmm2,xmm3
    vsubss xmm1,xmm2,xmm3
    vsubpd xmm1{k1}{z},xmm2,xmm3
    vsubps xmm1{k1}{z},xmm2,xmm3
    vsubsd xmm1{k1}{z},xmm2,xmm3
    vsubss xmm1{k1}{z},xmm2,xmm3
    vsubpd ymm1,ymm2,ymm3
    vsubps ymm1,ymm2,ymm3
    vsubpd ymm1{k1}{z},ymm2,ymm3
    vsubps ymm1{k1}{z},ymm2,ymm3
    vsubpd zmm1,zmm2,zmm3
    vsubps zmm1,zmm2,zmm3
    vsubpd zmm1{k1}{z},zmm2,zmm3
    vsubps zmm1{k1}{z},zmm2,zmm3
    vsubpd xmm1,xmm2,[rax]
    vsubps xmm1,xmm2,[rax]
    vsubsd xmm1,xmm2,[rax]
    vsubss xmm1,xmm2,[rax]
    vsubpd xmm1{k1}{z},xmm2,[rax]
    vsubps xmm1{k1}{z},xmm2,[rax]
    vsubsd xmm1{k1}{z},xmm2,[rax]
    vsubss xmm1{k1}{z},xmm2,[rax]
    vsubpd ymm1,ymm2,[rax]
    vsubps ymm1,ymm2,[rax]
    vsubpd ymm1{k1}{z},ymm2,[rax]
    vsubps ymm1{k1}{z},ymm2,[rax]
    vsubpd zmm1,zmm2,[rax]
    vsubps zmm1,zmm2,[rax]
    vsubpd zmm1{k1}{z},zmm2,[rax]
    vsubps zmm1{k1}{z},zmm2,[rax]

    vsubpd zmm30,zmm29,zmm28
    vsubpd zmm30{k7},zmm29,zmm28
    vsubpd zmm30{k7}{z},zmm29,zmm28
    vsubpd zmm30,zmm29,zmm28,{rn-sae}
    vsubpd zmm30,zmm29,zmm28,{ru-sae}
    vsubpd zmm30,zmm29,zmm28,{rd-sae}
    vsubpd zmm30,zmm29,zmm28,{rz-sae}
    vsubpd zmm30,zmm29,zword ptr [rcx]
    vsubpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vsubpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vsubpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vsubpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vsubpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vsubpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vsubpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vsubpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vsubpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vsubpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vsubps zmm30,zmm29,zmm28
    vsubps zmm30{k7},zmm29,zmm28
    vsubps zmm30{k7}{z},zmm29,zmm28
    vsubps zmm30,zmm29,zmm28,{rn-sae}
    vsubps zmm30,zmm29,zmm28,{ru-sae}
    vsubps zmm30,zmm29,zmm28,{rd-sae}
    vsubps zmm30,zmm29,zmm28,{rz-sae}
    vsubps zmm30,zmm29,zword ptr [rcx]
    vsubps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vsubps zmm30,zmm29,dword ptr [rcx]{1to16}
    vsubps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vsubps zmm30,zmm29,zword ptr [rdx+0x2000]
    vsubps zmm30,zmm29,zword ptr [rdx-0x2000]
    vsubps zmm30,zmm29,zword ptr [rdx-0x2040]
    vsubps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vsubps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vsubps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vsubps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vsubsd xmm30{k7},xmm29,xmm28
    vsubsd xmm30{k7}{z},xmm29,xmm28
    vsubsd xmm30{k7},xmm29,xmm28,{rn-sae}
    vsubsd xmm30{k7},xmm29,xmm28,{ru-sae}
    vsubsd xmm30{k7},xmm29,xmm28,{rd-sae}
    vsubsd xmm30{k7},xmm29,xmm28,{rz-sae}
    vsubsd xmm30{k7},xmm29,qword ptr [rcx]
    vsubsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vsubsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vsubsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vsubsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vsubsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vsubss xmm30{k7},xmm29,xmm28
    vsubss xmm30{k7}{z},xmm29,xmm28
    vsubss xmm30{k7},xmm29,xmm28,{rn-sae}
    vsubss xmm30{k7},xmm29,xmm28,{ru-sae}
    vsubss xmm30{k7},xmm29,xmm28,{rd-sae}
    vsubss xmm30{k7},xmm29,xmm28,{rz-sae}
    vsubss xmm30{k7},xmm29,dword ptr [rcx]
    vsubss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vsubss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vsubss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vsubss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vsubss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vsqrtpd xmm1,xmm2
    vsqrtps xmm1,xmm2
    vsqrtsd xmm1,xmm2,xmm3
    vsqrtss xmm1,xmm2,xmm3
    vsqrtpd xmm1{k1}{z},xmm2
    vsqrtps xmm1{k1}{z},xmm2
    vsqrtsd xmm1{k1}{z},xmm2,xmm3
    vsqrtss xmm1{k1}{z},xmm2,xmm3
    vsqrtpd ymm1,ymm2
    vsqrtps ymm1,ymm2
    vsqrtpd ymm1{k1}{z},ymm2
    vsqrtps ymm1{k1}{z},ymm2
    vsqrtpd zmm1,zmm2
    vsqrtps zmm1,zmm2
    vsqrtpd zmm1{k1}{z},zmm2
    vsqrtps zmm1{k1}{z},zmm2
    vsqrtpd xmm1,[rax]
    vsqrtps xmm1,[rax]
    vsqrtsd xmm1,xmm3,[rax]
    vsqrtss xmm1,xmm3,[rax]
    vsqrtpd xmm1{k1}{z},[rax]
    vsqrtps xmm1{k1}{z},[rax]
    vsqrtsd xmm1{k1}{z},xmm2,[rax]
    vsqrtss xmm1{k1}{z},xmm2,[rax]
    vsqrtpd ymm1,[rax]
    vsqrtps ymm1,[rax]
    vsqrtpd ymm1{k1}{z},[rax]
    vsqrtps ymm1{k1}{z},[rax]
    vsqrtpd zmm1,[rax]
    vsqrtps zmm1,[rax]
    vsqrtpd zmm1{k1}{z},[rax]
    vsqrtps zmm1{k1}{z},[rax]

    vsqrtpd zmm30,zmm29
    vsqrtpd zmm30{k7},zmm29
    vsqrtpd zmm30{k7}{z},zmm29
    vsqrtpd zmm30,zmm29,{rn-sae}
    vsqrtpd zmm30,zmm29,{ru-sae}
    vsqrtpd zmm30,zmm29,{rd-sae}
    vsqrtpd zmm30,zmm29,{rz-sae}
    vsqrtpd zmm30,zword ptr [rcx]
    vsqrtpd zmm30,zword ptr [rax+r14*8+0x123]
    vsqrtpd zmm30,qword ptr [rcx]{1to8}
    vsqrtpd zmm30,zword ptr [rdx+0x1fc0]
    vsqrtpd zmm30,zword ptr [rdx+0x2000]
    vsqrtpd zmm30,zword ptr [rdx-0x2000]
    vsqrtpd zmm30,zword ptr [rdx-0x2040]
    vsqrtpd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vsqrtpd zmm30,qword ptr [rdx+0x400]{1to8}
    vsqrtpd zmm30,qword ptr [rdx-0x400]{1to8}
    vsqrtpd zmm30,qword ptr [rdx-0x408]{1to8}
    vsqrtps zmm30,zmm29
    vsqrtps zmm30{k7},zmm29
    vsqrtps zmm30{k7}{z},zmm29
    vsqrtps zmm30,zmm29,{rn-sae}
    vsqrtps zmm30,zmm29,{ru-sae}
    vsqrtps zmm30,zmm29,{rd-sae}
    vsqrtps zmm30,zmm29,{rz-sae}
    vsqrtps zmm30,zword ptr [rcx]
    vsqrtps zmm30,zword ptr [rax+r14*8+0x123]
    vsqrtps zmm30,dword ptr [rcx]{1to16}
    vsqrtps zmm30,zword ptr [rdx+0x1fc0]
    vsqrtps zmm30,zword ptr [rdx+0x2000]
    vsqrtps zmm30,zword ptr [rdx-0x2000]
    vsqrtps zmm30,zword ptr [rdx-0x2040]
    vsqrtps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vsqrtps zmm30,dword ptr [rdx+0x200]{1to16}
    vsqrtps zmm30,dword ptr [rdx-0x200]{1to16}
    vsqrtps zmm30,dword ptr [rdx-0x204]{1to16}
    vsqrtsd xmm30{k7},xmm29,xmm28
    vsqrtsd xmm30{k7}{z},xmm29,xmm28
    vsqrtsd xmm30{k7},xmm29,xmm28,{rn-sae}
    vsqrtsd xmm30{k7},xmm29,xmm28,{ru-sae}
    vsqrtsd xmm30{k7},xmm29,xmm28,{rd-sae}
    vsqrtsd xmm30{k7},xmm29,xmm28,{rz-sae}
    vsqrtsd xmm30{k7},xmm29,qword ptr [rcx]
    vsqrtsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vsqrtsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vsqrtsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vsqrtsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vsqrtsd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vsqrtss xmm30{k7},xmm29,xmm28
    vsqrtss xmm30{k7}{z},xmm29,xmm28
    vsqrtss xmm30{k7},xmm29,xmm28,{rn-sae}
    vsqrtss xmm30{k7},xmm29,xmm28,{ru-sae}
    vsqrtss xmm30{k7},xmm29,xmm28,{rd-sae}
    vsqrtss xmm30{k7},xmm29,xmm28,{rz-sae}
    vsqrtss xmm30{k7},xmm29,dword ptr [rcx]
    vsqrtss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vsqrtss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vsqrtss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vsqrtss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vsqrtss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vcmppd xmm1,xmm2,xmm3,7
    vcmpps xmm1,xmm2,xmm3,7
    vcmpsd xmm1,xmm2,xmm3,7
    vcmpss xmm1,xmm2,xmm3,7
    vcmppd ymm1,ymm2,ymm3,7
    vcmpps ymm1,ymm2,ymm3,7
    vcmppd xmm1,xmm2,[rax],7
    vcmpps xmm1,xmm2,[rax],7
    vcmpsd xmm1,xmm2,[rax],7
    vcmpss xmm1,xmm2,[rax],7
    vcmppd ymm1,ymm2,[rax],7
    vcmpps ymm1,ymm2,[rax],7

    vcmppd k1{k2},xmm2,xmm3,7
    vcmpps k1{k2},xmm2,xmm3,7
    vcmpsd k1{k2},xmm2,xmm3,7
    vcmpss k1{k2},xmm2,xmm3,7
    vcmppd k1{k2},ymm2,ymm3,7
    vcmpps k1{k2},ymm2,ymm3,7

    vcmppd k1{k2},xmm2,[rax],7
    vcmpps k1{k2},xmm2,[rax],7
    vcmpsd k1{k2},xmm2,[rax],7
    vcmpss k1{k2},xmm2,[rax],7

    vcmppd k1{k2},zmm2,zmm3,7
    vcmpps k1{k2},zmm2,zmm3,7
    vcmppd k1{k2},ymm2,[rax],7
    vcmpps k1{k2},ymm2,[rax],7
    vcmppd k1{k2},zmm2,[rax],7
    vcmpps k1{k2},zmm2,[rax],7

    vcmppd k5,zmm30,zmm29,0xab
    vcmppd k5{k7},zmm30,zmm29,0xab
    vcmppd k5,zmm30,zmm29,{sae},0xab
    vcmppd k5,zmm30,zmm29,0x7b
    vcmppd k5,zmm30,zmm29,{sae},0x7b
    vcmppd k5,zmm30,zword ptr [rcx],0x7b
    vcmppd k5,zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vcmppd k5,zmm30,qword ptr [rcx]{1to8},0x7b
    vcmppd k5,zmm30,zword ptr [rdx+0x1fc0],0x7b
    vcmppd k5,zmm30,zword ptr [rdx+0x2000],0x7b
    vcmppd k5,zmm30,zword ptr [rdx-0x2000],0x7b
    vcmppd k5,zmm30,zword ptr [rdx-0x2040],0x7b
    vcmppd k5,zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vcmppd k5,zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vcmppd k5,zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vcmppd k5,zmm30,qword ptr [rdx-0x408]{1to8},0x7b
    vcmpps k5,zmm30,zmm29,0xab
    vcmpps k5{k7},zmm30,zmm29,0xab
    vcmpps k5,zmm30,zmm29,{sae},0xab
    vcmpps k5,zmm30,zmm29,0x7b
    vcmpps k5,zmm30,zmm29,{sae},0x7b
    vcmpps k5,zmm30,zword ptr [rcx],0x7b
    vcmpps k5,zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vcmpps k5,zmm30,dword ptr [rcx]{1to16},0x7b
    vcmpps k5,zmm30,zword ptr [rdx+0x1fc0],0x7b
    vcmpps k5,zmm30,zword ptr [rdx+0x2000],0x7b
    vcmpps k5,zmm30,zword ptr [rdx-0x2000],0x7b
    vcmpps k5,zmm30,zword ptr [rdx-0x2040],0x7b
    vcmpps k5,zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vcmpps k5,zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vcmpps k5,zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vcmpps k5,zmm30,dword ptr [rdx-0x204]{1to16},0x7b
    vcmpsd k5{k7},xmm29,xmm28,0xab
    vcmpsd k5{k7},xmm29,xmm28,{sae},0xab
    vcmpsd k5{k7},xmm29,xmm28,0x7b
    vcmpsd k5{k7},xmm29,xmm28,{sae},0x7b
    vcmpsd k5{k7},xmm29,qword ptr [rcx],0x7b
    vcmpsd k5{k7},xmm29,qword ptr [rax+r14*8+0x123],0x7b
    vcmpsd k5{k7},xmm29,qword ptr [rdx+0x3f8],0x7b
    vcmpsd k5{k7},xmm29,qword ptr [rdx+0x400],0x7b
    vcmpsd k5{k7},xmm29,qword ptr [rdx-0x400],0x7b
    vcmpsd k5{k7},xmm29,qword ptr [rdx-0x408],0x7b
    vcmpss k5{k7},xmm29,xmm28,0xab
    vcmpss k5{k7},xmm29,xmm28,{sae},0xab
    vcmpss k5{k7},xmm29,xmm28,0x7b
    vcmpss k5{k7},xmm29,xmm28,{sae},0x7b
    vcmpss k5{k7},xmm29,dword ptr [rcx],0x7b
    vcmpss k5{k7},xmm29,dword ptr [rax+r14*8+0x123],0x7b
    vcmpss k5{k7},xmm29,dword ptr [rdx+0x1fc],0x7b
    vcmpss k5{k7},xmm29,dword ptr [rdx+0x200],0x7b
    vcmpss k5{k7},xmm29,dword ptr [rdx-0x200],0x7b
    vcmpss k5{k7},xmm29,dword ptr [rdx-0x204],0x7b

    vandpd xmm1{k2}{z},xmm2,xmm3
    vandpd ymm1{k2}{z},ymm2,ymm3
    vandpd zmm1{k2}{z},zmm2,zmm3
    vandpd xmm1{k2}{z},xmm2,[rax]
    vandpd ymm1{k2}{z},ymm2,[rax]
    vandpd zmm1{k2}{z},zmm2,[rax]

    vandps xmm1{k2}{z},xmm2,xmm3
    vandps ymm1{k2}{z},ymm2,ymm3
    vandps zmm1{k2}{z},zmm2,zmm3
    vandps xmm1{k2}{z},xmm2,[rax]
    vandps ymm1{k2}{z},ymm2,[rax]
    vandps zmm1{k2}{z},zmm2,[rax]

    vandnpd xmm1{k2}{z},xmm2,xmm3
    vandnpd ymm1{k2}{z},ymm2,ymm3
    vandnpd zmm1{k2}{z},zmm2,zmm3
    vandnpd xmm1{k2}{z},xmm2,[rax]
    vandnpd ymm1{k2}{z},ymm2,[rax]
    vandnpd zmm1{k2}{z},zmm2,[rax]

    vandnps xmm1{k2}{z},xmm2,xmm3
    vandnps ymm1{k2}{z},ymm2,ymm3
    vandnps zmm1{k2}{z},zmm2,zmm3
    vandnps xmm1{k2}{z},xmm2,[rax]
    vandnps ymm1{k2}{z},ymm2,[rax]
    vandnps zmm1{k2}{z},zmm2,[rax]

    vandpd xmm20,xmm1,xmm2
    vandpd ymm20,ymm1,ymm2
    vandps xmm20,xmm1,xmm2
    vandps ymm20,ymm1,ymm2

    vandnpd xmm20,xmm1,xmm2
    vandnpd ymm20,ymm1,ymm2
    vandnps xmm20,xmm1,xmm2
    vandnps ymm20,ymm1,ymm2

    vorpd xmm1{k2}{z},xmm2,xmm3
    vorpd ymm1{k2}{z},ymm2,ymm3
    vorpd zmm1{k2}{z},zmm2,zmm3
    vorpd xmm1{k2}{z},xmm2,[rax]
    vorpd ymm1{k2}{z},ymm2,[rax]
    vorpd zmm1{k2}{z},zmm2,[rax]

    vorps xmm1{k2}{z},xmm2,xmm3
    vorps ymm1{k2}{z},ymm2,ymm3
    vorps zmm1{k2}{z},zmm2,zmm3
    vorps xmm1{k2}{z},xmm2,[rax]
    vorps ymm1{k2}{z},ymm2,[rax]
    vorps zmm1{k2}{z},zmm2,[rax]

    vxorpd xmm1{k2}{z},xmm2,xmm3
    vxorpd ymm1{k2}{z},ymm2,ymm3
    vxorpd zmm1{k2}{z},zmm2,zmm3
    vxorpd xmm1{k2}{z},xmm2,[rax]
    vxorpd ymm1{k2}{z},ymm2,[rax]
    vxorpd zmm1{k2}{z},zmm2,[rax]

    vxorps xmm1{k2}{z},xmm2,xmm3
    vxorps ymm1{k2}{z},ymm2,ymm3
    vxorps zmm1{k2}{z},zmm2,zmm3
    vxorps xmm1{k2}{z},xmm2,[rax]
    vxorps ymm1{k2}{z},ymm2,[rax]
    vxorps zmm1{k2}{z},zmm2,[rax]

    vcvtdq2pd zmm1{k1}{z},ymm2
    vcvtdq2ps zmm1{k1}{z},zmm2

    vcvtdq2pd xmm20,xmm1
    vcvtdq2pd xmm20,[rax]
    vcvtdq2pd ymm20,xmm1
    vcvtdq2pd ymm20,[rax]
    vcvtdq2pd zmm30{k7},ymm29
    vcvtdq2pd zmm30{k7}{z},ymm29
    vcvtdq2pd zmm30{k7},yword ptr [rcx]
    vcvtdq2pd zmm30{k7},yword ptr [rax+r14*8+0x123]
    vcvtdq2pd zmm30{k7},dword ptr [rcx]{1to8}
    vcvtdq2pd zmm30{k7},yword ptr [rdx+0xfe0]
    vcvtdq2pd zmm30{k7},yword ptr [rdx+0x1000]
    vcvtdq2pd zmm30{k7},yword ptr [rdx-0x1000]
    vcvtdq2pd zmm30{k7},yword ptr [rdx-0x1020]
    vcvtdq2pd zmm30{k7},dword ptr [rdx+0x1fc]{1to8}
    vcvtdq2pd zmm30{k7},dword ptr [rdx+0x200]{1to8}
    vcvtdq2pd zmm30{k7},dword ptr [rdx-0x200]{1to8}
    vcvtdq2pd zmm30{k7},dword ptr [rdx-0x204]{1to8}

    vcvtdq2ps xmm20,xmm1
    vcvtdq2ps xmm20,[rax]
    vcvtdq2ps ymm20,ymm1
    vcvtdq2ps ymm20,[rax]
    vcvtdq2ps zmm30,zmm29
    vcvtdq2ps zmm30{k7},zmm29
    vcvtdq2ps zmm30{k7}{z},zmm29
    vcvtdq2ps zmm30,zmm29,{rn-sae}
    vcvtdq2ps zmm30,zmm29,{ru-sae}
    vcvtdq2ps zmm30,zmm29,{rd-sae}
    vcvtdq2ps zmm30,zmm29,{rz-sae}
    vcvtdq2ps zmm30,zword ptr [rcx]
    vcvtdq2ps zmm30,zword ptr [rax+r14*8+0x123]
    vcvtdq2ps zmm30,dword ptr [rcx]{1to16}
    vcvtdq2ps zmm30,zword ptr [rdx+0x1fc0]
    vcvtdq2ps zmm30,zword ptr [rdx+0x2000]
    vcvtdq2ps zmm30,zword ptr [rdx-0x2000]
    vcvtdq2ps zmm30,zword ptr [rdx-0x2040]
    vcvtdq2ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vcvtdq2ps zmm30,dword ptr [rdx+0x200]{1to16}
    vcvtdq2ps zmm30,dword ptr [rdx-0x200]{1to16}
    vcvtdq2ps zmm30,dword ptr [rdx-0x204]{1to16}

    vcvtpd2dq xmm20,xmm1
    vcvtpd2dq xmm20,oword ptr [rax]
    vcvtpd2dq xmm20,ymm1
    vcvtpd2dq xmm20,yword ptr [rax]
    vcvtpd2dq ymm30{k7},zmm29
    vcvtpd2dq ymm30{k7}{z},zmm29
    vcvtpd2dq ymm30{k7},zmm29,{rn-sae}
    vcvtpd2dq ymm30{k7},zmm29,{ru-sae}
    vcvtpd2dq ymm30{k7},zmm29,{rd-sae}
    vcvtpd2dq ymm30{k7},zmm29,{rz-sae}
    vcvtpd2dq ymm30{k7},zword ptr [rcx]
    vcvtpd2dq ymm30{k7},zword ptr [rax+r14*8+0x123]
    vcvtpd2dq ymm30{k7},qword ptr [rcx]{1to8}
    vcvtpd2dq ymm30{k7},zword ptr [rdx+0x1fc0]
    vcvtpd2dq ymm30{k7},zword ptr [rdx+0x2000]
    vcvtpd2dq ymm30{k7},zword ptr [rdx-0x2000]
    vcvtpd2dq ymm30{k7},zword ptr [rdx-0x2040]
    vcvtpd2dq ymm30{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvtpd2dq ymm30{k7},qword ptr [rdx+0x400]{1to8}
    vcvtpd2dq ymm30{k7},qword ptr [rdx-0x400]{1to8}
    vcvtpd2dq ymm30{k7},qword ptr [rdx-0x408]{1to8}

    vcvtpd2ps xmm20,xmm1
    vcvtpd2ps xmm20,oword ptr [rax]
    vcvtpd2ps xmm20,ymm1
    vcvtpd2ps xmm20,yword ptr [rax]
    vcvtpd2ps ymm30{k7},zmm29
    vcvtpd2ps ymm30{k7}{z},zmm29
    vcvtpd2ps ymm30{k7},zmm29,{rn-sae}
    vcvtpd2ps ymm30{k7},zmm29,{ru-sae}
    vcvtpd2ps ymm30{k7},zmm29,{rd-sae}
    vcvtpd2ps ymm30{k7},zmm29,{rz-sae}
    vcvtpd2ps ymm30{k7},zword ptr [rcx]
    vcvtpd2ps ymm30{k7},zword ptr [rax+r14*8+0x123]
    vcvtpd2ps ymm30{k7},qword ptr [rcx]{1to8}
    vcvtpd2ps ymm30{k7},zword ptr [rdx+0x1fc0]
    vcvtpd2ps ymm30{k7},zword ptr [rdx+0x2000]
    vcvtpd2ps ymm30{k7},zword ptr [rdx-0x2000]
    vcvtpd2ps ymm30{k7},zword ptr [rdx-0x2040]
    vcvtpd2ps ymm30{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvtpd2ps ymm30{k7},qword ptr [rdx+0x400]{1to8}
    vcvtpd2ps ymm30{k7},qword ptr [rdx-0x400]{1to8}
    vcvtpd2ps ymm30{k7},qword ptr [rdx-0x408]{1to8}

    vcvtsd2si rax,xmm1
    vcvtsd2si eax,xmm21
    vcvtsd2si eax,[rax]
    vcvtsd2si eax,xmm30,{rn-sae}
    vcvtsd2si eax,xmm30,{ru-sae}
    vcvtsd2si eax,xmm30,{rd-sae}
    vcvtsd2si eax,xmm30,{rz-sae}
    vcvtsd2si ebp,xmm30,{rn-sae}
    vcvtsd2si ebp,xmm30,{ru-sae}
    vcvtsd2si ebp,xmm30,{rd-sae}
    vcvtsd2si ebp,xmm30,{rz-sae}
    vcvtsd2si r13d,xmm30,{rn-sae}
    vcvtsd2si r13d,xmm30,{ru-sae}
    vcvtsd2si r13d,xmm30,{rd-sae}
    vcvtsd2si r13d,xmm30,{rz-sae}
    vcvtsd2si rax,xmm30,{rn-sae}
    vcvtsd2si rax,xmm30,{ru-sae}
    vcvtsd2si rax,xmm30,{rd-sae}
    vcvtsd2si rax,xmm30,{rz-sae}
    vcvtsd2si r8,xmm30,{rn-sae}
    vcvtsd2si r8,xmm30,{ru-sae}
    vcvtsd2si r8,xmm30,{rd-sae}
    vcvtsd2si r8,xmm30,{rz-sae}

    vcvttsd2si eax,xmm21
    vcvttsd2si eax,[rax]
    vcvttsd2si rax,xmm1
    vcvttsd2si eax,xmm30,{sae}
    vcvttsd2si ebp,xmm30,{sae}
    vcvttsd2si r13d,xmm30,{sae}
    vcvttsd2si rax,xmm30,{sae}
    vcvttsd2si r8,xmm30,{sae}
    vcvttss2si eax,xmm30,{sae}
    vcvttss2si ebp,xmm30,{sae}
    vcvttss2si r13d,xmm30,{sae}
    vcvttss2si rax,xmm30,{sae}
    vcvttss2si r8,xmm30,{sae}

    vcvtsd2ss xmm1{k1}{z},xmm2,xmm3
    vcvtsd2ss xmm20,xmm1,xmm2
    vcvtsd2ss xmm20,xmm1,[rax]
    vcvtsd2ss xmm30{k7},xmm29,xmm28
    vcvtsd2ss xmm30{k7}{z},xmm29,xmm28
    vcvtsd2ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vcvtsd2ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vcvtsd2ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vcvtsd2ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vcvtsd2ss xmm30{k7},xmm29,qword ptr [rcx]
    vcvtsd2ss xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vcvtsd2ss xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vcvtsd2ss xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vcvtsd2ss xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vcvtsd2ss xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vcvtsi2sd xmm1,xmm2,rax
    vcvtsi2sd xmm20,xmm1,eax
    vcvtsi2sd xmm30,xmm29,eax
    vcvtsi2sd xmm30,xmm29,ebp
    vcvtsi2sd xmm30,xmm29,r13d
    vcvtsi2sd xmm20,xmm1,dword ptr [rax]
    vcvtsi2sd xmm30,xmm29,dword ptr [rcx]
    vcvtsi2sd xmm30,xmm29,dword ptr [rax+r14*8+0x123]
    vcvtsi2sd xmm30,xmm29,dword ptr [rdx+0x1fc]
    vcvtsi2sd xmm30,xmm29,dword ptr [rdx+0x200]
    vcvtsi2sd xmm30,xmm29,dword ptr [rdx-0x200]
    vcvtsi2sd xmm30,xmm29,dword ptr [rdx-0x204]
    vcvtsi2sd xmm30,xmm29,rax
    vcvtsi2sd xmm30,xmm29,{rn-sae},rax
    vcvtsi2sd xmm30,xmm29,{ru-sae},rax
    vcvtsi2sd xmm30,xmm29,{rd-sae},rax
    vcvtsi2sd xmm30,xmm29,{rz-sae},rax
    vcvtsi2sd xmm30,xmm29,r8
    vcvtsi2sd xmm30,xmm29,{rn-sae},r8
    vcvtsi2sd xmm30,xmm29,{ru-sae},r8
    vcvtsi2sd xmm30,xmm29,{rd-sae},r8
    vcvtsi2sd xmm30,xmm29,{rz-sae},r8
    vcvtsi2sd xmm30,xmm29,qword ptr [rcx]
    vcvtsi2sd xmm30,xmm29,qword ptr [rax+r14*8+0x123]
    vcvtsi2sd xmm30,xmm29,qword ptr [rdx+0x3f8]
    vcvtsi2sd xmm30,xmm29,qword ptr [rdx+0x400]
    vcvtsi2sd xmm30,xmm29,qword ptr [rdx-0x400]
    vcvtsi2sd xmm30,xmm29,qword ptr [rdx-0x408]

    vcvtsi2ss xmm1,xmm2,rax
    vcvtsi2ss xmm20,xmm1,eax
    vcvtsi2ss xmm30,xmm29,eax
    vcvtsi2ss xmm30,xmm29,{rn-sae},eax
    vcvtsi2ss xmm30,xmm29,{ru-sae},eax
    vcvtsi2ss xmm30,xmm29,{rd-sae},eax
    vcvtsi2ss xmm30,xmm29,{rz-sae},eax
    vcvtsi2ss xmm30,xmm29,ebp
    vcvtsi2ss xmm30,xmm29,{rn-sae},ebp
    vcvtsi2ss xmm30,xmm29,{ru-sae},ebp
    vcvtsi2ss xmm30,xmm29,{rd-sae},ebp
    vcvtsi2ss xmm30,xmm29,{rz-sae},ebp
    vcvtsi2ss xmm30,xmm29,r13d
    vcvtsi2ss xmm30,xmm29,{rn-sae},r13d
    vcvtsi2ss xmm30,xmm29,{ru-sae},r13d
    vcvtsi2ss xmm30,xmm29,{rd-sae},r13d
    vcvtsi2ss xmm30,xmm29,{rz-sae},r13d
    vcvtsi2ss xmm20,xmm1,dword ptr [rax]
    vcvtsi2ss xmm30,xmm29,dword ptr [rcx]
    vcvtsi2ss xmm30,xmm29,dword ptr [rax+r14*8+0x123]
    vcvtsi2ss xmm30,xmm29,dword ptr [rdx+0x1fc]
    vcvtsi2ss xmm30,xmm29,dword ptr [rdx+0x200]
    vcvtsi2ss xmm30,xmm29,dword ptr [rdx-0x200]
    vcvtsi2ss xmm30,xmm29,dword ptr [rdx-0x204]
    vcvtsi2ss xmm30,xmm29,rax
    vcvtsi2ss xmm30,xmm29,{rn-sae},rax
    vcvtsi2ss xmm30,xmm29,{ru-sae},rax
    vcvtsi2ss xmm30,xmm29,{rd-sae},rax
    vcvtsi2ss xmm30,xmm29,{rz-sae},rax
    vcvtsi2ss xmm30,xmm29,r8
    vcvtsi2ss xmm30,xmm29,{rn-sae},r8
    vcvtsi2ss xmm30,xmm29,{ru-sae},r8
    vcvtsi2ss xmm30,xmm29,{rd-sae},r8
    vcvtsi2ss xmm30,xmm29,{rz-sae},r8
    vcvtsi2ss xmm30,xmm29,qword ptr [rcx]
    vcvtsi2ss xmm30,xmm29,qword ptr [rax+r14*8+0x123]
    vcvtsi2ss xmm30,xmm29,qword ptr [rdx+0x3f8]
    vcvtsi2ss xmm30,xmm29,qword ptr [rdx+0x400]
    vcvtsi2ss xmm30,xmm29,qword ptr [rdx-0x400]
    vcvtsi2ss xmm30,xmm29,qword ptr [rdx-0x408]

    vcvtss2sd xmm1 {k1}{z},xmm2,xmm3
    vcvtss2sd xmm20,xmm1,xmm2
    vcvtss2sd xmm20,xmm1,dword ptr [rax]
    vcvtss2sd xmm30{k7},xmm29,xmm28
    vcvtss2sd xmm30{k7}{z},xmm29,xmm28
    vcvtss2sd xmm30{k7},xmm29,xmm28,{sae}
    vcvtss2sd xmm30{k7},xmm29,dword ptr [rcx]
    vcvtss2sd xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vcvtss2sd xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vcvtss2sd xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vcvtss2sd xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vcvtss2sd xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vcvtss2si rax,xmm1
    vcvtss2si eax,xmm21
    vcvtss2si eax,[rax]
    vcvtss2si eax,xmm30,{rn-sae}
    vcvtss2si eax,xmm30,{ru-sae}
    vcvtss2si eax,xmm30,{rd-sae}
    vcvtss2si eax,xmm30,{rz-sae}
    vcvtss2si ebp,xmm30,{rn-sae}
    vcvtss2si ebp,xmm30,{ru-sae}
    vcvtss2si ebp,xmm30,{rd-sae}
    vcvtss2si ebp,xmm30,{rz-sae}
    vcvtss2si r13d,xmm30,{rn-sae}
    vcvtss2si r13d,xmm30,{ru-sae}
    vcvtss2si r13d,xmm30,{rd-sae}
    vcvtss2si r13d,xmm30,{rz-sae}
    vcvtss2si rax,xmm30,{rn-sae}
    vcvtss2si rax,xmm30,{ru-sae}
    vcvtss2si rax,xmm30,{rd-sae}
    vcvtss2si rax,xmm30,{rz-sae}
    vcvtss2si r8,xmm30,{rn-sae}
    vcvtss2si r8,xmm30,{ru-sae}
    vcvtss2si r8,xmm30,{rd-sae}
    vcvtss2si r8,xmm30,{rz-sae}

    vcvttss2si rax,xmm1
    vcvttss2si eax,xmm21
    vcvttss2si eax,[rax]

    vextractps eax,xmm1,7
    vextractps eax,xmm21,1
    vextractps rax,xmm29,0xab
    vextractps rax,xmm29,0x7b
    vextractps r8,xmm29,0x7b
    vextractps [rax],xmm21,1
    vextractps dword ptr [rcx],xmm29,0x7b
    vextractps dword ptr [rax+r14*8+0x123],xmm29,0x7b
    vextractps dword ptr [rdx+0x1fc],xmm29,0x7b
    vextractps dword ptr [rdx+0x200],xmm29,0x7b
    vextractps dword ptr [rdx-0x200],xmm29,0x7b
    vextractps dword ptr [rdx-0x204],xmm29,0x7b

    vinsertps xmm1,xmm2,xmm3,7
    vinsertps xmm20,xmm1,xmm3,0
    vinsertps xmm30,xmm29,xmm28,0xab
    vinsertps xmm30,xmm29,xmm28,0x7b
    vinsertps xmm20,xmm1,[rax],1
    vinsertps xmm30,xmm29,dword ptr [rcx],0x7b
    vinsertps xmm30,xmm29,dword ptr [rax+r14*8+0x123],0x7b
    vinsertps xmm30,xmm29,dword ptr [rdx+0x1fc],0x7b
    vinsertps xmm30,xmm29,dword ptr [rdx+0x200],0x7b
    vinsertps xmm30,xmm29,dword ptr [rdx-0x200],0x7b
    vinsertps xmm30,xmm29,dword ptr [rdx-0x204],0x7b

    vmovapd xmm20,xmm1
    vmovapd xmm20,oword ptr [rax]
    vmovapd oword ptr [rax],xmm21
    vmovapd ymm20,ymm1
    vmovapd ymm20,yword ptr [rax]
    vmovapd yword ptr [rax],ymm21
    vmovapd zmm2{k1}{z},zmm1
    vmovapd zmm30,zmm29
    vmovapd zmm30{k7},zmm29
    vmovapd zmm30{k7}{z},zmm29
    vmovapd zmm30,zword ptr [rcx]
    vmovapd zmm30,zword ptr [rax+r14*8+0x123]
    vmovapd zmm30,zword ptr [rdx+0x1fc0]
    vmovapd zmm30,zword ptr [rdx+0x2000]
    vmovapd zmm30,zword ptr [rdx-0x2000]
    vmovapd zmm30,zword ptr [rdx-0x2040]

    vmovaps xmm20,xmm1
    vmovaps xmm20,oword ptr [rax]
    vmovaps oword ptr [rax],xmm21
    vmovaps ymm20,ymm1
    vmovaps ymm20,yword ptr [rax]
    vmovaps yword ptr [rax],ymm21
    vmovaps zmm2{k1}{z},zmm1
    vmovaps zmm30,zmm29
    vmovaps zmm30{k7},zmm29
    vmovaps zmm30{k7}{z},zmm29
    vmovaps zmm30,zword ptr [rcx]
    vmovaps zmm30,zword ptr [rax+r14*8+0x123]
    vmovaps zmm30,zword ptr [rdx+0x1fc0]
    vmovaps zmm30,zword ptr [rdx+0x2000]
    vmovaps zmm30,zword ptr [rdx-0x2000]
    vmovaps zmm30,zword ptr [rdx-0x2040]

    vmovapd zword ptr [rcx],zmm30
    vmovapd zword ptr [rcx]{k7},zmm30
    vmovapd zword ptr [rax+r14*8+0x123],zmm30
    vmovapd zword ptr [rdx+0x1fc0],zmm30
    vmovapd zword ptr [rdx+0x2000],zmm30
    vmovapd zword ptr [rdx-0x2000],zmm30
    vmovapd zword ptr [rdx-0x2040],zmm30
    vmovaps zword ptr [rcx],zmm30
    vmovaps zword ptr [rcx]{k7},zmm30
    vmovaps zword ptr [rax+r14*8+0x123],zmm30
    vmovaps zword ptr [rdx+0x1fc0],zmm30
    vmovaps zword ptr [rdx+0x2000],zmm30
    vmovaps zword ptr [rdx-0x2000],zmm30
    vmovaps zword ptr [rdx-0x2040],zmm30

    vmovhlps xmm1,xmm2,xmm3
    vmovhlps xmm20,xmm1,xmm2
    vmovhlps xmm30,xmm29,xmm28

    vmovlhps xmm1,xmm2,xmm3
    vmovlhps xmm20,xmm1,xmm2
    vmovlhps xmm30,xmm29,xmm28

    vmovsd xmm1{k1}{z},xmm2,xmm3
    vmovsd xmm30{k7},qword ptr [rcx]
    vmovsd xmm30{k7}{z},qword ptr [rcx]
    vmovsd xmm30{k7},qword ptr [rax+r14*8+0x123]
    vmovsd xmm30{k7},qword ptr [rdx+0x3f8]
    vmovsd xmm30{k7},qword ptr [rdx+0x400]
    vmovsd xmm30{k7},qword ptr [rdx-0x400]
    vmovsd xmm30{k7},qword ptr [rdx-0x408]
    vmovsd qword ptr [rcx]{k7},xmm30
    vmovsd qword ptr [rax+r14*8+0x123]{k7},xmm30
    vmovsd qword ptr [rdx+0x3f8]{k7},xmm30
    vmovsd qword ptr [rdx+0x400]{k7},xmm30
    vmovsd qword ptr [rdx-0x400]{k7},xmm30
    vmovsd qword ptr [rdx-0x408]{k7},xmm30
    vmovsd xmm30{k7},xmm29,xmm28
    vmovsd xmm30{k7}{z},xmm29,xmm28
    vmovsd xmm20,xmm1, xmm2
    vmovsd xmm20,qword ptr [rax]
    vmovsd qword ptr [rax],xmm20
    vmovsd xmm20,qword ptr [rbx]
    vmovsd qword ptr [rbx],xmm20

    vmovss xmm1{k1}{z},xmm2,xmm3
    vmovss xmm30{k7},dword ptr [rcx]
    vmovss xmm30{k7}{z},dword ptr [rcx]
    vmovss xmm30{k7},dword ptr [rax+r14*8+0x123]
    vmovss xmm30{k7},dword ptr [rdx+0x1fc]
    vmovss xmm30{k7},dword ptr [rdx+0x200]
    vmovss xmm30{k7},dword ptr [rdx-0x200]
    vmovss xmm30{k7},dword ptr [rdx-0x204]
    vmovss dword ptr [rcx]{k7},xmm30
    vmovss dword ptr [rax+r14*8+0x123]{k7},xmm30
    vmovss dword ptr [rdx+0x1fc]{k7},xmm30
    vmovss dword ptr [rdx+0x200]{k7},xmm30
    vmovss dword ptr [rdx-0x200]{k7},xmm30
    vmovss dword ptr [rdx-0x204]{k7},xmm30
    vmovss xmm30{k7},xmm29,xmm28
    vmovss xmm30{k7}{z},xmm29,xmm28
    vmovss xmm20,xmm1, xmm2
    vmovss xmm20,dword ptr [rax]
    vmovss dword ptr [rax],xmm20
    vmovss xmm20,dword ptr [rbx]
    vmovss dword ptr [rbx],xmm20

    vmovntdq [rax],zmm1
    vmovntdq yword ptr [rax],ymm20
    vmovntdq zword ptr [rcx],zmm30
    vmovntdq zword ptr [rax+r14*8+0x123],zmm30
    vmovntdq zword ptr [rdx+0x1fc0],zmm30
    vmovntdq zword ptr [rdx+0x2000],zmm30
    vmovntdq zword ptr [rdx-0x2000],zmm30
    vmovntdq zword ptr [rdx-0x2040],zmm30
    vmovntdq oword ptr [rax],xmm20

    vmovntdqa zmm1,[rax]
    vmovntdqa xmm20,oword ptr [rax]
    vmovntdqa ymm20,yword ptr [rax]
    vmovntdqa zmm30,zword ptr [rcx]
    vmovntdqa zmm30,zword ptr [rax+r14*8+0x123]
    vmovntdqa zmm30,zword ptr [rdx+0x1fc0]
    vmovntdqa zmm30,zword ptr [rdx+0x2000]
    vmovntdqa zmm30,zword ptr [rdx-0x2000]
    vmovntdqa zmm30,zword ptr [rdx-0x2040]

    vmovntpd [rax],zmm1
    vmovntpd oword ptr [rax],xmm20
    vmovntpd yword ptr [rax],ymm20
    vmovntpd zword ptr [rcx],zmm30
    vmovntpd zword ptr [rax+r14*8+0x123],zmm30
    vmovntpd zword ptr [rdx+0x1fc0],zmm30
    vmovntpd zword ptr [rdx+0x2000],zmm30
    vmovntpd zword ptr [rdx-0x2000],zmm30
    vmovntpd zword ptr [rdx-0x2040],zmm30

    vmovntps [rax],zmm1
    vmovntps oword ptr [rax],xmm20
    vmovntps yword ptr [rax],ymm20
    vmovntps zword ptr [rcx],zmm30
    vmovntps zword ptr [rax+r14*8+0x123],zmm30
    vmovntps zword ptr [rdx+0x1fc0],zmm30
    vmovntps zword ptr [rdx+0x2000],zmm30
    vmovntps zword ptr [rdx-0x2000],zmm30
    vmovntps zword ptr [rdx-0x2040],zmm30

    vmovshdup zmm1{k1}{z},zmm2
    vmovshdup zmm30,zmm29
    vmovshdup zmm30{k7},zmm29
    vmovshdup zmm30{k7}{z},zmm29
    vmovshdup zmm30,zword ptr [rcx]
    vmovshdup zmm30,zword ptr [rax+r14*8+0x123]
    vmovshdup zmm30,zword ptr [rdx+0x1fc0]
    vmovshdup zmm30,zword ptr [rdx+0x2000]
    vmovshdup zmm30,zword ptr [rdx-0x2000]
    vmovshdup zmm30,zword ptr [rdx-0x2040]

    vmovsldup zmm1{k1}{z},zmm2
    vmovsldup zmm30,zmm29
    vmovsldup zmm30{k7},zmm29
    vmovsldup zmm30{k7}{z},zmm29
    vmovsldup zmm30,zword ptr [rcx]
    vmovsldup zmm30,zword ptr [rax+r14*8+0x123]
    vmovsldup zmm30,zword ptr [rdx+0x1fc0]
    vmovsldup zmm30,zword ptr [rdx+0x2000]
    vmovsldup zmm30,zword ptr [rdx-0x2000]
    vmovsldup zmm30,zword ptr [rdx-0x2040]

    vmovupd xmm20,xmm1
    vmovupd xmm20,oword ptr [rax]
    vmovupd oword ptr [rax],xmm21
    vmovupd ymm20,ymm1
    vmovupd ymm20,yword ptr [rax]
    vmovupd yword ptr [rax],ymm21
    vmovupd zmm1{k1}{z},zmm2
    vmovupd zmm30,zmm29
    vmovupd zmm30{k7},zmm29
    vmovupd zmm30{k7}{z},zmm29
    vmovupd zmm30,zword ptr [rcx]
    vmovupd zmm30,zword ptr [rax+r14*8+0x123]
    vmovupd zmm30,zword ptr [rdx+0x1fc0]
    vmovupd zmm30,zword ptr [rdx+0x2000]
    vmovupd zmm30,zword ptr [rdx-0x2000]
    vmovupd zmm30,zword ptr [rdx-0x2040]

    vmovups xmm20,xmm1
    vmovups xmm20,oword ptr [rax]
    vmovups oword ptr [rax],xmm21
    vmovups ymm20,ymm1
    vmovups ymm20,yword ptr [rax]
    vmovups yword ptr [rax],ymm21
    vmovups zmm1{k1}{z},zmm2
    vmovups zmm30,zmm29
    vmovups zmm30{k7},zmm29
    vmovups zmm30{k7}{z},zmm29
    vmovups zmm30,zword ptr [rcx]
    vmovups zmm30,zword ptr [rax+r14*8+0x123]
    vmovups zmm30,zword ptr [rdx+0x1fc0]
    vmovups zmm30,zword ptr [rdx+0x2000]
    vmovups zmm30,zword ptr [rdx-0x2000]
    vmovups zmm30,zword ptr [rdx-0x2040]

    vmovupd zword ptr [rcx],zmm30
    vmovupd zword ptr [rcx]{k7},zmm30
    vmovupd zword ptr [rax+r14*8+0x123],zmm30
    vmovupd zword ptr [rdx+0x1fc0],zmm30
    vmovupd zword ptr [rdx+0x2000],zmm30
    vmovupd zword ptr [rdx-0x2000],zmm30
    vmovupd zword ptr [rdx-0x2040],zmm30

    vmovups zword ptr [rcx],zmm30
    vmovups zword ptr [rcx]{k7},zmm30
    vmovups zword ptr [rax+r14*8+0x123],zmm30
    vmovups zword ptr [rdx+0x1fc0],zmm30
    vmovups zword ptr [rdx+0x2000],zmm30
    vmovups zword ptr [rdx-0x2000],zmm30
    vmovups zword ptr [rdx-0x2040],zmm30

    vpabsb xmm20,xmm1
    vpabsb xmm20,[rax]
    vpabsw xmm20,xmm1
    vpabsw xmm20,[rax]
    vpabsd xmm20,xmm1
    vpabsd xmm20,[rax]
    vpabsb zmm1{k1}{z},zmm2
    vpabsw zmm1{k1}{z},zmm2

    vpabsd zmm1{k1}{z},zmm2
    vpabsd zmm30,zmm29
    vpabsd zmm30{k7},zmm29
    vpabsd zmm30{k7}{z},zmm29
    vpabsd zmm30,zword ptr [rcx]
    vpabsd zmm30,zword ptr [rax+r14*8+0x123]
    vpabsd zmm30,dword ptr [rcx]{1to16}
    vpabsd zmm30,zword ptr [rdx+0x1fc0]
    vpabsd zmm30,zword ptr [rdx+0x2000]
    vpabsd zmm30,zword ptr [rdx-0x2000]
    vpabsd zmm30,zword ptr [rdx-0x2040]
    vpabsd zmm30,dword ptr [rdx+0x1fc]{1to16}
    vpabsd zmm30,dword ptr [rdx+0x200]{1to16}
    vpabsd zmm30,dword ptr [rdx-0x200]{1to16}
    vpabsd zmm30,dword ptr [rdx-0x204]{1to16}

    vpacksswb	zmm1{k1}{z},zmm2,zmm3
    vpackssdw	zmm1{k1}{z},zmm2,zmm3
    vpackuswb	zmm1{k1}{z},zmm2,zmm3
    vpackusdw	zmm1{k1}{z},zmm2,zmm3
    vpaddb	ymm1{k1}{z},ymm2,ymm3
    vpaddw	zmm1{k1}{z},zmm2,zmm3

    vpaddb   xmm20,xmm0,xmm1
    vpaddw   xmm20,xmm0,xmm1
    vpaddd   xmm20,xmm0,xmm1
    vpaddq   xmm20,xmm0,xmm1
    vpaddsb  xmm20,xmm0,xmm1
    vpaddsw  xmm20,xmm0,xmm1
    vpaddusb xmm20,xmm0,xmm1
    vpaddusw xmm20,xmm0,xmm1
    vpavgb   xmm20,xmm0,xmm1
    vpavgw   xmm20,xmm0,xmm1

    vpaddb   ymm20,ymm0,ymm1
    vpaddw   ymm20,ymm0,ymm1
    vpaddd   ymm20,ymm0,ymm1
    vpaddq   ymm20,ymm0,ymm1
    vpaddsb  ymm20,ymm0,ymm1
    vpaddsw  ymm20,ymm0,ymm1
    vpaddusb ymm20,ymm0,ymm1
    vpaddusw ymm20,ymm0,ymm1
    vpavgb   ymm20,ymm0,ymm1
    vpavgw   ymm20,ymm0,ymm1

    vpaddd ymm1{k1}{z},ymm2,ymm3
    vpaddd zmm30,zmm29,zmm28
    vpaddd zmm30{k7},zmm29,zmm28
    vpaddd zmm30{k7}{z},zmm29,zmm28
    vpaddd zmm30,zmm29,zword ptr [rcx]
    vpaddd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpaddd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpaddd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpaddd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpaddd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpaddd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpaddd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpaddd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpaddd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpaddd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpaddq zmm1{k1}{z},zmm2,zmm3
    vpaddq zmm30,zmm29,zmm28
    vpaddq zmm30{k7},zmm29,zmm28
    vpaddq zmm30{k7}{z},zmm29,zmm28
    vpaddq zmm30,zmm29,zword ptr [rcx]
    vpaddq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpaddq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpaddq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpaddq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpaddq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpaddq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpaddq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpaddq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpaddq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpaddq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpaddsb	zmm1{k1}{z},zmm2,zmm3
    vpaddsw	zmm1{k1}{z},zmm2,zmm3
    vpaddusb	ymm1{k1}{z},ymm2,ymm3
    vpaddusw	zmm1{k1}{z},zmm2,zmm3
    vpavgb	zmm1{k1}{z},zmm2,zmm3
    vpavgw	zmm1{k1}{z},zmm2,zmm3
    vpcmpeqb	k1{k2},zmm2,zmm3
    vpcmpeqw	k1{k2},zmm2,zmm3

    vpcmpeqd k1{k2},zmm2,zmm3
    vpcmpeqq k1{k2},zmm2,zmm3
    vpcmpgtb k1{k2},zmm2,zmm3
    vpcmpgtw k1{k2},zmm2,zmm3
    vpcmpgtd k1{k2},zmm2,zmm3
    vpcmpgtq k1{k2},zmm2,zmm3

    vpcmpeqd k5,zmm30,zmm29
    vpcmpeqd k5{k7},zmm30,zmm29
    vpcmpeqd k5,zmm30,zword ptr [rcx]
    vpcmpeqd k5,zmm30,zword ptr [rax+r14*8+0x123]
    vpcmpeqd k5,zmm30,dword ptr [rcx]{1to16}
    vpcmpeqd k5,zmm30,zword ptr [rdx+0x1fc0]
    vpcmpeqd k5,zmm30,zword ptr [rdx+0x2000]
    vpcmpeqd k5,zmm30,zword ptr [rdx-0x2000]
    vpcmpeqd k5,zmm30,zword ptr [rdx-0x2040]
    vpcmpeqd k5,zmm30,dword ptr [rdx+0x1fc]{1to16}
    vpcmpeqd k5,zmm30,dword ptr [rdx+0x200]{1to16}
    vpcmpeqd k5,zmm30,dword ptr [rdx-0x200]{1to16}
    vpcmpeqd k5,zmm30,dword ptr [rdx-0x204]{1to16}
    vpcmpeqq k5,zmm30,zmm29
    vpcmpeqq k5{k7},zmm30,zmm29
    vpcmpeqq k5,zmm30,zword ptr [rcx]
    vpcmpeqq k5,zmm30,zword ptr [rax+r14*8+0x123]
    vpcmpeqq k5,zmm30,qword ptr [rcx]{1to8}
    vpcmpeqq k5,zmm30,zword ptr [rdx+0x1fc0]
    vpcmpeqq k5,zmm30,zword ptr [rdx+0x2000]
    vpcmpeqq k5,zmm30,zword ptr [rdx-0x2000]
    vpcmpeqq k5,zmm30,zword ptr [rdx-0x2040]
    vpcmpeqq k5,zmm30,qword ptr [rdx+0x3f8]{1to8}
    vpcmpeqq k5,zmm30,qword ptr [rdx+0x400]{1to8}
    vpcmpeqq k5,zmm30,qword ptr [rdx-0x400]{1to8}
    vpcmpeqq k5,zmm30,qword ptr [rdx-0x408]{1to8}
    vpcmpgtd k5,zmm30,zmm29
    vpcmpgtd k5{k7},zmm30,zmm29
    vpcmpgtd k5,zmm30,zword ptr [rcx]
    vpcmpgtd k5,zmm30,zword ptr [rax+r14*8+0x123]
    vpcmpgtd k5,zmm30,dword ptr [rcx]{1to16}
    vpcmpgtd k5,zmm30,zword ptr [rdx+0x1fc0]
    vpcmpgtd k5,zmm30,zword ptr [rdx+0x2000]
    vpcmpgtd k5,zmm30,zword ptr [rdx-0x2000]
    vpcmpgtd k5,zmm30,zword ptr [rdx-0x2040]
    vpcmpgtd k5,zmm30,dword ptr [rdx+0x1fc]{1to16}
    vpcmpgtd k5,zmm30,dword ptr [rdx+0x200]{1to16}
    vpcmpgtd k5,zmm30,dword ptr [rdx-0x200]{1to16}
    vpcmpgtd k5,zmm30,dword ptr [rdx-0x204]{1to16}
    vpcmpgtq k5,zmm30,zmm29
    vpcmpgtq k5{k7},zmm30,zmm29
    vpcmpgtq k5,zmm30,zword ptr [rcx]
    vpcmpgtq k5,zmm30,zword ptr [rax+r14*8+0x123]
    vpcmpgtq k5,zmm30,qword ptr [rcx]{1to8}
    vpcmpgtq k5,zmm30,zword ptr [rdx+0x1fc0]
    vpcmpgtq k5,zmm30,zword ptr [rdx+0x2000]
    vpcmpgtq k5,zmm30,zword ptr [rdx-0x2000]
    vpcmpgtq k5,zmm30,zword ptr [rdx-0x2040]
    vpcmpgtq k5,zmm30,qword ptr [rdx+0x3f8]{1to8}
    vpcmpgtq k5,zmm30,qword ptr [rdx+0x400]{1to8}
    vpcmpgtq k5,zmm30,qword ptr [rdx-0x400]{1to8}
    vpcmpgtq k5,zmm30,qword ptr [rdx-0x408]{1to8}

    vpextrb eax,xmm2,7
    vpextrb eax,xmm21,1
    vpextrb byte ptr [rax],xmm21,1
    vpextrd eax,xmm2,7
    vpextrd eax,xmm21,3
    vpextrd dword ptr [rax],xmm21,3
    vpextrw word ptr [rax],xmm21,2
    vpextrq rax,xmm2,7
    vpextrq rax,xmm1,4
    vpextrq qword ptr [rax],xmm21,4

    vpinsrb xmm1,xmm2,eax,7
    vpinsrw xmm1,xmm2,eax,7
    vpinsrd xmm1,xmm2,eax,7
    vpinsrq xmm1,xmm2,rax,7
    vpinsrb xmm20,xmm1,eax,1
    vpinsrb xmm20,xmm1,byte ptr [rax],1
    vpinsrw xmm20,xmm1,eax,2
    vpinsrw xmm20,xmm1,word ptr [rax],2
    vpinsrd xmm20,xmm1,eax,3
    vpinsrd xmm20,xmm1,dword ptr [rax],3
    vpinsrq xmm20,xmm1,rax,4
    vpinsrq xmm20,xmm1,qword ptr [rax],4

    vpmaddwd	zmm1{k1}{z},zmm2,zmm3
    vpmaddubsw	zmm1{k1}{z},zmm2,zmm3
    vpmaxsb	zmm1{k1}{z},zmm2,zmm3
    vpmaxsw	ymm1{k1}{z},ymm2,ymm3

    vpmaxsd zmm1{k1}{z},zmm2,zmm3
    vpmaxsd zmm30,zmm29,zmm28
    vpmaxsd zmm30{k7},zmm29,zmm28
    vpmaxsd zmm30{k7}{z},zmm29,zmm28
    vpmaxsd zmm30,zmm29,zword ptr [rcx]
    vpmaxsd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmaxsd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpmaxsd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmaxsd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmaxsd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmaxsd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmaxsd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpmaxsd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpmaxsd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpmaxsd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpmaxub	zmm1{k1}{z},zmm2,zmm3
    vpmaxuw	zmm1{k1}{z},zmm2,zmm3

    vpmaxud zmm1{k1}{z},zmm2,zmm3
    vpmaxud zmm30,zmm29,zmm28
    vpmaxud zmm30{k7},zmm29,zmm28
    vpmaxud zmm30{k7}{z},zmm29,zmm28
    vpmaxud zmm30,zmm29,zword ptr [rcx]
    vpmaxud zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmaxud zmm30,zmm29,dword ptr [rcx]{1to16}
    vpmaxud zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmaxud zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmaxud zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmaxud zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmaxud zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpmaxud zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpmaxud zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpmaxud zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpminsb	zmm1{k1}{z},zmm2,zmm3
    vpminsw	zmm1{k1}{z},zmm2,zmm3

    vpminsd zmm1{k1}{z},zmm2,zmm3
    vpminsd zmm30,zmm29,zmm28
    vpminsd zmm30{k7},zmm29,zmm28
    vpminsd zmm30{k7}{z},zmm29,zmm28
    vpminsd zmm30,zmm29,zword ptr [rcx]
    vpminsd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpminsd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpminsd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpminsd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpminsd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpminsd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpminsd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpminsd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpminsd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpminsd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpminub	zmm1{k1}{z},zmm2,zmm3
    vpminuw	zmm1{k1}{z},zmm2,zmm3

    vpminud zmm1{k1}{z},zmm2,zmm3
    vpminud zmm30,zmm29,zmm28
    vpminud zmm30{k7},zmm29,zmm28
    vpminud zmm30{k7}{z},zmm29,zmm28
    vpminud zmm30,zmm29,zword ptr [rcx]
    vpminud zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpminud zmm30,zmm29,dword ptr [rcx]{1to16}
    vpminud zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpminud zmm30,zmm29,zword ptr [rdx+0x2000]
    vpminud zmm30,zmm29,zword ptr [rdx-0x2000]
    vpminud zmm30,zmm29,zword ptr [rdx-0x2040]
    vpminud zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpminud zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpminud zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpminud zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpmovsxbw xmm20,xmm1
    vpmovsxbw xmm20,[rax]
    vpmovsxbd xmm20,xmm1
    vpmovsxbd xmm20,[rax]
    vpmovsxbq xmm20,xmm1
    vpmovsxbq xmm20,[rax]
    vpmovsxwd xmm20,xmm1
    vpmovsxwd xmm20,[rax]
    vpmovsxwq xmm20,xmm1
    vpmovsxwq xmm20,[rax]
    vpmovsxdq xmm20,xmm1
    vpmovsxdq xmm20,[rax]

    vpmovsxbw zmm1{k1}{z},ymm3
    vpmovsxbd zmm1{k1}{z},xmm3
    vpmovsxbq zmm1{k1}{z},xmm3
    vpmovsxdq zmm1{k1}{z},ymm3
    vpmovzxwq zmm1{k1}{z},xmm2
    vpmovzxdq zmm1{k1}{z},ymm2

    vpmovsxbd zmm30{k7},xmm29
    vpmovsxbd zmm30{k7}{z},xmm29
    vpmovsxbd zmm30{k7},oword ptr [rcx]
    vpmovsxbd zmm30{k7},oword ptr [rax+r14*8+0x123]
    vpmovsxbd zmm30{k7},oword ptr [rdx+0x7f0]
    vpmovsxbd zmm30{k7},oword ptr [rdx+0x800]
    vpmovsxbd zmm30{k7},oword ptr [rdx-0x800]
    vpmovsxbd zmm30{k7},oword ptr [rdx-0x810]
    vpmovsxbq zmm30{k7},xmm29
    vpmovsxbq zmm30{k7}{z},xmm29
    vpmovsxbq zmm30{k7},qword ptr [rcx]
    vpmovsxbq zmm30{k7},qword ptr [rax+r14*8+0x123]
    vpmovsxbq zmm30{k7},qword ptr [rdx+0x3f8]
    vpmovsxbq zmm30{k7},qword ptr [rdx+0x400]
    vpmovsxbq zmm30{k7},qword ptr [rdx-0x400]
    vpmovsxbq zmm30{k7},qword ptr [rdx-0x408]
    vpmovsxdq zmm30{k7},ymm29
    vpmovsxdq zmm30{k7}{z},ymm29
    vpmovsxdq zmm30{k7},yword ptr [rcx]
    vpmovsxdq zmm30{k7},yword ptr [rax+r14*8+0x123]
    vpmovsxdq zmm30{k7},yword ptr [rdx+0xfe0]
    vpmovsxdq zmm30{k7},yword ptr [rdx+0x1000]
    vpmovsxdq zmm30{k7},yword ptr [rdx-0x1000]
    vpmovsxdq zmm30{k7},yword ptr [rdx-0x1020]
    vpmovsxwd zmm30{k7},ymm29
    vpmovsxwd zmm30{k7}{z},ymm29
    vpmovsxwd zmm30{k7},yword ptr [rcx]
    vpmovsxwd zmm30{k7},yword ptr [rax+r14*8+0x123]
    vpmovsxwd zmm30{k7},yword ptr [rdx+0xfe0]
    vpmovsxwd zmm30{k7},yword ptr [rdx+0x1000]
    vpmovsxwd zmm30{k7},yword ptr [rdx-0x1000]
    vpmovsxwd zmm30{k7},yword ptr [rdx-0x1020]
    vpmovsxwq zmm30{k7},xmm29
    vpmovsxwq zmm30{k7}{z},xmm29
    vpmovsxwq zmm30{k7},oword ptr [rcx]
    vpmovsxwq zmm30{k7},oword ptr [rax+r14*8+0x123]
    vpmovsxwq zmm30{k7},oword ptr [rdx+0x7f0]
    vpmovsxwq zmm30{k7},oword ptr [rdx+0x800]
    vpmovsxwq zmm30{k7},oword ptr [rdx-0x800]
    vpmovsxwq zmm30{k7},oword ptr [rdx-0x810]
    vpmovzxbd zmm30{k7},xmm29
    vpmovzxbd zmm30{k7}{z},xmm29
    vpmovzxbd zmm30{k7},oword ptr [rcx]
    vpmovzxbd zmm30{k7},oword ptr [rax+r14*8+0x123]
    vpmovzxbd zmm30{k7},oword ptr [rdx+0x7f0]
    vpmovzxbd zmm30{k7},oword ptr [rdx+0x800]
    vpmovzxbd zmm30{k7},oword ptr [rdx-0x800]
    vpmovzxbd zmm30{k7},oword ptr [rdx-0x810]
    vpmovzxbq zmm30{k7},xmm29
    vpmovzxbq zmm30{k7}{z},xmm29
    vpmovzxbq zmm30{k7},qword ptr [rcx]
    vpmovzxbq zmm30{k7},qword ptr [rax+r14*8+0x123]
    vpmovzxbq zmm30{k7},qword ptr [rdx+0x3f8]
    vpmovzxbq zmm30{k7},qword ptr [rdx+0x400]
    vpmovzxbq zmm30{k7},qword ptr [rdx-0x400]
    vpmovzxbq zmm30{k7},qword ptr [rdx-0x408]
    vpmovzxdq zmm30{k7},ymm29
    vpmovzxdq zmm30{k7}{z},ymm29
    vpmovzxdq zmm30{k7},yword ptr [rcx]
    vpmovzxdq zmm30{k7},yword ptr [rax+r14*8+0x123]
    vpmovzxdq zmm30{k7},yword ptr [rdx+0xfe0]
    vpmovzxdq zmm30{k7},yword ptr [rdx+0x1000]
    vpmovzxdq zmm30{k7},yword ptr [rdx-0x1000]
    vpmovzxdq zmm30{k7},yword ptr [rdx-0x1020]
    vpmovzxwd zmm30{k7},ymm29
    vpmovzxwd zmm30{k7}{z},ymm29
    vpmovzxwd zmm30{k7},yword ptr [rcx]
    vpmovzxwd zmm30{k7},yword ptr [rax+r14*8+0x123]
    vpmovzxwd zmm30{k7},yword ptr [rdx+0xfe0]
    vpmovzxwd zmm30{k7},yword ptr [rdx+0x1000]
    vpmovzxwd zmm30{k7},yword ptr [rdx-0x1000]
    vpmovzxwd zmm30{k7},yword ptr [rdx-0x1020]
    vpmovzxwq zmm30{k7},xmm29
    vpmovzxwq zmm30{k7}{z},xmm29
    vpmovzxwq zmm30{k7},oword ptr [rcx]
    vpmovzxwq zmm30{k7},oword ptr [rax+r14*8+0x123]
    vpmovzxwq zmm30{k7},oword ptr [rdx+0x7f0]
    vpmovzxwq zmm30{k7},oword ptr [rdx+0x800]
    vpmovzxwq zmm30{k7},oword ptr [rdx-0x800]
    vpmovzxwq zmm30{k7},oword ptr [rdx-0x810]

    vpmovzxbw xmm20,xmm1
    vpmovzxbd xmm20,xmm1
    vpmovzxbq xmm20,xmm1
    vpmovzxwd xmm20,xmm1
    vpmovzxwq xmm20,xmm1
    vpmovzxdq xmm20,xmm1
    vpmuldq xmm20,xmm1,xmm2
    vpmulld xmm20,xmm0,xmm1

    vpmovzxbw xmm20,qword ptr [rax]
    vpmovzxbd xmm20,dword ptr [rax]
    vpmovzxbq xmm20,word  ptr [rax]
    vpmovzxwd xmm20,qword ptr [rax]
    vpmovzxwq xmm20,dword ptr [rax]
    vpmovzxdq xmm20,qword ptr [rax]
    vpmuldq xmm20,xmm1,oword ptr [rax]
    vpmulld xmm20,xmm1,oword ptr [rax]

    vpmulhrsw zmm1{k1}{z},zmm2,zmm3
    vpmulhw zmm1{k1}{z},zmm2,zmm3
    vpmullw zmm1{k1}{z},zmm2,zmm3
    vpmulld zmm1{k1}{z},zmm2,zmm3
    vpmuludq zmm1{k1}{z},zmm2,zmm3
    vpmuldq zmm1{k1}{z},zmm2,zmm3
    vpmuldq zmm30,zmm29,zmm28
    vpmuldq zmm30{k7},zmm29,zmm28
    vpmuldq zmm30{k7}{z},zmm29,zmm28
    vpmuldq zmm30,zmm29,zword ptr [rcx]
    vpmuldq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmuldq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpmuldq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmuldq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmuldq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmuldq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmuldq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpmuldq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpmuldq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpmuldq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vpmulld zmm30,zmm29,zmm28
    vpmulld zmm30{k7},zmm29,zmm28
    vpmulld zmm30{k7}{z},zmm29,zmm28
    vpmulld zmm30,zmm29,zword ptr [rcx]
    vpmulld zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmulld zmm30,zmm29,dword ptr [rcx]{1to16}
    vpmulld zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmulld zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmulld zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmulld zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmulld zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpmulld zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpmulld zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpmulld zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vpmuludq zmm30,zmm29,zmm28
    vpmuludq zmm30{k7},zmm29,zmm28
    vpmuludq zmm30{k7}{z},zmm29,zmm28
    vpmuludq zmm30,zmm29,zword ptr [rcx]
    vpmuludq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmuludq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpmuludq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmuludq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmuludq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmuludq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmuludq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpmuludq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpmuludq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpmuludq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpsadbw zmm1,zmm2,zmm3
    vpshufb zmm1{k1}{z},zmm2,zmm3
    vpshufd zmm1{k1}{z},zmm2,3
    vpshufd zmm30,zmm29,0xab
    vpshufd zmm30{k7},zmm29,0xab
    vpshufd zmm30{k7}{z},zmm29,0xab
    vpshufd zmm30,zmm29,0x7b
    vpshufd zmm30,zword ptr [rcx],0x7b
    vpshufd zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpshufd zmm30,dword ptr [rcx]{1to16},0x7b
    vpshufd zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpshufd zmm30,zword ptr [rdx+0x2000],0x7b
    vpshufd zmm30,zword ptr [rdx-0x2000],0x7b
    vpshufd zmm30,zword ptr [rdx-0x2040],0x7b
    vpshufd zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpshufd zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpshufd zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpshufd zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vpshufhw	zmm1{k1}{z},zmm2,3
    vpshuflw	zmm1{k1}{z},zmm2,3
    vpslldq	zmm1,zmm2,3
    vpsrldq	zmm1,zmm2,3
    vpsllw	zmm1{k1}{z},zmm2,3

    vpslld zmm1{k1}{z},zmm2,xmm3
    vpslld zmm30{k7},zmm29,xmm28
    vpslld zmm30{k7}{z},zmm29,xmm28
    vpslld zmm30{k7},zmm29,oword ptr [rcx]
    vpslld zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123]
    vpslld zmm30{k7},zmm29,oword ptr [rdx+0x7f0]
    vpslld zmm30{k7},zmm29,oword ptr [rdx+0x800]
    vpslld zmm30{k7},zmm29,oword ptr [rdx-0x800]
    vpslld zmm30{k7},zmm29,oword ptr [rdx-0x810]
    vpslld zmm30,zmm29,0xab
    vpslld zmm30{k7},zmm29,0xab
    vpslld zmm30{k7}{z},zmm29,0xab
    vpslld zmm30,zmm29,0x7b
    vpslld zmm30,zword ptr [rcx],0x7b
    vpslld zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpslld zmm30,dword ptr [rcx]{1to16},0x7b
    vpslld zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpslld zmm30,zword ptr [rdx+0x2000],0x7b
    vpslld zmm30,zword ptr [rdx-0x2000],0x7b
    vpslld zmm30,zword ptr [rdx-0x2040],0x7b
    vpslld zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpslld zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpslld zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpslld zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vpsllq zmm1{k1}{z},zmm2,xmm3
    vpsllq zmm30{k7},zmm29,xmm28
    vpsllq zmm30{k7}{z},zmm29,xmm28
    vpsllq zmm30{k7},zmm29,oword ptr [rcx]
    vpsllq zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123]
    vpsllq zmm30{k7},zmm29,oword ptr [rdx+0x7f0]
    vpsllq zmm30{k7},zmm29,oword ptr [rdx+0x800]
    vpsllq zmm30{k7},zmm29,oword ptr [rdx-0x800]
    vpsllq zmm30{k7},zmm29,oword ptr [rdx-0x810]
    vpsllq zmm30,zmm29,0xab
    vpsllq zmm30{k7},zmm29,0xab
    vpsllq zmm30{k7}{z},zmm29,0xab
    vpsllq zmm30,zmm29,0x7b
    vpsllq zmm30,zword ptr [rcx],0x7b
    vpsllq zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpsllq zmm30,qword ptr [rcx]{1to8},0x7b
    vpsllq zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpsllq zmm30,zword ptr [rdx+0x2000],0x7b
    vpsllq zmm30,zword ptr [rdx-0x2000],0x7b
    vpsllq zmm30,zword ptr [rdx-0x2040],0x7b
    vpsllq zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpsllq zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpsllq zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpsllq zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpsraw zmm1,zmm2,3
    vpsrlw zmm1{k1}{z},zmm2,xmm3

    vpsrlw xmm20,xmm1,xmm2
    vpsrlw xmm20,xmm1,[rax]
    vpsrld xmm20,xmm1,xmm2
    vpsrld xmm20,xmm1,[rax]
    vpsrlq xmm20,xmm1,xmm2
    vpsrlq xmm20,xmm1,[rax]
    vpsraw xmm20,xmm1,xmm2
    vpsraw xmm20,xmm1,[rax]
    vpsrad xmm20,xmm1,xmm2
    vpsrad xmm20,xmm1,[rax]
    vpsllw xmm20,xmm1,xmm2
    vpsllw xmm20,xmm1,[rax]
    vpslld xmm20,xmm1,xmm2
    vpslld xmm20,xmm1,[rax]
    vpsllq xmm20,xmm1,xmm2
    vpsllq xmm20,xmm1,[rax]

    vpslldq xmm20,xmm1,1
    vpsrldq xmm20,xmm1,2
    vpsrlw xmm20,xmm1,3
    vpsrld xmm20,xmm1,4
    vpsrlq xmm20,xmm1,5
    vpsraw xmm20,xmm1,6
    vpsrad xmm20,xmm1,7
    vpsllw xmm20,xmm1,8
    vpslld xmm20,xmm1,9
    vpsllq xmm20,xmm1,10

    vpsrlw xmm20,xmm1,xmm2
    vpsrlw xmm20,xmm1,[rax]
    vpsrld xmm20,xmm1,xmm2
    vpsrld xmm20,xmm1,[rax]
    vpsrlq xmm20,xmm1,xmm2
    vpsrlq xmm20,xmm1,[rax]
    vpsraw xmm20,xmm1,xmm2
    vpsraw xmm20,xmm1,[rax]
    vpsrad xmm20,xmm1,xmm2
    vpsrad xmm20,xmm1,[rax]
    vpsllw xmm20,xmm1,xmm2
    vpsllw xmm20,xmm1,[rax]
    vpslld xmm20,xmm1,xmm2
    vpslld xmm20,xmm1,[rax]
    vpsllq xmm20,xmm1,xmm2
    vpsllq xmm20,xmm1,[rax]

    vpsrad zmm1{k1}{z},zmm2,xmm3
    vpsrad zmm30{k7},zmm29,xmm28
    vpsrad zmm30{k7}{z},zmm29,xmm28
    vpsrad zmm30{k7},zmm29,oword ptr [rcx]
    vpsrad zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123]
    vpsrad zmm30{k7},zmm29,oword ptr [rdx+0x7f0]
    vpsrad zmm30{k7},zmm29,oword ptr [rdx+0x800]
    vpsrad zmm30{k7},zmm29,oword ptr [rdx-0x800]
    vpsrad zmm30{k7},zmm29,oword ptr [rdx-0x810]
    vpsrad zmm30,zmm29,0xab
    vpsrad zmm30{k7},zmm29,0xab
    vpsrad zmm30{k7}{z},zmm29,0xab
    vpsrad zmm30,zmm29,0x7b
    vpsrad zmm30,zword ptr [rcx],0x7b
    vpsrad zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpsrad zmm30,dword ptr [rcx]{1to16},0x7b
    vpsrad zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpsrad zmm30,zword ptr [rdx+0x2000],0x7b
    vpsrad zmm30,zword ptr [rdx-0x2000],0x7b
    vpsrad zmm30,zword ptr [rdx-0x2040],0x7b
    vpsrad zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpsrad zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpsrad zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpsrad zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vpsrld zmm1{k1}{z},zmm2,3
    vpsrld zmm30{k7},zmm29,xmm28
    vpsrld zmm30{k7}{z},zmm29,xmm28
    vpsrld zmm30{k7},zmm29,oword ptr [rcx]
    vpsrld zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123]
    vpsrld zmm30{k7},zmm29,oword ptr [rdx+0x7f0]
    vpsrld zmm30{k7},zmm29,oword ptr [rdx+0x800]
    vpsrld zmm30{k7},zmm29,oword ptr [rdx-0x800]
    vpsrld zmm30{k7},zmm29,oword ptr [rdx-0x810]
    vpsrld zmm30,zmm29,0xab
    vpsrld zmm30{k7},zmm29,0xab
    vpsrld zmm30{k7}{z},zmm29,0xab
    vpsrld zmm30,zmm29,0x7b

    vpsrlq zmm1{k1}{z},zmm2,xmm3
    vpsrlq zmm30{k7},zmm29,xmm28
    vpsrlq zmm30{k7}{z},zmm29,xmm28
    vpsrlq zmm30{k7},zmm29,oword ptr [rcx]
    vpsrlq zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123]
    vpsrlq zmm30{k7},zmm29,oword ptr [rdx+0x7f0]
    vpsrlq zmm30{k7},zmm29,oword ptr [rdx+0x800]
    vpsrlq zmm30{k7},zmm29,oword ptr [rdx-0x800]
    vpsrlq zmm30{k7},zmm29,oword ptr [rdx-0x810]
    vpsrlq zmm30,zmm29,0xab
    vpsrlq zmm30{k7},zmm29,0xab
    vpsrlq zmm30{k7}{z},zmm29,0xab
    vpsrlq zmm30,zmm29,0x7b

    vpsrld zmm30,zword ptr [rcx],0x7b
    vpsrld zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpsrld zmm30,dword ptr [rcx]{1to16},0x7b
    vpsrld zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpsrld zmm30,zword ptr [rdx+0x2000],0x7b
    vpsrld zmm30,zword ptr [rdx-0x2000],0x7b
    vpsrld zmm30,zword ptr [rdx-0x2040],0x7b
    vpsrld zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpsrld zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpsrld zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpsrld zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vpsrlq zmm30,zword ptr [rcx],0x7b
    vpsrlq zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpsrlq zmm30,qword ptr [rcx]{1to8},0x7b
    vpsrlq zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpsrlq zmm30,zword ptr [rdx+0x2000],0x7b
    vpsrlq zmm30,zword ptr [rdx-0x2000],0x7b
    vpsrlq zmm30,zword ptr [rdx-0x2040],0x7b
    vpsrlq zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpsrlq zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpsrlq zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpsrlq zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpsubb	zmm1{k1}{z},zmm2,zmm3
    vpsubw	zmm1{k1}{z},zmm2,zmm3
    vpsubd	zmm1{k1}{z},zmm2,zmm3
    vpsubq	zmm1{k1}{z},zmm2,zmm3
    vpsubsb	zmm1{k1}{z},zmm2,zmm3
    vpsubsw	zmm1{k1}{z},zmm2,zmm3
    vpsubusb	zmm1{k1}{z},zmm2,zmm3
    vpsubusw	zmm1{k1}{z},zmm2,zmm3
    vpunpckhbw	zmm1{k1}{z},zmm2,zmm3
    vpunpckhwd	zmm1{k1}{z},zmm2,zmm3
    vpunpckhdq	zmm1{k1}{z},zmm2,zmm3
    vpunpckhqdq zmm1{k1}{z},zmm2,zmm3
    vpunpcklbw	zmm1{k1}{z},zmm2,zmm3
    vpunpcklwd	zmm1{k1}{z},zmm2,zmm3
    vpunpckldq	zmm1{k1}{z},zmm2,zmm3
    vpunpcklqdq zmm1{k1}{z},zmm2,zmm3

    vcvtps2dq xmm20,xmm1
    vcvtps2dq xmm20,oword ptr [rax]
    vcvtps2dq ymm20,ymm1
    vcvtps2dq ymm20,yword ptr [rax]
    vcvtps2dq ymm1{k1}{z},[rax]
    vcvtps2dq zmm30,zmm29
    vcvtps2dq zmm30{k7},zmm29
    vcvtps2dq zmm30{k7}{z},zmm29
    vcvtps2dq zmm30,zmm29,{rn-sae}
    vcvtps2dq zmm30,zmm29,{ru-sae}
    vcvtps2dq zmm30,zmm29,{rd-sae}
    vcvtps2dq zmm30,zmm29,{rz-sae}
    vcvtps2dq zmm30,zword ptr [rcx]
    vcvtps2dq zmm30,zword ptr [rax+r14*8+0x123]
    vcvtps2dq zmm30,dword ptr [rcx]{1to16}
    vcvtps2dq zmm30,zword ptr [rdx+0x1fc0]
    vcvtps2dq zmm30,zword ptr [rdx+0x2000]
    vcvtps2dq zmm30,zword ptr [rdx-0x2000]
    vcvtps2dq zmm30,zword ptr [rdx-0x2040]
    vcvtps2dq zmm30,dword ptr [rdx+0x1fc]{1to16}
    vcvtps2dq zmm30,dword ptr [rdx+0x200]{1to16}
    vcvtps2dq zmm30,dword ptr [rdx-0x200]{1to16}
    vcvtps2dq zmm30,dword ptr [rdx-0x204]{1to16}

    vcvtps2pd xmm20,xmm1
    vcvtps2pd ymm20,xmm1
    vcvtps2pd zmm1{k1}{z},ymm2
    vcvtps2pd zmm30{k7},ymm29
    vcvtps2pd zmm30{k7}{z},ymm29
    vcvtps2pd zmm30{k7},ymm29,{sae}
    vcvtps2pd zmm30{k7},yword ptr [rcx]
    vcvtps2pd zmm30{k7},yword ptr [rax+r14*8+0x123]
    vcvtps2pd zmm30{k7},dword ptr [rcx]{1to8}
    vcvtps2pd zmm30{k7},yword ptr [rdx+0xfe0]
    vcvtps2pd zmm30{k7},yword ptr [rdx+0x1000]
    vcvtps2pd zmm30{k7},yword ptr [rdx-0x1000]
    vcvtps2pd zmm30{k7},yword ptr [rdx-0x1020]
    vcvtps2pd zmm30{k7},dword ptr [rdx+0x1fc]{1to8}
    vcvtps2pd zmm30{k7},dword ptr [rdx+0x200]{1to8}
    vcvtps2pd zmm30{k7},dword ptr [rdx-0x200]{1to8}
    vcvtps2pd zmm30{k7},dword ptr [rdx-0x204]{1to8}

    vpalignr	zmm1{k1}{z},zmm2,zmm3,7
    vpalignr	zmm1{k1}{z},zmm2,[rax],7
    vpmovsxwd	zmm1{k1}{z},[rax]
    vpmovsxwq	zmm1{k1}{z},[rax]
    vpsubb	zmm1{k1}{z},zmm2,[rax]
    vpsubw	zmm1{k1}{z},zmm2,[rax]

    vpsubd zmm1{k1}{z},zmm2,[rax]
    vpsubd zmm30,zmm29,zmm28
    vpsubd zmm30{k7},zmm29,zmm28
    vpsubd zmm30{k7}{z},zmm29,zmm28
    vpsubd zmm30,zmm29,zword ptr [rcx]
    vpsubd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsubd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpsubd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsubd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsubd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsubd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsubd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpsubd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpsubd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpsubd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpsubq zmm1{k1}{z},zmm2,[rax]
    vpsubq zmm30,zmm29,zmm28
    vpsubq zmm30{k7},zmm29,zmm28
    vpsubq zmm30{k7}{z},zmm29,zmm28
    vpsubq zmm30,zmm29,zword ptr [rcx]
    vpsubq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsubq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpsubq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsubq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsubq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsubq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsubq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpsubq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpsubq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpsubq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpsubsb	zmm1{k1}{z},zmm2,[rax]
    vpsubsw	zmm1{k1}{z},zmm2,[rax]
    vpsubusb	zmm1{k1}{z},zmm2,[rax]
    vpsubusw	zmm1{k1}{z},zmm2,[rax]
    vpunpckhbw	zmm1{k1}{z},zmm2,[rax]
    vpunpckhwd	zmm1{k1}{z},zmm2,[rax]

    vpunpckhdq zmm1{k1}{z},zmm2,[rax]
    vpunpckhdq zmm30,zmm29,zmm28
    vpunpckhdq zmm30{k7},zmm29,zmm28
    vpunpckhdq zmm30{k7}{z},zmm29,zmm28
    vpunpckhdq zmm30,zmm29,zword ptr [rcx]
    vpunpckhdq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpunpckhdq zmm30,zmm29,dword ptr [rcx]{1to16}
    vpunpckhdq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpunpckhdq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpunpckhdq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpunpckhdq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpunpckhdq zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpunpckhdq zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpunpckhdq zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpunpckhdq zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpunpckhqdq zmm1{k1}{z},zmm2,[rax]
    vpunpckhqdq zmm30,zmm29,zmm28
    vpunpckhqdq zmm30{k7},zmm29,zmm28
    vpunpckhqdq zmm30{k7}{z},zmm29,zmm28
    vpunpckhqdq zmm30,zmm29,zword ptr [rcx]
    vpunpckhqdq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpunpckhqdq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpunpckhqdq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpunpckhqdq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpunpckhqdq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpunpckhqdq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpunpckhqdq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpunpckhqdq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpunpckhqdq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpunpckhqdq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpunpcklbw zmm1{k1}{z},zmm2,[rax]
    vpunpcklwd zmm1{k1}{z},zmm2,[rax]

    vpunpckldq zmm1{k1}{z},zmm2,[rax]
    vpunpckldq zmm30,zmm29,zmm28
    vpunpckldq zmm30{k7},zmm29,zmm28
    vpunpckldq zmm30{k7}{z},zmm29,zmm28
    vpunpckldq zmm30,zmm29,zword ptr [rcx]
    vpunpckldq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpunpckldq zmm30,zmm29,dword ptr [rcx]{1to16}
    vpunpckldq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpunpckldq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpunpckldq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpunpckldq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpunpckldq zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpunpckldq zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpunpckldq zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpunpckldq zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpunpcklqdq zmm1{k1}{z},zmm2,[rax]
    vpunpcklqdq zmm30,zmm29,zmm28
    vpunpcklqdq zmm30{k7},zmm29,zmm28
    vpunpcklqdq zmm30{k7}{z},zmm29,zmm28
    vpunpcklqdq zmm30,zmm29,zword ptr [rcx]
    vpunpcklqdq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpunpcklqdq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpunpcklqdq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpunpcklqdq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpunpcklqdq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpunpcklqdq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpunpcklqdq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpunpcklqdq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpunpcklqdq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpunpcklqdq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vshufpd zmm1{k1}{z},zmm2,zmm3,7
    vshufpd zmm1{k1}{z},zmm2,[rax],7
    vshufpd zmm30,zmm29,zmm28,0xab
    vshufpd zmm30{k7},zmm29,zmm28,0xab
    vshufpd zmm30{k7}{z},zmm29,zmm28,0xab
    vshufpd zmm30,zmm29,zmm28,0x7b
    vshufpd zmm30,zmm29,zword ptr [rcx],0x7b
    vshufpd zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vshufpd zmm30,zmm29,qword ptr [rcx]{1to8},0x7b
    vshufpd zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vshufpd zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vshufpd zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vshufpd zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vshufpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8},0x7b
    vshufpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8},0x7b
    vshufpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8},0x7b
    vshufpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8},0x7b

    vshufps zmm1{k1}{z},zmm2,zmm3,7
    vshufps zmm1{k1}{z},zmm2,[rax],7
    vshufps zmm30,zmm29,zmm28,0xab
    vshufps zmm30{k7},zmm29,zmm28,0xab
    vshufps zmm30{k7}{z},zmm29,zmm28,0xab
    vshufps zmm30,zmm29,zmm28,0x7b
    vshufps zmm30,zmm29,zword ptr [rcx],0x7b
    vshufps zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vshufps zmm30,zmm29,dword ptr [rcx]{1to16},0x7b
    vshufps zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vshufps zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vshufps zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vshufps zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vshufps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16},0x7b
    vshufps zmm30,zmm29,dword ptr [rdx+0x200]{1to16},0x7b
    vshufps zmm30,zmm29,dword ptr [rdx-0x200]{1to16},0x7b
    vshufps zmm30,zmm29,dword ptr [rdx-0x204]{1to16},0x7b

    vunpckhpd zmm1{k1}{z},zmm2,zmm3
    vunpckhps zmm1{k1}{z},zmm2,zmm3
    vunpcklpd zmm1{k1}{z},zmm2,zmm3
    vunpcklps zmm1{k1}{z},zmm2,zmm3
    vunpckhpd zmm1{k1}{z},zmm2,[rax]
    vunpckhps zmm1{k1}{z},zmm2,[rax]
    vunpcklpd zmm1{k1}{z},zmm2,[rax]
    vunpcklps zmm1{k1}{z},zmm2,[rax]

    vunpckhpd zmm30,zmm29,zmm28
    vunpckhpd zmm30{k7},zmm29,zmm28
    vunpckhpd zmm30{k7}{z},zmm29,zmm28
    vunpckhpd zmm30,zmm29,zword ptr [rcx]
    vunpckhpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vunpckhpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vunpckhpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vunpckhpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vunpckhpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vunpckhpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vunpckhpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vunpckhpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vunpckhpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vunpckhpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vunpckhps zmm30,zmm29,zmm28
    vunpckhps zmm30{k7},zmm29,zmm28
    vunpckhps zmm30{k7}{z},zmm29,zmm28
    vunpckhps zmm30,zmm29,zword ptr [rcx]
    vunpckhps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vunpckhps zmm30,zmm29,dword ptr [rcx]{1to16}
    vunpckhps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vunpckhps zmm30,zmm29,zword ptr [rdx+0x2000]
    vunpckhps zmm30,zmm29,zword ptr [rdx-0x2000]
    vunpckhps zmm30,zmm29,zword ptr [rdx-0x2040]
    vunpckhps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vunpckhps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vunpckhps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vunpckhps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vunpcklpd zmm30,zmm29,zmm28
    vunpcklpd zmm30{k7},zmm29,zmm28
    vunpcklpd zmm30{k7}{z},zmm29,zmm28
    vunpcklpd zmm30,zmm29,zword ptr [rcx]
    vunpcklpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vunpcklpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vunpcklpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vunpcklpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vunpcklpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vunpcklpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vunpcklpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vunpcklpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vunpcklpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vunpcklpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vunpcklps zmm30,zmm29,zmm28
    vunpcklps zmm30{k7},zmm29,zmm28
    vunpcklps zmm30{k7}{z},zmm29,zmm28
    vunpcklps zmm30,zmm29,zword ptr [rcx]
    vunpcklps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vunpcklps zmm30,zmm29,dword ptr [rcx]{1to16}
    vunpcklps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vunpcklps zmm30,zmm29,zword ptr [rdx+0x2000]
    vunpcklps zmm30,zmm29,zword ptr [rdx-0x2000]
    vunpcklps zmm30,zmm29,zword ptr [rdx-0x2040]
    vunpcklps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vunpcklps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vunpcklps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vunpcklps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpsllw	xmm1{k1}{z},xmm2,xmm3
    vpsllw	ymm1{k1}{z},ymm2,xmm3
    vpsllw	zmm1{k1}{z},zmm2,xmm3
    vpsllw	xmm1{k1}{z},xmm2,[rax]
    vpsllw	ymm1{k1}{z},ymm2,[rax]
    vpsllw	zmm1{k1}{z},zmm2,[rax]

    vpsllw	xmm1{k1}{z},xmm2,7
    vpsllw	ymm1{k1}{z},ymm2,7
    vpsllw	zmm1{k1}{z},zmm2,7
    vpsllw	xmm1{k1}{z},[rax],7
    vpsllw	ymm1{k1}{z},[rax],7
    vpsllw	zmm1{k1}{z},[rax],7

    vpermw	xmm1, xmm2, xmm3
    vpermw	ymm1, ymm2, ymm3
    vpermw	zmm1, zmm2, zmm3
    vpermw	zmm3, zmm2, zmm1

    vpsravw	xmm1, xmm2, xmm3
    vpsravw	ymm1, ymm2, ymm3
    vpsravw	zmm1, zmm2, zmm3

    vpsravq	xmm1, xmm2, xmm3
    vpsravq	ymm1, ymm2, ymm3
    vpsravq	zmm1, zmm2, zmm3

    vpsrlvw	xmm1, xmm2, xmm3
    vpsrlvw	ymm1, ymm2, ymm3
    vpsrlvw	zmm1, zmm2, zmm3

    vpermw	zmm1{k1},zmm2,zmm3
    vpermw	zmm1{k1}{z},zmm2,zmm3
    vpermw	zmm1{k2}{z},zmm2,zmm3
    vpermw	zmm1{k3}{z},zmm2,zmm3
    vpermw	zmm1{k4}{z},zmm2,zmm3
    vpermw	zmm1{k5}{z},zmm2,zmm3
    vpermw	zmm1{k6}{z},zmm2,zmm3
    vpermw	zmm1{k7}{z},zmm2,zmm3

    vpermw	xmm1,xmm2,[rax]
    vpermw	xmm1{k1},xmm2,[rax]
    vpermw	xmm1{k1}{z},xmm2,[rax]
    vpermw	xmm1{k2}{z},xmm2,[rax]
    vpermw	xmm1{k3}{z},xmm2,[rax]
    vpermw	xmm1{k4}{z},xmm2,[rax]
    vpermw	xmm1{k5}{z},xmm2,[rax]
    vpermw	xmm1{k6}{z},xmm2,[rax]
    vpermw	xmm1{k7}{z},xmm2,[rax]

    vpermw	ymm1,ymm2,[rax]
    vpermw	ymm1{k1},ymm2,[rax]
    vpermw	ymm1{k1}{z},ymm2,[rax]
    vpermw	ymm1{k2}{z},ymm2,[rax]
    vpermw	ymm1{k3}{z},ymm2,[rax]
    vpermw	ymm1{k4}{z},ymm2,[rax]
    vpermw	ymm1{k5}{z},ymm2,[rax]
    vpermw	ymm1{k6}{z},ymm2,[rax]
    vpermw	ymm1{k7}{z},ymm2,[rax]

    vpermw	zmm1,zmm2,[rax]
    vpermw	zmm1{k1},zmm2,[rax]
    vpermw	zmm1{k1}{z},zmm2,[rax]
    vpermw	zmm1{k2}{z},zmm2,[rax]
    vpermw	zmm1{k3}{z},zmm2,[rax]
    vpermw	zmm1{k4}{z},zmm2,[rax]
    vpermw	zmm1{k5}{z},zmm2,[rax]
    vpermw	zmm1{k6}{z},zmm2,[rax]
    vpermw	zmm1{k7}{z},zmm2,[rax]

    vpermw	zmm21,zmm2, zmm3
    vpermw	zmm21,zmm21,zmm3
    vpermw	zmm21,zmm21,zmm31
    vpermw	zmm21,zmm2, zmm31
    vpermw	zmm1, zmm2, zmm31
    vpermw	zmm1, zmm20,zmm31
    vpermw	zmm1, zmm20,zmm3

    vpandd zmm1{k1}{z},zmm2,zmm3
    vpandd zmm30,zmm29,zmm28
    vpandd zmm30{k7},zmm29,zmm28
    vpandd zmm30{k7}{z},zmm29,zmm28
    vpandd zmm30,zmm29,zword ptr [rcx]
    vpandd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpandd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpandd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpandd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpandd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpandd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpandd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpandd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpandd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpandd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpandq zmm1{k1}{z},zmm2,zmm3
    vpandq zmm30,zmm29,zmm28
    vpandq zmm30{k7},zmm29,zmm28
    vpandq zmm30{k7}{z},zmm29,zmm28
    vpandq zmm30,zmm29,zword ptr [rcx]
    vpandq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpandq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpandq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpandq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpandq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpandq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpandq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpandq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpandq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpandq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpandnd zmm1{k1}{z},zmm2,zmm3
    vpandnd zmm30,zmm29,zmm28
    vpandnd zmm30{k7},zmm29,zmm28
    vpandnd zmm30{k7}{z},zmm29,zmm28
    vpandnd zmm30,zmm29,zword ptr [rcx]
    vpandnd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpandnd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpandnd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpandnd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpandnd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpandnd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpandnd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpandnd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpandnd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpandnd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpandnq zmm1{k1}{z},zmm2,zmm3
    vpandnq zmm30,zmm29,zmm28
    vpandnq zmm30{k7},zmm29,zmm28
    vpandnq zmm30{k7}{z},zmm29,zmm28
    vpandnq zmm30,zmm29,zword ptr [rcx]
    vpandnq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpandnq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpandnq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpandnq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpandnq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpandnq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpandnq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpandnq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpandnq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpandnq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpxord zmm1{k1}{z},zmm2,zmm3
    vpxord zmm30,zmm29,zmm28
    vpxord zmm30{k7},zmm29,zmm28
    vpxord zmm30{k7}{z},zmm29,zmm28
    vpxord zmm30,zmm29,zword ptr [rcx]
    vpxord zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpxord zmm30,zmm29,dword ptr [rcx]{1to16}
    vpxord zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpxord zmm30,zmm29,zword ptr [rdx+0x2000]
    vpxord zmm30,zmm29,zword ptr [rdx-0x2000]
    vpxord zmm30,zmm29,zword ptr [rdx-0x2040]
    vpxord zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpxord zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpxord zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpxord zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpxorq zmm1{k1}{z},zmm2,zmm3
    vpxorq zmm30,zmm29,zmm28
    vpxorq zmm30{k7},zmm29,zmm28
    vpxorq zmm30{k7}{z},zmm29,zmm28
    vpxorq zmm30,zmm29,zword ptr [rcx]
    vpxorq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpxorq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpxorq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpxorq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpxorq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpxorq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpxorq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpxorq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpxorq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpxorq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpsraq xmm1{k1}{z},xmm2,xmm3
    vpsraq ymm1{k1}{z},ymm2,xmm3
    vpsraq zmm1{k1}{z},zmm2,xmm3
    vpsraq xmm1{k1}{z},xmm2,[rax]
    vpsraq ymm1{k1}{z},ymm2,[rax]
    vpsraq zmm1{k1}{z},zmm2,[rax]
    vpsraq xmm1{k1}{z},xmm2,7
    vpsraq ymm1{k1}{z},ymm2,7
    vpsraq zmm1{k1}{z},zmm2,7
    vpsraq xmm1{k1}{z},[rax],7
    vpsraq ymm1{k1}{z},[rax],7
    vpsraq zmm1{k1}{z},[rax],7
    vpsraq zmm30{k7},zmm29,xmm28
    vpsraq zmm30{k7}{z},zmm29,xmm28
    vpsraq zmm30{k7},zmm29,oword ptr [rcx]
    vpsraq zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123]
    vpsraq zmm30{k7},zmm29,oword ptr [rdx+0x7f0]
    vpsraq zmm30{k7},zmm29,oword ptr [rdx+0x800]
    vpsraq zmm30{k7},zmm29,oword ptr [rdx-0x800]
    vpsraq zmm30{k7},zmm29,oword ptr [rdx-0x810]

    vpsraq zmm30,zmm29,0xab
    vpsraq zmm30{k7},zmm29,0xab
    vpsraq zmm30{k7}{z},zmm29,0xab
    vpsraq zmm30,zmm29,0x7b
    vpsraq zmm30,zword ptr [rcx],0x7b
    vpsraq zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpsraq zmm30,qword ptr [rcx]{1to8},0x7b
    vpsraq zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpsraq zmm30,zword ptr [rdx+0x2000],0x7b
    vpsraq zmm30,zword ptr [rdx-0x2000],0x7b
    vpsraq zmm30,zword ptr [rdx-0x2040],0x7b
    vpsraq zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpsraq zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpsraq zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpsraq zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpconflictd zmm30,zmm1
    vpconflictd zmm30,zmm31
    vpconflictd zmm1,zmm31
    vpconflictd zmm3,zmm1
    vpconflictd xmm27,xmm3
    vpconflictd ymm27,ymm3

    vpconflictd zmm30,zmm29
    vpconflictd zmm30{k7},zmm29
    vpconflictd zmm30{k7}{z},zmm29
    vpconflictd zmm30,zword ptr [rcx]
    vpconflictd zmm30,zword ptr [rax+r14*8+0x123]
    vpconflictd zmm30,dword ptr [rcx]{1to16}
    vpconflictd zmm30,zword ptr [rdx+0x1fc0]
    vpconflictd zmm30,zword ptr [rdx+0x2000]
    vpconflictd zmm30,zword ptr [rdx-0x2000]
    vpconflictd zmm30,zword ptr [rdx-0x2040]
    vpconflictd zmm30,dword ptr [rdx+0x1fc]{1to16}
    vpconflictd zmm30,dword ptr [rdx+0x200]{1to16}
    vpconflictd zmm30,dword ptr [rdx-0x200]{1to16}
    vpconflictd zmm30,dword ptr [rdx-0x204]{1to16}
    vpconflictq zmm30,zmm29
    vpconflictq zmm30{k7},zmm29
    vpconflictq zmm30{k7}{z},zmm29
    vpconflictq zmm30,zword ptr [rcx]
    vpconflictq zmm30,zword ptr [rax+r14*8+0x123]
    vpconflictq zmm30,qword ptr [rcx]{1to8}
    vpconflictq zmm30,zword ptr [rdx+0x1fc0]
    vpconflictq zmm30,zword ptr [rdx+0x2000]
    vpconflictq zmm30,zword ptr [rdx-0x2000]
    vpconflictq zmm30,zword ptr [rdx-0x2040]
    vpconflictq zmm30,qword ptr [rdx+0x3f8]{1to8}
    vpconflictq zmm30,qword ptr [rdx+0x400]{1to8}
    vpconflictq zmm30,qword ptr [rdx-0x400]{1to8}
    vpconflictq zmm30,qword ptr [rdx-0x408]{1to8}

    vplzcntd	zmm30,zmm29
    vplzcntd	zmm30{k7},zmm29
    vplzcntd	zmm30{k7}{z},zmm29
    vplzcntd	zmm30,zword ptr [rcx]
    vplzcntd	zmm30,zword ptr [rax+r14*8+0x123]
    vplzcntd	zmm30,dword ptr [rcx]{1to16}
    vplzcntd	zmm30,zword ptr [rdx+0x1fc0]
    vplzcntd	zmm30,zword ptr [rdx+0x2000]
    vplzcntd	zmm30,zword ptr [rdx-0x2000]
    vplzcntd	zmm30,zword ptr [rdx-0x2040]
    vplzcntd	zmm30,dword ptr [rdx+0x1fc]{1to16}
    vplzcntd	zmm30,dword ptr [rdx+0x200]{1to16}
    vplzcntd	zmm30,dword ptr [rdx-0x200]{1to16}
    vplzcntd	zmm30,dword ptr [rdx-0x204]{1to16}
    vplzcntq	zmm30,zmm29
    vplzcntq	zmm30{k7},zmm29
    vplzcntq	zmm30{k7}{z},zmm29
    vplzcntq	zmm30,zword ptr [rcx]
    vplzcntq	zmm30,zword ptr [rax+r14*8+0x123]
    vplzcntq	zmm30,qword ptr [rcx]{1to8}
    vplzcntq	zmm30,zword ptr [rdx+0x1fc0]
    vplzcntq	zmm30,zword ptr [rdx+0x2000]
    vplzcntq	zmm30,zword ptr [rdx-0x2000]
    vplzcntq	zmm30,zword ptr [rdx-0x2040]
    vplzcntq	zmm30,qword ptr [rdx+0x3f8]{1to8}
    vplzcntq	zmm30,qword ptr [rdx+0x400]{1to8}
    vplzcntq	zmm30,qword ptr [rdx-0x400]{1to8}
    vplzcntq	zmm30,qword ptr [rdx-0x408]{1to8}

    vptestnmd	k5,zmm29,zmm28
    vptestnmd	k5{k7},zmm29,zmm28
    vptestnmd	k5,zmm29,zword ptr [rcx]
    vptestnmd	k5,zmm29,zword ptr [rax+r14*8+0x123]
    vptestnmd	k5,zmm29,dword ptr [rcx]{1to16}
    vptestnmd	k5,zmm29,zword ptr [rdx+0x1fc0]
    vptestnmd	k5,zmm29,zword ptr [rdx+0x2000]
    vptestnmd	k5,zmm29,zword ptr [rdx-0x2000]
    vptestnmd	k5,zmm29,zword ptr [rdx-0x2040]
    vptestnmd	k5,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vptestnmd	k5,zmm29,dword ptr [rdx+0x200]{1to16}
    vptestnmd	k5,zmm29,dword ptr [rdx-0x200]{1to16}
    vptestnmd	k5,zmm29,dword ptr [rdx-0x204]{1to16}
    vptestnmq	k5,zmm29,zmm28
    vptestnmq	k5{k7},zmm29,zmm28
    vptestnmq	k5,zmm29,zword ptr [rcx]
    vptestnmq	k5,zmm29,zword ptr [rax+r14*8+0x123]
    vptestnmq	k5,zmm29,qword ptr [rcx]{1to8}
    vptestnmq	k5,zmm29,zword ptr [rdx+0x1fc0]
    vptestnmq	k5,zmm29,zword ptr [rdx+0x2000]
    vptestnmq	k5,zmm29,zword ptr [rdx-0x2000]
    vptestnmq	k5,zmm29,zword ptr [rdx-0x2040]
    vptestnmq	k5,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vptestnmq	k5,zmm29,qword ptr [rdx+0x400]{1to8}
    vptestnmq	k5,zmm29,qword ptr [rdx-0x400]{1to8}
    vptestnmq	k5,zmm29,qword ptr [rdx-0x408]{1to8}

    vpbroadcastmw2d zmm30,k6
    vpbroadcastmb2q zmm30,k6

    kaddb	k1,k2,k3
    kaddw	k1,k2,k3
    kandb	k1,k2,k3
    kandw	k1,k2,k3
    kandnb	k1,k2,k3
    kandnw	k1,k2,k3
    korb	k1,k2,k3
    korw	k1,k2,k3
    kxorb	k1,k2,k3
    kxorw	k1,k2,k3
    kxnorb	k1,k2,k3
    kxnorw	k1,k2,k3

    kunpckbw	k1,k2,k3
    kunpckwd	k1,k2,k3

    kaddd	k1,k2,k3
    kaddq	k1,k2,k3
    kandd	k1,k2,k3
    kandq	k1,k2,k3
    kandnd	k1,k2,k3
    kandnq	k1,k2,k3
    kord	k1,k2,k3
    korq	k1,k2,k3
    kxord	k1,k2,k3
    kxorq	k1,k2,k3
    kxnord	k1,k2,k3
    kxnorq	k1,k2,k3
    kunpckdq	k1,k2,k3

    knotb	k1,k2
    knotw	k1,k2
    knotd	k1,k2
    knotq	k1,k2

    kortestb	k1,k2
    kortestw	k1,k2
    kortestd	k1,k2
    kortestq	k1,k2
    kshiftlb	k1,k2,3
    kshiftlw	k1,k2,3
    kshiftld	k1,k2,3
    kshiftlq	k1,k2,3
    kshiftrb	k1,k2,3
    kshiftrw	k1,k2,3
    kshiftrd	k1,k2,3
    kshiftrq	k1,k2,3

    kmovb k1,k2
    kmovd k1,k2
    kmovq k1,k2
    kmovw k1,k2
    kmovb k1,[rax]
    kmovd k1,[rax]
    kmovq k1,[rax]
    kmovw k1,[rax]
    kmovb [rax],k2
    kmovd [rax],k2
    kmovq [rax],k2
    kmovw [rax],k2

    kandw  k5,k6,k7
    kandnw k5,k6,k7
    korw   k5,k6,k7
    kxnorw k5,k6,k7
    kxorw  k5,k6,k7
    knotw  k5,k6

    kortestw k5,k6
    kshiftrw k5,k6,0xab
    kshiftrw k5,k6,0x7b
    kshiftlw k5,k6,0xab
    kshiftlw k5,k6,0x7b

    kmovw  k5,k6
    kmovw  k5,word ptr [rcx]
    kmovw  k5,word ptr [rax+r14*8+0x123]
    kmovw  word ptr [rcx],k5
    kmovw  word ptr [rax+r14*8+0x123],k5
    kmovw  k5,eax
    kmovw  k5,ebp
    kmovw  k5,r13d
    kmovw  eax,k5
    kmovw  ebp,k5
    kmovw  r13d,k5
    kunpckbw k5,k6,k7

    vexp2ps zmm30,zmm29
    vexp2ps zmm30,zword ptr [rcx]
    vexp2ps zmm30,zword ptr [rax+r14*8+0x123]
    vexp2ps zmm30,dword ptr [rcx]{1to16}
    vexp2ps zmm30,zword ptr [rdx+0x1fc0]
    vexp2ps zmm30,zword ptr [rdx+0x2000]
    vexp2ps zmm30,zword ptr [rdx-0x2000]
    vexp2ps zmm30,zword ptr [rdx-0x2040]
    vexp2ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vexp2ps zmm30,dword ptr [rdx+0x200]{1to16}
    vexp2ps zmm30,dword ptr [rdx-0x200]{1to16}
    vexp2ps zmm30,dword ptr [rdx-0x204]{1to16}

    vexp2pd zmm30,zmm29
    vexp2pd zmm30,zword ptr [rcx]
    vexp2pd zmm30,zword ptr [rax+r14*8+0x123]
    vexp2pd zmm30,qword ptr [rcx]{1to8}
    vexp2pd zmm30,zword ptr [rdx+0x1fc0]
    vexp2pd zmm30,zword ptr [rdx+0x2000]
    vexp2pd zmm30,zword ptr [rdx-0x2000]
    vexp2pd zmm30,zword ptr [rdx-0x2040]
    vexp2pd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vexp2pd zmm30,qword ptr [rdx+0x400]{1to8}
    vexp2pd zmm30,qword ptr [rdx-0x400]{1to8}
    vexp2pd zmm30,qword ptr [rdx-0x408]{1to8}

    vrcp28ps zmm30,zmm29
    vrcp28ps zmm30{k7},zmm29
    vrcp28ps zmm30{k7}{z},zmm29
    vrcp28ps zmm30,zword ptr [rcx]
    vrcp28ps zmm30,zword ptr [rax+r14*8+0x123]
    vrcp28ps zmm30,dword ptr [rcx]{1to16}
    vrcp28ps zmm30,zword ptr [rdx+0x1fc0]
    vrcp28ps zmm30,zword ptr [rdx+0x2000]
    vrcp28ps zmm30,zword ptr [rdx-0x2000]
    vrcp28ps zmm30,zword ptr [rdx-0x2040]
    vrcp28ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vrcp28ps zmm30,dword ptr [rdx+0x200]{1to16}
    vrcp28ps zmm30,dword ptr [rdx-0x200]{1to16}
    vrcp28ps zmm30,dword ptr [rdx-0x204]{1to16}
    vrcp28pd zmm30,zmm29
    vrcp28pd zmm30{k7},zmm29
    vrcp28pd zmm30{k7}{z},zmm29
    vrcp28pd zmm30,zword ptr [rcx]
    vrcp28pd zmm30,zword ptr [rax+r14*8+0x123]
    vrcp28pd zmm30,qword ptr [rcx]{1to8}
    vrcp28pd zmm30,zword ptr [rdx+0x1fc0]
    vrcp28pd zmm30,zword ptr [rdx+0x2000]
    vrcp28pd zmm30,zword ptr [rdx-0x2000]
    vrcp28pd zmm30,zword ptr [rdx-0x2040]
    vrcp28pd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vrcp28pd zmm30,qword ptr [rdx+0x400]{1to8}
    vrcp28pd zmm30,qword ptr [rdx-0x400]{1to8}
    vrcp28pd zmm30,qword ptr [rdx-0x408]{1to8}

    vrcp28ss xmm30{k7},xmm29,xmm28
    vrcp28ss xmm30{k7}{z},xmm29,xmm28
    vrcp28ss xmm30{k7},xmm29,dword ptr [rcx]
    vrcp28ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vrcp28ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vrcp28ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vrcp28ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vrcp28ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vrcp28sd xmm30{k7},xmm29,xmm28
    vrcp28sd xmm30{k7}{z},xmm29,xmm28
    vrcp28sd xmm30{k7},xmm29,qword ptr [rcx]
    vrcp28sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vrcp28sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vrcp28sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vrcp28sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vrcp28sd xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vrsqrt28ps zmm30,zmm29
    vrsqrt28ps zmm30{k7},zmm29
    vrsqrt28ps zmm30{k7}{z},zmm29
    vrsqrt28ps zmm30,zword ptr [rcx]
    vrsqrt28ps zmm30,zword ptr [rax+r14*8+0x123]
    vrsqrt28ps zmm30,dword ptr [rcx]{1to16}
    vrsqrt28ps zmm30,zword ptr [rdx+0x1fc0]
    vrsqrt28ps zmm30,zword ptr [rdx+0x2000]
    vrsqrt28ps zmm30,zword ptr [rdx-0x2000]
    vrsqrt28ps zmm30,zword ptr [rdx-0x2040]
    vrsqrt28ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vrsqrt28ps zmm30,dword ptr [rdx+0x200]{1to16}
    vrsqrt28ps zmm30,dword ptr [rdx-0x200]{1to16}
    vrsqrt28ps zmm30,dword ptr [rdx-0x204]{1to16}
    vrsqrt28pd zmm30,zmm29
    vrsqrt28pd zmm30{k7},zmm29
    vrsqrt28pd zmm30{k7}{z},zmm29
    vrsqrt28pd zmm30,zword ptr [rcx]
    vrsqrt28pd zmm30,zword ptr [rax+r14*8+0x123]
    vrsqrt28pd zmm30,qword ptr [rcx]{1to8}
    vrsqrt28pd zmm30,zword ptr [rdx+0x1fc0]
    vrsqrt28pd zmm30,zword ptr [rdx+0x2000]
    vrsqrt28pd zmm30,zword ptr [rdx-0x2000]
    vrsqrt28pd zmm30,zword ptr [rdx-0x2040]
    vrsqrt28pd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vrsqrt28pd zmm30,qword ptr [rdx+0x400]{1to8}
    vrsqrt28pd zmm30,qword ptr [rdx-0x400]{1to8}
    vrsqrt28pd zmm30,qword ptr [rdx-0x408]{1to8}
    vrsqrt28ss xmm30{k7},xmm29,xmm28
    vrsqrt28ss xmm30{k7}{z},xmm29,xmm28
    vrsqrt28ss xmm30{k7},xmm29,dword ptr [rcx]
    vrsqrt28ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vrsqrt28ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vrsqrt28ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vrsqrt28ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vrsqrt28ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vrsqrt28sd xmm30{k7},xmm29,xmm28
    vrsqrt28sd xmm30{k7}{z},xmm29,xmm28
    vrsqrt28sd xmm30{k7},xmm29,qword ptr [rcx]
    vrsqrt28sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vrsqrt28sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vrsqrt28sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vrsqrt28sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vrsqrt28sd xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vrsqrt14ps zmm1,zmm2
    vrsqrt14ps zmm1,[rax]
    vrsqrt14ps zmm30,zmm29
    vrsqrt14ps zmm30{k7},zmm29
    vrsqrt14ps zmm30{k7}{z},zmm29
    vrsqrt14ps zmm30,zword ptr [rcx]
    vrsqrt14ps zmm30,zword ptr [rax+r14*8+0x123]
    vrsqrt14ps zmm30,dword ptr [rcx]{1to16}
    vrsqrt14ps zmm30,zword ptr [rdx+0x1fc0]
    vrsqrt14ps zmm30,zword ptr [rdx+0x2000]
    vrsqrt14ps zmm30,zword ptr [rdx-0x2000]
    vrsqrt14ps zmm30,zword ptr [rdx-0x2040]
    vrsqrt14ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vrsqrt14ps zmm30,dword ptr [rdx+0x200]{1to16}
    vrsqrt14ps zmm30,dword ptr [rdx-0x200]{1to16}
    vrsqrt14ps zmm30,dword ptr [rdx-0x204]{1to16}

    vrsqrt14pd zmm30,zmm29
    vrsqrt14pd zmm30{k7},zmm29
    vrsqrt14pd zmm30{k7}{z},zmm29
    vrsqrt14pd zmm30,zword ptr [rcx]
    vrsqrt14pd zmm30,zword ptr [rax+r14*8+0x123]
    vrsqrt14pd zmm30,qword ptr [rcx]{1to8}
    vrsqrt14pd zmm30,zword ptr [rdx+0x1fc0]
    vrsqrt14pd zmm30,zword ptr [rdx+0x2000]
    vrsqrt14pd zmm30,zword ptr [rdx-0x2000]
    vrsqrt14pd zmm30,zword ptr [rdx-0x2040]
    vrsqrt14pd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vrsqrt14pd zmm30,qword ptr [rdx+0x400]{1to8}
    vrsqrt14pd zmm30,qword ptr [rdx-0x400]{1to8}
    vrsqrt14pd zmm30,qword ptr [rdx-0x408]{1to8}

    vrsqrt14ps zmm30,zmm29
    vrsqrt14ps zmm30{k7},zmm29
    vrsqrt14ps zmm30{k7}{z},zmm29
    vrsqrt14ps zmm30,zword ptr [rcx]
    vrsqrt14ps zmm30,zword ptr [rax+r14*8+0x123]
    vrsqrt14ps zmm30,dword ptr [rcx]{1to16}
    vrsqrt14ps zmm30,zword ptr [rdx+0x1fc0]
    vrsqrt14ps zmm30,zword ptr [rdx+0x2000]
    vrsqrt14ps zmm30,zword ptr [rdx-0x2000]
    vrsqrt14ps zmm30,zword ptr [rdx-0x2040]
    vrsqrt14ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vrsqrt14ps zmm30,dword ptr [rdx+0x200]{1to16}
    vrsqrt14ps zmm30,dword ptr [rdx-0x200]{1to16}
    vrsqrt14ps zmm30,dword ptr [rdx-0x204]{1to16}

    vrsqrt14sd xmm30{k7},xmm29,xmm28
    vrsqrt14sd xmm30{k7}{z},xmm29,xmm28
    vrsqrt14sd xmm30{k7},xmm29,qword ptr [rcx]
    vrsqrt14sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vrsqrt14sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vrsqrt14sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vrsqrt14sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vrsqrt14sd xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vrsqrt14ss xmm1,xmm2,xmm3
    vrsqrt14ss xmm1,xmm2,[rax]
    vrsqrt14ss xmm30,xmm29,xmm3
    vrsqrt14ss xmm30{k7},xmm29,xmm3
    vrsqrt14ss xmm30{k7}{z},xmm29,xmm3
    vrsqrt14ss xmm30,xmm3,dword ptr [rcx]
    vrsqrt14ss xmm30,xmm3,dword ptr [rax+r14*8+0x123]
    vrsqrt14ss xmm30,xmm3,dword ptr [rcx]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx+0x1fc0]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx+0x2000]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx-0x2000]
    ;vrsqrt14ss xmm30,xmm3,xmmword ptr [rdx-0x2040]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx+0x1fc]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx+0x200]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx-0x200]
    vrsqrt14ss xmm30,xmm3,dword ptr [rdx-0x204]
    vrsqrt14ss xmm30{k7},xmm29,xmm28
    vrsqrt14ss xmm30{k7}{z},xmm29,xmm28
    vrsqrt14ss xmm30{k7},xmm29,dword ptr [rcx]
    vrsqrt14ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vrsqrt14ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vrsqrt14ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vrsqrt14ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vrsqrt14ss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vmovdqa32 xmm1{k1}{z},xmm2
    vmovdqa32 xmm2{k1}{z},xmm1
    vmovdqa32 ymm1{k1}{z},ymm2
    vmovdqa32 ymm2{k1}{z},ymm1
    vmovdqa32 zmm1{k1}{z},zmm2
    vmovdqa32 zmm2{k1}{z},zmm1

    vmovdqa32 xmm1{k1}{z},[rcx]
    vmovdqa32 [rcx], xmm1
    vmovdqa32 ymm1{k1}{z},[rcx]
    vmovdqa32 [rcx],ymm1
    vmovdqa32 zmm1{k1}{z},[rcx]
    vmovdqa32 [rcx], zmm1

    vmovdqa64 xmm1{k1}{z},xmm2
    vmovdqa64 xmm2{k1}{z},xmm1
    vmovdqa64 ymm1{k1}{z},ymm2
    vmovdqa64 ymm2{k1}{z},ymm1
    vmovdqa64 zmm1{k1}{z},zmm2
    vmovdqa64 zmm2{k1}{z},zmm1

    vmovdqa64 xmm1{k1}{z},[rcx]
    vmovdqa64 [rcx], xmm1
    vmovdqa64 ymm1{k1}{z},[rcx]
    vmovdqa64 [rcx],ymm1
    vmovdqa64 zmm1{k1}{z},[rcx]
    vmovdqa64 [rcx], zmm1

    vmovdqa32 zmm30,zmm29
    vmovdqa32 zmm30{k7},zmm29
    vmovdqa32 zmm30{k7}{z},zmm29
    vmovdqa32 zmm30,zword ptr [rcx]
    vmovdqa32 zmm30,zword ptr [rax+r14*8+0x123]
    vmovdqa32 zmm30,zword ptr [rdx+0x1fc0]
    vmovdqa32 zmm30,zword ptr [rdx+0x2000]
    vmovdqa32 zmm30,zword ptr [rdx-0x2000]
    vmovdqa32 zmm30,zword ptr [rdx-0x2040]
    vmovdqa64 zmm30,zmm29
    vmovdqa64 zmm30{k7},zmm29
    vmovdqa64 zmm30{k7}{z},zmm29
    vmovdqa64 zmm30,zword ptr [rcx]
    vmovdqa64 zmm30,zword ptr [rax+r14*8+0x123]
    vmovdqa64 zmm30,zword ptr [rdx+0x1fc0]
    vmovdqa64 zmm30,zword ptr [rdx+0x2000]
    vmovdqa64 zmm30,zword ptr [rdx-0x2000]
    vmovdqa64 zmm30,zword ptr [rdx-0x2040]
    vmovdqu32 zmm30,zmm29
    vmovdqu32 zmm30{k7},zmm29
    vmovdqu32 zmm30{k7}{z},zmm29
    vmovdqu32 zmm30,zword ptr [rcx]
    vmovdqu32 zmm30,zword ptr [rax+r14*8+0x123]
    vmovdqu32 zmm30,zword ptr [rdx+0x1fc0]
    vmovdqu32 zmm30,zword ptr [rdx+0x2000]
    vmovdqu32 zmm30,zword ptr [rdx-0x2000]
    vmovdqu32 zmm30,zword ptr [rdx-0x2040]
    vmovdqu64 zmm30,zmm29
    vmovdqu64 zmm30{k7},zmm29
    vmovdqu64 zmm30{k7}{z},zmm29
    vmovdqu64 zmm30,zword ptr [rcx]
    vmovdqu64 zmm30,zword ptr [rax+r14*8+0x123]
    vmovdqu64 zmm30,zword ptr [rdx+0x1fc0]
    vmovdqu64 zmm30,zword ptr [rdx+0x2000]
    vmovdqu64 zmm30,zword ptr [rdx-0x2000]
    vmovdqu64 zmm30,zword ptr [rdx-0x2040]

    vmovdqa32 zword ptr [rcx],zmm30
    vmovdqa32 zword ptr [rcx]{k7},zmm30
    vmovdqa32 zword ptr [rax+r14*8+0x123],zmm30
    vmovdqa32 zword ptr [rdx+0x1fc0],zmm30
    vmovdqa32 zword ptr [rdx+0x2000],zmm30
    vmovdqa32 zword ptr [rdx-0x2000],zmm30
    vmovdqa32 zword ptr [rdx-0x2040],zmm30
    vmovdqa64 zword ptr [rcx],zmm30
    vmovdqa64 zword ptr [rcx]{k7},zmm30
    vmovdqa64 zword ptr [rax+r14*8+0x123],zmm30
    vmovdqa64 zword ptr [rdx+0x1fc0],zmm30
    vmovdqa64 zword ptr [rdx+0x2000],zmm30
    vmovdqa64 zword ptr [rdx-0x2000],zmm30
    vmovdqa64 zword ptr [rdx-0x2040],zmm30
    vmovdqu32 zword ptr [rcx],zmm30
    vmovdqu32 zword ptr [rcx]{k7},zmm30
    vmovdqu32 zword ptr [rax+r14*8+0x123],zmm30
    vmovdqu32 zword ptr [rdx+0x1fc0],zmm30
    vmovdqu32 zword ptr [rdx+0x2000],zmm30
    vmovdqu32 zword ptr [rdx-0x2000],zmm30
    vmovdqu32 zword ptr [rdx-0x2040],zmm30
    vmovdqu64 zword ptr [rcx],zmm30
    vmovdqu64 zword ptr [rcx]{k7},zmm30
    vmovdqu64 zword ptr [rax+r14*8+0x123],zmm30
    vmovdqu64 zword ptr [rdx+0x1fc0],zmm30
    vmovdqu64 zword ptr [rdx+0x2000],zmm30
    vmovdqu64 zword ptr [rdx-0x2000],zmm30
    vmovdqu64 zword ptr [rdx-0x2040],zmm30

    vmovdqu8 xmm1{k1}{z},xmm2
    vmovdqu8 xmm2{k1}{z},xmm1
    vmovdqu8 ymm1{k1}{z},ymm2
    vmovdqu8 ymm2{k1}{z},ymm1
    vmovdqu8 zmm1{k1}{z},zmm2
    vmovdqu8 zmm2{k1}{z},zmm1

    vmovdqu8 xmm1{k1}{z},[rax]
    vmovdqu8 [rax],xmm1
    vmovdqu8 ymm1{k1}{z},[rax]
    vmovdqu8 [rax],ymm1
    vmovdqu8 zmm1{k1}{z},[rax]
    vmovdqu8 [rax],zmm1

    vmovdqu16 xmm1{k1}{z},xmm2
    vmovdqu16 xmm2{k1}{z},xmm1
    vmovdqu16 ymm1{k1}{z},ymm2
    vmovdqu16 ymm2{k1}{z},ymm1
    vmovdqu16 zmm1{k1}{z},zmm2
    vmovdqu16 zmm2{k1}{z},zmm1

    vmovdqu16 xmm1{k1}{z},[rax]
    vmovdqu16 [rax],xmm1
    vmovdqu16 ymm1{k1}{z},[rax]
    vmovdqu16 [rax],ymm1
    vmovdqu16 zmm1{k1}{z},[rax]
    vmovdqu16 [rax],zmm1

    vmovdqu32 xmm1{k1}{z},xmm2
    vmovdqu32 xmm2{k1}{z},xmm1
    vmovdqu32 ymm1{k1}{z},ymm2
    vmovdqu32 ymm2{k1}{z},ymm1
    vmovdqu32 zmm1{k1}{z},zmm2
    vmovdqu32 zmm2{k1}{z},zmm1

    vmovdqu32 xmm1{k1}{z},[rax]
    vmovdqu32 [rax],xmm1
    vmovdqu32 ymm1{k1}{z},[rax]
    vmovdqu32 [rax],ymm1
    vmovdqu32 zmm1{k1}{z},[rax]
    vmovdqu32 [rax],zmm1

    vmovdqu64 xmm1{k1}{z},xmm2
    vmovdqu64 xmm2{k1}{z},xmm1
    vmovdqu64 ymm1{k1}{z},ymm2
    vmovdqu64 ymm2{k1}{z},ymm1
    vmovdqu64 zmm1{k1}{z},zmm2
    vmovdqu64 zmm2{k1}{z},zmm1

    vmovdqu64 xmm1{k1}{z},[rax]
    vmovdqu64 [rax],xmm1
    vmovdqu64 ymm1{k1}{z},[rax]
    vmovdqu64 [rax],ymm1
    vmovdqu64 zmm1{k1}{z},[rax]
    vmovdqu64 [rax],zmm1

    vbroadcastf32x2 ymm1{k1}{z},xmm2
    vbroadcastf32x2 zmm1{k1}{z},xmm2
    vbroadcastf32x2 ymm1,[rax]
    vbroadcastf32x2 zmm1,[rax]
    vbroadcastf32x2 ymm1,qword ptr [rax]
    vbroadcastf32x2 zmm1,qword ptr [rax]

    vbroadcastf32x4 ymm1{k1}{z},[rax]
    vbroadcastf32x4 zmm1{k1}{z},[rax]
    vbroadcastf32x8 zmm1{k1}{z},[rax]
    vbroadcastf64x2 ymm1{k1}{z},[rax]
    vbroadcastf64x2 zmm1{k1}{z},[rax]
    vbroadcastf64x4 zmm1{k1}{z},[rax]

    vbroadcastf32x4 ymm1,oword ptr [rax]
    vbroadcastf32x4 zmm1,oword ptr [rax]
    vbroadcastf32x8 zmm1,yword ptr [rax]
    vbroadcastf64x2 ymm1,oword ptr [rax]
    vbroadcastf64x2 zmm1,oword ptr [rax]
    vbroadcastf64x4 zmm1,yword ptr [rax]

    vcompresspd xmm1,xmm2
    vcompresspd [rcx],xmm2
    vcompresspd ymm1,ymm2
    vcompresspd [rcx],ymm2
    vcompressps zmm1,zmm2
    vcompressps [rcx],zmm2

    vcompresspd zmm1,zmm2
    vcompresspd [rcx],zmm2
    vcompresspd zword ptr [rcx],zmm30
    vcompresspd zword ptr [rcx]{k7},zmm30
    vcompresspd zword ptr [rax+r14*8+0x123],zmm30
    vcompresspd zword ptr [rdx+0x3f8],zmm30
    vcompresspd zword ptr [rdx+0x400],zmm30
    vcompresspd zword ptr [rdx-0x400],zmm30
    vcompresspd zword ptr [rdx-0x408],zmm30
    vcompresspd zmm30,zmm29
    vcompresspd zmm30{k7},zmm29
    vcompresspd zmm30{k7}{z},zmm29

    vcompressps zword ptr [rcx],zmm30
    vcompressps zword ptr [rcx]{k7},zmm30
    vcompressps zword ptr [rax+r14*8+0x123],zmm30
    vcompressps zword ptr [rdx+0x1fc],zmm30
    vcompressps zword ptr [rdx+0x200],zmm30
    vcompressps zword ptr [rdx-0x200],zmm30
    vcompressps zword ptr [rdx-0x204],zmm30
    vcompressps zmm30,zmm29
    vcompressps zmm30{k7},zmm29
    vcompressps zmm30{k7}{z},zmm29

    vcvtpd2qq xmm1{k1}{z},xmm2
    vcvtpd2qq ymm1{k1}{z},ymm2
    vcvtpd2qq zmm1{k1}{z},zmm2
    vcvtpd2qq xmm1,[rax]
    vcvtpd2qq ymm1,[rax]
    vcvtpd2qq zmm1,[rax]
    vcvtpd2qq xmm1,oword ptr [rax]
    vcvtpd2qq ymm1,yword ptr [rax]
    vcvtpd2qq zmm1,zword ptr [rax]

    vcvtpd2qq xmm16,xmm20
    vcvtpd2qq ymm16,ymm20
    vcvtpd2qq zmm16,zmm20

    vcvtps2qq xmm1{k1}{z},xmm2
    vcvtps2qq ymm1{k1}{z},xmm2
    vcvtps2qq zmm1{k1}{z},ymm2
    vcvtps2qq xmm1,[rax]
    vcvtps2qq ymm1,[rax]
    vcvtps2qq zmm1,[rax]
    vcvtps2qq xmm1,qword ptr [rax]
    vcvtps2qq ymm1,oword ptr [rax]
    vcvtps2qq zmm1,yword ptr [rax]

    vcvtps2qq xmm16,[rax]
    vcvtps2qq ymm16,[rax]
    vcvtps2qq zmm16,[rax]

    vcvtpd2udq xmm1{k1}{z},xmm2
    vcvtpd2udq xmm1{k1}{z},ymm2
    vcvtpd2udq ymm1{k1}{z},zmm2
    vcvtpd2udq xmm1,oword ptr [rax]
    vcvtpd2udq xmm1,yword ptr [rax]
    vcvtpd2udq ymm1,zword ptr [rax]

    vcvtpd2udq ymm30{k7},zmm29
    vcvtpd2udq ymm30{k7}{z},zmm29
    vcvtpd2udq ymm30{k7},zmm29,{rn-sae}
    vcvtpd2udq ymm30{k7},zmm29,{ru-sae}
    vcvtpd2udq ymm30{k7},zmm29,{rd-sae}
    vcvtpd2udq ymm30{k7},zmm29,{rz-sae}
    vcvtpd2udq ymm30{k7},zword ptr [rcx]
    vcvtpd2udq ymm30{k7},zword ptr [rax+r14*8+0x123]
    vcvtpd2udq ymm30{k7},qword ptr [rcx]{1to8}
    vcvtpd2udq ymm30{k7},zword ptr [rdx+0x1fc0]
    vcvtpd2udq ymm30{k7},zword ptr [rdx+0x2000]
    vcvtpd2udq ymm30{k7},zword ptr [rdx-0x2000]
    vcvtpd2udq ymm30{k7},zword ptr [rdx-0x2040]
    vcvtpd2udq ymm30{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvtpd2udq ymm30{k7},qword ptr [rdx+0x400]{1to8}
    vcvtpd2udq ymm30{k7},qword ptr [rdx-0x400]{1to8}
    vcvtpd2udq ymm30{k7},qword ptr [rdx-0x408]{1to8}

    vcvtps2udq xmm1{k1}{z},xmm2
    vcvtps2udq ymm1{k1}{z},ymm2
    vcvtps2udq zmm1{k1}{z},zmm2
    vcvtps2udq xmm1,[rax]
    vcvtps2udq ymm1,[rax]
    vcvtps2udq zmm1,[rax]
    vcvtps2udq zmm30,zmm29
    vcvtps2udq zmm30{k7},zmm29
    vcvtps2udq zmm30{k7}{z},zmm29
    vcvtps2udq zmm30,zmm29,{rn-sae}
    vcvtps2udq zmm30,zmm29,{ru-sae}
    vcvtps2udq zmm30,zmm29,{rd-sae}
    vcvtps2udq zmm30,zmm29,{rz-sae}
    vcvtps2udq zmm30,zword ptr [rcx]
    vcvtps2udq zmm30,zword ptr [rax+r14*8+0x123]
    vcvtps2udq zmm30,dword ptr [rcx]{1to16}
    vcvtps2udq zmm30,zword ptr [rdx+0x1fc0]
    vcvtps2udq zmm30,zword ptr [rdx+0x2000]
    vcvtps2udq zmm30,zword ptr [rdx-0x2000]
    vcvtps2udq zmm30,zword ptr [rdx-0x2040]
    vcvtps2udq zmm30,dword ptr [rdx+0x1fc]{1to16}
    vcvtps2udq zmm30,dword ptr [rdx+0x200]{1to16}
    vcvtps2udq zmm30,dword ptr [rdx-0x200]{1to16}
    vcvtps2udq zmm30,dword ptr [rdx-0x204]{1to16}

    vcvtpd2uqq xmm1 {k1}{z}, xmm2
    vcvtpd2uqq ymm1 {k1}{z}, ymm2
    vcvtpd2uqq zmm1 {k1}{z}, zmm2
    vcvtpd2uqq xmm1, oword ptr [rax]
    vcvtpd2uqq ymm1, yword ptr [rax]
    vcvtpd2uqq zmm1, zword ptr [rax]
    vcvtpd2uqq xmm1, [rax]
    vcvtpd2uqq ymm1, [rax]
    vcvtpd2uqq zmm1, [rax]

    vcvtps2uqq xmm1 {k1}{z}, xmm2
    vcvtps2uqq ymm1 {k1}{z}, xmm2
    vcvtps2uqq zmm1 {k1}{z}, ymm2
    vcvtps2uqq xmm1, qword ptr [rax]
    vcvtps2uqq ymm1, oword ptr [rax]
    vcvtps2uqq zmm1, yword ptr [rax]
    vcvtps2uqq xmm1, [rax]
    vcvtps2uqq ymm1, [rax]
    vcvtps2uqq zmm1, [rax]

    vcvtph2ps xmm1{k1}{z},xmm2 ; vex
    vcvtph2ps ymm1{k1}{z},xmm2
    vcvtph2ps zmm1{k1}{z},ymm2 ; evex
    vcvtph2ps xmm1,qword ptr [rax]
    vcvtph2ps ymm1,oword ptr [rax]
    vcvtph2ps zmm1,yword ptr [rax]
    vcvtph2ps xmm1,[rax]
    vcvtph2ps ymm1,[rax]
    vcvtph2ps zmm1,[rax]

    vcvtph2ps zmm30{k7},ymm29
    vcvtph2ps zmm30{k7}{z},ymm29
    vcvtph2ps zmm30{k7},ymm29,{sae}
    vcvtph2ps zmm30{k7},yword ptr [rcx]
    vcvtph2ps zmm30{k7},yword ptr [rax+r14*8+0x123]
    vcvtph2ps zmm30{k7},yword ptr [rdx+0xfe0]
    vcvtph2ps zmm30{k7},yword ptr [rdx+0x1000]
    vcvtph2ps zmm30{k7},yword ptr [rdx-0x1000]
    vcvtph2ps zmm30{k7},yword ptr [rdx-0x1020]

    vcvtps2ph xmm1{k1}{z},ymm2,3
    vcvtps2ph xmm1{k1}{z},xmm2,3
    vcvtps2ph ymm1{k1}{z},zmm2,3
    vcvtps2ph qword ptr [rax],xmm2,3
    vcvtps2ph oword ptr [rax],ymm2,3
    vcvtps2ph yword ptr [rax],zmm2,3
    vcvtps2ph [rax],ymm2,3
    vcvtps2ph [rax],xmm2,3
    vcvtps2ph [rax],zmm2,3
    vcvtps2ph ymm30{k7},zmm29,0xab
    vcvtps2ph ymm30{k7}{z},zmm29,0xab
    vcvtps2ph ymm30{k7},zmm29,{sae},0xab
    vcvtps2ph ymm30{k7},zmm29,0x7b
    vcvtps2ph ymm30{k7},zmm29,{sae},0x7b

    vcvtps2ph yword ptr [rcx],zmm30,0xab
    vcvtps2ph yword ptr [rcx]{k7},zmm30,0xab
    vcvtps2ph yword ptr [rcx],zmm30,0x7b
    vcvtps2ph yword ptr [rax+r14*8+0x123],zmm30,0x7b
    vcvtps2ph yword ptr [rdx+0xfe0],zmm30,0x7b
    vcvtps2ph yword ptr [rdx+0x1000],zmm30,0x7b
    vcvtps2ph yword ptr [rdx-0x1000],zmm30,0x7b
    vcvtps2ph yword ptr [rdx-0x1020],zmm30,0x7b

    vcvtqq2pd xmm1{k1}{z},xmm2
    vcvtqq2pd ymm1{k1}{z},ymm2
    vcvtqq2pd zmm1{k1}{z},zmm2
    vcvtqq2pd xmm1,oword ptr [rax]
    vcvtqq2pd ymm1,yword ptr [rax]
    vcvtqq2pd zmm1,zword ptr [rax]
    vcvtqq2pd xmm1,[rax]
    vcvtqq2pd ymm1,[rax]
    vcvtqq2pd zmm1,[rax]

    vcvtqq2ps xmm1{k1}{z},xmm2
    vcvtqq2ps xmm1{k1}{z},ymm2
    vcvtqq2ps ymm1{k1}{z},zmm2
    vcvtqq2ps xmm1,oword ptr [rax]
    vcvtqq2ps xmm1,yword ptr [rax]
    vcvtqq2ps ymm1,zword ptr [rax]

    vcvttpd2qq xmm1{k1}{z},xmm2
    vcvttpd2qq ymm1{k1}{z},ymm2
    vcvttpd2qq zmm1{k1}{z},zmm2
    vcvttpd2qq xmm1,[rax]
    vcvttpd2qq ymm1,[rax]
    vcvttpd2qq zmm1,[rax]

    vcvttps2qq xmm1{k1}{z},xmm2
    vcvttps2qq ymm1{k1}{z},xmm2
    vcvttps2qq zmm1{k1}{z},ymm2
    vcvttps2qq xmm1,qword ptr [rax]
    vcvttps2qq ymm1,oword ptr [rax]
    vcvttps2qq zmm1,yword ptr [rax]

    vcvttps2udq xmm1{k1}{z},xmm2
    vcvttps2udq ymm1{k1}{z},ymm2
    vcvttps2udq zmm1{k1}{z},zmm2
    vcvttps2udq xmm1,[rax]
    vcvttps2udq ymm1,[rax]
    vcvttps2udq zmm1,[rax]

    vcvttpd2udq xmm1{k1}{z},xmm2
    vcvttpd2udq xmm1{k1}{z},ymm2
    vcvttpd2udq ymm1{k1}{z},zmm2
    vcvttpd2udq xmm1,oword ptr [rax]
    vcvttpd2udq xmm1,yword ptr [rax]
    vcvttpd2udq ymm1,zword ptr [rax]

    vcvttpd2udq ymm30{k7},zmm29
    vcvttpd2udq ymm30{k7}{z},zmm29
    vcvttpd2udq ymm30{k7},zmm29,{sae}
    vcvttpd2udq ymm30{k7},zword ptr [rcx]
    vcvttpd2udq ymm30{k7},zword ptr [rax+r14*8+0x123]
    vcvttpd2udq ymm30{k7},qword ptr [rcx]{1to8}
    vcvttpd2udq ymm30{k7},zword ptr [rdx+0x1fc0]
    vcvttpd2udq ymm30{k7},zword ptr [rdx+0x2000]
    vcvttpd2udq ymm30{k7},zword ptr [rdx-0x2000]
    vcvttpd2udq ymm30{k7},zword ptr [rdx-0x2040]
    vcvttpd2udq ymm30{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvttpd2udq ymm30{k7},qword ptr [rdx+0x400]{1to8}
    vcvttpd2udq ymm30{k7},qword ptr [rdx-0x400]{1to8}
    vcvttpd2udq ymm30{k7},qword ptr [rdx-0x408]{1to8}
    vcvttps2udq zmm30,zmm29
    vcvttps2udq zmm30{k7},zmm29
    vcvttps2udq zmm30{k7}{z},zmm29
    vcvttps2udq zmm30,zmm29,{sae}
    vcvttps2udq zmm30,zword ptr [rcx]
    vcvttps2udq zmm30,zword ptr [rax+r14*8+0x123]
    vcvttps2udq zmm30,dword ptr [rcx]{1to16}
    vcvttps2udq zmm30,zword ptr [rdx+0x1fc0]
    vcvttps2udq zmm30,zword ptr [rdx+0x2000]
    vcvttps2udq zmm30,zword ptr [rdx-0x2000]
    vcvttps2udq zmm30,zword ptr [rdx-0x2040]
    vcvttps2udq zmm30,dword ptr [rdx+0x1fc]{1to16}
    vcvttps2udq zmm30,dword ptr [rdx+0x200]{1to16}
    vcvttps2udq zmm30,dword ptr [rdx-0x200]{1to16}
    vcvttps2udq zmm30,dword ptr [rdx-0x204]{1to16}

    vcvttpd2uqq xmm1{k1}{z},xmm2
    vcvttpd2uqq ymm1{k1}{z},ymm2
    vcvttpd2uqq zmm1{k1}{z},zmm2
    vcvttpd2uqq xmm1,[rax]
    vcvttpd2uqq ymm1,[rax]
    vcvttpd2uqq zmm1,[rax]

    vcvttps2uqq xmm1{k1}{z},xmm2
    vcvttps2uqq ymm1{k1}{z},xmm2
    vcvttps2uqq zmm1{k1}{z},ymm2
    vcvttps2uqq xmm1,qword ptr [rax]
    vcvttps2uqq ymm1,oword ptr [rax]
    vcvttps2uqq zmm1,yword ptr [rax]

    vcvtudq2pd xmm1{k1}{z},xmm2
    vcvtudq2pd ymm1{k1}{z},xmm2
    vcvtudq2pd zmm1{k1}{z},ymm2
    ;vcvtudq2pd xmm1,dword ptr [rax]
    vcvtudq2pd ymm1,oword ptr [rax]
    vcvtudq2pd zmm1,yword ptr [rax]
    vcvtudq2pd zmm30{k7},ymm29
    vcvtudq2pd zmm30{k7}{z},ymm29
    vcvtudq2pd zmm30{k7},yword ptr [rcx]
    vcvtudq2pd zmm30{k7},yword ptr [rax+r14*8+0x123]
    vcvtudq2pd zmm30{k7},dword ptr [rcx]{1to8}
    vcvtudq2pd zmm30{k7},yword ptr [rdx+0xfe0]
    vcvtudq2pd zmm30{k7},yword ptr [rdx+0x1000]
    vcvtudq2pd zmm30{k7},yword ptr [rdx-0x1000]
    vcvtudq2pd zmm30{k7},yword ptr [rdx-0x1020]
    vcvtudq2pd zmm30{k7},dword ptr [rdx+0x1fc]{1to8}
    vcvtudq2pd zmm30{k7},dword ptr [rdx+0x200]{1to8}
    vcvtudq2pd zmm30{k7},dword ptr [rdx-0x200]{1to8}
    vcvtudq2pd zmm30{k7},dword ptr [rdx-0x204]{1to8}

    vcvtuqq2pd xmm1{k1}{z},xmm2
    vcvtuqq2pd ymm1{k1}{z},ymm2
    vcvtuqq2pd zmm1{k1}{z},zmm2
    vcvtuqq2pd xmm1,[rax]
    vcvtuqq2pd ymm1,[rax]
    vcvtuqq2pd zmm1,[rax]

    vcvtudq2ps xmm1{k1}{z},xmm2
    vcvtudq2ps ymm1{k1}{z},ymm2
    vcvtudq2ps zmm1{k1}{z},zmm2
    vcvtudq2ps xmm1,[rax]
    vcvtudq2ps ymm1,[rax]
    vcvtudq2ps zmm1,[rax]
    vcvtudq2ps zmm30,zmm29
    vcvtudq2ps zmm30{k7},zmm29
    vcvtudq2ps zmm30{k7}{z},zmm29
    vcvtudq2ps zmm30,zmm29,{rn-sae}
    vcvtudq2ps zmm30,zmm29,{ru-sae}
    vcvtudq2ps zmm30,zmm29,{rd-sae}
    vcvtudq2ps zmm30,zmm29,{rz-sae}
    vcvtudq2ps zmm30,zword ptr [rcx]
    vcvtudq2ps zmm30,zword ptr [rax+r14*8+0x123]
    vcvtudq2ps zmm30,dword ptr [rcx]{1to16}
    vcvtudq2ps zmm30,zword ptr [rdx+0x1fc0]
    vcvtudq2ps zmm30,zword ptr [rdx+0x2000]
    vcvtudq2ps zmm30,zword ptr [rdx-0x2000]
    vcvtudq2ps zmm30,zword ptr [rdx-0x2040]
    vcvtudq2ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vcvtudq2ps zmm30,dword ptr [rdx+0x200]{1to16}
    vcvtudq2ps zmm30,dword ptr [rdx-0x200]{1to16}
    vcvtudq2ps zmm30,dword ptr [rdx-0x204]{1to16}

    vcvtuqq2ps xmm1{k1}{z},xmm2
    vcvtuqq2ps xmm1{k1}{z},ymm2
    vcvtuqq2ps ymm1{k1}{z},zmm2
    vcvtuqq2ps xmm1,oword ptr [rax]
    vcvtuqq2ps xmm1,yword ptr [rax]
    vcvtuqq2ps ymm1,zword ptr [rax]

    vexpandpd xmm1{k1}{z},xmm2
    vexpandpd ymm1{k1}{z},ymm2
    vexpandpd zmm1{k1}{z},zmm2
    vexpandpd xmm1,[rax]
    vexpandpd ymm1,[rax]
    vexpandpd zmm1,[rax]
    vexpandpd zmm30,zword ptr [rcx]
    vexpandpd zmm30{k7},zword ptr [rcx]
    vexpandpd zmm30{k7}{z},zword ptr [rcx]
    vexpandpd zmm30,zword ptr [rax+r14*8+0x123]
    vexpandpd zmm30,zword ptr [rdx+0x3f8]
    vexpandpd zmm30,zword ptr [rdx+0x400]
    vexpandpd zmm30,zword ptr [rdx-0x400]
    vexpandpd zmm30,zword ptr [rdx-0x408]
    vexpandpd zmm30,zmm29
    vexpandpd zmm30{k7},zmm29
    vexpandpd zmm30{k7}{z},zmm29

    vexpandps xmm1{k1}{z},xmm2
    vexpandps ymm1{k1}{z},ymm2
    vexpandps zmm1{k1}{z},zmm2
    vexpandps xmm1,[rax]
    vexpandps ymm1,[rax]
    vexpandps zmm1,[rax]
    vexpandps zmm30,zword ptr [rcx]
    vexpandps zmm30{k7},zword ptr [rcx]
    vexpandps zmm30{k7}{z},zword ptr [rcx]
    vexpandps zmm30,zword ptr [rax+r14*8+0x123]
    vexpandps zmm30,zword ptr [rdx+0x1fc]
    vexpandps zmm30,zword ptr [rdx+0x200]
    vexpandps zmm30,zword ptr [rdx-0x200]
    vexpandps zmm30,zword ptr [rdx-0x204]
    vexpandps zmm30,zmm29
    vexpandps zmm30{k7},zmm29
    vexpandps zmm30{k7}{z},zmm29

    vextractf32x4 xmm1{k1}{z},ymm2,3
    vextractf32x4 xmm1{k1}{z},zmm2,3
    vextractf32x4 oword ptr [rax],ymm2,3
    vextractf32x4 oword ptr [rax],zmm2,3
    vextractf64x2 xmm1{k1}{z},ymm2,3
    vextractf64x2 xmm1{k1}{z},zmm2,3
    vextractf64x2 oword ptr [rax],ymm2,3
    vextractf64x2 oword ptr [rax],zmm2,3
    vextractf32x8 ymm1{k1}{z},zmm2,3
    vextractf32x8 yword ptr [rax],zmm2,3
    vextractf64x4 ymm1{k1}{z},zmm2,3
    vextractf64x4 yword ptr [rax],zmm2,3
    vextracti32x4 xmm1{k1}{z},ymm2,3
    vextracti32x4 xmm1{k1}{z},zmm2,3
    vextracti32x4 oword ptr [rax],ymm2,3
    vextracti32x4 oword ptr [rax],zmm2,3
    vextracti64x2 xmm1{k1}{z},ymm2,3
    vextracti64x2 xmm1{k1}{z},zmm2,3
    vextracti64x2 oword ptr [rax],ymm2,3
    vextracti64x2 oword ptr [rax],zmm2,3
    vextracti32x8 ymm1{k1}{z},zmm2,3
    vextracti32x8 yword ptr [rax],zmm2,3
    vextracti64x4 ymm1{k1}{z},zmm2,3
    vextracti64x4 yword ptr [rax],zmm2,3
    vextractf32x4 xmm30{k7},zmm29,0xab
    vextractf32x4 xmm30{k7}{z},zmm29,0xab
    vextractf32x4 xmm30{k7},zmm29,0x7b
    vextractf64x4 ymm30{k7},zmm29,0xab
    vextractf64x4 ymm30{k7}{z},zmm29,0xab
    vextractf64x4 ymm30{k7},zmm29,0x7b
    vextracti32x4 xmm30{k7},zmm29,0xab
    vextracti32x4 xmm30{k7}{z},zmm29,0xab
    vextracti32x4 xmm30{k7},zmm29,0x7b
    vextracti64x4 ymm30{k7},zmm29,0xab
    vextracti64x4 ymm30{k7}{z},zmm29,0xab
    vextracti64x4 ymm30{k7},zmm29,0x7b

    vextractf32x4 oword ptr [rcx],zmm30,0xab
    vextractf32x4 oword ptr [rcx]{k7},zmm30,0xab
    vextractf32x4 oword ptr [rcx],zmm30,0x7b
    vextractf32x4 oword ptr [rax+r14*8+0x123],zmm30,0x7b
    vextractf32x4 oword ptr [rdx+0x7f0],zmm30,0x7b
    vextractf32x4 oword ptr [rdx+0x800],zmm30,0x7b
    vextractf32x4 oword ptr [rdx-0x800],zmm30,0x7b
    vextractf32x4 oword ptr [rdx-0x810],zmm30,0x7b
    vextractf64x4 yword ptr [rcx],zmm30,0xab
    vextractf64x4 yword ptr [rcx]{k7},zmm30,0xab
    vextractf64x4 yword ptr [rcx],zmm30,0x7b
    vextractf64x4 yword ptr [rax+r14*8+0x123],zmm30,0x7b
    vextractf64x4 yword ptr [rdx+0xfe0],zmm30,0x7b
    vextractf64x4 yword ptr [rdx+0x1000],zmm30,0x7b
    vextractf64x4 yword ptr [rdx-0x1000],zmm30,0x7b
    vextractf64x4 yword ptr [rdx-0x1020],zmm30,0x7b
    vextracti32x4 oword ptr [rcx],zmm30,0xab
    vextracti32x4 oword ptr [rcx]{k7},zmm30,0xab
    vextracti32x4 oword ptr [rcx],zmm30,0x7b
    vextracti32x4 oword ptr [rax+r14*8+0x123],zmm30,0x7b
    vextracti32x4 oword ptr [rdx+0x7f0],zmm30,0x7b
    vextracti32x4 oword ptr [rdx+0x800],zmm30,0x7b
    vextracti32x4 oword ptr [rdx-0x800],zmm30,0x7b
    vextracti32x4 oword ptr [rdx-0x810],zmm30,0x7b
    vextracti64x4 yword ptr [rcx],zmm30,0xab
    vextracti64x4 yword ptr [rcx]{k7},zmm30,0xab
    vextracti64x4 yword ptr [rcx],zmm30,0x7b
    vextracti64x4 yword ptr [rax+r14*8+0x123],zmm30,0x7b
    vextracti64x4 yword ptr [rdx+0xfe0],zmm30,0x7b
    vextracti64x4 yword ptr [rdx+0x1000],zmm30,0x7b
    vextracti64x4 yword ptr [rdx-0x1000],zmm30,0x7b
    vextracti64x4 yword ptr [rdx-0x1020],zmm30,0x7b

    vfpclasspd k2{k1},xmm2,3
    vfpclasspd k2{k1},ymm2,3
    vfpclasspd k2{k1},zmm2,3
    vfpclasspd k2,oword ptr [rax],3
    vfpclasspd k2,yword ptr [rax],3
    vfpclasspd k2,zword ptr [rax],3

    vfpclassps k2{k1},xmm2,3
    vfpclassps k2{k1},ymm2,3
    vfpclassps k2{k1},zmm2,3
    vfpclassps k2,oword ptr [rax],3
    vfpclassps k2,yword ptr [rax],3
    vfpclassps k2,zword ptr [rax],3

    vgatherdpd xmm1,qword ptr [rbp+xmm7*2+0x0],xmm2
    vgatherqpd xmm1,qword ptr [rbp+xmm7*2+0x0],xmm2
    vgatherdpd ymm1,qword ptr [rbp+xmm7*2+0x0],ymm2
    vgatherqpd ymm1,qword ptr [rbp+ymm7*2+0x0],ymm2
    vgatherdpd ymm6,qword ptr [xmm4*1+0x8],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*1-0x8],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*1+0x0],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*1+0x298],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*8+0x8],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*8-0x8],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*8+0x0],ymm5
    vgatherdpd ymm6,qword ptr [xmm4*8+0x298],ymm5
    vgatherdpd zmm30{k1}, [r14+ymm31*8+0x7b]
    vgatherdpd zmm30{k1}, [r14+ymm31*8+0x7b]
    vgatherdpd zmm30{k1}, [r9+ymm31*1+0x100]
    vgatherdpd zmm30{k1}, [rcx+ymm31*4+0x400]
    vgatherqpd zmm30{k1}, [r14+zmm31*8+0x7b]
    vgatherqpd zmm30{k1}, [r14+zmm31*8+0x7b]
    vgatherqpd zmm30{k1}, [r9+zmm31*1+0x100]
    vgatherqpd zmm30{k1}, [rcx+zmm31*4+0x400]

    vgatherdps xmm1,dword ptr [rbp+xmm7*2+0x0],xmm2
    vgatherqps xmm1,dword ptr [rbp+xmm7*2+0x0],xmm2
    vgatherdps ymm1,dword ptr [rbp+ymm7*2+0x0],ymm2
    vgatherqps xmm1,dword ptr [rbp+ymm7*2+0x0],xmm2
    vgatherdps xmm6,dword ptr [xmm4*1+0x8],xmm5
    vgatherdps xmm6,dword ptr [xmm4*1-0x8],xmm5
    vgatherdps xmm6,dword ptr [xmm4*1+0x0],xmm5
    vgatherdps xmm6,dword ptr [xmm4*1+0x298],xmm5
    vgatherdps xmm6,dword ptr [xmm4*8+0x8],xmm5
    vgatherdps xmm6,dword ptr [xmm4*8-0x8],xmm5
    vgatherdps xmm6,dword ptr [xmm4*8+0x0],xmm5
    vgatherdps xmm6,dword ptr [xmm4*8+0x298],xmm5
    vgatherdps zmm30{k1}, [r14+zmm31*8+0x7b]
    vgatherdps zmm30{k1}, [r14+zmm31*8+0x7b]
    vgatherdps zmm30{k1}, [r9+zmm31*1+0x100]
    vgatherdps zmm30{k1}, [rcx+zmm31*4+0x400]

    vpgatherdd xmm1,dword ptr [rbp+xmm7*2+0x0],xmm2
    vpgatherqd xmm1,dword ptr [rbp+xmm7*2+0x0],xmm2
    vpgatherdd ymm1,dword ptr [rbp+ymm7*2+0x0],ymm2
    vpgatherqd xmm1,dword ptr [rbp+ymm7*2+0x0],xmm2
    vpgatherdd xmm6,dword ptr [xmm4*1+0x8],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*1-0x8],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*1+0x0],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*1+0x298],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*8+0x8],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*8-0x8],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*8+0x0],xmm5
    vpgatherdd xmm6,dword ptr [xmm4*8+0x298],xmm5
    vpgatherdq xmm1,qword ptr [rbp+xmm7*2+0x0],xmm2
    vpgatherqq xmm1,qword ptr [rbp+xmm7*2+0x0],xmm2
    vpgatherdq ymm1,qword ptr [rbp+xmm7*2+0x0],ymm2
    vpgatherqq ymm1,qword ptr [rbp+ymm7*2+0x0],ymm2
    vpgatherdq ymm6,qword ptr [xmm4*1+0x8],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*1-0x8],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*1+0x0],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*1+0x298],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*8+0x8],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*8-0x8],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*8+0x0],ymm5
    vpgatherdq ymm6,qword ptr [xmm4*8+0x298],ymm5

    vpgatherdd zmm30{k1}, [r14+zmm31*8+0x7b]
    vpgatherdd zmm30{k1}, [r14+zmm31*8+0x7b]
    vpgatherdd zmm30{k1}, [r9+zmm31*1+0x100]
    vpgatherdd zmm30{k1}, [rcx+zmm31*4+0x400]
    vpgatherdq zmm30{k1}, [r14+ymm31*8+0x7b]
    vpgatherdq zmm30{k1}, [r14+ymm31*8+0x7b]
    vpgatherdq zmm30{k1}, [r9+ymm31*1+0x100]
    vpgatherdq zmm30{k1}, [rcx+ymm31*4+0x400]
    vpgatherqq zmm30{k1}, [r14+zmm31*8+0x7b]
    vpgatherqq zmm30{k1}, [r14+zmm31*8+0x7b]
    vpgatherqq zmm30{k1}, [r9+zmm31*1+0x100]
    vpgatherqq zmm30{k1}, [rcx+zmm31*4+0x400]

    vgatherpf0dpd  [r14+ymm31*8+0x7b]{k1}
    vgatherpf0dpd  [r14+ymm31*8+0x7b]{k1}
    vgatherpf0dpd  [r9+ymm31*1+0x100]{k1}
    vgatherpf0dpd  [rcx+ymm31*4+0x400]{k1}
    vgatherpf0dps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf0dps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf0dps  [r9+zmm31*1+0x100]{k1}
    vgatherpf0dps  [rcx+zmm31*4+0x400]{k1}
    vgatherpf0qpd  [r14+zmm31*8+0x7b]{k1}
    vgatherpf0qpd  [r14+zmm31*8+0x7b]{k1}
    vgatherpf0qpd  [r9+zmm31*1+0x100]{k1}
    vgatherpf0qpd  [rcx+zmm31*4+0x400]{k1}
    vgatherpf0qps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf0qps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf0qps  [r9+zmm31*1+0x100]{k1}
    vgatherpf0qps  [rcx+zmm31*4+0x400]{k1}
    vgatherpf1dpd  [r14+ymm31*8+0x7b]{k1}
    vgatherpf1dpd  [r14+ymm31*8+0x7b]{k1}
    vgatherpf1dpd  [r9+ymm31*1+0x100]{k1}
    vgatherpf1dpd  [rcx+ymm31*4+0x400]{k1}
    vgatherpf1dps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf1dps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf1dps  [r9+zmm31*1+0x100]{k1}
    vgatherpf1dps  [rcx+zmm31*4+0x400]{k1}
    vgatherpf1qpd  [r14+zmm31*8+0x7b]{k1}
    vgatherpf1qpd  [r14+zmm31*8+0x7b]{k1}
    vgatherpf1qpd  [r9+zmm31*1+0x100]{k1}
    vgatherpf1qpd  [rcx+zmm31*4+0x400]{k1}
    vgatherpf1qps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf1qps  [r14+zmm31*8+0x7b]{k1}
    vgatherpf1qps  [r9+zmm31*1+0x100]{k1}
    vgatherpf1qps  [rcx+zmm31*4+0x400]{k1}

    vscatterpf0dpd  [r14+ymm31*8+0x7b]{k1}
    vscatterpf0dpd  [r14+ymm31*8+0x7b]{k1}
    vscatterpf0dpd  [r9+ymm31*1+0x100]{k1}
    vscatterpf0dpd  [rcx+ymm31*4+0x400]{k1}
    vscatterpf0dps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf0dps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf0dps  [r9+zmm31*1+0x100]{k1}
    vscatterpf0dps  [rcx+zmm31*4+0x400]{k1}
    vscatterpf0qpd  [r14+zmm31*8+0x7b]{k1}
    vscatterpf0qpd  [r14+zmm31*8+0x7b]{k1}
    vscatterpf0qpd  [r9+zmm31*1+0x100]{k1}
    vscatterpf0qpd  [rcx+zmm31*4+0x400]{k1}
    vscatterpf0qps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf0qps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf0qps  [r9+zmm31*1+0x100]{k1}
    vscatterpf0qps  [rcx+zmm31*4+0x400]{k1}

    vscatterpf1dpd  [r14+ymm31*8+0x7b]{k1}
    vscatterpf1dpd  [r14+ymm31*8+0x7b]{k1}
    vscatterpf1dpd  [r9+ymm31*1+0x100]{k1}
    vscatterpf1dpd  [rcx+ymm31*4+0x400]{k1}
    vscatterpf1dps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf1dps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf1dps  [r9+zmm31*1+0x100]{k1}
    vscatterpf1dps  [rcx+zmm31*4+0x400]{k1}
    vscatterpf1qpd  [r14+zmm31*8+0x7b]{k1}
    vscatterpf1qpd  [r14+zmm31*8+0x7b]{k1}
    vscatterpf1qpd  [r9+zmm31*1+0x100]{k1}
    vscatterpf1qpd  [rcx+zmm31*4+0x400]{k1}
    vscatterpf1qps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf1qps  [r14+zmm31*8+0x7b]{k1}
    vscatterpf1qps  [r9+zmm31*1+0x100]{k1}
    vscatterpf1qps  [rcx+zmm31*4+0x400]{k1}

    vscatterdpd [r14+ymm31*8+0x7b]{k1},zmm30
    vscatterdpd [r14+ymm31*8+0x7b]{k1},zmm30
    vscatterdpd [r9+ymm31*1+0x100]{k1},zmm30
    vscatterdpd [rcx+ymm31*4+0x400]{k1},zmm30
    vscatterdps [r14+zmm31*8+0x7b]{k1},zmm30
    vscatterdps [r14+zmm31*8+0x7b]{k1},zmm30
    vscatterdps [r9+zmm31*1+0x100]{k1},zmm30
    vscatterdps [rcx+zmm31*4+0x400]{k1},zmm30
    vscatterqpd [r14+zmm31*8+0x7b]{k1},zmm30
    vscatterqpd [r14+zmm31*8+0x7b]{k1},zmm30
    vscatterqpd [r9+zmm31*1+0x100]{k1},zmm30
    vscatterqpd [rcx+zmm31*4+0x400]{k1},zmm30
if 1 ; v2.27
    vscatterqpd [rsi+xmm1*1+0]{k1},xmm0
    vscatterqpd [rsi+xmm1*1+0]{k1},xmm20
    vscatterqpd [rsi+xmm20*1+0]{k1},xmm20
    vscatterqpd [rsi+ymm1*1+0]{k1},ymm0
    vscatterqpd [rsi+ymm1*1+0]{k1},ymm20
    vscatterqpd [rsi+ymm20*1+0]{k1},ymm20
    vscatterqpd [rsi+zmm1*1+0]{k1},zmm0
    vscatterqpd [rsi+zmm31*1+0]{k1},zmm0
endif
    vpscatterdd [r14+zmm31*8+0x7b]{k1},zmm30
    vpscatterdd [r14+zmm31*8+0x7b]{k1},zmm30
    vpscatterdd [r9+zmm31*1+0x100]{k1},zmm30
    vpscatterdd [rcx+zmm31*4+0x400]{k1},zmm30
    vpscatterdq [r14+ymm31*8+0x7b]{k1},zmm30
    vpscatterdq [r14+ymm31*8+0x7b]{k1},zmm30
    vpscatterdq [r9+ymm31*1+0x100]{k1},zmm30
    vpscatterdq [rcx+ymm31*4+0x400]{k1},zmm30
    vpscatterqq [r14+zmm31*8+0x7b]{k1},zmm30
    vpscatterqq [r14+zmm31*8+0x7b]{k1},zmm30
    vpscatterqq [r9+zmm31*1+0x100]{k1},zmm30
    vpscatterqq [rcx+zmm31*4+0x400]{k1},zmm30

    vgetexppd zmm30,zmm29
    vgetexppd zmm30{k7},zmm29
    vgetexppd zmm30{k7}{z},zmm29
    vgetexppd zmm30,zword ptr [rcx]
    vgetexppd zmm30,zword ptr [rax+r14*8+0x123]
    vgetexppd zmm30,qword ptr [rcx]{1to8}
    vgetexppd zmm30,zword ptr [rdx+0x1fc0]
    vgetexppd zmm30,zword ptr [rdx+0x2000]
    vgetexppd zmm30,zword ptr [rdx-0x2000]
    vgetexppd zmm30,zword ptr [rdx-0x2040]
    vgetexppd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vgetexppd zmm30,qword ptr [rdx+0x400]{1to8}
    vgetexppd zmm30,qword ptr [rdx-0x400]{1to8}
    vgetexppd zmm30,qword ptr [rdx-0x408]{1to8}

    vgetexpps zmm30,zmm29
    vgetexpps zmm30{k7},zmm29
    vgetexpps zmm30{k7}{z},zmm29
    vgetexpps zmm30,zword ptr [rcx]
    vgetexpps zmm30,zword ptr [rax+r14*8+0x123]
    vgetexpps zmm30,dword ptr [rcx]{1to16}
    vgetexpps zmm30,zword ptr [rdx+0x1fc0]
    vgetexpps zmm30,zword ptr [rdx+0x2000]
    vgetexpps zmm30,zword ptr [rdx-0x2000]
    vgetexpps zmm30,zword ptr [rdx-0x2040]
    vgetexpps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vgetexpps zmm30,dword ptr [rdx+0x200]{1to16}
    vgetexpps zmm30,dword ptr [rdx-0x200]{1to16}
    vgetexpps zmm30,dword ptr [rdx-0x204]{1to16}

    vgetexpsd xmm30{k7},xmm29,xmm28
    vgetexpsd xmm30{k7}{z},xmm29,xmm28
    vgetexpsd xmm30{k7},xmm29,qword ptr [rcx]
    vgetexpsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vgetexpsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vgetexpsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vgetexpsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vgetexpsd xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vgetexpss xmm30{k7},xmm29,xmm28
    vgetexpss xmm30{k7}{z},xmm29,xmm28
    vgetexpss xmm30{k7},xmm29,dword ptr [rcx]
    vgetexpss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vgetexpss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vgetexpss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vgetexpss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vgetexpss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vpcompressd zword ptr [rcx],zmm30
    vpcompressd zword ptr [rcx]{k7},zmm30
    vpcompressd zword ptr [rax+r14*8+0x123],zmm30
    vpcompressd zword ptr [rdx+0x1fc],zmm30
    vpcompressd zword ptr [rdx+0x200],zmm30
    vpcompressd zword ptr [rdx-0x200],zmm30
    vpcompressd zword ptr [rdx-0x204],zmm30
    vpcompressd zmm30,zmm29
    vpcompressd zmm30{k7},zmm29
    vpcompressd zmm30{k7}{z},zmm29

    vpcompressq zword ptr [rcx],zmm30
    vpcompressq zword ptr [rcx]{k7},zmm30
    vpcompressq zword ptr [rax+r14*8+0x123],zmm30
    vpcompressq zword ptr [rdx+0x3f8],zmm30
    vpcompressq zword ptr [rdx+0x400],zmm30
    vpcompressq zword ptr [rdx-0x400],zmm30
    vpcompressq zword ptr [rdx-0x408],zmm30
    vpcompressq zmm30,zmm29
    vpcompressq zmm30{k7},zmm29
    vpcompressq zmm30{k7}{z},zmm29

    vbroadcastf32x2  ymm1 {k1}{z}, xmm2
    vbroadcastf32x2  zmm1 {k1}{z}, xmm2
    vbroadcastf32x4  ymm1 {k1}{z}, oword ptr [rax]
    vbroadcastf32x4  zmm1 {k1}{z}, oword ptr [rax]
    vbroadcastf32x8  zmm1 {k1}{z}, yword ptr [rax]
    vbroadcastf64x2  ymm1 {k1}{z}, oword ptr [rax]
    vbroadcastf64x2  zmm1 {k1}{z}, oword ptr [rax]
    vbroadcastf64x4  zmm1 {k1}{z}, yword ptr [rax]
    vbroadcasti32x2  xmm1 {k1}{z}, xmm2
    vbroadcasti32x2  ymm1 {k1}{z}, xmm2
    vbroadcasti32x2  zmm1 {k1}{z}, xmm2
    vbroadcasti32x4  ymm1 {k1}{z}, oword ptr [rax]
    vbroadcasti32x4  zmm1 {k1}{z}, oword ptr [rax]
    vbroadcasti32x8  zmm1 {k1}{z}, yword ptr [rax]
    vbroadcasti64x2  ymm1 {k1}{z}, oword ptr [rax]
    vbroadcasti64x2  zmm1 {k1}{z}, oword ptr [rax]
    vbroadcasti64x4  zmm1 {k1}{z}, yword ptr [rax]

    vbroadcastf32x2  ymm1 {k1}{z}, qword ptr [rax]
    vbroadcastf32x2  zmm1 {k1}{z}, qword ptr [rax]
    vbroadcasti32x2  xmm1 {k1}{z}, qword ptr [rax]
    vbroadcasti32x2  ymm1 {k1}{z}, qword ptr [rax]
    vbroadcasti32x2  zmm1 {k1}{z}, qword ptr [rax]

    vbroadcastf32x2  ymm1 {k1}{z}, [rax]
    vbroadcastf32x2  zmm1 {k1}{z}, [rax]
    vbroadcastf32x4  ymm1 {k1}{z}, [rax]
    vbroadcastf32x4  zmm1 {k1}{z}, [rax]
    vbroadcastf32x8  zmm1 {k1}{z}, [rax]
    vbroadcastf64x2  ymm1 {k1}{z}, [rax]
    vbroadcastf64x2  zmm1 {k1}{z}, [rax]
    vbroadcastf64x4  zmm1 {k1}{z}, [rax]
    vbroadcasti32x2  xmm1 {k1}{z}, [rax]
    vbroadcasti32x2  ymm1 {k1}{z}, [rax]
    vbroadcasti32x2  zmm1 {k1}{z}, [rax]
    vbroadcasti32x4  ymm1 {k1}{z}, [rax]
    vbroadcasti32x4  zmm1 {k1}{z}, [rax]
    vbroadcasti32x8  zmm1 {k1}{z}, [rax]
    vbroadcasti64x2  ymm1 {k1}{z}, [rax]
    vbroadcasti64x2  zmm1 {k1}{z}, [rax]
    vbroadcasti64x4  zmm1 {k1}{z}, [rax]

    vbroadcastf32x4 zmm30,oword ptr [rcx]
    vbroadcastf32x4 zmm30{k7},oword ptr [rcx]
    vbroadcastf32x4 zmm30{k7}{z},oword ptr [rcx]
    vbroadcastf32x4 zmm30,oword ptr [rax+r14*8+0x123]
    vbroadcastf32x4 zmm30,oword ptr [rdx+0x7f0]
    vbroadcastf32x4 zmm30,oword ptr [rdx+0x800]
    vbroadcastf32x4 zmm30,oword ptr [rdx-0x800]
    vbroadcastf32x4 zmm30,oword ptr [rdx-0x810]
    vbroadcastf64x4 zmm30,yword ptr [rcx]
    vbroadcastf64x4 zmm30{k7},yword ptr [rcx]
    vbroadcastf64x4 zmm30{k7}{z},yword ptr [rcx]
    vbroadcastf64x4 zmm30,yword ptr [rax+r14*8+0x123]
    vbroadcastf64x4 zmm30,yword ptr [rdx+0xfe0]
    vbroadcastf64x4 zmm30,yword ptr [rdx+0x1000]
    vbroadcastf64x4 zmm30,yword ptr [rdx-0x1000]
    vbroadcastf64x4 zmm30,yword ptr [rdx-0x1020]
    vbroadcasti32x4 zmm30,oword ptr [rcx]
    vbroadcasti32x4 zmm30{k7},oword ptr [rcx]
    vbroadcasti32x4 zmm30{k7}{z},oword ptr [rcx]
    vbroadcasti32x4 zmm30,oword ptr [rax+r14*8+0x123]
    vbroadcasti32x4 zmm30,oword ptr [rdx+0x7f0]
    vbroadcasti32x4 zmm30,oword ptr [rdx+0x800]
    vbroadcasti32x4 zmm30,oword ptr [rdx-0x800]
    vbroadcasti32x4 zmm30,oword ptr [rdx-0x810]
    vbroadcasti64x4 zmm30,yword ptr [rcx]
    vbroadcasti64x4 zmm30{k7},yword ptr [rcx]
    vbroadcasti64x4 zmm30{k7}{z},yword ptr [rcx]
    vbroadcasti64x4 zmm30,yword ptr [rax+r14*8+0x123]
    vbroadcasti64x4 zmm30,yword ptr [rdx+0xfe0]
    vbroadcasti64x4 zmm30,yword ptr [rdx+0x1000]
    vbroadcasti64x4 zmm30,yword ptr [rdx-0x1000]
    vbroadcasti64x4 zmm30,yword ptr [rdx-0x1020]

    vpexpandd zmm30,zword ptr [rcx]
    vpexpandd zmm30{k7},zword ptr [rcx]
    vpexpandd zmm30{k7}{z},zword ptr [rcx]
    vpexpandd zmm30,zword ptr [rax+r14*8+0x123]
    vpexpandd zmm30,zword ptr [rdx+0x1fc]
    vpexpandd zmm30,zword ptr [rdx+0x200]
    vpexpandd zmm30,zword ptr [rdx-0x200]
    vpexpandd zmm30,zword ptr [rdx-0x204]
    vpexpandd zmm30,zmm29
    vpexpandd zmm30{k7},zmm29
    vpexpandd zmm30{k7}{z},zmm29
    vpexpandq zmm30,zword ptr [rcx]
    vpexpandq zmm30{k7},zword ptr [rcx]
    vpexpandq zmm30{k7}{z},zword ptr [rcx]
    vpexpandq zmm30,zword ptr [rax+r14*8+0x123]
    vpexpandq zmm30,zword ptr [rdx+0x3f8]
    vpexpandq zmm30,zword ptr [rdx+0x400]
    vpexpandq zmm30,zword ptr [rdx-0x400]
    vpexpandq zmm30,zword ptr [rdx-0x408]
    vpexpandq zmm30,zmm29
    vpexpandq zmm30{k7},zmm29
    vpexpandq zmm30{k7}{z},zmm29

    vrcp14pd zmm30,zmm29
    vrcp14pd zmm30{k7},zmm29
    vrcp14pd zmm30{k7}{z},zmm29
    vrcp14pd zmm30,zword ptr [rcx]
    vrcp14pd zmm30,zword ptr [rax+r14*8+0x123]
    vrcp14pd zmm30,qword ptr [rcx]{1to8}
    vrcp14pd zmm30,zword ptr [rdx+0x1fc0]
    vrcp14pd zmm30,zword ptr [rdx+0x2000]
    vrcp14pd zmm30,zword ptr [rdx-0x2000]
    vrcp14pd zmm30,zword ptr [rdx-0x2040]
    vrcp14pd zmm30,qword ptr [rdx+0x3f8]{1to8}
    vrcp14pd zmm30,qword ptr [rdx+0x400]{1to8}
    vrcp14pd zmm30,qword ptr [rdx-0x400]{1to8}
    vrcp14pd zmm30,qword ptr [rdx-0x408]{1to8}

    vrcp14ps zmm30,zmm29
    vrcp14ps zmm30{k7},zmm29
    vrcp14ps zmm30{k7}{z},zmm29
    vrcp14ps zmm30,zword ptr [rcx]
    vrcp14ps zmm30,zword ptr [rax+r14*8+0x123]
    vrcp14ps zmm30,dword ptr [rcx]{1to16}
    vrcp14ps zmm30,zword ptr [rdx+0x1fc0]
    vrcp14ps zmm30,zword ptr [rdx+0x2000]
    vrcp14ps zmm30,zword ptr [rdx-0x2000]
    vrcp14ps zmm30,zword ptr [rdx-0x2040]
    vrcp14ps zmm30,dword ptr [rdx+0x1fc]{1to16}
    vrcp14ps zmm30,dword ptr [rdx+0x200]{1to16}
    vrcp14ps zmm30,dword ptr [rdx-0x200]{1to16}
    vrcp14ps zmm30,dword ptr [rdx-0x204]{1to16}

    vrcp14sd xmm30{k7},xmm29,xmm28
    vrcp14sd xmm30{k7}{z},xmm29,xmm28
    vrcp14sd xmm30{k7},xmm29,qword ptr [rcx]
    vrcp14sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vrcp14sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vrcp14sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vrcp14sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vrcp14sd xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vrcp14ss xmm30{k7},xmm29,xmm28
    vrcp14ss xmm30{k7}{z},xmm29,xmm28
    vrcp14ss xmm30{k7},xmm29,dword ptr [rcx]
    vrcp14ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vrcp14ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vrcp14ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vrcp14ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vrcp14ss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vreducepd xmm1{k1}{z},xmm2,3
    vreducepd ymm1{k1}{z},ymm2,3
    vreducepd zmm1{k1}{z},zmm2,3
    vreduceps xmm1{k1}{z},xmm2,3
    vreduceps ymm1{k1}{z},ymm2,3
    vreduceps zmm1{k1}{z},zmm2,3
    vreducesd xmm1{k1}{z},xmm2,xmm3,3
    vreducess xmm1{k1}{z},xmm2,xmm3,3
    vreducepd xmm1,[rax],3
    vreducepd ymm1,[rax],3
    vreducepd zmm1,[rax],3
    vreduceps xmm1,[rax],3
    vreduceps ymm1,[rax],3
    vreduceps zmm1,[rax],3
    vreducesd xmm1,xmm2,[rax],3
    vreducess xmm1,xmm2,[rax],3
    vreducesd xmm1,xmm2,qword ptr [rax],3
    vreducess xmm1,xmm2,dword ptr [rax],3

    vrndscalepd xmm1{k1}{z},xmm2,7
    vrndscalepd ymm1{k1}{z},ymm2,7
    vrndscalepd zmm1{k1}{z},zmm2,7
    vrndscaleps xmm1{k1}{z},xmm2,7
    vrndscaleps ymm1{k1}{z},ymm2,7
    vrndscaleps zmm1{k1}{z},zmm2,7
    vrndscalesd xmm1{k1}{z},xmm2,xmm3,7
    vrndscaless xmm1{k1}{z},xmm2,xmm3,3
    vrndscalepd xmm1,[rax],7
    vrndscalepd ymm1,[rax],7
    vrndscalepd zmm1,[rax],7
    vrndscaleps xmm1,[rax],7
    vrndscaleps ymm1,[rax],7
    vrndscaleps zmm1,[rax],7
    vrndscalesd xmm1,xmm2,[rax],7
    vrndscaless xmm1,xmm2,[rax],3
    vrndscalesd xmm1,xmm2,qword ptr [rax],7
    vrndscaless xmm1,xmm2,dword ptr [rax],3

    vrndscalepd zmm30,zmm29,0xab
    vrndscalepd zmm30{k7},zmm29,0xab
    vrndscalepd zmm30{k7}{z},zmm29,0xab
    vrndscalepd zmm30,zmm29,{sae},0xab
    vrndscalepd zmm30,zmm29,0x7b
    vrndscalepd zmm30,zmm29,{sae},0x7b
    vrndscalepd zmm30,zword ptr [rcx],0x7b
    vrndscalepd zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vrndscalepd zmm30,qword ptr [rcx]{1to8},0x7b
    vrndscalepd zmm30,zword ptr [rdx+0x1fc0],0x7b
    vrndscalepd zmm30,zword ptr [rdx+0x2000],0x7b
    vrndscalepd zmm30,zword ptr [rdx-0x2000],0x7b
    vrndscalepd zmm30,zword ptr [rdx-0x2040],0x7b
    vrndscalepd zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vrndscalepd zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vrndscalepd zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vrndscalepd zmm30,qword ptr [rdx-0x408]{1to8},0x7b
    vrndscaleps zmm30,zmm29,0xab
    vrndscaleps zmm30{k7},zmm29,0xab
    vrndscaleps zmm30{k7}{z},zmm29,0xab
    vrndscaleps zmm30,zmm29,{sae},0xab
    vrndscaleps zmm30,zmm29,0x7b
    vrndscaleps zmm30,zmm29,{sae},0x7b
    vrndscaleps zmm30,zword ptr [rcx],0x7b
    vrndscaleps zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vrndscaleps zmm30,dword ptr [rcx]{1to16},0x7b
    vrndscaleps zmm30,zword ptr [rdx+0x1fc0],0x7b
    vrndscaleps zmm30,zword ptr [rdx+0x2000],0x7b
    vrndscaleps zmm30,zword ptr [rdx-0x2000],0x7b
    vrndscaleps zmm30,zword ptr [rdx-0x2040],0x7b
    vrndscaleps zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vrndscaleps zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vrndscaleps zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vrndscaleps zmm30,dword ptr [rdx-0x204]{1to16},0x7b
    vrndscalesd xmm30{k7},xmm29,xmm28,0xab
    vrndscalesd xmm30{k7}{z},xmm29,xmm28,0xab
    vrndscalesd xmm30{k7},xmm29,xmm28,{sae},0xab
    vrndscalesd xmm30{k7},xmm29,xmm28,0x7b
    vrndscalesd xmm30{k7},xmm29,xmm28,{sae},0x7b
    vrndscalesd xmm30{k7},xmm29,qword ptr [rcx],0x7b
    vrndscalesd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123],0x7b
    vrndscalesd xmm30{k7},xmm29,qword ptr [rdx+0x3f8],0x7b
    vrndscalesd xmm30{k7},xmm29,qword ptr [rdx+0x400],0x7b
    vrndscalesd xmm30{k7},xmm29,qword ptr [rdx-0x400],0x7b
    vrndscalesd xmm30{k7},xmm29,qword ptr [rdx-0x408],0x7b
    vrndscaless xmm30{k7},xmm29,xmm28,0xab
    vrndscaless xmm30{k7}{z},xmm29,xmm28,0xab
    vrndscaless xmm30{k7},xmm29,xmm28,{sae},0xab
    vrndscaless xmm30{k7},xmm29,xmm28,0x7b
    vrndscaless xmm30{k7},xmm29,xmm28,{sae},0x7b
    vrndscaless xmm30{k7},xmm29,dword ptr [rcx],0x7b
    vrndscaless xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123],0x7b
    vrndscaless xmm30{k7},xmm29,dword ptr [rdx+0x1fc],0x7b
    vrndscaless xmm30{k7},xmm29,dword ptr [rdx+0x200],0x7b
    vrndscaless xmm30{k7},xmm29,dword ptr [rdx-0x200],0x7b
    vrndscaless xmm30{k7},xmm29,dword ptr [rdx-0x204],0x7b

    vpmovb2m k1,xmm1
    vpmovb2m k1,ymm1
    vpmovb2m k1,zmm1
    vpmovd2m k1,xmm1
    vpmovd2m k1,ymm1
    vpmovd2m k1,zmm1
    vpmovw2m k1,xmm1
    vpmovw2m k1,ymm1
    vpmovw2m k1,zmm1
    vpmovq2m k1,xmm1
    vpmovq2m k1,ymm1
    vpmovq2m k1,zmm1

    vpmovm2b xmm1,k1
    vpmovm2b ymm1,k1
    vpmovm2b zmm1,k1
    vpmovm2d xmm1,k1
    vpmovm2d ymm1,k1
    vpmovm2d zmm1,k1
    vpmovm2q xmm1,k1
    vpmovm2q ymm1,k1
    vpmovm2q zmm1,k1
    vpmovm2w xmm1,k1
    vpmovm2w ymm1,k1
    vpmovm2w zmm1,k1

    vpmovdb xmm1{k1}{z},zmm2
    vpmovdb xmm1{k1}{z},xmm2
    vpmovdb xmm1{k1}{z},ymm2
    vpmovdw xmm1{k1}{z},ymm2
    vpmovdw xmm1{k1}{z},xmm2
    vpmovdw ymm1{k1}{z},zmm2
    vpmovqb xmm1{k1}{z},xmm2
    vpmovqb xmm1{k1}{z},ymm2
    vpmovqb xmm1{k1}{z},zmm2
    vpmovqd xmm1{k1}{z},xmm2
    vpmovqd xmm1{k1}{z},ymm2
    vpmovqd ymm1{k1}{z},zmm2
    vpmovqw xmm1{k1}{z},zmm2
    vpmovqw xmm1{k1}{z},xmm2
    vpmovqw xmm1{k1}{z},ymm2
    vpmovdb [rax],zmm2
    vpmovdb [rax],xmm2
    vpmovdb [rax],ymm2
    vpmovdw [rax],ymm2
    vpmovdw [rax],xmm2
    vpmovdw [rax],zmm2
    vpmovqb [rax],xmm2
    vpmovqb [rax],ymm2
    vpmovqb [rax],zmm2
    vpmovqd [rax],xmm2
    vpmovqd [rax],ymm2
    vpmovqd [rax],zmm2
    vpmovqw [rax],zmm2
    vpmovqw [rax],xmm2
    vpmovqw [rax],ymm2
    vpmovdb oword ptr [rax],zmm2
    vpmovdb dword ptr [rax],xmm2
    vpmovdb qword ptr [rax],ymm2
    vpmovdw oword ptr [rax],ymm2
    vpmovdw qword ptr [rax],xmm2
    vpmovdw yword ptr [rax],zmm2
    vpmovqb word ptr [rax],xmm2
    vpmovqb dword ptr [rax],ymm2
    vpmovqb qword ptr [rax],zmm2
    vpmovqd oword ptr [rax],ymm2
    vpmovqd yword ptr [rax],zmm2
    vpmovqw oword ptr [rax],zmm2
    vpmovqw dword ptr [rax],xmm2
    vpmovqw qword ptr [rax],ymm2

    vpmovqb xmm30{k7},zmm29
    vpmovqb xmm30{k7}{z},zmm29
    vpmovsqb xmm30{k7},zmm29
    vpmovsqb xmm30{k7}{z},zmm29
    vpmovusqb xmm30{k7},zmm29
    vpmovusqb xmm30{k7}{z},zmm29
    vpmovqw xmm30{k7},zmm29
    vpmovqw xmm30{k7}{z},zmm29
    vpmovsqw xmm30{k7},zmm29
    vpmovsqw xmm30{k7}{z},zmm29
    vpmovusqw xmm30{k7},zmm29
    vpmovusqw xmm30{k7}{z},zmm29
    vpmovqd ymm30{k7},zmm29
    vpmovqd ymm30{k7}{z},zmm29
    vpmovsqd ymm30{k7},zmm29
    vpmovsqd ymm30{k7}{z},zmm29
    vpmovusqd ymm30{k7},zmm29
    vpmovusqd ymm30{k7}{z},zmm29
    vpmovdb xmm30{k7},zmm29
    vpmovdb xmm30{k7}{z},zmm29
    vpmovsdb xmm30{k7},zmm29
    vpmovsdb xmm30{k7}{z},zmm29
    vpmovusdb xmm30{k7},zmm29
    vpmovusdb xmm30{k7}{z},zmm29
    vpmovdw ymm30{k7},zmm29
    vpmovdw ymm30{k7}{z},zmm29
    vpmovsdw ymm30{k7},zmm29
    vpmovsdw ymm30{k7}{z},zmm29
    vpmovusdw ymm30{k7},zmm29
    vpmovusdw ymm30{k7}{z},zmm29

    vpmovqb qword ptr [rcx],zmm30
    vpmovqb qword ptr [rcx]{k7},zmm30
    vpmovqb qword ptr [rax+r14*8+0x123],zmm30
    vpmovqb qword ptr [rdx+0x3f8],zmm30
    vpmovqb qword ptr [rdx+0x400],zmm30
    vpmovqb qword ptr [rdx-0x400],zmm30
    vpmovqb qword ptr [rdx-0x408],zmm30

    vpmovqw oword ptr [rcx],zmm30
    vpmovqw oword ptr [rcx]{k7},zmm30
    vpmovqw oword ptr [rax+r14*8+0x123],zmm30
    vpmovqw oword ptr [rdx+0x7f0],zmm30
    vpmovqw oword ptr [rdx+0x800],zmm30
    vpmovqw oword ptr [rdx-0x800],zmm30
    vpmovqw oword ptr [rdx-0x810],zmm30

    vpmovqd yword ptr [rcx],zmm30
    vpmovqd yword ptr [rcx]{k7},zmm30
    vpmovqd yword ptr [rax+r14*8+0x123],zmm30
    vpmovqd yword ptr [rdx+0xfe0],zmm30
    vpmovqd yword ptr [rdx+0x1000],zmm30
    vpmovqd yword ptr [rdx-0x1000],zmm30
    vpmovqd yword ptr [rdx-0x1020],zmm30

    vpmovdb oword ptr [rcx],zmm30
    vpmovdb oword ptr [rcx]{k7},zmm30
    vpmovdb oword ptr [rax+r14*8+0x123],zmm30
    vpmovdb oword ptr [rdx+0x7f0],zmm30
    vpmovdb oword ptr [rdx+0x800],zmm30
    vpmovdb oword ptr [rdx-0x800],zmm30
    vpmovdb oword ptr [rdx-0x810],zmm30

    vpmovdw yword ptr [rcx],zmm30
    vpmovdw yword ptr [rcx]{k7},zmm30
    vpmovdw yword ptr [rax+r14*8+0x123],zmm30
    vpmovdw yword ptr [rdx+0xfe0],zmm30
    vpmovdw yword ptr [rdx+0x1000],zmm30
    vpmovdw yword ptr [rdx-0x1000],zmm30
    vpmovdw yword ptr [rdx-0x1020],zmm30

    vpmovwb xmm1{k1}{z},ymm2
    vpmovwb xmm1{k1}{z},xmm2
    vpmovwb ymm1{k1}{z},zmm2
    vpmovwb [rax],ymm2
    vpmovwb [rax],xmm2
    vpmovwb [rax],zmm2
    vpmovwb oword ptr [rax],ymm2
    vpmovwb qword ptr [rax],xmm2
    vpmovwb yword ptr [rax],zmm2

    vpmovsdb xmm30{k7},zmm29
    vpmovsdb xmm30{k7}{z},zmm29
    vpmovsdb oword ptr [rcx],zmm30
    vpmovsdb oword ptr [rcx]{k7},zmm30
    vpmovsdb oword ptr [rax+r14*8+0x123],zmm30
    vpmovsdb oword ptr [rdx+0x7f0],zmm30
    vpmovsdb oword ptr [rdx+0x800],zmm30
    vpmovsdb oword ptr [rdx-0x800],zmm30
    vpmovsdb oword ptr [rdx-0x810],zmm30

    vpmovsdw ymm30{k7},zmm29
    vpmovsdw ymm30{k7}{z},zmm29
    vpmovsdw yword ptr [rcx],zmm30
    vpmovsdw yword ptr [rcx]{k7},zmm30
    vpmovsdw yword ptr [rax+r14*8+0x123],zmm30
    vpmovsdw yword ptr [rdx+0xfe0],zmm30
    vpmovsdw yword ptr [rdx+0x1000],zmm30
    vpmovsdw yword ptr [rdx-0x1000],zmm30
    vpmovsdw yword ptr [rdx-0x1020],zmm30

    vpmovsqb xmm30{k7},zmm29
    vpmovsqb xmm30{k7}{z},zmm29
    vpmovsqb qword ptr [rcx],zmm30
    vpmovsqb qword ptr [rcx]{k7},zmm30
    vpmovsqb qword ptr [rax+r14*8+0x123],zmm30
    vpmovsqb qword ptr [rdx+0x3f8],zmm30
    vpmovsqb qword ptr [rdx+0x400],zmm30
    vpmovsqb qword ptr [rdx-0x400],zmm30
    vpmovsqb qword ptr [rdx-0x408],zmm30

    vpmovsqd ymm30{k7},zmm29
    vpmovsqd ymm30{k7}{z},zmm29
    vpmovsqd yword ptr [rcx],zmm30
    vpmovsqd yword ptr [rcx]{k7},zmm30
    vpmovsqd yword ptr [rax+r14*8+0x123],zmm30
    vpmovsqd yword ptr [rdx+0xfe0],zmm30
    vpmovsqd yword ptr [rdx+0x1000],zmm30
    vpmovsqd yword ptr [rdx-0x1000],zmm30
    vpmovsqd yword ptr [rdx-0x1020],zmm30

    vpmovsqw xmm30{k7},zmm29
    vpmovsqw xmm30{k7}{z},zmm29
    vpmovsqw oword ptr [rcx],zmm30
    vpmovsqw oword ptr [rcx]{k7},zmm30
    vpmovsqw oword ptr [rax+r14*8+0x123],zmm30
    vpmovsqw oword ptr [rdx+0x7f0],zmm30
    vpmovsqw oword ptr [rdx+0x800],zmm30
    vpmovsqw oword ptr [rdx-0x800],zmm30
    vpmovsqw oword ptr [rdx-0x810],zmm30

    vpmovswb xmm1{k1}{z},ymm2
    vpmovswb xmm1{k1}{z},xmm2
    vpmovswb ymm1{k1}{z},zmm2
    vpmovswb [rax],ymm2
    vpmovswb [rax],xmm2
    vpmovswb [rax],zmm2
    vpmovswb oword ptr [rax],ymm2
    vpmovswb qword ptr [rax],xmm2
    vpmovswb yword ptr [rax],zmm2

    vpmovusdb xmm30{k7},zmm29
    vpmovusdb xmm30{k7}{z},zmm29
    vpmovusdb oword ptr [rcx],zmm30
    vpmovusdb oword ptr [rcx]{k7},zmm30
    vpmovusdb oword ptr [rax+r14*8+0x123],zmm30
    vpmovusdb oword ptr [rdx+0x7f0],zmm30
    vpmovusdb oword ptr [rdx+0x800],zmm30
    vpmovusdb oword ptr [rdx-0x800],zmm30
    vpmovusdb oword ptr [rdx-0x810],zmm30

    vpmovusdw ymm30{k7},zmm29
    vpmovusdw ymm30{k7}{z},zmm29
    vpmovusdw yword ptr [rcx],zmm30
    vpmovusdw yword ptr [rcx]{k7},zmm30
    vpmovusdw yword ptr [rax+r14*8+0x123],zmm30
    vpmovusdw yword ptr [rdx+0xfe0],zmm30
    vpmovusdw yword ptr [rdx+0x1000],zmm30
    vpmovusdw yword ptr [rdx-0x1000],zmm30
    vpmovusdw yword ptr [rdx-0x1020],zmm30

    vpmovusqb xmm30{k7},zmm29
    vpmovusqb xmm30{k7}{z},zmm29
    vpmovusqb qword ptr [rcx],zmm30
    vpmovusqb qword ptr [rcx]{k7},zmm30
    vpmovusqb qword ptr [rax+r14*8+0x123],zmm30
    vpmovusqb qword ptr [rdx+0x3f8],zmm30
    vpmovusqb qword ptr [rdx+0x400],zmm30
    vpmovusqb qword ptr [rdx-0x400],zmm30
    vpmovusqb qword ptr [rdx-0x408],zmm30

    vpmovusqd ymm30{k7},zmm29
    vpmovusqd ymm30{k7}{z},zmm29
    vpmovusqd yword ptr [rcx],zmm30
    vpmovusqd yword ptr [rcx]{k7},zmm30
    vpmovusqd yword ptr [rax+r14*8+0x123],zmm30
    vpmovusqd yword ptr [rdx+0xfe0],zmm30
    vpmovusqd yword ptr [rdx+0x1000],zmm30
    vpmovusqd yword ptr [rdx-0x1000],zmm30
    vpmovusqd yword ptr [rdx-0x1020],zmm30

    vpmovusqw xmm30{k7},zmm29
    vpmovusqw xmm30{k7}{z},zmm29
    vpmovusqw oword ptr [rcx],zmm30
    vpmovusqw oword ptr [rcx]{k7},zmm30
    vpmovusqw oword ptr [rax+r14*8+0x123],zmm30
    vpmovusqw oword ptr [rdx+0x7f0],zmm30
    vpmovusqw oword ptr [rdx+0x800],zmm30
    vpmovusqw oword ptr [rdx-0x800],zmm30
    vpmovusqw oword ptr [rdx-0x810],zmm30

    vpmovuswb xmm1{k1}{z},ymm2
    vpmovuswb xmm1{k1}{z},xmm2
    vpmovuswb ymm1{k1}{z},zmm2
    vpmovuswb [rax],ymm2
    vpmovuswb [rax],xmm2
    vpmovuswb [rax],zmm2
    vpmovuswb oword ptr [rax],ymm2
    vpmovuswb qword ptr [rax],xmm2
    vpmovuswb yword ptr [rax],zmm2

    valignd zmm30,zmm29,zmm28,0xab
    valignd zmm30{k7},zmm29,zmm28,0xab
    valignd zmm30{k7}{z},zmm29,zmm28,0xab
    valignd zmm30,zmm29,zmm28,0x7b
    valignd zmm30,zmm29,zword ptr [rcx],0x7b
    valignd zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    valignd zmm30,zmm29,dword ptr [rcx]{1to16},0x7b
    valignd zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    valignd zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    valignd zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    valignd zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    valignd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16},0x7b
    valignd zmm30,zmm29,dword ptr [rdx+0x200]{1to16},0x7b
    valignd zmm30,zmm29,dword ptr [rdx-0x200]{1to16},0x7b
    valignd zmm30,zmm29,dword ptr [rdx-0x204]{1to16},0x7b

    vblendmpd zmm30,zmm29,zmm28
    vblendmpd zmm30{k7},zmm29,zmm28
    vblendmpd zmm30{k7}{z},zmm29,zmm28
    vblendmpd zmm30,zmm29,zword ptr [rcx]
    vblendmpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vblendmpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vblendmpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vblendmpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vblendmpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vblendmpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vblendmpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vblendmpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vblendmpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vblendmpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vblendmps zmm30,zmm29,zmm28
    vblendmps zmm30{k7},zmm29,zmm28
    vblendmps zmm30{k7}{z},zmm29,zmm28
    vblendmps zmm30,zmm29,zword ptr [rcx]
    vblendmps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vblendmps zmm30,zmm29,dword ptr [rcx]{1to16}
    vblendmps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vblendmps zmm30,zmm29,zword ptr [rdx+0x2000]
    vblendmps zmm30,zmm29,zword ptr [rdx-0x2000]
    vblendmps zmm30,zmm29,zword ptr [rdx-0x2040]
    vblendmps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vblendmps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vblendmps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vblendmps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vbroadcastsd ymm20,qword ptr [rax]
    vbroadcastsd zmm30,qword ptr [rcx]
    vbroadcastsd zmm30{k7},qword ptr [rcx]
    vbroadcastsd zmm30{k7}{z},qword ptr [rcx]
    vbroadcastsd zmm30,qword ptr [rax+r14*8+0x123]
    vbroadcastsd zmm30,qword ptr [rdx+0x3f8]
    vbroadcastsd zmm30,qword ptr [rdx+0x400]
    vbroadcastsd zmm30,qword ptr [rdx-0x400]
    vbroadcastsd zmm30,qword ptr [rdx-0x408]
    vbroadcastsd zmm30{k7},xmm29
    vbroadcastsd zmm30{k7}{z},xmm29

    vbroadcastss xmm20,dword ptr [rax]
    vbroadcastss ymm20,dword ptr [rax]
    vbroadcastss zmm30,dword ptr [rcx]
    vbroadcastss zmm30{k7},dword ptr [rcx]
    vbroadcastss zmm30{k7}{z},dword ptr [rcx]
    vbroadcastss zmm30,dword ptr [rax+r14*8+0x123]
    vbroadcastss zmm30,dword ptr [rdx+0x1fc]
    vbroadcastss zmm30,dword ptr [rdx+0x200]
    vbroadcastss zmm30,dword ptr [rdx-0x200]
    vbroadcastss zmm30,dword ptr [rdx-0x204]
    vbroadcastss zmm30{k7},xmm29
    vbroadcastss zmm30{k7}{z},xmm29

    vcomisd xmm20,xmm1
    vcomisd xmm20,[rax]
    vcomiss xmm20,xmm1
    vcomiss xmm20,[rax]
    vcomisd xmm17,xmm16
    vcomisd xmm16,xmm0
    vcomisd xmm16,[rax]
    vcomisd xmm0,xmm31
    vcomisd xmm0,xmm16
    vcomisd xmm31,xmm1
    vcomisd xmm16,xmm0
    vcomisd xmm30,xmm29
    vcomisd xmm30,xmm29,{sae}
    vcomisd xmm30,qword ptr [rcx]
    vcomisd xmm30,qword ptr [rax+r14*8+0x123]
    vcomisd xmm30,qword ptr [rdx+0x3f8]
    vcomisd xmm30,qword ptr [rdx+0x400]
    vcomisd xmm30,qword ptr [rdx-0x400]
    vcomisd xmm30,qword ptr [rdx-0x408]

    vcomiss xmm30,xmm29
    vcomiss xmm30,xmm29,{sae}
    vcomiss xmm30,dword ptr [rcx]
    vcomiss xmm30,dword ptr [rax+r14*8+0x123]
    vcomiss xmm30,dword ptr [rdx+0x1fc]
    vcomiss xmm30,dword ptr [rdx+0x200]
    vcomiss xmm30,dword ptr [rdx-0x200]
    vcomiss xmm30,dword ptr [rdx-0x204]

    vcvttpd2dq xmm20,xmm1
    vcvttpd2dq xmm20,oword ptr [rax]
    vcvttpd2dq xmm20,ymm1
    vcvttpd2dq xmm20,yword ptr [rax]
    vcvttpd2dq ymm30{k7},zmm29
    vcvttpd2dq ymm30{k7}{z},zmm29
    vcvttpd2dq ymm30{k7},zmm29,{sae}
    vcvttpd2dq ymm30{k7},zword ptr [rcx]
    vcvttpd2dq ymm30{k7},zword ptr [rax+r14*8+0x123]
    vcvttpd2dq ymm30{k7},qword ptr [rcx]{1to8}
    vcvttpd2dq ymm30{k7},zword ptr [rdx+0x1fc0]
    vcvttpd2dq ymm30{k7},zword ptr [rdx+0x2000]
    vcvttpd2dq ymm30{k7},zword ptr [rdx-0x2000]
    vcvttpd2dq ymm30{k7},zword ptr [rdx-0x2040]
    vcvttpd2dq ymm30{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvttpd2dq ymm30{k7},qword ptr [rdx+0x400]{1to8}
    vcvttpd2dq ymm30{k7},qword ptr [rdx-0x400]{1to8}
    vcvttpd2dq ymm30{k7},qword ptr [rdx-0x408]{1to8}

    vcvttps2dq xmm20,xmm1
    vcvttps2dq xmm20,oword ptr [rax]
    vcvttps2dq ymm20,ymm1
    vcvttps2dq ymm20,yword ptr [rax]
    vcvttps2dq zmm30,zmm29
    vcvttps2dq zmm1{k1}{z},zmm2
    vcvttps2dq zmm30{k7},zmm29
    vcvttps2dq zmm30{k7}{z},zmm29
    vcvttps2dq zmm30,zmm29,{sae}
    vcvttps2dq zmm30,zword ptr [rcx]
    vcvttps2dq zmm30,zword ptr [rax+r14*8+0x123]
    vcvttps2dq zmm30,dword ptr [rcx]{1to16}
    vcvttps2dq zmm30,zword ptr [rdx+0x1fc0]
    vcvttps2dq zmm30,zword ptr [rdx+0x2000]
    vcvttps2dq zmm30,zword ptr [rdx-0x2000]
    vcvttps2dq zmm30,zword ptr [rdx-0x2040]
    vcvttps2dq zmm30,dword ptr [rdx+0x1fc]{1to16}
    vcvttps2dq zmm30,dword ptr [rdx+0x200]{1to16}
    vcvttps2dq zmm30,dword ptr [rdx-0x200]{1to16}
    vcvttps2dq zmm30,dword ptr [rdx-0x204]{1to16}

    vfmadd132pd zmm30,zmm29,zmm28
    vfmadd132pd zmm30{k7},zmm29,zmm28
    vfmadd132pd zmm30{k7}{z},zmm29,zmm28
    vfmadd132pd zmm30,zmm29,zmm28,{rn-sae}
    vfmadd132pd zmm30,zmm29,zmm28,{ru-sae}
    vfmadd132pd zmm30,zmm29,zmm28,{rd-sae}
    vfmadd132pd zmm30,zmm29,zmm28,{rz-sae}
    vfmadd132pd zmm30,zmm29,zword ptr [rcx]
    vfmadd132pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmadd132pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmadd132pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmadd132pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmadd132pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmadd132pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmadd132pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmadd132pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmadd132pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmadd132pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmadd132ps zmm30,zmm29,zmm28
    vfmadd132ps zmm30{k7},zmm29,zmm28
    vfmadd132ps zmm30{k7}{z},zmm29,zmm28
    vfmadd132ps zmm30,zmm29,zmm28,{rn-sae}
    vfmadd132ps zmm30,zmm29,zmm28,{ru-sae}
    vfmadd132ps zmm30,zmm29,zmm28,{rd-sae}
    vfmadd132ps zmm30,zmm29,zmm28,{rz-sae}
    vfmadd132ps zmm30,zmm29,zword ptr [rcx]
    vfmadd132ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmadd132ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmadd132ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmadd132ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmadd132ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmadd132ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmadd132ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmadd132ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmadd132ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmadd132ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmadd132sd xmm30{k7},xmm29,xmm28
    vfmadd132sd xmm30{k7}{z},xmm29,xmm28
    vfmadd132sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmadd132sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmadd132sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmadd132sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmadd132sd xmm30{k7},xmm29,qword ptr [rcx]
    vfmadd132sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfmadd132sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfmadd132sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfmadd132sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfmadd132sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfmadd132ss xmm30{k7},xmm29,xmm28
    vfmadd132ss xmm30{k7}{z},xmm29,xmm28
    vfmadd132ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmadd132ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmadd132ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmadd132ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmadd132ss xmm30{k7},xmm29,dword ptr [rcx]
    vfmadd132ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfmadd132ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfmadd132ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfmadd132ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfmadd132ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfmadd213pd zmm30,zmm29,zmm28
    vfmadd213pd zmm30{k7},zmm29,zmm28
    vfmadd213pd zmm30{k7}{z},zmm29,zmm28
    vfmadd213pd zmm30,zmm29,zmm28,{rn-sae}
    vfmadd213pd zmm30,zmm29,zmm28,{ru-sae}
    vfmadd213pd zmm30,zmm29,zmm28,{rd-sae}
    vfmadd213pd zmm30,zmm29,zmm28,{rz-sae}
    vfmadd213pd zmm30,zmm29,zword ptr [rcx]
    vfmadd213pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmadd213pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmadd213pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmadd213pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmadd213pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmadd213pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmadd213pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmadd213pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmadd213pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmadd213pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmadd213ps zmm30,zmm29,zmm28
    vfmadd213ps zmm30{k7},zmm29,zmm28
    vfmadd213ps zmm30{k7}{z},zmm29,zmm28
    vfmadd213ps zmm30,zmm29,zmm28,{rn-sae}
    vfmadd213ps zmm30,zmm29,zmm28,{ru-sae}
    vfmadd213ps zmm30,zmm29,zmm28,{rd-sae}
    vfmadd213ps zmm30,zmm29,zmm28,{rz-sae}
    vfmadd213ps zmm30,zmm29,zword ptr [rcx]
    vfmadd213ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmadd213ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmadd213ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmadd213ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmadd213ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmadd213ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmadd213ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmadd213ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmadd213ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmadd213ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmadd213sd xmm30{k7},xmm29,xmm28
    vfmadd213sd xmm30{k7}{z},xmm29,xmm28
    vfmadd213sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmadd213sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmadd213sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmadd213sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmadd213sd xmm30{k7},xmm29,qword ptr [rcx]
    vfmadd213sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfmadd213sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfmadd213sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfmadd213sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfmadd213sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfmadd213ss xmm30{k7},xmm29,xmm28
    vfmadd213ss xmm30{k7}{z},xmm29,xmm28
    vfmadd213ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmadd213ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmadd213ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmadd213ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmadd213ss xmm30{k7},xmm29,dword ptr [rcx]
    vfmadd213ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfmadd213ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfmadd213ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfmadd213ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfmadd213ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfmadd231pd zmm30,zmm29,zmm28
    vfmadd231pd zmm30{k7},zmm29,zmm28
    vfmadd231pd zmm30{k7}{z},zmm29,zmm28
    vfmadd231pd zmm30,zmm29,zmm28,{rn-sae}
    vfmadd231pd zmm30,zmm29,zmm28,{ru-sae}
    vfmadd231pd zmm30,zmm29,zmm28,{rd-sae}
    vfmadd231pd zmm30,zmm29,zmm28,{rz-sae}
    vfmadd231pd zmm30,zmm29,zword ptr [rcx]
    vfmadd231pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmadd231pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmadd231pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmadd231pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmadd231pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmadd231pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmadd231pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmadd231pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmadd231pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmadd231pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmadd231ps zmm30,zmm29,zmm28
    vfmadd231ps zmm30{k7},zmm29,zmm28
    vfmadd231ps zmm30{k7}{z},zmm29,zmm28
    vfmadd231ps zmm30,zmm29,zmm28,{rn-sae}
    vfmadd231ps zmm30,zmm29,zmm28,{ru-sae}
    vfmadd231ps zmm30,zmm29,zmm28,{rd-sae}
    vfmadd231ps zmm30,zmm29,zmm28,{rz-sae}
    vfmadd231ps zmm30,zmm29,zword ptr [rcx]
    vfmadd231ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmadd231ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmadd231ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmadd231ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmadd231ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmadd231ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmadd231ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmadd231ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmadd231ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmadd231ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmadd231sd xmm30{k7},xmm29,xmm28
    vfmadd231sd xmm30{k7}{z},xmm29,xmm28
    vfmadd231sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmadd231sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmadd231sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmadd231sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmadd231sd xmm30{k7},xmm29,qword ptr [rcx]
    vfmadd231sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfmadd231sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfmadd231sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfmadd231sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfmadd231sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfmadd231ss xmm30{k7},xmm29,xmm28
    vfmadd231ss xmm30{k7}{z},xmm29,xmm28
    vfmadd231ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmadd231ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmadd231ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmadd231ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmadd231ss xmm30{k7},xmm29,dword ptr [rcx]
    vfmadd231ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfmadd231ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfmadd231ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfmadd231ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfmadd231ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfmaddsub132pd zmm30,zmm29,zmm28
    vfmaddsub132pd zmm30{k7},zmm29,zmm28
    vfmaddsub132pd zmm30{k7}{z},zmm29,zmm28
    vfmaddsub132pd zmm30,zmm29,zmm28,{rn-sae}
    vfmaddsub132pd zmm30,zmm29,zmm28,{ru-sae}
    vfmaddsub132pd zmm30,zmm29,zmm28,{rd-sae}
    vfmaddsub132pd zmm30,zmm29,zmm28,{rz-sae}
    vfmaddsub132pd zmm30,zmm29,zword ptr [rcx]
    vfmaddsub132pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmaddsub132pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmaddsub132pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmaddsub132pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmaddsub132pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmaddsub132pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmaddsub132pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmaddsub132pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmaddsub132pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmaddsub132pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmaddsub132ps zmm30,zmm29,zmm28
    vfmaddsub132ps zmm30{k7},zmm29,zmm28
    vfmaddsub132ps zmm30{k7}{z},zmm29,zmm28
    vfmaddsub132ps zmm30,zmm29,zmm28,{rn-sae}
    vfmaddsub132ps zmm30,zmm29,zmm28,{ru-sae}
    vfmaddsub132ps zmm30,zmm29,zmm28,{rd-sae}
    vfmaddsub132ps zmm30,zmm29,zmm28,{rz-sae}
    vfmaddsub132ps zmm30,zmm29,zword ptr [rcx]
    vfmaddsub132ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmaddsub132ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmaddsub132ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmaddsub132ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmaddsub132ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmaddsub132ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmaddsub132ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmaddsub132ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmaddsub132ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmaddsub132ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmaddsub213pd zmm30,zmm29,zmm28
    vfmaddsub213pd zmm30{k7},zmm29,zmm28
    vfmaddsub213pd zmm30{k7}{z},zmm29,zmm28
    vfmaddsub213pd zmm30,zmm29,zmm28,{rn-sae}
    vfmaddsub213pd zmm30,zmm29,zmm28,{ru-sae}
    vfmaddsub213pd zmm30,zmm29,zmm28,{rd-sae}
    vfmaddsub213pd zmm30,zmm29,zmm28,{rz-sae}
    vfmaddsub213pd zmm30,zmm29,zword ptr [rcx]
    vfmaddsub213pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmaddsub213pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmaddsub213pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmaddsub213pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmaddsub213pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmaddsub213pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmaddsub213pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmaddsub213pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmaddsub213pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmaddsub213pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmaddsub213ps zmm30,zmm29,zmm28
    vfmaddsub213ps zmm30{k7},zmm29,zmm28
    vfmaddsub213ps zmm30{k7}{z},zmm29,zmm28
    vfmaddsub213ps zmm30,zmm29,zmm28,{rn-sae}
    vfmaddsub213ps zmm30,zmm29,zmm28,{ru-sae}
    vfmaddsub213ps zmm30,zmm29,zmm28,{rd-sae}
    vfmaddsub213ps zmm30,zmm29,zmm28,{rz-sae}
    vfmaddsub213ps zmm30,zmm29,zword ptr [rcx]
    vfmaddsub213ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmaddsub213ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmaddsub213ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmaddsub213ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmaddsub213ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmaddsub213ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmaddsub213ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmaddsub213ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmaddsub213ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmaddsub213ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmaddsub231pd zmm30,zmm29,zmm28
    vfmaddsub231pd zmm30{k7},zmm29,zmm28
    vfmaddsub231pd zmm30{k7}{z},zmm29,zmm28
    vfmaddsub231pd zmm30,zmm29,zmm28,{rn-sae}
    vfmaddsub231pd zmm30,zmm29,zmm28,{ru-sae}
    vfmaddsub231pd zmm30,zmm29,zmm28,{rd-sae}
    vfmaddsub231pd zmm30,zmm29,zmm28,{rz-sae}
    vfmaddsub231pd zmm30,zmm29,zword ptr [rcx]
    vfmaddsub231pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmaddsub231pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmaddsub231pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmaddsub231pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmaddsub231pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmaddsub231pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmaddsub231pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmaddsub231pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmaddsub231pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmaddsub231pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmaddsub231ps zmm30,zmm29,zmm28
    vfmaddsub231ps zmm30{k7},zmm29,zmm28
    vfmaddsub231ps zmm30{k7}{z},zmm29,zmm28
    vfmaddsub231ps zmm30,zmm29,zmm28,{rn-sae}
    vfmaddsub231ps zmm30,zmm29,zmm28,{ru-sae}
    vfmaddsub231ps zmm30,zmm29,zmm28,{rd-sae}
    vfmaddsub231ps zmm30,zmm29,zmm28,{rz-sae}
    vfmaddsub231ps zmm30,zmm29,zword ptr [rcx]
    vfmaddsub231ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmaddsub231ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmaddsub231ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmaddsub231ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmaddsub231ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmaddsub231ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmaddsub231ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmaddsub231ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmaddsub231ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmaddsub231ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmsub132pd zmm30,zmm29,zmm28
    vfmsub132pd zmm30{k7},zmm29,zmm28
    vfmsub132pd zmm30{k7}{z},zmm29,zmm28
    vfmsub132pd zmm30,zmm29,zmm28,{rn-sae}
    vfmsub132pd zmm30,zmm29,zmm28,{ru-sae}
    vfmsub132pd zmm30,zmm29,zmm28,{rd-sae}
    vfmsub132pd zmm30,zmm29,zmm28,{rz-sae}
    vfmsub132pd zmm30,zmm29,zword ptr [rcx]
    vfmsub132pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsub132pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmsub132pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsub132pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsub132pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsub132pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsub132pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmsub132pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmsub132pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmsub132pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmsub132ps zmm30,zmm29,zmm28
    vfmsub132ps zmm30{k7},zmm29,zmm28
    vfmsub132ps zmm30{k7}{z},zmm29,zmm28
    vfmsub132ps zmm30,zmm29,zmm28,{rn-sae}
    vfmsub132ps zmm30,zmm29,zmm28,{ru-sae}
    vfmsub132ps zmm30,zmm29,zmm28,{rd-sae}
    vfmsub132ps zmm30,zmm29,zmm28,{rz-sae}
    vfmsub132ps zmm30,zmm29,zword ptr [rcx]
    vfmsub132ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsub132ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmsub132ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsub132ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsub132ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsub132ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsub132ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmsub132ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmsub132ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmsub132ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmsub132sd xmm30{k7},xmm29,xmm28
    vfmsub132sd xmm30{k7}{z},xmm29,xmm28
    vfmsub132sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmsub132sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmsub132sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmsub132sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmsub132sd xmm30{k7},xmm29,qword ptr [rcx]
    vfmsub132sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfmsub132sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfmsub132sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfmsub132sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfmsub132sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfmsub132ss xmm30{k7},xmm29,xmm28
    vfmsub132ss xmm30{k7}{z},xmm29,xmm28
    vfmsub132ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmsub132ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmsub132ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmsub132ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmsub132ss xmm30{k7},xmm29,dword ptr [rcx]
    vfmsub132ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfmsub132ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfmsub132ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfmsub132ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfmsub132ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfmsub213pd zmm30,zmm29,zmm28
    vfmsub213pd zmm30{k7},zmm29,zmm28
    vfmsub213pd zmm30{k7}{z},zmm29,zmm28
    vfmsub213pd zmm30,zmm29,zmm28,{rn-sae}
    vfmsub213pd zmm30,zmm29,zmm28,{ru-sae}
    vfmsub213pd zmm30,zmm29,zmm28,{rd-sae}
    vfmsub213pd zmm30,zmm29,zmm28,{rz-sae}
    vfmsub213pd zmm30,zmm29,zword ptr [rcx]
    vfmsub213pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsub213pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmsub213pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsub213pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsub213pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsub213pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsub213pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmsub213pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmsub213pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmsub213pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmsub213ps zmm30,zmm29,zmm28
    vfmsub213ps zmm30{k7},zmm29,zmm28
    vfmsub213ps zmm30{k7}{z},zmm29,zmm28
    vfmsub213ps zmm30,zmm29,zmm28,{rn-sae}
    vfmsub213ps zmm30,zmm29,zmm28,{ru-sae}
    vfmsub213ps zmm30,zmm29,zmm28,{rd-sae}
    vfmsub213ps zmm30,zmm29,zmm28,{rz-sae}
    vfmsub213ps zmm30,zmm29,zword ptr [rcx]
    vfmsub213ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsub213ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmsub213ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsub213ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsub213ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsub213ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsub213ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmsub213ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmsub213ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmsub213ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmsub213sd xmm30{k7},xmm29,xmm28
    vfmsub213sd xmm30{k7}{z},xmm29,xmm28
    vfmsub213sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmsub213sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmsub213sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmsub213sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmsub213sd xmm30{k7},xmm29,qword ptr [rcx]
    vfmsub213sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfmsub213sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfmsub213sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfmsub213sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfmsub213sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfmsub213ss xmm30{k7},xmm29,xmm28
    vfmsub213ss xmm30{k7}{z},xmm29,xmm28
    vfmsub213ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmsub213ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmsub213ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmsub213ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmsub213ss xmm30{k7},xmm29,dword ptr [rcx]
    vfmsub213ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfmsub213ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfmsub213ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfmsub213ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfmsub213ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfmsub231pd zmm30,zmm29,zmm28
    vfmsub231pd zmm30{k7},zmm29,zmm28
    vfmsub231pd zmm30{k7}{z},zmm29,zmm28
    vfmsub231pd zmm30,zmm29,zmm28,{rn-sae}
    vfmsub231pd zmm30,zmm29,zmm28,{ru-sae}
    vfmsub231pd zmm30,zmm29,zmm28,{rd-sae}
    vfmsub231pd zmm30,zmm29,zmm28,{rz-sae}
    vfmsub231pd zmm30,zmm29,zword ptr [rcx]
    vfmsub231pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsub231pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmsub231pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsub231pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsub231pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsub231pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsub231pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmsub231pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmsub231pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmsub231pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmsub231ps zmm30,zmm29,zmm28
    vfmsub231ps zmm30{k7},zmm29,zmm28
    vfmsub231ps zmm30{k7}{z},zmm29,zmm28
    vfmsub231ps zmm30,zmm29,zmm28,{rn-sae}
    vfmsub231ps zmm30,zmm29,zmm28,{ru-sae}
    vfmsub231ps zmm30,zmm29,zmm28,{rd-sae}
    vfmsub231ps zmm30,zmm29,zmm28,{rz-sae}
    vfmsub231ps zmm30,zmm29,zword ptr [rcx]
    vfmsub231ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsub231ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmsub231ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsub231ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsub231ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsub231ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsub231ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmsub231ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmsub231ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmsub231ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmsub231sd xmm30{k7},xmm29,xmm28
    vfmsub231sd xmm30{k7}{z},xmm29,xmm28
    vfmsub231sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmsub231sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmsub231sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmsub231sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmsub231sd xmm30{k7},xmm29,qword ptr [rcx]
    vfmsub231sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfmsub231sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfmsub231sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfmsub231sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfmsub231sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfmsub231ss xmm30{k7},xmm29,xmm28
    vfmsub231ss xmm30{k7}{z},xmm29,xmm28
    vfmsub231ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfmsub231ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfmsub231ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfmsub231ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfmsub231ss xmm30{k7},xmm29,dword ptr [rcx]
    vfmsub231ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfmsub231ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfmsub231ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfmsub231ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfmsub231ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfmsubadd132pd zmm30,zmm29,zmm28
    vfmsubadd132pd zmm30{k7},zmm29,zmm28
    vfmsubadd132pd zmm30{k7}{z},zmm29,zmm28
    vfmsubadd132pd zmm30,zmm29,zmm28,{rn-sae}
    vfmsubadd132pd zmm30,zmm29,zmm28,{ru-sae}
    vfmsubadd132pd zmm30,zmm29,zmm28,{rd-sae}
    vfmsubadd132pd zmm30,zmm29,zmm28,{rz-sae}
    vfmsubadd132pd zmm30,zmm29,zword ptr [rcx]
    vfmsubadd132pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsubadd132pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmsubadd132pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsubadd132pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsubadd132pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsubadd132pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsubadd132pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmsubadd132pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmsubadd132pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmsubadd132pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmsubadd132ps zmm30,zmm29,zmm28
    vfmsubadd132ps zmm30{k7},zmm29,zmm28
    vfmsubadd132ps zmm30{k7}{z},zmm29,zmm28
    vfmsubadd132ps zmm30,zmm29,zmm28,{rn-sae}
    vfmsubadd132ps zmm30,zmm29,zmm28,{ru-sae}
    vfmsubadd132ps zmm30,zmm29,zmm28,{rd-sae}
    vfmsubadd132ps zmm30,zmm29,zmm28,{rz-sae}
    vfmsubadd132ps zmm30,zmm29,zword ptr [rcx]
    vfmsubadd132ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsubadd132ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmsubadd132ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsubadd132ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsubadd132ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsubadd132ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsubadd132ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmsubadd132ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmsubadd132ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmsubadd132ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmsubadd213pd zmm30,zmm29,zmm28
    vfmsubadd213pd zmm30{k7},zmm29,zmm28
    vfmsubadd213pd zmm30{k7}{z},zmm29,zmm28
    vfmsubadd213pd zmm30,zmm29,zmm28,{rn-sae}
    vfmsubadd213pd zmm30,zmm29,zmm28,{ru-sae}
    vfmsubadd213pd zmm30,zmm29,zmm28,{rd-sae}
    vfmsubadd213pd zmm30,zmm29,zmm28,{rz-sae}
    vfmsubadd213pd zmm30,zmm29,zword ptr [rcx]
    vfmsubadd213pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsubadd213pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmsubadd213pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsubadd213pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsubadd213pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsubadd213pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsubadd213pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmsubadd213pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmsubadd213pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmsubadd213pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmsubadd213ps zmm30,zmm29,zmm28
    vfmsubadd213ps zmm30{k7},zmm29,zmm28
    vfmsubadd213ps zmm30{k7}{z},zmm29,zmm28
    vfmsubadd213ps zmm30,zmm29,zmm28,{rn-sae}
    vfmsubadd213ps zmm30,zmm29,zmm28,{ru-sae}
    vfmsubadd213ps zmm30,zmm29,zmm28,{rd-sae}
    vfmsubadd213ps zmm30,zmm29,zmm28,{rz-sae}
    vfmsubadd213ps zmm30,zmm29,zword ptr [rcx]
    vfmsubadd213ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsubadd213ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmsubadd213ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsubadd213ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsubadd213ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsubadd213ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsubadd213ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmsubadd213ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmsubadd213ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmsubadd213ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfmsubadd231pd zmm30,zmm29,zmm28
    vfmsubadd231pd zmm30{k7},zmm29,zmm28
    vfmsubadd231pd zmm30{k7}{z},zmm29,zmm28
    vfmsubadd231pd zmm30,zmm29,zmm28,{rn-sae}
    vfmsubadd231pd zmm30,zmm29,zmm28,{ru-sae}
    vfmsubadd231pd zmm30,zmm29,zmm28,{rd-sae}
    vfmsubadd231pd zmm30,zmm29,zmm28,{rz-sae}
    vfmsubadd231pd zmm30,zmm29,zword ptr [rcx]
    vfmsubadd231pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsubadd231pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfmsubadd231pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsubadd231pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsubadd231pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsubadd231pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsubadd231pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfmsubadd231pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfmsubadd231pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfmsubadd231pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfmsubadd231ps zmm30,zmm29,zmm28
    vfmsubadd231ps zmm30{k7},zmm29,zmm28
    vfmsubadd231ps zmm30{k7}{z},zmm29,zmm28
    vfmsubadd231ps zmm30,zmm29,zmm28,{rn-sae}
    vfmsubadd231ps zmm30,zmm29,zmm28,{ru-sae}
    vfmsubadd231ps zmm30,zmm29,zmm28,{rd-sae}
    vfmsubadd231ps zmm30,zmm29,zmm28,{rz-sae}
    vfmsubadd231ps zmm30,zmm29,zword ptr [rcx]
    vfmsubadd231ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfmsubadd231ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfmsubadd231ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfmsubadd231ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfmsubadd231ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfmsubadd231ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfmsubadd231ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfmsubadd231ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfmsubadd231ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfmsubadd231ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmadd132pd zmm30,zmm29,zmm28
    vfnmadd132pd zmm30{k7},zmm29,zmm28
    vfnmadd132pd zmm30{k7}{z},zmm29,zmm28
    vfnmadd132pd zmm30,zmm29,zmm28,{rn-sae}
    vfnmadd132pd zmm30,zmm29,zmm28,{ru-sae}
    vfnmadd132pd zmm30,zmm29,zmm28,{rd-sae}
    vfnmadd132pd zmm30,zmm29,zmm28,{rz-sae}
    vfnmadd132pd zmm30,zmm29,zword ptr [rcx]
    vfnmadd132pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmadd132pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfnmadd132pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmadd132pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmadd132pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmadd132pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmadd132pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfnmadd132pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfnmadd132pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfnmadd132pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfnmadd132ps zmm30,zmm29,zmm28
    vfnmadd132ps zmm30{k7},zmm29,zmm28
    vfnmadd132ps zmm30{k7}{z},zmm29,zmm28
    vfnmadd132ps zmm30,zmm29,zmm28,{rn-sae}
    vfnmadd132ps zmm30,zmm29,zmm28,{ru-sae}
    vfnmadd132ps zmm30,zmm29,zmm28,{rd-sae}
    vfnmadd132ps zmm30,zmm29,zmm28,{rz-sae}
    vfnmadd132ps zmm30,zmm29,zword ptr [rcx]
    vfnmadd132ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmadd132ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfnmadd132ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmadd132ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmadd132ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmadd132ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmadd132ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfnmadd132ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfnmadd132ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfnmadd132ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmadd132sd xmm30{k7},xmm29,xmm28
    vfnmadd132sd xmm30{k7}{z},xmm29,xmm28
    vfnmadd132sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmadd132sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmadd132sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmadd132sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmadd132sd xmm30{k7},xmm29,qword ptr [rcx]
    vfnmadd132sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfnmadd132sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfnmadd132sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfnmadd132sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfnmadd132sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfnmadd132ss xmm30{k7},xmm29,xmm28
    vfnmadd132ss xmm30{k7}{z},xmm29,xmm28
    vfnmadd132ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmadd132ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmadd132ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmadd132ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmadd132ss xmm30{k7},xmm29,dword ptr [rcx]
    vfnmadd132ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfnmadd132ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfnmadd132ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfnmadd132ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfnmadd132ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfnmadd213pd zmm30,zmm29,zmm28
    vfnmadd213pd zmm30{k7},zmm29,zmm28
    vfnmadd213pd zmm30{k7}{z},zmm29,zmm28
    vfnmadd213pd zmm30,zmm29,zmm28,{rn-sae}
    vfnmadd213pd zmm30,zmm29,zmm28,{ru-sae}
    vfnmadd213pd zmm30,zmm29,zmm28,{rd-sae}
    vfnmadd213pd zmm30,zmm29,zmm28,{rz-sae}
    vfnmadd213pd zmm30,zmm29,zword ptr [rcx]
    vfnmadd213pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmadd213pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfnmadd213pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmadd213pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmadd213pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmadd213pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmadd213pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfnmadd213pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfnmadd213pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfnmadd213pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfnmadd213ps zmm30,zmm29,zmm28
    vfnmadd213ps zmm30{k7},zmm29,zmm28
    vfnmadd213ps zmm30{k7}{z},zmm29,zmm28
    vfnmadd213ps zmm30,zmm29,zmm28,{rn-sae}
    vfnmadd213ps zmm30,zmm29,zmm28,{ru-sae}
    vfnmadd213ps zmm30,zmm29,zmm28,{rd-sae}
    vfnmadd213ps zmm30,zmm29,zmm28,{rz-sae}
    vfnmadd213ps zmm30,zmm29,zword ptr [rcx]
    vfnmadd213ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmadd213ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfnmadd213ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmadd213ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmadd213ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmadd213ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmadd213ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfnmadd213ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfnmadd213ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfnmadd213ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmadd213sd xmm30{k7},xmm29,xmm28
    vfnmadd213sd xmm30{k7}{z},xmm29,xmm28
    vfnmadd213sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmadd213sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmadd213sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmadd213sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmadd213sd xmm30{k7},xmm29,qword ptr [rcx]
    vfnmadd213sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfnmadd213sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfnmadd213sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfnmadd213sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfnmadd213sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfnmadd213ss xmm30{k7},xmm29,xmm28
    vfnmadd213ss xmm30{k7}{z},xmm29,xmm28
    vfnmadd213ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmadd213ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmadd213ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmadd213ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmadd213ss xmm30{k7},xmm29,dword ptr [rcx]
    vfnmadd213ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfnmadd213ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfnmadd213ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfnmadd213ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfnmadd213ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfnmadd231pd zmm30,zmm29,zmm28
    vfnmadd231pd zmm30{k7},zmm29,zmm28
    vfnmadd231pd zmm30{k7}{z},zmm29,zmm28
    vfnmadd231pd zmm30,zmm29,zmm28,{rn-sae}
    vfnmadd231pd zmm30,zmm29,zmm28,{ru-sae}
    vfnmadd231pd zmm30,zmm29,zmm28,{rd-sae}
    vfnmadd231pd zmm30,zmm29,zmm28,{rz-sae}
    vfnmadd231pd zmm30,zmm29,zword ptr [rcx]
    vfnmadd231pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmadd231pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfnmadd231pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmadd231pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmadd231pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmadd231pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmadd231pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfnmadd231pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfnmadd231pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfnmadd231pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfnmadd231ps zmm30,zmm29,zmm28
    vfnmadd231ps zmm30{k7},zmm29,zmm28
    vfnmadd231ps zmm30{k7}{z},zmm29,zmm28
    vfnmadd231ps zmm30,zmm29,zmm28,{rn-sae}
    vfnmadd231ps zmm30,zmm29,zmm28,{ru-sae}
    vfnmadd231ps zmm30,zmm29,zmm28,{rd-sae}
    vfnmadd231ps zmm30,zmm29,zmm28,{rz-sae}
    vfnmadd231ps zmm30,zmm29,zword ptr [rcx]
    vfnmadd231ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmadd231ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfnmadd231ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmadd231ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmadd231ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmadd231ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmadd231ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfnmadd231ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfnmadd231ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfnmadd231ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmadd231sd xmm30{k7},xmm29,xmm28
    vfnmadd231sd xmm30{k7}{z},xmm29,xmm28
    vfnmadd231sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmadd231sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmadd231sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmadd231sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmadd231sd xmm30{k7},xmm29,qword ptr [rcx]
    vfnmadd231sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfnmadd231sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfnmadd231sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfnmadd231sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfnmadd231sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfnmadd231ss xmm30{k7},xmm29,xmm28
    vfnmadd231ss xmm30{k7}{z},xmm29,xmm28
    vfnmadd231ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmadd231ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmadd231ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmadd231ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmadd231ss xmm30{k7},xmm29,dword ptr [rcx]
    vfnmadd231ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfnmadd231ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfnmadd231ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfnmadd231ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfnmadd231ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfnmsub132pd zmm30,zmm29,zmm28
    vfnmsub132pd zmm30{k7},zmm29,zmm28
    vfnmsub132pd zmm30{k7}{z},zmm29,zmm28
    vfnmsub132pd zmm30,zmm29,zmm28,{rn-sae}
    vfnmsub132pd zmm30,zmm29,zmm28,{ru-sae}
    vfnmsub132pd zmm30,zmm29,zmm28,{rd-sae}
    vfnmsub132pd zmm30,zmm29,zmm28,{rz-sae}
    vfnmsub132pd zmm30,zmm29,zword ptr [rcx]
    vfnmsub132pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmsub132pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfnmsub132pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmsub132pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmsub132pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmsub132pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmsub132pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfnmsub132pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfnmsub132pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfnmsub132pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfnmsub132ps zmm30,zmm29,zmm28
    vfnmsub132ps zmm30{k7},zmm29,zmm28
    vfnmsub132ps zmm30{k7}{z},zmm29,zmm28
    vfnmsub132ps zmm30,zmm29,zmm28,{rn-sae}
    vfnmsub132ps zmm30,zmm29,zmm28,{ru-sae}
    vfnmsub132ps zmm30,zmm29,zmm28,{rd-sae}
    vfnmsub132ps zmm30,zmm29,zmm28,{rz-sae}
    vfnmsub132ps zmm30,zmm29,zword ptr [rcx]
    vfnmsub132ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmsub132ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfnmsub132ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmsub132ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmsub132ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmsub132ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmsub132ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfnmsub132ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfnmsub132ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfnmsub132ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmsub132sd xmm30{k7},xmm29,xmm28
    vfnmsub132sd xmm30{k7}{z},xmm29,xmm28
    vfnmsub132sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmsub132sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmsub132sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmsub132sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmsub132sd xmm30{k7},xmm29,qword ptr [rcx]
    vfnmsub132sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfnmsub132sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfnmsub132sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfnmsub132sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfnmsub132sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfnmsub132ss xmm30{k7},xmm29,xmm28
    vfnmsub132ss xmm30{k7}{z},xmm29,xmm28
    vfnmsub132ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmsub132ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmsub132ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmsub132ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmsub132ss xmm30{k7},xmm29,dword ptr [rcx]
    vfnmsub132ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfnmsub132ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfnmsub132ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfnmsub132ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfnmsub132ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfnmsub213pd zmm30,zmm29,zmm28
    vfnmsub213pd zmm30{k7},zmm29,zmm28
    vfnmsub213pd zmm30{k7}{z},zmm29,zmm28
    vfnmsub213pd zmm30,zmm29,zmm28,{rn-sae}
    vfnmsub213pd zmm30,zmm29,zmm28,{ru-sae}
    vfnmsub213pd zmm30,zmm29,zmm28,{rd-sae}
    vfnmsub213pd zmm30,zmm29,zmm28,{rz-sae}
    vfnmsub213pd zmm30,zmm29,zword ptr [rcx]
    vfnmsub213pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmsub213pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfnmsub213pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmsub213pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmsub213pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmsub213pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmsub213pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfnmsub213pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfnmsub213pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfnmsub213pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfnmsub213ps zmm30,zmm29,zmm28
    vfnmsub213ps zmm30{k7},zmm29,zmm28
    vfnmsub213ps zmm30{k7}{z},zmm29,zmm28
    vfnmsub213ps zmm30,zmm29,zmm28,{rn-sae}
    vfnmsub213ps zmm30,zmm29,zmm28,{ru-sae}
    vfnmsub213ps zmm30,zmm29,zmm28,{rd-sae}
    vfnmsub213ps zmm30,zmm29,zmm28,{rz-sae}
    vfnmsub213ps zmm30,zmm29,zword ptr [rcx]
    vfnmsub213ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmsub213ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfnmsub213ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmsub213ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmsub213ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmsub213ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmsub213ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfnmsub213ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfnmsub213ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfnmsub213ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmsub213sd xmm30{k7},xmm29,xmm28
    vfnmsub213sd xmm30{k7}{z},xmm29,xmm28
    vfnmsub213sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmsub213sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmsub213sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmsub213sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmsub213sd xmm30{k7},xmm29,qword ptr [rcx]
    vfnmsub213sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfnmsub213sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfnmsub213sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfnmsub213sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfnmsub213sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfnmsub213ss xmm30{k7},xmm29,xmm28
    vfnmsub213ss xmm30{k7}{z},xmm29,xmm28
    vfnmsub213ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmsub213ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmsub213ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmsub213ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmsub213ss xmm30{k7},xmm29,dword ptr [rcx]
    vfnmsub213ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfnmsub213ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfnmsub213ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfnmsub213ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfnmsub213ss xmm30{k7},xmm29,dword ptr [rdx-0x204]
    vfnmsub231pd zmm30,zmm29,zmm28
    vfnmsub231pd zmm30{k7},zmm29,zmm28
    vfnmsub231pd zmm30{k7}{z},zmm29,zmm28
    vfnmsub231pd zmm30,zmm29,zmm28,{rn-sae}
    vfnmsub231pd zmm30,zmm29,zmm28,{ru-sae}
    vfnmsub231pd zmm30,zmm29,zmm28,{rd-sae}
    vfnmsub231pd zmm30,zmm29,zmm28,{rz-sae}
    vfnmsub231pd zmm30,zmm29,zword ptr [rcx]
    vfnmsub231pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmsub231pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vfnmsub231pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmsub231pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmsub231pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmsub231pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmsub231pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vfnmsub231pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vfnmsub231pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vfnmsub231pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}
    vfnmsub231ps zmm30,zmm29,zmm28
    vfnmsub231ps zmm30{k7},zmm29,zmm28
    vfnmsub231ps zmm30{k7}{z},zmm29,zmm28
    vfnmsub231ps zmm30,zmm29,zmm28,{rn-sae}
    vfnmsub231ps zmm30,zmm29,zmm28,{ru-sae}
    vfnmsub231ps zmm30,zmm29,zmm28,{rd-sae}
    vfnmsub231ps zmm30,zmm29,zmm28,{rz-sae}
    vfnmsub231ps zmm30,zmm29,zword ptr [rcx]
    vfnmsub231ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vfnmsub231ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vfnmsub231ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vfnmsub231ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vfnmsub231ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vfnmsub231ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vfnmsub231ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vfnmsub231ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vfnmsub231ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vfnmsub231ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vfnmsub231sd xmm30{k7},xmm29,xmm28
    vfnmsub231sd xmm30{k7}{z},xmm29,xmm28
    vfnmsub231sd xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmsub231sd xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmsub231sd xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmsub231sd xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmsub231sd xmm30{k7},xmm29,qword ptr [rcx]
    vfnmsub231sd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vfnmsub231sd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vfnmsub231sd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vfnmsub231sd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vfnmsub231sd xmm30{k7},xmm29,qword ptr [rdx-0x408]
    vfnmsub231ss xmm30{k7},xmm29,xmm28
    vfnmsub231ss xmm30{k7}{z},xmm29,xmm28
    vfnmsub231ss xmm30{k7},xmm29,xmm28,{rn-sae}
    vfnmsub231ss xmm30{k7},xmm29,xmm28,{ru-sae}
    vfnmsub231ss xmm30{k7},xmm29,xmm28,{rd-sae}
    vfnmsub231ss xmm30{k7},xmm29,xmm28,{rz-sae}
    vfnmsub231ss xmm30{k7},xmm29,dword ptr [rcx]
    vfnmsub231ss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vfnmsub231ss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vfnmsub231ss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vfnmsub231ss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vfnmsub231ss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vgetmantpd zmm30,zmm29,0xab
    vgetmantpd zmm30{k7},zmm29,0xab
    vgetmantpd zmm30{k7}{z},zmm29,0xab
    vgetmantpd zmm30,zmm29,{sae},0xab
    vgetmantpd zmm30,zmm29,0x7b
    vgetmantpd zmm30,zmm29,{sae},0x7b
    vgetmantpd zmm30,zword ptr [rcx],0x7b
    vgetmantpd zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vgetmantpd zmm30,qword ptr [rcx]{1to8},0x7b
    vgetmantpd zmm30,zword ptr [rdx+0x1fc0],0x7b
    vgetmantpd zmm30,zword ptr [rdx+0x2000],0x7b
    vgetmantpd zmm30,zword ptr [rdx-0x2000],0x7b
    vgetmantpd zmm30,zword ptr [rdx-0x2040],0x7b
    vgetmantpd zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vgetmantpd zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vgetmantpd zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vgetmantpd zmm30,qword ptr [rdx-0x408]{1to8},0x7b
    vgetmantps zmm30,zmm29,0xab
    vgetmantps zmm30{k7},zmm29,0xab
    vgetmantps zmm30{k7}{z},zmm29,0xab
    vgetmantps zmm30,zmm29,{sae},0xab
    vgetmantps zmm30,zmm29,0x7b
    vgetmantps zmm30,zmm29,{sae},0x7b
    vgetmantps zmm30,zword ptr [rcx],0x7b
    vgetmantps zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vgetmantps zmm30,dword ptr [rcx]{1to16},0x7b
    vgetmantps zmm30,zword ptr [rdx+0x1fc0],0x7b
    vgetmantps zmm30,zword ptr [rdx+0x2000],0x7b
    vgetmantps zmm30,zword ptr [rdx-0x2000],0x7b
    vgetmantps zmm30,zword ptr [rdx-0x2040],0x7b
    vgetmantps zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vgetmantps zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vgetmantps zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vgetmantps zmm30,dword ptr [rdx-0x204]{1to16},0x7b
    vgetmantsd xmm30{k7},xmm29,xmm28,0xab
    vgetmantsd xmm30{k7}{z},xmm29,xmm28,0xab
    vgetmantsd xmm30{k7},xmm29,xmm28,{sae},0xab
    vgetmantsd xmm30{k7},xmm29,xmm28,0x7b
    vgetmantsd xmm30{k7},xmm29,xmm28,{sae},0x7b
    vgetmantsd xmm30{k7},xmm29,qword ptr [rcx],0x7b
    vgetmantsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123],0x7b
    vgetmantsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8],0x7b
    vgetmantsd xmm30{k7},xmm29,qword ptr [rdx+0x400],0x7b
    vgetmantsd xmm30{k7},xmm29,qword ptr [rdx-0x400],0x7b
    vgetmantsd xmm30{k7},xmm29,qword ptr [rdx-0x408],0x7b
    vgetmantss xmm30{k7},xmm29,xmm28,0xab
    vgetmantss xmm30{k7}{z},xmm29,xmm28,0xab
    vgetmantss xmm30{k7},xmm29,xmm28,{sae},0xab
    vgetmantss xmm30{k7},xmm29,xmm28,0x7b
    vgetmantss xmm30{k7},xmm29,xmm28,{sae},0x7b
    vgetmantss xmm30{k7},xmm29,dword ptr [rcx],0x7b
    vgetmantss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123],0x7b
    vgetmantss xmm30{k7},xmm29,dword ptr [rdx+0x1fc],0x7b
    vgetmantss xmm30{k7},xmm29,dword ptr [rdx+0x200],0x7b
    vgetmantss xmm30{k7},xmm29,dword ptr [rdx-0x200],0x7b
    vgetmantss xmm30{k7},xmm29,dword ptr [rdx-0x204],0x7b

    vinsertf32x4 zmm30{k7},zmm29,xmm28,0xab
    vinsertf32x4 zmm30{k7}{z},zmm29,xmm28,0xab
    vinsertf32x4 zmm30{k7},zmm29,xmm28,0x7b
    vinsertf32x4 zmm30{k7},zmm29,oword ptr [rcx],0x7b
    vinsertf32x4 zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123],0x7b
    vinsertf32x4 zmm30{k7},zmm29,oword ptr [rdx+0x7f0],0x7b
    vinsertf32x4 zmm30{k7},zmm29,oword ptr [rdx+0x800],0x7b
    vinsertf32x4 zmm30{k7},zmm29,oword ptr [rdx-0x800],0x7b
    vinsertf32x4 zmm30{k7},zmm29,oword ptr [rdx-0x810],0x7b
    vinsertf64x4 zmm30{k7},zmm29,ymm28,0xab
    vinsertf64x4 zmm30{k7}{z},zmm29,ymm28,0xab
    vinsertf64x4 zmm30{k7},zmm29,ymm28,0x7b
    vinsertf64x4 zmm30{k7},zmm29,yword ptr [rcx],0x7b
    vinsertf64x4 zmm30{k7},zmm29,yword ptr [rax+r14*8+0x123],0x7b
    vinsertf64x4 zmm30{k7},zmm29,yword ptr [rdx+0xfe0],0x7b
    vinsertf64x4 zmm30{k7},zmm29,yword ptr [rdx+0x1000],0x7b
    vinsertf64x4 zmm30{k7},zmm29,yword ptr [rdx-0x1000],0x7b
    vinsertf64x4 zmm30{k7},zmm29,yword ptr [rdx-0x1020],0x7b
    vinserti32x4 zmm30{k7},zmm29,xmm28,0xab
    vinserti32x4 zmm30{k7}{z},zmm29,xmm28,0xab
    vinserti32x4 zmm30{k7},zmm29,xmm28,0x7b
    vinserti32x4 zmm30{k7},zmm29,oword ptr [rcx],0x7b
    vinserti32x4 zmm30{k7},zmm29,oword ptr [rax+r14*8+0x123],0x7b
    vinserti32x4 zmm30{k7},zmm29,oword ptr [rdx+0x7f0],0x7b
    vinserti32x4 zmm30{k7},zmm29,oword ptr [rdx+0x800],0x7b
    vinserti32x4 zmm30{k7},zmm29,oword ptr [rdx-0x800],0x7b
    vinserti32x4 zmm30{k7},zmm29,oword ptr [rdx-0x810],0x7b
    vinserti64x4 zmm30{k7},zmm29,ymm28,0xab
    vinserti64x4 zmm30{k7}{z},zmm29,ymm28,0xab
    vinserti64x4 zmm30{k7},zmm29,ymm28,0x7b
    vinserti64x4 zmm30{k7},zmm29,yword ptr [rcx],0x7b
    vinserti64x4 zmm30{k7},zmm29,yword ptr [rax+r14*8+0x123],0x7b
    vinserti64x4 zmm30{k7},zmm29,yword ptr [rdx+0xfe0],0x7b
    vinserti64x4 zmm30{k7},zmm29,yword ptr [rdx+0x1000],0x7b
    vinserti64x4 zmm30{k7},zmm29,yword ptr [rdx-0x1000],0x7b
    vinserti64x4 zmm30{k7},zmm29,yword ptr [rdx-0x1020],0x7b

    vmovddup xmm2,xmm1
    vmovddup xmm20,xmm1
    vmovddup xmm20,qword ptr [rax]
    vmovddup ymm20,ymm1
    vmovddup ymm20,yword ptr [rax]
    vmovddup zmm30,zmm29
    vmovddup zmm30{k7},zmm29
    vmovddup zmm30{k7}{z},zmm29
    vmovddup zmm30,zword ptr [rcx]
    vmovddup zmm30,zword ptr [rax+r14*8+0x123]
    vmovddup zmm30,zword ptr [rdx+0x1fc0]
    vmovddup zmm30,zword ptr [rdx+0x2000]
    vmovddup zmm30,zword ptr [rdx-0x2000]
    vmovddup zmm30,zword ptr [rdx-0x2040]

    vmovhpd xmm20,xmm1,qword ptr [rax]
    vmovhpd xmm29,xmm30,qword ptr [rcx]
    vmovhpd xmm29,xmm30,qword ptr [rax+r14*8+0x123]
    vmovhpd xmm29,xmm30,qword ptr [rdx+0x3f8]
    vmovhpd xmm29,xmm30,qword ptr [rdx+0x400]
    vmovhpd xmm29,xmm30,qword ptr [rdx-0x400]
    vmovhpd xmm29,xmm30,qword ptr [rdx-0x408]
    vmovhpd qword ptr [rax],xmm21
    vmovhpd qword ptr [rcx],xmm30
    vmovhpd qword ptr [rax+r14*8+0x123],xmm30
    vmovhpd qword ptr [rdx+0x3f8],xmm30
    vmovhpd qword ptr [rdx+0x400],xmm30
    vmovhpd qword ptr [rdx-0x400],xmm30
    vmovhpd qword ptr [rdx-0x408],xmm30

    vmovhps xmm20,xmm1,qword ptr [rax]
    vmovhps xmm29,xmm30,qword ptr [rcx]
    vmovhps xmm29,xmm30,qword ptr [rax+r14*8+0x123]
    vmovhps xmm29,xmm30,qword ptr [rdx+0x3f8]
    vmovhps xmm29,xmm30,qword ptr [rdx+0x400]
    vmovhps xmm29,xmm30,qword ptr [rdx-0x400]
    vmovhps xmm29,xmm30,qword ptr [rdx-0x408]
    vmovhps qword ptr [rax],xmm21
    vmovhps qword ptr [rcx],xmm30
    vmovhps qword ptr [rax+r14*8+0x123],xmm30
    vmovhps qword ptr [rdx+0x3f8],xmm30
    vmovhps qword ptr [rdx+0x400],xmm30
    vmovhps qword ptr [rdx-0x400],xmm30
    vmovhps qword ptr [rdx-0x408],xmm30

    vmovlpd xmm20,xmm1,qword ptr [rax]
    vmovlpd xmm29,xmm30,qword ptr [rcx]
    vmovlpd xmm29,xmm30,qword ptr [rax+r14*8+0x123]
    vmovlpd xmm29,xmm30,qword ptr [rdx+0x3f8]
    vmovlpd xmm29,xmm30,qword ptr [rdx+0x400]
    vmovlpd xmm29,xmm30,qword ptr [rdx-0x400]
    vmovlpd xmm29,xmm30,qword ptr [rdx-0x408]
    vmovlpd qword ptr [rax],xmm21
    vmovlpd qword ptr [rcx],xmm30
    vmovlpd qword ptr [rax+r14*8+0x123],xmm30
    vmovlpd qword ptr [rdx+0x3f8],xmm30
    vmovlpd qword ptr [rdx+0x400],xmm30
    vmovlpd qword ptr [rdx-0x400],xmm30
    vmovlpd qword ptr [rdx-0x408],xmm30

    vmovlps xmm20,xmm1,qword ptr [rax]
    vmovlps xmm29,xmm30,qword ptr [rcx]
    vmovlps xmm29,xmm30,qword ptr [rax+r14*8+0x123]
    vmovlps xmm29,xmm30,qword ptr [rdx+0x3f8]
    vmovlps xmm29,xmm30,qword ptr [rdx+0x400]
    vmovlps xmm29,xmm30,qword ptr [rdx-0x400]
    vmovlps xmm29,xmm30,qword ptr [rdx-0x408]
    vmovlps qword ptr [rax],xmm21
    vmovlps qword ptr [rcx],xmm30
    vmovlps qword ptr [rax+r14*8+0x123],xmm30
    vmovlps qword ptr [rdx+0x3f8],xmm30
    vmovlps qword ptr [rdx+0x400],xmm30
    vmovlps qword ptr [rdx-0x400],xmm30
    vmovlps qword ptr [rdx-0x408],xmm30

    vpabsq zmm30,zmm29
    vpabsq zmm30{k7},zmm29
    vpabsq zmm30{k7}{z},zmm29
    vpabsq zmm30,zword ptr [rcx]
    vpabsq zmm30,zword ptr [rax+r14*8+0x123]
    vpabsq zmm30,qword ptr [rcx]{1to8}
    vpabsq zmm30,zword ptr [rdx+0x1fc0]
    vpabsq zmm30,zword ptr [rdx+0x2000]
    vpabsq zmm30,zword ptr [rdx-0x2000]
    vpabsq zmm30,zword ptr [rdx-0x2040]
    vpabsq zmm30,qword ptr [rdx+0x3f8]{1to8}
    vpabsq zmm30,qword ptr [rdx+0x400]{1to8}
    vpabsq zmm30,qword ptr [rdx-0x400]{1to8}
    vpabsq zmm30,qword ptr [rdx-0x408]{1to8}

    vpblendmd zmm30,zmm29,zmm28
    vpblendmd zmm30{k7},zmm29,zmm28
    vpblendmd zmm30{k7}{z},zmm29,zmm28
    vpblendmd zmm30,zmm29,zword ptr [rcx]
    vpblendmd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpblendmd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpblendmd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpblendmd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpblendmd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpblendmd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpblendmd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpblendmd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpblendmd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpblendmd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpbroadcastd zmm30,dword ptr [rcx]
    vpbroadcastd zmm30{k7},dword ptr [rcx]
    vpbroadcastd zmm30{k7}{z},dword ptr [rcx]
    vpbroadcastd zmm30,dword ptr [rax+r14*8+0x123]
    vpbroadcastd zmm30,dword ptr [rdx+0x1fc]
    vpbroadcastd zmm30,dword ptr [rdx+0x200]
    vpbroadcastd zmm30,dword ptr [rdx-0x200]
    vpbroadcastd zmm30,dword ptr [rdx-0x204]
    vpbroadcastd zmm30{k7},xmm29
    vpbroadcastd zmm30{k7}{z},xmm29
    vpbroadcastd zmm30,eax
    vpbroadcastd zmm30{k7},eax
    vpbroadcastd zmm30{k7}{z},eax
    vpbroadcastd zmm30,ebp
    vpbroadcastd zmm30,r13d

    vpbroadcastq zmm30,qword ptr [rcx]
    vpbroadcastq zmm30{k7},qword ptr [rcx]
    vpbroadcastq zmm30{k7}{z},qword ptr [rcx]
    vpbroadcastq zmm30,qword ptr [rax+r14*8+0x123]
    vpbroadcastq zmm30,qword ptr [rdx+0x3f8]
    vpbroadcastq zmm30,qword ptr [rdx+0x400]
    vpbroadcastq zmm30,qword ptr [rdx-0x400]
    vpbroadcastq zmm30,qword ptr [rdx-0x408]
    vpbroadcastq zmm30{k7},xmm29
    vpbroadcastq zmm30{k7}{z},xmm29
    vpbroadcastq zmm30,rax
    vpbroadcastq zmm30{k7},rax
    vpbroadcastq zmm30{k7}{z},rax
    vpbroadcastq zmm30,r8

    vpcmpd k5,zmm30,zmm29,0xab
    vpcmpd k5{k7},zmm30,zmm29,0xab
    vpcmpd k5,zmm30,zmm29,0x7b
    vpcmpd k5,zmm30,zword ptr [rcx],0x7b
    vpcmpd k5,zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpd k5,zmm30,dword ptr [rcx]{1to16},0x7b
    vpcmpd k5,zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpcmpd k5,zmm30,zword ptr [rdx+0x2000],0x7b
    vpcmpd k5,zmm30,zword ptr [rdx-0x2000],0x7b
    vpcmpd k5,zmm30,zword ptr [rdx-0x2040],0x7b
    vpcmpd k5,zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpcmpd k5,zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpcmpd k5,zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpcmpd k5,zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vpcmpq k5,zmm30,zmm29,0xab
    vpcmpq k5{k7},zmm30,zmm29,0xab
    vpcmpq k5,zmm30,zmm29,0x7b
    vpcmpq k5,zmm30,zword ptr [rcx],0x7b
    vpcmpq k5,zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpq k5,zmm30,qword ptr [rcx]{1to8},0x7b
    vpcmpq k5,zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpcmpq k5,zmm30,zword ptr [rdx+0x2000],0x7b
    vpcmpq k5,zmm30,zword ptr [rdx-0x2000],0x7b
    vpcmpq k5,zmm30,zword ptr [rdx-0x2040],0x7b
    vpcmpq k5,zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpcmpq k5,zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpcmpq k5,zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpcmpq k5,zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpcmpud k5,zmm30,zmm29,0xab
    vpcmpud k5{k7},zmm30,zmm29,0xab
    vpcmpud k5,zmm30,zmm29,0x7b
    vpcmpud k5,zmm30,zword ptr [rcx],0x7b
    vpcmpud k5,zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpud k5,zmm30,dword ptr [rcx]{1to16},0x7b
    vpcmpud k5,zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpcmpud k5,zmm30,zword ptr [rdx+0x2000],0x7b
    vpcmpud k5,zmm30,zword ptr [rdx-0x2000],0x7b
    vpcmpud k5,zmm30,zword ptr [rdx-0x2040],0x7b
    vpcmpud k5,zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpcmpud k5,zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpcmpud k5,zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpcmpud k5,zmm30,dword ptr [rdx-0x204]{1to16},0x7b


    vpcmpuq k5,zmm30,zmm29,0xab
    vpcmpuq k5{k7},zmm30,zmm29,0xab
    vpcmpuq k5,zmm30,zmm29,0x7b
    vpcmpuq k5,zmm30,zword ptr [rcx],0x7b
    vpcmpuq k5,zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpuq k5,zmm30,qword ptr [rcx]{1to8},0x7b
    vpcmpuq k5,zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpcmpuq k5,zmm30,zword ptr [rdx+0x2000],0x7b
    vpcmpuq k5,zmm30,zword ptr [rdx-0x2000],0x7b
    vpcmpuq k5,zmm30,zword ptr [rdx-0x2040],0x7b
    vpcmpuq k5,zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpcmpuq k5,zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpcmpuq k5,zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpcmpuq k5,zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpblendmq zmm30,zmm29,zmm28
    vpblendmq zmm30{k7},zmm29,zmm28
    vpblendmq zmm30{k7}{z},zmm29,zmm28
    vpblendmq zmm30,zmm29,zword ptr [rcx]
    vpblendmq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpblendmq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpblendmq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpblendmq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpblendmq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpblendmq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpblendmq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpblendmq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpblendmq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpblendmq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpermd zmm30,zmm29,zmm28
    vpermd zmm30{k7},zmm29,zmm28
    vpermd zmm30{k7}{z},zmm29,zmm28
    vpermd zmm30,zmm29,zword ptr [rcx]
    vpermd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpermd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpermd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpermd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpermd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpermilpd xmm20,xmm1,xmm2
    vpermilpd xmm20,xmm1,oword ptr [rax]
    vpermilpd xmm20,xmm1,1
    vpermilpd ymm20,ymm1,ymm2
    vpermilpd ymm20,ymm1,yword ptr [rax]
    vpermilpd ymm20,ymm1,1
    vpermilpd zmm30,zmm29,0xab
    vpermilpd zmm30{k7},zmm29,0xab
    vpermilpd zmm30{k7}{z},zmm29,0xab
    vpermilpd zmm30,zmm29,0x7b
    vpermilpd zmm30,zword ptr [rcx],0x7b
    vpermilpd zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpermilpd zmm30,qword ptr [rcx]{1to8},0x7b
    vpermilpd zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpermilpd zmm30,zword ptr [rdx+0x2000],0x7b
    vpermilpd zmm30,zword ptr [rdx-0x2000],0x7b
    vpermilpd zmm30,zword ptr [rdx-0x2040],0x7b
    vpermilpd zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpermilpd zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpermilpd zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpermilpd zmm30,qword ptr [rdx-0x408]{1to8},0x7b
    vpermilpd zmm30,zmm29,zmm28
    vpermilpd zmm30{k7},zmm29,zmm28
    vpermilpd zmm30{k7}{z},zmm29,zmm28
    vpermilpd zmm30,zmm29,zword ptr [rcx]
    vpermilpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermilpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vpermilpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermilpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermilpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermilpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermilpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpermilpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpermilpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpermilpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpermilps xmm20,xmm1,xmm2
    vpermilps xmm20,xmm1,oword ptr [rax]
    vpermilps xmm20,xmm1,1
    vpermilps ymm20,ymm1,ymm2
    vpermilps ymm20,ymm1,yword ptr [rax]
    vpermilps ymm20,ymm1,1
    vpermilps zmm30,zmm29,0xab
    vpermilps zmm30{k7},zmm29,0xab
    vpermilps zmm30{k7}{z},zmm29,0xab
    vpermilps zmm30,zmm29,0x7b
    vpermilps zmm30,zword ptr [rcx],0x7b
    vpermilps zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpermilps zmm30,dword ptr [rcx]{1to16},0x7b
    vpermilps zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpermilps zmm30,zword ptr [rdx+0x2000],0x7b
    vpermilps zmm30,zword ptr [rdx-0x2000],0x7b
    vpermilps zmm30,zword ptr [rdx-0x2040],0x7b
    vpermilps zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpermilps zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vpermilps zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vpermilps zmm30,dword ptr [rdx-0x204]{1to16},0x7b
    vpermilps zmm30,zmm29,zmm28
    vpermilps zmm30{k7},zmm29,zmm28
    vpermilps zmm30{k7}{z},zmm29,zmm28
    vpermilps zmm30,zmm29,zword ptr [rcx]
    vpermilps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermilps zmm30,zmm29,dword ptr [rcx]{1to16}
    vpermilps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermilps zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermilps zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermilps zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermilps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpermilps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpermilps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpermilps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpermpd ymm20,ymm6,0x7
    vpermpd ymm20,yword ptr [rcx],0x7
    vpermpd zmm30,zmm29,0xab
    vpermpd zmm30{k7},zmm29,0xab
    vpermpd zmm30{k7}{z},zmm29,0xab
    vpermpd zmm30,zmm29,0x7b
    vpermpd zmm30,zword ptr [rcx],0x7b
    vpermpd zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpermpd zmm30,qword ptr [rcx]{1to8},0x7b
    vpermpd zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpermpd zmm30,zword ptr [rdx+0x2000],0x7b
    vpermpd zmm30,zword ptr [rdx-0x2000],0x7b
    vpermpd zmm30,zword ptr [rdx-0x2040],0x7b
    vpermpd zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpermpd zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpermpd zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpermpd zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpermpd zmm30,zmm29,zmm28
    vpermpd zmm30{k7},zmm29,zmm28
    vpermpd zmm30{k7}{z},zmm29,zmm28
    vpermpd zmm30,zmm29,zword ptr [rcx]
    vpermpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vpermpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpermpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpermpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpermpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpermps ymm20,ymm6,ymm4
    vpermps ymm20,ymm6,YMMWORD PTR [rcx]
    vpermps zmm30,zmm29,zmm28
    vpermps zmm30{k7},zmm29,zmm28
    vpermps zmm30{k7}{z},zmm29,zmm28
    vpermps zmm30,zmm29,zword ptr [rcx]
    vpermps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermps zmm30,zmm29,dword ptr [rcx]{1to16}
    vpermps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermps zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermps zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermps zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpermps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpermps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpermps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vpermq ymm20,ymm6,0x7
    vpermq ymm20,YMMWORD PTR [rcx],0x7
    vpermd ymm20,ymm6,ymm4
    vpermd ymm20,ymm6,YMMWORD PTR [rcx]
    vpermq zmm30,zmm29,0xab
    vpermq zmm30{k7},zmm29,0xab
    vpermq zmm30{k7}{z},zmm29,0xab
    vpermq zmm30,zmm29,0x7b
    vpermq zmm30,zword ptr [rcx],0x7b
    vpermq zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vpermq zmm30,qword ptr [rcx]{1to8},0x7b
    vpermq zmm30,zword ptr [rdx+0x1fc0],0x7b
    vpermq zmm30,zword ptr [rdx+0x2000],0x7b
    vpermq zmm30,zword ptr [rdx-0x2000],0x7b
    vpermq zmm30,zword ptr [rdx-0x2040],0x7b
    vpermq zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpermq zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vpermq zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vpermq zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vpermq zmm30,zmm29,zmm28
    vpermq zmm30{k7},zmm29,zmm28
    vpermq zmm30{k7}{z},zmm29,zmm28
    vpermq zmm30,zmm29,zword ptr [rcx]
    vpermq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpermq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpermq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpermq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpermq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpmaxsq zmm30,zmm29,zmm28
    vpmaxsq zmm30{k7},zmm29,zmm28
    vpmaxsq zmm30{k7}{z},zmm29,zmm28
    vpmaxsq zmm30,zmm29,zword ptr [rcx]
    vpmaxsq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmaxsq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpmaxsq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmaxsq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmaxsq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmaxsq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmaxsq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpmaxsq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpmaxsq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpmaxsq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpmaxuq zmm30,zmm29,zmm28
    vpmaxuq zmm30{k7},zmm29,zmm28
    vpmaxuq zmm30{k7}{z},zmm29,zmm28
    vpmaxuq zmm30,zmm29,zword ptr [rcx]
    vpmaxuq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpmaxuq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpmaxuq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpmaxuq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpmaxuq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpmaxuq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpmaxuq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpmaxuq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpmaxuq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpmaxuq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpminsq zmm30,zmm29,zmm28
    vpminsq zmm30{k7},zmm29,zmm28
    vpminsq zmm30{k7}{z},zmm29,zmm28
    vpminsq zmm30,zmm29,zword ptr [rcx]
    vpminsq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpminsq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpminsq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpminsq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpminsq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpminsq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpminsq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpminsq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpminsq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpminsq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpminuq zmm30,zmm29,zmm28
    vpminuq zmm30{k7},zmm29,zmm28
    vpminuq zmm30{k7}{z},zmm29,zmm28
    vpminuq zmm30,zmm29,zword ptr [rcx]
    vpminuq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpminuq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpminuq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpminuq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpminuq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpminuq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpminuq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpminuq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpminuq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpminuq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpord  zmm30,zmm29,zmm28
    vpord  zmm30{k7},zmm29,zmm28
    vpord  zmm30{k7}{z},zmm29,zmm28
    vpord  zmm30,zmm29,zword ptr [rcx]
    vpord  zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpord  zmm30,zmm29,dword ptr [rcx]{1to16}
    vpord  zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpord  zmm30,zmm29,zword ptr [rdx+0x2000]
    vpord  zmm30,zmm29,zword ptr [rdx-0x2000]
    vpord  zmm30,zmm29,zword ptr [rdx-0x2040]
    vpord  zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpord  zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpord  zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpord  zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vporq  zmm30,zmm29,zmm28
    vporq  zmm30{k7},zmm29,zmm28
    vporq  zmm30{k7}{z},zmm29,zmm28
    vporq  zmm30,zmm29,zword ptr [rcx]
    vporq  zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vporq  zmm30,zmm29,qword ptr [rcx]{1to8}
    vporq  zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vporq  zmm30,zmm29,zword ptr [rdx+0x2000]
    vporq  zmm30,zmm29,zword ptr [rdx-0x2000]
    vporq  zmm30,zmm29,zword ptr [rdx-0x2040]
    vporq  zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vporq  zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vporq  zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vporq  zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpsllvd ymm20,ymm6,ymm4
    vpsllvd ymm20,ymm6,yword ptr [rcx]
    vpsllvq ymm20,ymm6,ymm4
    vpsllvq ymm20,ymm6,yword ptr [rcx]
    vpsravd ymm20,ymm6,ymm4
    vpsravd ymm20,ymm6,yword ptr [rcx]
    vpsrlvd ymm20,ymm6,ymm4
    vpsrlvd ymm20,ymm6,yword ptr [rcx]
    vpsrlvq ymm20,ymm6,ymm4
    vpsrlvq ymm20,ymm6,yword ptr [rcx]

    vpsllvd zmm30,zmm29,zmm28
    vpsllvd zmm30{k7},zmm29,zmm28
    vpsllvd zmm30{k7}{z},zmm29,zmm28
    vpsllvd zmm30,zmm29,zword ptr [rcx]
    vpsllvd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsllvd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpsllvd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsllvd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsllvd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsllvd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsllvd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpsllvd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpsllvd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpsllvd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vpsllvq zmm30,zmm29,zmm28
    vpsllvq zmm30{k7},zmm29,zmm28
    vpsllvq zmm30{k7}{z},zmm29,zmm28
    vpsllvq zmm30,zmm29,zword ptr [rcx]
    vpsllvq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsllvq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpsllvq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsllvq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsllvq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsllvq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsllvq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpsllvq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpsllvq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpsllvq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpsravd zmm30,zmm29,zmm28
    vpsravd zmm30{k7},zmm29,zmm28
    vpsravd zmm30{k7}{z},zmm29,zmm28
    vpsravd zmm30,zmm29,zword ptr [rcx]
    vpsravd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsravd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpsravd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsravd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsravd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsravd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsravd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpsravd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpsravd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpsravd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vpsravq zmm30,zmm29,zmm28
    vpsravq zmm30{k7},zmm29,zmm28
    vpsravq zmm30{k7}{z},zmm29,zmm28
    vpsravq zmm30,zmm29,zword ptr [rcx]
    vpsravq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsravq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpsravq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsravq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsravq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsravq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsravq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpsravq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpsravq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpsravq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpsrlvd zmm30,zmm29,zmm28
    vpsrlvd zmm30{k7},zmm29,zmm28
    vpsrlvd zmm30{k7}{z},zmm29,zmm28
    vpsrlvd zmm30,zmm29,zword ptr [rcx]
    vpsrlvd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsrlvd zmm30,zmm29,dword ptr [rcx]{1to16}
    vpsrlvd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsrlvd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsrlvd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsrlvd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsrlvd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpsrlvd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpsrlvd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpsrlvd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vpsrlvq zmm30,zmm29,zmm28
    vpsrlvq zmm30{k7},zmm29,zmm28
    vpsrlvq zmm30{k7}{z},zmm29,zmm28
    vpsrlvq zmm30,zmm29,zword ptr [rcx]
    vpsrlvq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpsrlvq zmm30,zmm29,qword ptr [rcx]{1to8}
    vpsrlvq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpsrlvq zmm30,zmm29,zword ptr [rdx+0x2000]
    vpsrlvq zmm30,zmm29,zword ptr [rdx-0x2000]
    vpsrlvq zmm30,zmm29,zword ptr [rdx-0x2040]
    vpsrlvq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpsrlvq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpsrlvq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpsrlvq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vptestmd k5,zmm30,zmm29
    vptestmd k5{k7},zmm30,zmm29
    vptestmd k5,zmm30,zword ptr [rcx]
    vptestmd k5,zmm30,zword ptr [rax+r14*8+0x123]
    vptestmd k5,zmm30,dword ptr [rcx]{1to16}
    vptestmd k5,zmm30,zword ptr [rdx+0x1fc0]
    vptestmd k5,zmm30,zword ptr [rdx+0x2000]
    vptestmd k5,zmm30,zword ptr [rdx-0x2000]
    vptestmd k5,zmm30,zword ptr [rdx-0x2040]
    vptestmd k5,zmm30,dword ptr [rdx+0x1fc]{1to16}
    vptestmd k5,zmm30,dword ptr [rdx+0x200]{1to16}
    vptestmd k5,zmm30,dword ptr [rdx-0x200]{1to16}
    vptestmd k5,zmm30,dword ptr [rdx-0x204]{1to16}
    vptestmq k5,zmm30,zmm29
    vptestmq k5{k7},zmm30,zmm29
    vptestmq k5,zmm30,zword ptr [rcx]
    vptestmq k5,zmm30,zword ptr [rax+r14*8+0x123]
    vptestmq k5,zmm30,qword ptr [rcx]{1to8}
    vptestmq k5,zmm30,zword ptr [rdx+0x1fc0]
    vptestmq k5,zmm30,zword ptr [rdx+0x2000]
    vptestmq k5,zmm30,zword ptr [rdx-0x2000]
    vptestmq k5,zmm30,zword ptr [rdx-0x2040]
    vptestmq k5,zmm30,qword ptr [rdx+0x3f8]{1to8}
    vptestmq k5,zmm30,qword ptr [rdx+0x400]{1to8}
    vptestmq k5,zmm30,qword ptr [rdx-0x400]{1to8}
    vptestmq k5,zmm30,qword ptr [rdx-0x408]{1to8}

    vucomisd xmm20,xmm1
    vucomisd xmm20,[rax]
    vucomisd xmm30,xmm29
    vucomisd xmm30,xmm29,{sae}
    vucomisd xmm30,qword ptr [rcx]
    vucomisd xmm30,qword ptr [rax+r14*8+0x123]
    vucomisd xmm30,qword ptr [rdx+0x3f8]
    vucomisd xmm30,qword ptr [rdx+0x400]
    vucomisd xmm30,qword ptr [rdx-0x400]
    vucomisd xmm30,qword ptr [rdx-0x408]

    vucomiss xmm20,xmm1
    vucomiss xmm20,[rax]
    vucomiss xmm30,xmm29
    vucomiss xmm30,xmm29,{sae}
    vucomiss xmm30,dword ptr [rcx]
    vucomiss xmm30,dword ptr [rax+r14*8+0x123]
    vucomiss xmm30,dword ptr [rdx+0x1fc]
    vucomiss xmm30,dword ptr [rdx+0x200]
    vucomiss xmm30,dword ptr [rdx-0x200]
    vucomiss xmm30,dword ptr [rdx-0x204]

    vpternlogd zmm30,zmm29,zmm28,0xab
    vpternlogd zmm30{k7},zmm29,zmm28,0xab
    vpternlogd zmm30{k7}{z},zmm29,zmm28,0xab
    vpternlogd zmm30,zmm29,zmm28,0x7b
    vpternlogd zmm30,zmm29,zword ptr [rcx],0x7b
    vpternlogd zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vpternlogd zmm30,zmm29,dword ptr [rcx]{1to16},0x7b
    vpternlogd zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vpternlogd zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vpternlogd zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vpternlogd zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vpternlogd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpternlogd zmm30,zmm29,dword ptr [rdx+0x200]{1to16},0x7b
    vpternlogd zmm30,zmm29,dword ptr [rdx-0x200]{1to16},0x7b
    vpternlogd zmm30,zmm29,dword ptr [rdx-0x204]{1to16},0x7b
    vpternlogq zmm30,zmm29,zmm28,0xab
    vpternlogq zmm30{k7},zmm29,zmm28,0xab
    vpternlogq zmm30{k7}{z},zmm29,zmm28,0xab
    vpternlogq zmm30,zmm29,zmm28,0x7b
    vpternlogq zmm30,zmm29,zword ptr [rcx],0x7b
    vpternlogq zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vpternlogq zmm30,zmm29,qword ptr [rcx]{1to8},0x7b
    vpternlogq zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vpternlogq zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vpternlogq zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vpternlogq zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vpternlogq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8},0x7b
    vpternlogq zmm30,zmm29,qword ptr [rdx+0x400]{1to8},0x7b
    vpternlogq zmm30,zmm29,qword ptr [rdx-0x400]{1to8},0x7b
    vpternlogq zmm30,zmm29,qword ptr [rdx-0x408]{1to8},0x7b

    vshuff32x4 zmm30,zmm29,zmm28,0xab
    vshuff32x4 zmm30{k7},zmm29,zmm28,0xab
    vshuff32x4 zmm30{k7}{z},zmm29,zmm28,0xab
    vshuff32x4 zmm30,zmm29,zmm28,0x7b
    vshuff32x4 zmm30,zmm29,zword ptr [rcx],0x7b
    vshuff32x4 zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vshuff32x4 zmm30,zmm29,dword ptr [rcx]{1to16},0x7b
    vshuff32x4 zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vshuff32x4 zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vshuff32x4 zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vshuff32x4 zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vshuff32x4 zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16},0x7b
    vshuff32x4 zmm30,zmm29,dword ptr [rdx+0x200]{1to16},0x7b
    vshuff32x4 zmm30,zmm29,dword ptr [rdx-0x200]{1to16},0x7b
    vshuff32x4 zmm30,zmm29,dword ptr [rdx-0x204]{1to16},0x7b
    vshuff64x2 zmm30,zmm29,zmm28,0xab
    vshuff64x2 zmm30{k7},zmm29,zmm28,0xab
    vshuff64x2 zmm30{k7}{z},zmm29,zmm28,0xab
    vshuff64x2 zmm30,zmm29,zmm28,0x7b
    vshuff64x2 zmm30,zmm29,zword ptr [rcx],0x7b
    vshuff64x2 zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vshuff64x2 zmm30,zmm29,qword ptr [rcx]{1to8},0x7b
    vshuff64x2 zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vshuff64x2 zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vshuff64x2 zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vshuff64x2 zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vshuff64x2 zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8},0x7b
    vshuff64x2 zmm30,zmm29,qword ptr [rdx+0x400]{1to8},0x7b
    vshuff64x2 zmm30,zmm29,qword ptr [rdx-0x400]{1to8},0x7b
    vshuff64x2 zmm30,zmm29,qword ptr [rdx-0x408]{1to8},0x7b
    vshufi32x4 zmm30,zmm29,zmm28,0xab
    vshufi32x4 zmm30{k7},zmm29,zmm28,0xab
    vshufi32x4 zmm30{k7}{z},zmm29,zmm28,0xab
    vshufi32x4 zmm30,zmm29,zmm28,0x7b
    vshufi32x4 zmm30,zmm29,zword ptr [rcx],0x7b
    vshufi32x4 zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vshufi32x4 zmm30,zmm29,dword ptr [rcx]{1to16},0x7b
    vshufi32x4 zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vshufi32x4 zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vshufi32x4 zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vshufi32x4 zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vshufi32x4 zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16},0x7b
    vshufi32x4 zmm30,zmm29,dword ptr [rdx+0x200]{1to16},0x7b
    vshufi32x4 zmm30,zmm29,dword ptr [rdx-0x200]{1to16},0x7b
    vshufi32x4 zmm30,zmm29,dword ptr [rdx-0x204]{1to16},0x7b
    vshufi64x2 zmm30,zmm29,zmm28,0xab
    vshufi64x2 zmm30{k7},zmm29,zmm28,0xab
    vshufi64x2 zmm30{k7}{z},zmm29,zmm28,0xab
    vshufi64x2 zmm30,zmm29,zmm28,0x7b
    vshufi64x2 zmm30,zmm29,zword ptr [rcx],0x7b
    vshufi64x2 zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vshufi64x2 zmm30,zmm29,qword ptr [rcx]{1to8},0x7b
    vshufi64x2 zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vshufi64x2 zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vshufi64x2 zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vshufi64x2 zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vshufi64x2 zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8},0x7b
    vshufi64x2 zmm30,zmm29,qword ptr [rdx+0x400]{1to8},0x7b
    vshufi64x2 zmm30,zmm29,qword ptr [rdx-0x400]{1to8},0x7b
    vshufi64x2 zmm30,zmm29,qword ptr [rdx-0x408]{1to8},0x7b

    valignq zmm30,zmm29,zmm28,0xab
    valignq zmm30{k7},zmm29,zmm28,0xab
    valignq zmm30{k7}{z},zmm29,zmm28,0xab
    valignq zmm30,zmm29,zmm28,0x7b
    valignq zmm30,zmm29,zword ptr [rcx],0x7b
    valignq zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    valignq zmm30,zmm29,qword ptr [rcx]{1to8},0x7b
    valignq zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    valignq zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    valignq zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    valignq zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    valignq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8},0x7b
    valignq zmm30,zmm29,qword ptr [rdx+0x400]{1to8},0x7b
    valignq zmm30,zmm29,qword ptr [rdx-0x400]{1to8},0x7b
    valignq zmm30,zmm29,qword ptr [rdx-0x408]{1to8},0x7b

    vcvtsd2usi eax,xmm30
    vcvtsd2usi eax,xmm30,{rn-sae}
    vcvtsd2usi eax,xmm30,{ru-sae}
    vcvtsd2usi eax,xmm30,{rd-sae}
    vcvtsd2usi eax,xmm30,{rz-sae}
    vcvtsd2usi ebp,xmm30
    vcvtsd2usi ebp,xmm30,{rn-sae}
    vcvtsd2usi ebp,xmm30,{ru-sae}
    vcvtsd2usi ebp,xmm30,{rd-sae}
    vcvtsd2usi ebp,xmm30,{rz-sae}
    vcvtsd2usi r13d,xmm30
    vcvtsd2usi r13d,xmm30,{rn-sae}
    vcvtsd2usi r13d,xmm30,{ru-sae}
    vcvtsd2usi r13d,xmm30,{rd-sae}
    vcvtsd2usi r13d,xmm30,{rz-sae}
    vcvtsd2usi rax,xmm30
    vcvtsd2usi rax,xmm30,{rn-sae}
    vcvtsd2usi rax,xmm30,{ru-sae}
    vcvtsd2usi rax,xmm30,{rd-sae}
    vcvtsd2usi rax,xmm30,{rz-sae}

    vcvtsd2usi rax,qword ptr [rcx]
    vcvtsd2usi rax,qword ptr [rax+r14*8+0x123]
    vcvtsd2usi rax,qword ptr [rdx+0x3f8]
    vcvtsd2usi rax,qword ptr [rdx+0x400]
    vcvtsd2usi rax,qword ptr [rdx-0x400]
    vcvtsd2usi rax,qword ptr [rdx-0x408]
    vcvtsd2usi r8,xmm30
    vcvtsd2usi r8,xmm30,{rn-sae}
    vcvtsd2usi r8,xmm30,{ru-sae}
    vcvtsd2usi r8,xmm30,{rd-sae}
    vcvtsd2usi r8,xmm30,{rz-sae}
    vcvtsd2usi r8,qword ptr [rcx]
    vcvtsd2usi r8,qword ptr [rax+r14*8+0x123]
    vcvtsd2usi r8,qword ptr [rdx+0x3f8]
    vcvtsd2usi r8,qword ptr [rdx+0x400]
    vcvtsd2usi r8,qword ptr [rdx-0x400]
    vcvtsd2usi r8,qword ptr [rdx-0x408]

    vcvtsd2usi eax,qword ptr [rcx]
    vcvtsd2usi eax,qword ptr [rax+r14*8+0x123]
    vcvtsd2usi eax,qword ptr [rdx+0x3f8]
    vcvtsd2usi eax,qword ptr [rdx+0x400]
    vcvtsd2usi eax,qword ptr [rdx-0x400]
    vcvtsd2usi eax,qword ptr [rdx-0x408]
    vcvtsd2usi ebp,qword ptr [rcx]
    vcvtsd2usi ebp,qword ptr [rax+r14*8+0x123]
    vcvtsd2usi ebp,qword ptr [rdx+0x3f8]
    vcvtsd2usi ebp,qword ptr [rdx+0x400]
    vcvtsd2usi ebp,qword ptr [rdx-0x400]
    vcvtsd2usi ebp,qword ptr [rdx-0x408]
    vcvtsd2usi r13d,qword ptr [rcx]
    vcvtsd2usi r13d,qword ptr [rax+r14*8+0x123]
    vcvtsd2usi r13d,qword ptr [rdx+0x3f8]
    vcvtsd2usi r13d,qword ptr [rdx+0x400]
    vcvtsd2usi r13d,qword ptr [rdx-0x400]
    vcvtsd2usi r13d,qword ptr [rdx-0x408]

    vcvtss2usi eax,xmm30
    vcvtss2usi eax,xmm30,{rn-sae}
    vcvtss2usi eax,xmm30,{ru-sae}
    vcvtss2usi eax,xmm30,{rd-sae}
    vcvtss2usi eax,xmm30,{rz-sae}
    vcvtss2usi eax,dword ptr [rcx]
    vcvtss2usi eax,dword ptr [rax+r14*8+0x123]
    vcvtss2usi eax,dword ptr [rdx+0x1fc]
    vcvtss2usi eax,dword ptr [rdx+0x200]
    vcvtss2usi eax,dword ptr [rdx-0x200]
    vcvtss2usi eax,dword ptr [rdx-0x204]

    vcvtss2usi ebp,xmm30
    vcvtss2usi ebp,xmm30,{rn-sae}
    vcvtss2usi ebp,xmm30,{ru-sae}
    vcvtss2usi ebp,xmm30,{rd-sae}
    vcvtss2usi ebp,xmm30,{rz-sae}
    vcvtss2usi ebp,dword ptr [rcx]
    vcvtss2usi ebp,dword ptr [rax+r14*8+0x123]
    vcvtss2usi ebp,dword ptr [rdx+0x1fc]
    vcvtss2usi ebp,dword ptr [rdx+0x200]
    vcvtss2usi ebp,dword ptr [rdx-0x200]
    vcvtss2usi ebp,dword ptr [rdx-0x204]
    vcvtss2usi r13d,xmm30
    vcvtss2usi r13d,xmm30,{rn-sae}
    vcvtss2usi r13d,xmm30,{ru-sae}
    vcvtss2usi r13d,xmm30,{rd-sae}
    vcvtss2usi r13d,xmm30,{rz-sae}
    vcvtss2usi r13d,dword ptr [rcx]
    vcvtss2usi r13d,dword ptr [rax+r14*8+0x123]
    vcvtss2usi r13d,dword ptr [rdx+0x1fc]
    vcvtss2usi r13d,dword ptr [rdx+0x200]
    vcvtss2usi r13d,dword ptr [rdx-0x200]
    vcvtss2usi r13d,dword ptr [rdx-0x204]
    vcvtss2usi rax,xmm30
    vcvtss2usi rax,xmm30,{rn-sae}
    vcvtss2usi rax,xmm30,{ru-sae}
    vcvtss2usi rax,xmm30,{rd-sae}
    vcvtss2usi rax,xmm30,{rz-sae}
    vcvtss2usi r8,xmm30
    vcvtss2usi r8,xmm30,{rn-sae}
    vcvtss2usi r8,xmm30,{ru-sae}
    vcvtss2usi r8,xmm30,{rd-sae}
    vcvtss2usi r8,xmm30,{rz-sae}

    vcvtss2usi rax,dword ptr [rcx]
    vcvtss2usi rax,dword ptr [rax+r14*8+0x123]
    vcvtss2usi rax,dword ptr [rdx+0x1fc]
    vcvtss2usi rax,dword ptr [rdx+0x200]
    vcvtss2usi rax,dword ptr [rdx-0x200]
    vcvtss2usi rax,dword ptr [rdx-0x204]
    vcvtss2usi r8,dword ptr [rcx]
    vcvtss2usi r8,dword ptr [rax+r14*8+0x123]
    vcvtss2usi r8,dword ptr [rdx+0x1fc]
    vcvtss2usi r8,dword ptr [rdx+0x200]
    vcvtss2usi r8,dword ptr [rdx-0x200]
    vcvtss2usi r8,dword ptr [rdx-0x204]

    vcvtusi2sd xmm30,xmm29,eax
    vcvtusi2sd xmm30,xmm29,ebp
    vcvtusi2sd xmm30,xmm29,r13d
    vcvtusi2sd xmm30,xmm29,dword ptr [rcx]
    vcvtusi2sd xmm30,xmm29,dword ptr [rax+r14*8+0x123]
    vcvtusi2sd xmm30,xmm29,dword ptr [rdx+0x1fc]
    vcvtusi2sd xmm30,xmm29,dword ptr [rdx+0x200]
    vcvtusi2sd xmm30,xmm29,dword ptr [rdx-0x200]
    vcvtusi2sd xmm30,xmm29,dword ptr [rdx-0x204]
    vcvtusi2sd xmm30,xmm29,rax
    vcvtusi2sd xmm30,xmm29,{rn-sae},rax
    vcvtusi2sd xmm30,xmm29,{ru-sae},rax
    vcvtusi2sd xmm30,xmm29,{rd-sae},rax
    vcvtusi2sd xmm30,xmm29,{rz-sae},rax
    vcvtusi2sd xmm30,xmm29,r8
    vcvtusi2sd xmm30,xmm29,{rn-sae},r8
    vcvtusi2sd xmm30,xmm29,{ru-sae},r8
    vcvtusi2sd xmm30,xmm29,{rd-sae},r8
    vcvtusi2sd xmm30,xmm29,{rz-sae},r8
    vcvtusi2sd xmm30,xmm29,qword ptr [rcx]
    vcvtusi2sd xmm30,xmm29,qword ptr [rax+r14*8+0x123]
    vcvtusi2sd xmm30,xmm29,qword ptr [rdx+0x3f8]
    vcvtusi2sd xmm30,xmm29,qword ptr [rdx+0x400]
    vcvtusi2sd xmm30,xmm29,qword ptr [rdx-0x400]
    vcvtusi2sd xmm30,xmm29,qword ptr [rdx-0x408]

    vcvtusi2ss xmm30,xmm29,eax
    vcvtusi2ss xmm30,xmm29,{rn-sae},eax
    vcvtusi2ss xmm30,xmm29,{ru-sae},eax
    vcvtusi2ss xmm30,xmm29,{rd-sae},eax
    vcvtusi2ss xmm30,xmm29,{rz-sae},eax
    vcvtusi2ss xmm30,xmm29,ebp
    vcvtusi2ss xmm30,xmm29,{rn-sae},ebp
    vcvtusi2ss xmm30,xmm29,{ru-sae},ebp
    vcvtusi2ss xmm30,xmm29,{rd-sae},ebp
    vcvtusi2ss xmm30,xmm29,{rz-sae},ebp
    vcvtusi2ss xmm30,xmm29,r13d
    vcvtusi2ss xmm30,xmm29,{rn-sae},r13d
    vcvtusi2ss xmm30,xmm29,{ru-sae},r13d
    vcvtusi2ss xmm30,xmm29,{rd-sae},r13d
    vcvtusi2ss xmm30,xmm29,{rz-sae},r13d
    vcvtusi2ss xmm30,xmm29,dword ptr [rcx]
    vcvtusi2ss xmm30,xmm29,dword ptr [rax+r14*8+0x123]
    vcvtusi2ss xmm30,xmm29,dword ptr [rdx+0x1fc]
    vcvtusi2ss xmm30,xmm29,dword ptr [rdx+0x200]
    vcvtusi2ss xmm30,xmm29,dword ptr [rdx-0x200]
    vcvtusi2ss xmm30,xmm29,dword ptr [rdx-0x204]
    vcvtusi2ss xmm30,xmm29,rax
    vcvtusi2ss xmm30,xmm29,{rn-sae},rax
    vcvtusi2ss xmm30,xmm29,{ru-sae},rax
    vcvtusi2ss xmm30,xmm29,{rd-sae},rax
    vcvtusi2ss xmm30,xmm29,{rz-sae},rax
    vcvtusi2ss xmm30,xmm29,r8
    vcvtusi2ss xmm30,xmm29,{rn-sae},r8
    vcvtusi2ss xmm30,xmm29,{ru-sae},r8
    vcvtusi2ss xmm30,xmm29,{rd-sae},r8
    vcvtusi2ss xmm30,xmm29,{rz-sae},r8
    vcvtusi2ss xmm30,xmm29,qword ptr [rcx]
    vcvtusi2ss xmm30,xmm29,qword ptr [rax+r14*8+0x123]
    vcvtusi2ss xmm30,xmm29,qword ptr [rdx+0x3f8]
    vcvtusi2ss xmm30,xmm29,qword ptr [rdx+0x400]
    vcvtusi2ss xmm30,xmm29,qword ptr [rdx-0x400]
    vcvtusi2ss xmm30,xmm29,qword ptr [rdx-0x408]

    vscalefpd zmm30,zmm29,zmm28
    vscalefpd zmm30{k7},zmm29,zmm28
    vscalefpd zmm30{k7}{z},zmm29,zmm28
    vscalefpd zmm30,zmm29,zmm28,{rn-sae}
    vscalefpd zmm30,zmm29,zmm28,{ru-sae}
    vscalefpd zmm30,zmm29,zmm28,{rd-sae}
    vscalefpd zmm30,zmm29,zmm28,{rz-sae}
    vscalefpd zmm30,zmm29,zword ptr [rcx]
    vscalefpd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vscalefpd zmm30,zmm29,qword ptr [rcx]{1to8}
    vscalefpd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vscalefpd zmm30,zmm29,zword ptr [rdx+0x2000]
    vscalefpd zmm30,zmm29,zword ptr [rdx-0x2000]
    vscalefpd zmm30,zmm29,zword ptr [rdx-0x2040]
    vscalefpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vscalefpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vscalefpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vscalefpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vscalefps zmm30,zmm29,zmm28
    vscalefps zmm30{k7},zmm29,zmm28
    vscalefps zmm30{k7}{z},zmm29,zmm28
    vscalefps zmm30,zmm29,zmm28,{rn-sae}
    vscalefps zmm30,zmm29,zmm28,{ru-sae}
    vscalefps zmm30,zmm29,zmm28,{rd-sae}
    vscalefps zmm30,zmm29,zmm28,{rz-sae}
    vscalefps zmm30,zmm29,zword ptr [rcx]
    vscalefps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vscalefps zmm30,zmm29,dword ptr [rcx]{1to16}
    vscalefps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vscalefps zmm30,zmm29,zword ptr [rdx+0x2000]
    vscalefps zmm30,zmm29,zword ptr [rdx-0x2000]
    vscalefps zmm30,zmm29,zword ptr [rdx-0x2040]
    vscalefps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vscalefps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vscalefps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vscalefps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vscalefsd xmm30{k7},xmm29,xmm28
    vscalefsd xmm30{k7}{z},xmm29,xmm28
    vscalefsd xmm30{k7},xmm29,xmm28,{rn-sae}
    vscalefsd xmm30{k7},xmm29,xmm28,{ru-sae}
    vscalefsd xmm30{k7},xmm29,xmm28,{rd-sae}
    vscalefsd xmm30{k7},xmm29,xmm28,{rz-sae}
    vscalefsd xmm30{k7},xmm29,qword ptr [rcx]
    vscalefsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123]
    vscalefsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8]
    vscalefsd xmm30{k7},xmm29,qword ptr [rdx+0x400]
    vscalefsd xmm30{k7},xmm29,qword ptr [rdx-0x400]
    vscalefsd xmm30{k7},xmm29,qword ptr [rdx-0x408]

    vscalefss xmm30{k7},xmm29,xmm28
    vscalefss xmm30{k7}{z},xmm29,xmm28
    vscalefss xmm30{k7},xmm29,xmm28,{rn-sae}
    vscalefss xmm30{k7},xmm29,xmm28,{ru-sae}
    vscalefss xmm30{k7},xmm29,xmm28,{rd-sae}
    vscalefss xmm30{k7},xmm29,xmm28,{rz-sae}
    vscalefss xmm30{k7},xmm29,dword ptr [rcx]
    vscalefss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123]
    vscalefss xmm30{k7},xmm29,dword ptr [rdx+0x1fc]
    vscalefss xmm30{k7},xmm29,dword ptr [rdx+0x200]
    vscalefss xmm30{k7},xmm29,dword ptr [rdx-0x200]
    vscalefss xmm30{k7},xmm29,dword ptr [rdx-0x204]

    vfixupimmps zmm30,zmm29,zmm28,0xab
    vfixupimmps zmm30{k7},zmm29,zmm28,0xab
    vfixupimmps zmm30{k7}{z},zmm29,zmm28,0xab
    vfixupimmps zmm30,zmm29,zmm28,{sae},0xab
    vfixupimmps zmm30,zmm29,zmm28,0x7b
    vfixupimmps zmm30,zmm29,zmm28,{sae},0x7b
    vfixupimmps zmm30,zmm29,zword ptr [rcx],0x7b
    vfixupimmps zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vfixupimmps zmm30,zmm29,dword ptr [rcx]{1to16},0x7b
    vfixupimmps zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vfixupimmps zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vfixupimmps zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vfixupimmps zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vfixupimmps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16},0x7b
    vfixupimmps zmm30,zmm29,dword ptr [rdx+0x200]{1to16},0x7b
    vfixupimmps zmm30,zmm29,dword ptr [rdx-0x200]{1to16},0x7b
    vfixupimmps zmm30,zmm29,dword ptr [rdx-0x204]{1to16},0x7b
    vfixupimmpd zmm30,zmm29,zmm28,0xab
    vfixupimmpd zmm30{k7},zmm29,zmm28,0xab
    vfixupimmpd zmm30{k7}{z},zmm29,zmm28,0xab
    vfixupimmpd zmm30,zmm29,zmm28,{sae},0xab
    vfixupimmpd zmm30,zmm29,zmm28,0x7b
    vfixupimmpd zmm30,zmm29,zmm28,{sae},0x7b
    vfixupimmpd zmm30,zmm29,zword ptr [rcx],0x7b
    vfixupimmpd zmm30,zmm29,zword ptr [rax+r14*8+0x123],0x7b
    vfixupimmpd zmm30,zmm29,qword ptr [rcx]{1to8},0x7b
    vfixupimmpd zmm30,zmm29,zword ptr [rdx+0x1fc0],0x7b
    vfixupimmpd zmm30,zmm29,zword ptr [rdx+0x2000],0x7b
    vfixupimmpd zmm30,zmm29,zword ptr [rdx-0x2000],0x7b
    vfixupimmpd zmm30,zmm29,zword ptr [rdx-0x2040],0x7b
    vfixupimmpd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8},0x7b
    vfixupimmpd zmm30,zmm29,qword ptr [rdx+0x400]{1to8},0x7b
    vfixupimmpd zmm30,zmm29,qword ptr [rdx-0x400]{1to8},0x7b
    vfixupimmpd zmm30,zmm29,qword ptr [rdx-0x408]{1to8},0x7b
    vfixupimmss xmm30{k7},xmm29,xmm28,0xab
    vfixupimmss xmm30{k7}{z},xmm29,xmm28,0xab
    vfixupimmss xmm30{k7},xmm29,xmm28,{sae},0xab
    vfixupimmss xmm30{k7},xmm29,xmm28,0x7b
    vfixupimmss xmm30{k7},xmm29,xmm28,{sae},0x7b
    vfixupimmss xmm30{k7},xmm29,dword ptr [rcx],0x7b
    vfixupimmss xmm30{k7},xmm29,dword ptr [rax+r14*8+0x123],0x7b
    vfixupimmss xmm30{k7},xmm29,dword ptr [rdx+0x1fc],0x7b
    vfixupimmss xmm30{k7},xmm29,dword ptr [rdx+0x200],0x7b
    vfixupimmss xmm30{k7},xmm29,dword ptr [rdx-0x200],0x7b
    vfixupimmss xmm30{k7},xmm29,dword ptr [rdx-0x204],0x7b
    vfixupimmsd xmm30{k7},xmm29,xmm28,0xab
    vfixupimmsd xmm30{k7}{z},xmm29,xmm28,0xab
    vfixupimmsd xmm30{k7},xmm29,xmm28,{sae},0xab
    vfixupimmsd xmm30{k7},xmm29,xmm28,0x7b
    vfixupimmsd xmm30{k7},xmm29,xmm28,{sae},0x7b
    vfixupimmsd xmm30{k7},xmm29,qword ptr [rcx],0x7b
    vfixupimmsd xmm30{k7},xmm29,qword ptr [rax+r14*8+0x123],0x7b
    vfixupimmsd xmm30{k7},xmm29,qword ptr [rdx+0x3f8],0x7b
    vfixupimmsd xmm30{k7},xmm29,qword ptr [rdx+0x400],0x7b
    vfixupimmsd xmm30{k7},xmm29,qword ptr [rdx-0x400],0x7b
    vfixupimmsd xmm30{k7},xmm29,qword ptr [rdx-0x408],0x7b

    vprolvd zmm30,zmm29,zmm28
    vprolvd zmm30{k7},zmm29,zmm28
    vprolvd zmm30{k7}{z},zmm29,zmm28
    vprolvd zmm30,zmm29,zword ptr [rcx]
    vprolvd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vprolvd zmm30,zmm29,dword ptr [rcx]{1to16}
    vprolvd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vprolvd zmm30,zmm29,zword ptr [rdx+0x2000]
    vprolvd zmm30,zmm29,zword ptr [rdx-0x2000]
    vprolvd zmm30,zmm29,zword ptr [rdx-0x2040]
    vprolvd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vprolvd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vprolvd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vprolvd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vprold zmm30,zmm29,0xab
    vprold zmm30{k7},zmm29,0xab
    vprold zmm30{k7}{z},zmm29,0xab
    vprold zmm30,zmm29,0x7b
    vprold zmm30,zword ptr [rcx],0x7b
    vprold zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vprold zmm30,dword ptr [rcx]{1to16},0x7b
    vprold zmm30,zword ptr [rdx+0x1fc0],0x7b
    vprold zmm30,zword ptr [rdx+0x2000],0x7b
    vprold zmm30,zword ptr [rdx-0x2000],0x7b
    vprold zmm30,zword ptr [rdx-0x2040],0x7b
    vprold zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vprold zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vprold zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vprold zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vprolvq zmm30,zmm29,zmm28
    vprolvq zmm30{k7},zmm29,zmm28
    vprolvq zmm30{k7}{z},zmm29,zmm28
    vprolvq zmm30,zmm29,zword ptr [rcx]
    vprolvq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vprolvq zmm30,zmm29,qword ptr [rcx]{1to8}
    vprolvq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vprolvq zmm30,zmm29,zword ptr [rdx+0x2000]
    vprolvq zmm30,zmm29,zword ptr [rdx-0x2000]
    vprolvq zmm30,zmm29,zword ptr [rdx-0x2040]
    vprolvq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vprolvq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vprolvq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vprolvq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vprolq zmm30,zmm29,0xab
    vprolq zmm30{k7},zmm29,0xab
    vprolq zmm30{k7}{z},zmm29,0xab
    vprolq zmm30,zmm29,0x7b
    vprolq zmm30,zword ptr [rcx],0x7b
    vprolq zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vprolq zmm30,qword ptr [rcx]{1to8},0x7b
    vprolq zmm30,zword ptr [rdx+0x1fc0],0x7b
    vprolq zmm30,zword ptr [rdx+0x2000],0x7b
    vprolq zmm30,zword ptr [rdx-0x2000],0x7b
    vprolq zmm30,zword ptr [rdx-0x2040],0x7b
    vprolq zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vprolq zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vprolq zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vprolq zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vprorvd zmm30,zmm29,zmm28
    vprorvd zmm30{k7},zmm29,zmm28
    vprorvd zmm30{k7}{z},zmm29,zmm28
    vprorvd zmm30,zmm29,zword ptr [rcx]
    vprorvd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vprorvd zmm30,zmm29,dword ptr [rcx]{1to16}
    vprorvd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vprorvd zmm30,zmm29,zword ptr [rdx+0x2000]
    vprorvd zmm30,zmm29,zword ptr [rdx-0x2000]
    vprorvd zmm30,zmm29,zword ptr [rdx-0x2040]
    vprorvd zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vprorvd zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vprorvd zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vprorvd zmm30,zmm29,dword ptr [rdx-0x204]{1to16}

    vprord zmm30,zmm29,0xab
    vprord zmm30{k7},zmm29,0xab
    vprord zmm30{k7}{z},zmm29,0xab
    vprord zmm30,zmm29,0x7b
    vprord zmm30,zword ptr [rcx],0x7b
    vprord zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vprord zmm30,dword ptr [rcx]{1to16},0x7b
    vprord zmm30,zword ptr [rdx+0x1fc0],0x7b
    vprord zmm30,zword ptr [rdx+0x2000],0x7b
    vprord zmm30,zword ptr [rdx-0x2000],0x7b
    vprord zmm30,zword ptr [rdx-0x2040],0x7b
    vprord zmm30,dword ptr [rdx+0x1fc]{1to16},0x7b
    vprord zmm30,dword ptr [rdx+0x200]{1to16},0x7b
    vprord zmm30,dword ptr [rdx-0x200]{1to16},0x7b
    vprord zmm30,dword ptr [rdx-0x204]{1to16},0x7b

    vprorvq zmm30,zmm29,zmm28
    vprorvq zmm30{k7},zmm29,zmm28
    vprorvq zmm30{k7}{z},zmm29,zmm28
    vprorvq zmm30,zmm29,zword ptr [rcx]
    vprorvq zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vprorvq zmm30,zmm29,qword ptr [rcx]{1to8}
    vprorvq zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vprorvq zmm30,zmm29,zword ptr [rdx+0x2000]
    vprorvq zmm30,zmm29,zword ptr [rdx-0x2000]
    vprorvq zmm30,zmm29,zword ptr [rdx-0x2040]
    vprorvq zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vprorvq zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vprorvq zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vprorvq zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vprorq zmm30,zmm29,0xab
    vprorq zmm30{k7},zmm29,0xab
    vprorq zmm30{k7}{z},zmm29,0xab
    vprorq zmm30,zmm29,0x7b
    vprorq zmm30,zword ptr [rcx],0x7b
    vprorq zmm30,zword ptr [rax+r14*8+0x123],0x7b
    vprorq zmm30,qword ptr [rcx]{1to8},0x7b
    vprorq zmm30,zword ptr [rdx+0x1fc0],0x7b
    vprorq zmm30,zword ptr [rdx+0x2000],0x7b
    vprorq zmm30,zword ptr [rdx-0x2000],0x7b
    vprorq zmm30,zword ptr [rdx-0x2040],0x7b
    vprorq zmm30,qword ptr [rdx+0x3f8]{1to8},0x7b
    vprorq zmm30,qword ptr [rdx+0x400]{1to8},0x7b
    vprorq zmm30,qword ptr [rdx-0x400]{1to8},0x7b
    vprorq zmm30,qword ptr [rdx-0x408]{1to8},0x7b

    vcvttsd2usi eax,xmm30
    vcvttsd2usi eax,xmm30,{sae}
    vcvttsd2usi eax,qword ptr [rcx]
    vcvttsd2usi eax,qword ptr [rax+r14*8+0x123]
    vcvttsd2usi eax,qword ptr [rdx+0x3f8]
    vcvttsd2usi eax,qword ptr [rdx+0x400]
    vcvttsd2usi eax,qword ptr [rdx-0x400]
    vcvttsd2usi eax,qword ptr [rdx-0x408]
    vcvttsd2usi ebp,xmm30
    vcvttsd2usi ebp,xmm30,{sae}
    vcvttsd2usi ebp,qword ptr [rcx]
    vcvttsd2usi ebp,qword ptr [rax+r14*8+0x123]
    vcvttsd2usi ebp,qword ptr [rdx+0x3f8]
    vcvttsd2usi ebp,qword ptr [rdx+0x400]
    vcvttsd2usi ebp,qword ptr [rdx-0x400]
    vcvttsd2usi ebp,qword ptr [rdx-0x408]
    vcvttsd2usi r13d,xmm30
    vcvttsd2usi r13d,xmm30,{sae}
    vcvttsd2usi r13d,qword ptr [rcx]
    vcvttsd2usi r13d,qword ptr [rax+r14*8+0x123]
    vcvttsd2usi r13d,qword ptr [rdx+0x3f8]
    vcvttsd2usi r13d,qword ptr [rdx+0x400]
    vcvttsd2usi r13d,qword ptr [rdx-0x400]
    vcvttsd2usi r13d,qword ptr [rdx-0x408]
    vcvttsd2usi rax,xmm30
    vcvttsd2usi rax,xmm30,{sae}
    vcvttsd2usi rax,qword ptr [rcx]
    vcvttsd2usi rax,qword ptr [rax+r14*8+0x123]
    vcvttsd2usi rax,qword ptr [rdx+0x3f8]
    vcvttsd2usi rax,qword ptr [rdx+0x400]
    vcvttsd2usi rax,qword ptr [rdx-0x400]
    vcvttsd2usi rax,qword ptr [rdx-0x408]
    vcvttsd2usi r8,xmm30
    vcvttsd2usi r8,xmm30,{sae}
    vcvttsd2usi r8,qword ptr [rcx]
    vcvttsd2usi r8,qword ptr [rax+r14*8+0x123]
    vcvttsd2usi r8,qword ptr [rdx+0x3f8]
    vcvttsd2usi r8,qword ptr [rdx+0x400]
    vcvttsd2usi r8,qword ptr [rdx-0x400]
    vcvttsd2usi r8,qword ptr [rdx-0x408]
    vcvttss2usi eax,xmm30
    vcvttss2usi eax,xmm30,{sae}
    vcvttss2usi eax,dword ptr [rcx]
    vcvttss2usi eax,dword ptr [rax+r14*8+0x123]
    vcvttss2usi eax,dword ptr [rdx+0x1fc]
    vcvttss2usi eax,dword ptr [rdx+0x200]
    vcvttss2usi eax,dword ptr [rdx-0x200]
    vcvttss2usi eax,dword ptr [rdx-0x204]
    vcvttss2usi ebp,xmm30
    vcvttss2usi ebp,xmm30,{sae}
    vcvttss2usi ebp,dword ptr [rcx]
    vcvttss2usi ebp,dword ptr [rax+r14*8+0x123]
    vcvttss2usi ebp,dword ptr [rdx+0x1fc]
    vcvttss2usi ebp,dword ptr [rdx+0x200]
    vcvttss2usi ebp,dword ptr [rdx-0x200]
    vcvttss2usi ebp,dword ptr [rdx-0x204]
    vcvttss2usi r13d,xmm30
    vcvttss2usi r13d,xmm30,{sae}
    vcvttss2usi r13d,dword ptr [rcx]
    vcvttss2usi r13d,dword ptr [rax+r14*8+0x123]
    vcvttss2usi r13d,dword ptr [rdx+0x1fc]
    vcvttss2usi r13d,dword ptr [rdx+0x200]
    vcvttss2usi r13d,dword ptr [rdx-0x200]
    vcvttss2usi r13d,dword ptr [rdx-0x204]
    vcvttss2usi rax,xmm30
    vcvttss2usi rax,xmm30,{sae}
    vcvttss2usi rax,dword ptr [rcx]
    vcvttss2usi rax,dword ptr [rax+r14*8+0x123]
    vcvttss2usi rax,dword ptr [rdx+0x1fc]
    vcvttss2usi rax,dword ptr [rdx+0x200]
    vcvttss2usi rax,dword ptr [rdx-0x200]
    vcvttss2usi rax,dword ptr [rdx-0x204]
    vcvttss2usi r8,xmm30
    vcvttss2usi r8,xmm30,{sae}
    vcvttss2usi r8,dword ptr [rcx]
    vcvttss2usi r8,dword ptr [rax+r14*8+0x123]
    vcvttss2usi r8,dword ptr [rdx+0x1fc]
    vcvttss2usi r8,dword ptr [rdx+0x200]
    vcvttss2usi r8,dword ptr [rdx-0x200]
    vcvttss2usi r8,dword ptr [rdx-0x204]

    vpermi2d zmm30,zmm29,zmm28
    vpermi2d zmm30{k7},zmm29,zmm28
    vpermi2d zmm30{k7}{z},zmm29,zmm28
    vpermi2d zmm30,zmm29,zword ptr [rcx]
    vpermi2d zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermi2d zmm30,zmm29,dword ptr [rcx]{1to16}
    vpermi2d zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermi2d zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermi2d zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermi2d zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermi2d zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpermi2d zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpermi2d zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpermi2d zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vpermi2q zmm30,zmm29,zmm28
    vpermi2q zmm30{k7},zmm29,zmm28
    vpermi2q zmm30{k7}{z},zmm29,zmm28
    vpermi2q zmm30,zmm29,zword ptr [rcx]
    vpermi2q zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermi2q zmm30,zmm29,qword ptr [rcx]{1to8}
    vpermi2q zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermi2q zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermi2q zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermi2q zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermi2q zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpermi2q zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpermi2q zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpermi2q zmm30,zmm29,qword ptr [rdx-0x408]{1to8}

    vpermi2ps zmm30,zmm29,zmm28
    vpermi2ps zmm30{k7},zmm29,zmm28
    vpermi2ps zmm30{k7}{z},zmm29,zmm28
    vpermi2ps zmm30,zmm29,zword ptr [rcx]
    vpermi2ps zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermi2ps zmm30,zmm29,dword ptr [rcx]{1to16}
    vpermi2ps zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermi2ps zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermi2ps zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermi2ps zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermi2ps zmm30,zmm29,dword ptr [rdx+0x1fc]{1to16}
    vpermi2ps zmm30,zmm29,dword ptr [rdx+0x200]{1to16}
    vpermi2ps zmm30,zmm29,dword ptr [rdx-0x200]{1to16}
    vpermi2ps zmm30,zmm29,dword ptr [rdx-0x204]{1to16}
    vpermi2pd zmm30,zmm29,zmm28
    vpermi2pd zmm30{k7},zmm29,zmm28
    vpermi2pd zmm30{k7}{z},zmm29,zmm28
    vpermi2pd zmm30,zmm29,zword ptr [rcx]
    vpermi2pd zmm30,zmm29,zword ptr [rax+r14*8+0x123]
    vpermi2pd zmm30,zmm29,qword ptr [rcx]{1to8}
    vpermi2pd zmm30,zmm29,zword ptr [rdx+0x1fc0]
    vpermi2pd zmm30,zmm29,zword ptr [rdx+0x2000]
    vpermi2pd zmm30,zmm29,zword ptr [rdx-0x2000]
    vpermi2pd zmm30,zmm29,zword ptr [rdx-0x2040]
    vpermi2pd zmm30,zmm29,qword ptr [rdx+0x3f8]{1to8}
    vpermi2pd zmm30,zmm29,qword ptr [rdx+0x400]{1to8}
    vpermi2pd zmm30,zmm29,qword ptr [rdx-0x400]{1to8}
    vpermi2pd zmm30,zmm29,qword ptr [rdx-0x408]{1to8}


    {evex} vmovntdq  oword ptr [rax],xmm0
    {evex} vmovntdqa xmm0,oword ptr [rax]
    {evex} vmovntpd  oword ptr [rax],xmm0
    {evex} vmovntps  oword ptr [rax],xmm0
    {evex} vmovntdq  yword ptr [rax],ymm0
    {evex} vmovntdqa ymm0,yword ptr [rax]
    {evex} vmovntpd  yword ptr [rax],ymm0
    {evex} vmovntps  yword ptr [rax],ymm0
    {evex} vbroadcastss xmm0,dword ptr [rax]
    {evex} vbroadcastss ymm0,dword ptr [rax]
    {evex} vbroadcastsd ymm0,qword ptr [rax]
    {evex} vpermilpd xmm0,xmm1,xmm2
    {evex} vpermilpd xmm0,xmm1,oword ptr [rax]
    {evex} vpermilpd xmm0,xmm1,1
    {evex} vpermilpd ymm0,ymm1,ymm2
    {evex} vpermilpd ymm0,ymm1,yword ptr [rax]
    {evex} vpermilpd ymm0,ymm1,1
    {evex} vpermilps xmm0,xmm1,xmm2
    {evex} vpermilps xmm0,xmm1,oword ptr [rax]
    {evex} vpermilps xmm0,xmm1,1
    {evex} vpermilps ymm0,ymm1,ymm2
    {evex} vpermilps ymm0,ymm1,yword ptr [rax]
    {evex} vpermilps ymm0,ymm1,1
    {evex} vcomisd xmm1,xmm0
    {evex} vcomisd xmm0,xmm0
    {evex} vcomisd xmm0,[rax]
    {evex} vcomisd xmm0,xmm1
    {evex} vcomisd xmm0,xmm0
    {evex} vcomisd xmm1,xmm1
    {evex} vcomisd xmm0,xmm0
    {evex} vaddpd xmm0,xmm1,xmm2
    {evex} vaddpd xmm0,xmm31,xmm2
    {evex} vxorpd xmm1,xmm0,xmm0
    {evex} vxorpd xmm1,xmm0,[rax]
    {evex} vaddps xmm0,xmm1,xmm2
    {evex} vaddps xmm0,xmm1,[rax]
    {evex} vaddps ymm0,ymm1,ymm2
    {evex} vaddps ymm0,ymm1,[rax]
    {evex} vaddsd xmm0,xmm1,xmm2
    {evex} vaddsd xmm0,xmm1,[rax]
    {evex} vaddss xmm0,xmm1,xmm2
    {evex} vaddss xmm0,xmm1,[rax]
    {evex} vdivpd xmm0,xmm1,xmm2
    {evex} vdivpd xmm0,xmm1,[rax]
    {evex} vdivpd ymm0,ymm1,ymm2
    {evex} vdivpd ymm0,ymm1,[rax]
    {evex} vdivps xmm0,xmm1,xmm2
    {evex} vdivps xmm0,xmm1,[rax]
    {evex} vdivps ymm0,ymm1,ymm2
    {evex} vdivps ymm0,ymm1,[rax]
    {evex} vdivsd xmm0,xmm1,xmm2
    {evex} vdivsd xmm0,xmm1,[rax]
    {evex} vdivss xmm0,xmm1,xmm2
    {evex} vdivss xmm0,xmm1,[rax]
    {evex} vandpd xmm0,xmm1,xmm2
    {evex} vandpd ymm0,ymm1,ymm2
    {evex} vandps xmm0,xmm1,xmm2
    {evex} vandps ymm0,ymm1,ymm2
    {evex} vandnpd xmm0,xmm1,xmm2
    {evex} vandnpd ymm0,ymm1,ymm2
    {evex} vandnps xmm0,xmm1,xmm2
    {evex} vandnps ymm0,ymm1,ymm2
    {evex} vpsrlw xmm0,xmm1,xmm2
    {evex} vpsrlw xmm0,xmm1,[rax]
    {evex} vpsrld xmm0,xmm1,xmm2
    {evex} vpsrld xmm0,xmm1,[rax]
    {evex} vpsrlq xmm0,xmm1,xmm2
    {evex} vpsrlq xmm0,xmm1,[rax]
    {evex} vpsraw xmm0,xmm1,xmm2
    {evex} vpsraw xmm0,xmm1,[rax]
    {evex} vpsrad xmm0,xmm1,xmm2
    {evex} vpsrad xmm0,xmm1,[rax]
    {evex} vpsllw xmm0,xmm1,xmm2
    {evex} vpsllw xmm0,xmm1,[rax]
    {evex} vpslld xmm0,xmm1,xmm2
    {evex} vpslld xmm0,xmm1,[rax]
    {evex} vpsllq xmm0,xmm1,xmm2
    {evex} vpsllq xmm0,xmm1,[rax]
    {evex} vpslldq xmm0,xmm1,1
    {evex} vpsrldq xmm0,xmm1,2
    {evex} vpsrlw  xmm0,xmm1,3
    {evex} vpsrld  xmm0,xmm1,4
    {evex} vpsrlq  xmm0,xmm1,5
    {evex} vpsraw  xmm0,xmm1,6
    {evex} vpsrad  xmm0,xmm1,7
    {evex} vpsllw  xmm0,xmm1,8
    {evex} vpslld  xmm0,xmm1,9
    {evex} vpsllq  xmm0,xmm1,10
    {evex} vpsrlw  xmm0,xmm1,xmm2
    {evex} vpsrlw  xmm0,xmm1,[rax]
    {evex} vpsrld  xmm0,xmm1,xmm2
    {evex} vpsrld  xmm0,xmm1,[rax]
    {evex} vpsrlq  xmm0,xmm1,xmm2
    {evex} vpsrlq  xmm0,xmm1,[rax]
    {evex} vpsraw  xmm0,xmm1,xmm2
    {evex} vpsraw  xmm0,xmm1,[rax]
    {evex} vpsrad  xmm0,xmm1,xmm2
    {evex} vpsrad  xmm0,xmm1,[rax]
    {evex} vpsllw  xmm0,xmm1,xmm2
    {evex} vpsllw  xmm0,xmm1,[rax]
    {evex} vpslld  xmm0,xmm1,xmm2
    {evex} vpslld  xmm0,xmm1,[rax]
    {evex} vpsllq  xmm0,xmm1,xmm2
    {evex} vpsllq  xmm0,xmm1,[rax]
    {evex} vpabsb xmm0,xmm1
    {evex} vpabsb xmm0,[rax]
    {evex} vpabsw xmm0,xmm1
    {evex} vpabsw xmm0,[rax]
    {evex} vpabsd xmm0,xmm1
    {evex} vpabsd xmm0,[rax]
    {evex} vcomisd xmm0,xmm1
    {evex} vcomisd xmm0,[rax]
    {evex} vcomiss xmm0,xmm1
    {evex} vcomiss xmm0,[rax]
    {evex} vucomisd xmm0,xmm1
    {evex} vucomisd xmm0,[rax]
    {evex} vucomiss xmm0,xmm1
    {evex} vucomiss xmm0,[rax]
    {evex} vpmovsxbw xmm0,xmm1
    {evex} vpmovsxbw xmm0,[rax]
    {evex} vpmovsxbd xmm0,xmm1
    {evex} vpmovsxbd xmm0,[rax]
    {evex} vpmovsxbq xmm0,xmm1
    {evex} vpmovsxbq xmm0,[rax]
    {evex} vpmovsxwd xmm0,xmm1
    {evex} vpmovsxwd xmm0,[rax]
    {evex} vpmovsxwq xmm0,xmm1
    {evex} vpmovsxwq xmm0,[rax]
    {evex} vpmovsxdq xmm0,xmm1
    {evex} vpmovsxdq xmm0,[rax]
    {evex} vextractps eax,xmm1,1
    {evex} vextractps [rax],xmm1,1
    {evex} vinsertps xmm0,xmm1,xmm3,0
    {evex} vinsertps xmm0,xmm1,[rax],1
    {evex} vcvtdq2pd xmm0,xmm1
    {evex} vcvtdq2pd xmm0,[rax]
    {evex} vcvtdq2pd ymm0,xmm1	  ;!
    {evex} vcvtdq2pd ymm0,[rax]	  ;!
    {evex} vcvtdq2ps xmm0,xmm1
    {evex} vcvtdq2ps xmm0,[rax]
    {evex} vcvtdq2ps ymm0,ymm1
    {evex} vcvtdq2ps ymm0,[rax]
    {evex} vcvtpd2dq xmm0,xmm1
    {evex} vcvtpd2dq xmm0,oword ptr [rax]
    {evex} vcvtpd2dq xmm0,ymm1
    {evex} vcvtpd2dq xmm0,yword ptr [rax]
    {evex} vcvttpd2dq xmm0,xmm1
    {evex} vcvttpd2dq xmm0,oword ptr [rax]
    {evex} vcvttpd2dq xmm0,ymm1
    {evex} vcvttpd2dq xmm0,yword ptr [rax]
    {evex} vcvtpd2ps xmm0,xmm1
    {evex} vcvtpd2ps xmm0,oword ptr [rax]
    {evex} vcvtpd2ps xmm0,ymm1
    {evex} vcvtpd2ps xmm0,yword ptr [rax]
    {evex} vcvtps2dq xmm0,xmm1
    {evex} vcvtps2dq xmm0,oword ptr [rax]
    {evex} vcvtps2dq ymm0,ymm1
    {evex} vcvtps2dq ymm0,yword ptr [rax]
    {evex} vcvttps2dq xmm0,xmm1
    {evex} vcvttps2dq xmm0,oword ptr [rax]
    {evex} vcvttps2dq ymm0,ymm1
    {evex} vcvttps2dq ymm0,yword ptr [rax]
    {evex} vcvtps2pd xmm0,xmm1
    {evex} vcvtps2pd ymm0,xmm1
    {evex} vcvtsd2si eax,xmm1
    {evex} vcvtsd2si eax,[rax]
    {evex} vcvttsd2si eax,xmm1
    {evex} vcvttsd2si eax,[rax]
    {evex} vcvtsd2ss xmm0,xmm1,xmm2
    {evex} vcvtsd2ss xmm0,xmm1,[rax]
    {evex} vcvtsi2sd xmm0,xmm1,eax
    {evex} vcvtsi2sd xmm0,xmm1,dword ptr [rax]
    {evex} vcvtsi2ss xmm0,xmm1,eax
    {evex} vcvtsi2ss xmm0,xmm1,dword ptr [rax]
    {evex} vcvtss2sd xmm0,xmm1,xmm2
    {evex} vcvtss2sd xmm0,xmm1,dword ptr [rax]
    {evex} vcvtss2si eax,xmm1
    {evex} vcvtss2si eax,[rax]
    {evex} vcvttss2si eax,xmm1
    {evex} vcvttss2si eax,[rax]
    {evex} vmovapd xmm0,xmm1
    {evex} vmovapd xmm0,oword ptr [rax]
    {evex} vmovapd oword ptr [rax],xmm1
    {evex} vmovapd ymm0,ymm1
    {evex} vmovapd ymm0,yword ptr [rax]
    {evex} vmovapd yword ptr [rax],ymm1
    {evex} vmovaps xmm0,xmm1
    {evex} vmovaps xmm0,oword ptr [rax]
    {evex} vmovaps oword ptr [rax],xmm1
    {evex} vmovaps ymm0,ymm1
    {evex} vmovaps ymm0,yword ptr [rax]
    {evex} vmovaps yword ptr [rax],ymm1
    {evex} vmovupd xmm0,xmm1
    {evex} vmovupd xmm0,oword ptr [rax]
    {evex} vmovupd oword ptr [rax],xmm1
    {evex} vmovupd ymm0,ymm1
    {evex} vmovupd ymm0,yword ptr [rax]
    {evex} vmovupd yword ptr [rax],ymm1
    {evex} vmovups xmm0,xmm1
    {evex} vmovups xmm0,oword ptr [rax]
    {evex} vmovups oword ptr [rax],xmm1
    {evex} vmovups ymm0,ymm1
    {evex} vmovups ymm0,yword ptr [rax]
    {evex} vmovups yword ptr [rax],ymm1
    {evex} vmovhlps xmm0,xmm1,xmm2
    {evex} vmovlhps xmm0,xmm1,xmm2
    {evex} vmovhpd xmm0,xmm1,qword ptr [rax]
    {evex} vmovhpd qword ptr [rax],xmm1
    {evex} vmovhps xmm0,xmm1,qword ptr [rax]
    {evex} vmovhps qword ptr [rax],xmm1
    {evex} vmovlpd xmm0,xmm1,qword ptr [rax]
    {evex} vmovlpd qword ptr [rax],xmm1
    {evex} vmovlps xmm0,xmm1,qword ptr [rax]
    {evex} vmovlps qword ptr [rax],xmm1
    {evex} vpextrb eax,xmm1,1
    {evex} vpextrb byte ptr [rax],xmm1,1
    ;{evex} vpextrw eax,xmm1,2
    ;{evex} vpextrw word ptr [rax],xmm1,2
    {evex} vpextrd eax,xmm1,3
    {evex} vpextrd dword ptr [rax],xmm1,3
    {evex} vpextrq rax,xmm1,4
    {evex} vpextrq qword ptr [rax],xmm1,4
    {evex} vpinsrb xmm0,xmm1,eax,1
    {evex} vpinsrb xmm0,xmm1,byte ptr [rax],1
    {evex} vpinsrw xmm0,xmm1,eax,2
    {evex} vpinsrw xmm0,xmm1,word ptr [rax],2
    {evex} vpinsrd xmm0,xmm1,eax,3
    {evex} vpinsrd xmm0,xmm1,dword ptr [rax],3
    {evex} vpinsrq xmm0,xmm1,rax,4
    {evex} vpinsrq xmm0,xmm1,qword ptr [rax],4
    {evex} vmovddup xmm0,xmm1
    {evex} vmovddup xmm0,qword ptr [rax]
    {evex} vmovddup ymm0,ymm1
    {evex} vmovddup ymm0,yword ptr [rax]
    {evex} vpaddb   xmm0,xmm0,xmm1
    {evex} vpaddw   xmm0,xmm0,xmm1
    {evex} vpaddd   xmm0,xmm0,xmm1
    {evex} vpaddq   xmm0,xmm0,xmm1
    {evex} vpaddsb  xmm0,xmm0,xmm1
    {evex} vpaddsw  xmm0,xmm0,xmm1
    {evex} vpaddusb xmm0,xmm0,xmm1
    {evex} vpaddusw xmm0,xmm0,xmm1
    {evex} vpavgb   xmm0,xmm0,xmm1
    {evex} vpavgw   xmm0,xmm0,xmm1
    {evex} vpaddb   ymm0,ymm0,ymm1
    {evex} vpaddw   ymm0,ymm0,ymm1
    {evex} vpaddd   ymm0,ymm0,ymm1
    {evex} vpaddq   ymm0,ymm0,ymm1
    {evex} vpaddsb  ymm0,ymm0,ymm1
    {evex} vpaddsw  ymm0,ymm0,ymm1
    {evex} vpaddusb ymm0,ymm0,ymm1
    {evex} vpaddusw ymm0,ymm0,ymm1
    {evex} vpavgb   ymm0,ymm0,ymm1
    {evex} vpavgw   ymm0,ymm0,ymm1

    {evex} vpsrlvq xmm2,xmm6,xmm4
    {evex} vpsrlvq xmm2,xmm6,OWORD PTR [rcx]
    {evex} vpermpd ymm2,ymm6,0x7
    {evex} vpermpd ymm6,YMMWORD PTR [rcx],0x7
    {evex} vpermq  ymm2,ymm6,0x7
    {evex} vpermq  ymm6,YMMWORD PTR [rcx],0x7
    {evex} vpermd  ymm2,ymm6,ymm4
    {evex} vpermd  ymm2,ymm6,YMMWORD PTR [rcx]
    {evex} vpermps ymm2,ymm6,ymm4
    {evex} vpermps ymm2,ymm6,YMMWORD PTR [rcx]
    {evex} vpsllvd ymm2,ymm6,ymm4
    {evex} vpsllvd ymm2,ymm6,YMMWORD PTR [rcx]
    {evex} vpsllvq ymm2,ymm6,ymm4
    {evex} vpsllvq ymm2,ymm6,YMMWORD PTR [rcx]
    {evex} vpsravd ymm2,ymm6,ymm4
    {evex} vpsravd ymm2,ymm6,YMMWORD PTR [rcx]
    {evex} vpsrlvd ymm2,ymm6,ymm4
    {evex} vpsrlvd ymm2,ymm6,YMMWORD PTR [rcx]
    {evex} vpsrlvq ymm2,ymm6,ymm4
    {evex} vpsrlvq ymm2,ymm6,YMMWORD PTR [rcx]

; 2.30.26

    vmovd xmm0,eax
    vmovd xmm0,ebp
    vmovd xmm0,r13d
    vmovd xmm0,dword ptr [rcx]
    vmovd xmm0,dword ptr [rax+r14*8+0x123]
    vmovd xmm0,dword ptr [rdx+0x1fc]
    vmovd xmm0,dword ptr [rdx+0x200]
    vmovd xmm0,dword ptr [rdx-0x200]
    vmovd xmm0,dword ptr [rdx-0x204]
    vmovd dword ptr [rcx],xmm0
    vmovd dword ptr [rax+r14*8+0x123],xmm0
    vmovd dword ptr [rdx+0x1fc],xmm0
    vmovd dword ptr [rdx+0x200],xmm0
    vmovd dword ptr [rdx-0x200],xmm0
    vmovd dword ptr [rdx-0x204],xmm0

    vmovq xmm0,qword ptr [rcx]
    vmovq xmm0,qword ptr [rax+r14*8+0x123]
    vmovq xmm0,qword ptr [rdx+0x3f8]
    vmovq xmm0,qword ptr [rdx+0x400]
    vmovq xmm0,qword ptr [rdx-0x400]
    vmovq xmm0,qword ptr [rdx-0x408]
    vmovq qword ptr [rax],xmm0
    vmovq qword ptr [rcx],xmm0
    vmovq qword ptr [rax+r14*8+0x123],xmm0
    vmovq qword ptr [rdx+0x3f8],xmm0
    vmovq qword ptr [rdx+0x400],xmm0
    vmovq qword ptr [rdx-0x400],xmm0
    vmovq qword ptr [rdx-0x408],xmm0
    vmovq xmm0,xmm1

    vaddpd xmm0,xmm1,xmm2
    vaddpd xmm0,xmm1,xmm2
    vxorpd xmm0,xmm1,xmm2
    vxorpd xmm0,xmm1,[rax]
    vaddps xmm0,xmm1,xmm2
    vaddps xmm0,xmm1,[rax]
    vaddps ymm0,ymm1,ymm2
    vaddps ymm0,ymm1,[rax]
    vaddsd xmm0,xmm1,xmm2
    vaddsd xmm0,xmm1,[rax]
    vaddss xmm0,xmm1,xmm2
    vaddss xmm0,xmm1,[rax]

    vaddpd xmm0,xmm2,xmm3
    vaddps xmm0,xmm2,xmm3
    vaddsd xmm0,xmm2,xmm3
    vaddss xmm0,xmm2,xmm3
    vaddpd xmm0{k1}{z},xmm2,xmm3
    vaddps xmm0{k1}{z},xmm2,xmm3
    vaddsd xmm0{k1}{z},xmm2,xmm3
    vaddss xmm0{k1}{z},xmm2,xmm3
    vaddpd ymm0,ymm2,ymm3
    vaddps ymm0,ymm2,ymm3
    vaddpd ymm0{k1}{z},ymm2,ymm3
    vaddps ymm0{k1}{z},ymm2,ymm3
    vaddpd xmm0,xmm2,[rax]
    vaddps xmm0,xmm2,[rax]
    vaddsd xmm0,xmm2,[rax]
    vaddss xmm0,xmm2,[rax]
    vaddpd xmm0{k1}{z},xmm2,[rax]
    vaddps xmm0{k1}{z},xmm2,[rax]
    vaddsd xmm0{k1}{z},xmm2,[rax]
    vaddss xmm0{k1}{z},xmm2,[rax]
    vaddpd ymm0,ymm2,[rax]
    vaddps ymm0,ymm2,[rax]
    vaddpd ymm0{k1}{z},ymm2,[rax]
    vaddps ymm0{k1}{z},ymm2,[rax]

    vaddpd zmm0,zmm1,zmm2
    vaddpd zmm0{k7},zmm1,zmm2
    vaddpd zmm0{k7}{z},zmm1,zmm2
    vaddpd zmm0,zmm1,zmm2,{rn-sae}
    vaddpd zmm0,zmm1,zmm2,{ru-sae}
    vaddpd zmm0,zmm1,zmm2,{rd-sae}
    vaddpd zmm0,zmm1,zmm2,{rz-sae}
    vaddpd zmm0,zmm1,zword ptr [rcx]
    vaddpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vaddpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vaddpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vaddpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vaddpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vaddpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vaddpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vaddpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vaddpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vaddpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vaddps zmm0,zmm1,zmm2
    vaddps zmm0{k7},zmm1,zmm2
    vaddps zmm0{k7}{z},zmm1,zmm2
    vaddps zmm0,zmm1,zmm2,{rn-sae}
    vaddps zmm0,zmm1,zmm2,{ru-sae}
    vaddps zmm0,zmm1,zmm2,{rd-sae}
    vaddps zmm0,zmm1,zmm2,{rz-sae}
    vaddps zmm0,zmm1,zword ptr [rcx]
    vaddps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vaddps zmm0,zmm1,dword ptr [rcx]{1to16}
    vaddps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vaddps zmm0,zmm1,zword ptr [rdx+0x2000]
    vaddps zmm0,zmm1,zword ptr [rdx-0x2000]
    vaddps zmm0,zmm1,zword ptr [rdx-0x2040]
    vaddps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vaddps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vaddps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vaddps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vaddsd xmm0{k7},xmm1,xmm2
    vaddsd xmm0{k7}{z},xmm1,xmm2
    vaddsd xmm0{k7},xmm1,xmm2,{rn-sae}
    vaddsd xmm0{k7},xmm1,xmm2,{ru-sae}
    vaddsd xmm0{k7},xmm1,xmm2,{rd-sae}
    vaddsd xmm0{k7},xmm1,xmm2,{rz-sae}
    vaddsd xmm0{k7},xmm1,qword ptr [rcx]
    vaddsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vaddsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vaddsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vaddsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vaddsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vaddss xmm0{k7},xmm1,xmm2
    vaddss xmm0{k7}{z},xmm1,xmm2
    vaddss xmm0{k7},xmm1,xmm2,{rn-sae}
    vaddss xmm0{k7},xmm1,xmm2,{ru-sae}
    vaddss xmm0{k7},xmm1,xmm2,{rd-sae}
    vaddss xmm0{k7},xmm1,xmm2,{rz-sae}
    vaddss xmm0{k7},xmm1,dword ptr [rcx]
    vaddss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vaddss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vaddss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vaddss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vaddss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vdivpd xmm0,xmm1,xmm2
    vdivpd xmm0,xmm1,[rax]
    vdivpd ymm0,ymm1,ymm2
    vdivpd ymm0,ymm1,[rax]
    vdivps xmm0,xmm1,xmm2
    vdivps xmm0,xmm1,[rax]
    vdivps ymm0,ymm1,ymm2
    vdivps ymm0,ymm1,[rax]
    vdivsd xmm0,xmm1,xmm2
    vdivsd xmm0,xmm1,[rax]
    vdivss xmm0,xmm1,xmm2
    vdivss xmm0,xmm1,[rax]

    vdivpd zmm0,zmm1,zmm2
    vdivpd zmm0{k7},zmm1,zmm2
    vdivpd zmm0{k7}{z},zmm1,zmm2
    vdivpd zmm0,zmm1,zmm2,{rn-sae}
    vdivpd zmm0,zmm1,zmm2,{ru-sae}
    vdivpd zmm0,zmm1,zmm2,{rd-sae}
    vdivpd zmm0,zmm1,zmm2,{rz-sae}
    vdivpd zmm0,zmm1,zword ptr [rcx]
    vdivpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vdivpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vdivpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vdivpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vdivpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vdivpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vdivpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vdivpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vdivpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vdivpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vdivps zmm0,zmm1,zmm2
    vdivps zmm0{k7},zmm1,zmm2
    vdivps zmm0{k7}{z},zmm1,zmm2
    vdivps zmm0,zmm1,zmm2,{rn-sae}
    vdivps zmm0,zmm1,zmm2,{ru-sae}
    vdivps zmm0,zmm1,zmm2,{rd-sae}
    vdivps zmm0,zmm1,zmm2,{rz-sae}
    vdivps zmm0,zmm1,zword ptr [rcx]
    vdivps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vdivps zmm0,zmm1,dword ptr [rcx]{1to16}
    vdivps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vdivps zmm0,zmm1,zword ptr [rdx+0x2000]
    vdivps zmm0,zmm1,zword ptr [rdx-0x2000]
    vdivps zmm0,zmm1,zword ptr [rdx-0x2040]
    vdivps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vdivps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vdivps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vdivps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vdivsd xmm0{k7},xmm1,xmm2
    vdivsd xmm0{k7}{z},xmm1,xmm2
    vdivsd xmm0{k7},xmm1,xmm2,{rn-sae}
    vdivsd xmm0{k7},xmm1,xmm2,{ru-sae}
    vdivsd xmm0{k7},xmm1,xmm2,{rd-sae}
    vdivsd xmm0{k7},xmm1,xmm2,{rz-sae}
    vdivsd xmm0{k7},xmm1,qword ptr [rcx]
    vdivsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vdivsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vdivsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vdivsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vdivsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vdivss xmm0{k7},xmm1,xmm2
    vdivss xmm0{k7}{z},xmm1,xmm2
    vdivss xmm0{k7},xmm1,xmm2,{rn-sae}
    vdivss xmm0{k7},xmm1,xmm2,{ru-sae}
    vdivss xmm0{k7},xmm1,xmm2,{rd-sae}
    vdivss xmm0{k7},xmm1,xmm2,{rz-sae}
    vdivss xmm0{k7},xmm1,dword ptr [rcx]
    vdivss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vdivss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vdivss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vdivss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vdivss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vmaxpd zmm0,zmm1,zmm2
    vmaxpd zmm0{k7},zmm1,zmm2
    vmaxpd zmm0{k7}{z},zmm1,zmm2
    vmaxpd zmm0,zmm1,zmm2,{sae}
    vmaxpd zmm0,zmm1,zword ptr [rcx]
    vmaxpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vmaxpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vmaxpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vmaxpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vmaxpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vmaxpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vmaxpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vmaxpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vmaxpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vmaxpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vmaxps zmm0,zmm1,zmm2
    vmaxps zmm0{k7},zmm1,zmm2
    vmaxps zmm0{k7}{z},zmm1,zmm2
    vmaxps zmm0,zmm1,zmm2,{sae}
    vmaxps zmm0,zmm1,zword ptr [rcx]
    vmaxps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vmaxps zmm0,zmm1,dword ptr [rcx]{1to16}
    vmaxps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vmaxps zmm0,zmm1,zword ptr [rdx+0x2000]
    vmaxps zmm0,zmm1,zword ptr [rdx-0x2000]
    vmaxps zmm0,zmm1,zword ptr [rdx-0x2040]
    vmaxps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vmaxps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vmaxps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vmaxps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vmaxsd xmm0{k7},xmm1,xmm2
    vmaxsd xmm0{k7}{z},xmm1,xmm2
    vmaxsd xmm0{k7},xmm1,xmm2,{sae}
    vmaxsd xmm0{k7},xmm1,qword ptr [rcx]
    vmaxsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vmaxsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vmaxsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vmaxsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vmaxsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vmaxss xmm0{k7},xmm1,xmm2
    vmaxss xmm0{k7}{z},xmm1,xmm2
    vmaxss xmm0{k7},xmm1,xmm2,{sae}
    vmaxss xmm0{k7},xmm1,dword ptr [rcx]
    vmaxss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vmaxss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vmaxss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vmaxss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vmaxss xmm0{k7},xmm1,dword ptr [rdx-0x204]


    vminpd zmm0,zmm1,zmm2
    vminpd zmm0{k7},zmm1,zmm2
    vminpd zmm0{k7}{z},zmm1,zmm2
    vminpd zmm0,zmm1,zmm2,{sae}
    vminpd zmm0,zmm1,zword ptr [rcx]
    vminpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vminpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vminpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vminpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vminpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vminpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vminpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vminpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vminpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vminpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vminps zmm0,zmm1,zmm2
    vminps zmm0{k7},zmm1,zmm2
    vminps zmm0{k7}{z},zmm1,zmm2
    vminps zmm0,zmm1,zmm2,{sae}
    vminps zmm0,zmm1,zword ptr [rcx]
    vminps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vminps zmm0,zmm1,dword ptr [rcx]{1to16}
    vminps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vminps zmm0,zmm1,zword ptr [rdx+0x2000]
    vminps zmm0,zmm1,zword ptr [rdx-0x2000]
    vminps zmm0,zmm1,zword ptr [rdx-0x2040]
    vminps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vminps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vminps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vminps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vminsd xmm0{k7},xmm1,xmm2
    vminsd xmm0{k7}{z},xmm1,xmm2
    vminsd xmm0{k7},xmm1,xmm2,{sae}
    vminsd xmm0{k7},xmm1,qword ptr [rcx]
    vminsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vminsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vminsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vminsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vminsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vminss xmm0{k7},xmm1,xmm2
    vminss xmm0{k7}{z},xmm1,xmm2
    vminss xmm0{k7},xmm1,xmm2,{sae}
    vminss xmm0{k7},xmm1,dword ptr [rcx]
    vminss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vminss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vminss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vminss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vminss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vmulpd zmm0,zmm1,zmm2
    vmulpd zmm0{k7},zmm1,zmm2
    vmulpd zmm0{k7}{z},zmm1,zmm2
    vmulpd zmm0,zmm1,zmm2,{rn-sae}
    vmulpd zmm0,zmm1,zmm2,{ru-sae}
    vmulpd zmm0,zmm1,zmm2,{rd-sae}
    vmulpd zmm0,zmm1,zmm2,{rz-sae}
    vmulpd zmm0,zmm1,zword ptr [rcx]
    vmulpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vmulpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vmulpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vmulpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vmulpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vmulpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vmulpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vmulpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vmulpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vmulpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vmulps zmm0,zmm1,zmm2
    vmulps zmm0{k7},zmm1,zmm2
    vmulps zmm0{k7}{z},zmm1,zmm2
    vmulps zmm0,zmm1,zmm2,{rn-sae}
    vmulps zmm0,zmm1,zmm2,{ru-sae}
    vmulps zmm0,zmm1,zmm2,{rd-sae}
    vmulps zmm0,zmm1,zmm2,{rz-sae}
    vmulps zmm0,zmm1,zword ptr [rcx]
    vmulps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vmulps zmm0,zmm1,dword ptr [rcx]{1to16}
    vmulps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vmulps zmm0,zmm1,zword ptr [rdx+0x2000]
    vmulps zmm0,zmm1,zword ptr [rdx-0x2000]
    vmulps zmm0,zmm1,zword ptr [rdx-0x2040]
    vmulps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vmulps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vmulps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vmulps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vmulsd xmm0{k7},xmm1,xmm2
    vmulsd xmm0{k7}{z},xmm1,xmm2
    vmulsd xmm0{k7},xmm1,xmm2,{rn-sae}
    vmulsd xmm0{k7},xmm1,xmm2,{ru-sae}
    vmulsd xmm0{k7},xmm1,xmm2,{rd-sae}
    vmulsd xmm0{k7},xmm1,xmm2,{rz-sae}
    vmulsd xmm0{k7},xmm1,qword ptr [rcx]
    vmulsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vmulsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vmulsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vmulsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vmulsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vmulss xmm0{k7},xmm1,xmm2
    vmulss xmm0{k7}{z},xmm1,xmm2
    vmulss xmm0{k7},xmm1,xmm2,{rn-sae}
    vmulss xmm0{k7},xmm1,xmm2,{ru-sae}
    vmulss xmm0{k7},xmm1,xmm2,{rd-sae}
    vmulss xmm0{k7},xmm1,xmm2,{rz-sae}
    vmulss xmm0{k7},xmm1,dword ptr [rcx]
    vmulss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vmulss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vmulss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vmulss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vmulss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vsubpd zmm0,zmm1,zmm2
    vsubpd zmm0{k7},zmm1,zmm2
    vsubpd zmm0{k7}{z},zmm1,zmm2
    vsubpd zmm0,zmm1,zmm2,{rn-sae}
    vsubpd zmm0,zmm1,zmm2,{ru-sae}
    vsubpd zmm0,zmm1,zmm2,{rd-sae}
    vsubpd zmm0,zmm1,zmm2,{rz-sae}
    vsubpd zmm0,zmm1,zword ptr [rcx]
    vsubpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vsubpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vsubpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vsubpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vsubpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vsubpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vsubpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vsubpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vsubpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vsubpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vsubps zmm0,zmm1,zmm2
    vsubps zmm0{k7},zmm1,zmm2
    vsubps zmm0{k7}{z},zmm1,zmm2
    vsubps zmm0,zmm1,zmm2,{rn-sae}
    vsubps zmm0,zmm1,zmm2,{ru-sae}
    vsubps zmm0,zmm1,zmm2,{rd-sae}
    vsubps zmm0,zmm1,zmm2,{rz-sae}
    vsubps zmm0,zmm1,zword ptr [rcx]
    vsubps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vsubps zmm0,zmm1,dword ptr [rcx]{1to16}
    vsubps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vsubps zmm0,zmm1,zword ptr [rdx+0x2000]
    vsubps zmm0,zmm1,zword ptr [rdx-0x2000]
    vsubps zmm0,zmm1,zword ptr [rdx-0x2040]
    vsubps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vsubps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vsubps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vsubps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vsubsd xmm0{k7},xmm1,xmm2
    vsubsd xmm0{k7}{z},xmm1,xmm2
    vsubsd xmm0{k7},xmm1,xmm2,{rn-sae}
    vsubsd xmm0{k7},xmm1,xmm2,{ru-sae}
    vsubsd xmm0{k7},xmm1,xmm2,{rd-sae}
    vsubsd xmm0{k7},xmm1,xmm2,{rz-sae}
    vsubsd xmm0{k7},xmm1,qword ptr [rcx]
    vsubsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vsubsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vsubsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vsubsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vsubsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vsubss xmm0{k7},xmm1,xmm2
    vsubss xmm0{k7}{z},xmm1,xmm2
    vsubss xmm0{k7},xmm1,xmm2,{rn-sae}
    vsubss xmm0{k7},xmm1,xmm2,{ru-sae}
    vsubss xmm0{k7},xmm1,xmm2,{rd-sae}
    vsubss xmm0{k7},xmm1,xmm2,{rz-sae}
    vsubss xmm0{k7},xmm1,dword ptr [rcx]
    vsubss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vsubss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vsubss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vsubss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vsubss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vsqrtpd zmm0,zmm1
    vsqrtpd zmm0{k7},zmm1
    vsqrtpd zmm0{k7}{z},zmm1
    vsqrtpd zmm0,zmm1,{rn-sae}
    vsqrtpd zmm0,zmm1,{ru-sae}
    vsqrtpd zmm0,zmm1,{rd-sae}
    vsqrtpd zmm0,zmm1,{rz-sae}
    vsqrtpd zmm0,zword ptr [rcx]
    vsqrtpd zmm0,zword ptr [rax+r14*8+0x123]
    vsqrtpd zmm0,qword ptr [rcx]{1to8}
    vsqrtpd zmm0,zword ptr [rdx+0x1fc0]
    vsqrtpd zmm0,zword ptr [rdx+0x2000]
    vsqrtpd zmm0,zword ptr [rdx-0x2000]
    vsqrtpd zmm0,zword ptr [rdx-0x2040]
    vsqrtpd zmm0,qword ptr [rdx+0x3f8]{1to8}
    vsqrtpd zmm0,qword ptr [rdx+0x400]{1to8}
    vsqrtpd zmm0,qword ptr [rdx-0x400]{1to8}
    vsqrtpd zmm0,qword ptr [rdx-0x408]{1to8}
    vsqrtps zmm0,zmm1
    vsqrtps zmm0{k7},zmm1
    vsqrtps zmm0{k7}{z},zmm1
    vsqrtps zmm0,zmm1,{rn-sae}
    vsqrtps zmm0,zmm1,{ru-sae}
    vsqrtps zmm0,zmm1,{rd-sae}
    vsqrtps zmm0,zmm1,{rz-sae}
    vsqrtps zmm0,zword ptr [rcx]
    vsqrtps zmm0,zword ptr [rax+r14*8+0x123]
    vsqrtps zmm0,dword ptr [rcx]{1to16}
    vsqrtps zmm0,zword ptr [rdx+0x1fc0]
    vsqrtps zmm0,zword ptr [rdx+0x2000]
    vsqrtps zmm0,zword ptr [rdx-0x2000]
    vsqrtps zmm0,zword ptr [rdx-0x2040]
    vsqrtps zmm0,dword ptr [rdx+0x1fc]{1to16}
    vsqrtps zmm0,dword ptr [rdx+0x200]{1to16}
    vsqrtps zmm0,dword ptr [rdx-0x200]{1to16}
    vsqrtps zmm0,dword ptr [rdx-0x204]{1to16}
    vsqrtsd xmm0{k7},xmm1,xmm2
    vsqrtsd xmm0{k7}{z},xmm1,xmm2
    vsqrtsd xmm0{k7},xmm1,xmm2,{rn-sae}
    vsqrtsd xmm0{k7},xmm1,xmm2,{ru-sae}
    vsqrtsd xmm0{k7},xmm1,xmm2,{rd-sae}
    vsqrtsd xmm0{k7},xmm1,xmm2,{rz-sae}
    vsqrtsd xmm0{k7},xmm1,qword ptr [rcx]
    vsqrtsd xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vsqrtsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vsqrtsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vsqrtsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vsqrtsd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vsqrtss xmm0{k7},xmm1,xmm2
    vsqrtss xmm0{k7}{z},xmm1,xmm2
    vsqrtss xmm0{k7},xmm1,xmm2,{rn-sae}
    vsqrtss xmm0{k7},xmm1,xmm2,{ru-sae}
    vsqrtss xmm0{k7},xmm1,xmm2,{rd-sae}
    vsqrtss xmm0{k7},xmm1,xmm2,{rz-sae}
    vsqrtss xmm0{k7},xmm1,dword ptr [rcx]
    vsqrtss xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vsqrtss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vsqrtss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vsqrtss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vsqrtss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vcmppd k5,zmm0,zmm1,0xab
    vcmppd k5{k7},zmm0,zmm1,0xab
    vcmppd k5,zmm0,zmm1,{sae},0xab
    vcmppd k5,zmm0,zmm1,0x7b
    vcmppd k5,zmm0,zmm1,{sae},0x7b
    vcmppd k5,zmm0,zword ptr [rcx],0x7b
    vcmppd k5,zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vcmppd k5,zmm0,qword ptr [rcx]{1to8},0x7b
    vcmppd k5,zmm0,zword ptr [rdx+0x1fc0],0x7b
    vcmppd k5,zmm0,zword ptr [rdx+0x2000],0x7b
    vcmppd k5,zmm0,zword ptr [rdx-0x2000],0x7b
    vcmppd k5,zmm0,zword ptr [rdx-0x2040],0x7b
    vcmppd k5,zmm0,qword ptr [rdx+0x3f8]{1to8},0x7b
    vcmppd k5,zmm0,qword ptr [rdx+0x400]{1to8},0x7b
    vcmppd k5,zmm0,qword ptr [rdx-0x400]{1to8},0x7b
    vcmppd k5,zmm0,qword ptr [rdx-0x408]{1to8},0x7b
    vcmpps k5,zmm0,zmm1,0xab
    vcmpps k5{k7},zmm0,zmm1,0xab
    vcmpps k5,zmm0,zmm1,{sae},0xab
    vcmpps k5,zmm0,zmm1,0x7b
    vcmpps k5,zmm0,zmm1,{sae},0x7b
    vcmpps k5,zmm0,zword ptr [rcx],0x7b
    vcmpps k5,zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vcmpps k5,zmm0,dword ptr [rcx]{1to16},0x7b
    vcmpps k5,zmm0,zword ptr [rdx+0x1fc0],0x7b
    vcmpps k5,zmm0,zword ptr [rdx+0x2000],0x7b
    vcmpps k5,zmm0,zword ptr [rdx-0x2000],0x7b
    vcmpps k5,zmm0,zword ptr [rdx-0x2040],0x7b
    vcmpps k5,zmm0,dword ptr [rdx+0x1fc]{1to16},0x7b
    vcmpps k5,zmm0,dword ptr [rdx+0x200]{1to16},0x7b
    vcmpps k5,zmm0,dword ptr [rdx-0x200]{1to16},0x7b
    vcmpps k5,zmm0,dword ptr [rdx-0x204]{1to16},0x7b
    vcmpsd k5{k7},xmm1,xmm2,0xab
    vcmpsd k5{k7},xmm1,xmm2,{sae},0xab
    vcmpsd k5{k7},xmm1,xmm2,0x7b
    vcmpsd k5{k7},xmm1,xmm2,{sae},0x7b
    vcmpsd k5{k7},xmm1,qword ptr [rcx],0x7b
    vcmpsd k5{k7},xmm1,qword ptr [rax+r14*8+0x123],0x7b
    vcmpsd k5{k7},xmm1,qword ptr [rdx+0x3f8],0x7b
    vcmpsd k5{k7},xmm1,qword ptr [rdx+0x400],0x7b
    vcmpsd k5{k7},xmm1,qword ptr [rdx-0x400],0x7b
    vcmpsd k5{k7},xmm1,qword ptr [rdx-0x408],0x7b
    vcmpss k5{k7},xmm1,xmm2,0xab
    vcmpss k5{k7},xmm1,xmm2,{sae},0xab
    vcmpss k5{k7},xmm1,xmm2,0x7b
    vcmpss k5{k7},xmm1,xmm2,{sae},0x7b
    vcmpss k5{k7},xmm1,dword ptr [rcx],0x7b
    vcmpss k5{k7},xmm1,dword ptr [rax+r14*8+0x123],0x7b
    vcmpss k5{k7},xmm1,dword ptr [rdx+0x1fc],0x7b
    vcmpss k5{k7},xmm1,dword ptr [rdx+0x200],0x7b
    vcmpss k5{k7},xmm1,dword ptr [rdx-0x200],0x7b
    vcmpss k5{k7},xmm1,dword ptr [rdx-0x204],0x7b

    vandpd xmm0,xmm1,xmm2
    vandpd ymm0,ymm1,ymm2
    vandps xmm0,xmm1,xmm2
    vandps ymm0,ymm1,ymm2

    vandnpd xmm0,xmm1,xmm2
    vandnpd ymm0,ymm1,ymm2
    vandnps xmm0,xmm1,xmm2
    vandnps ymm0,ymm1,ymm2


    vcvtdq2pd xmm0,xmm1
    vcvtdq2pd xmm0,[rax]
    vcvtdq2pd ymm0,xmm1
    vcvtdq2pd ymm0,[rax]
    vcvtdq2pd zmm0{k7},ymm1
    vcvtdq2pd zmm0{k7}{z},ymm1
    vcvtdq2pd zmm0{k7},yword ptr [rcx]
    vcvtdq2pd zmm0{k7},yword ptr [rax+r14*8+0x123]
    vcvtdq2pd zmm0{k7},dword ptr [rcx]{1to8}
    vcvtdq2pd zmm0{k7},yword ptr [rdx+0xfe0]
    vcvtdq2pd zmm0{k7},yword ptr [rdx+0x1000]
    vcvtdq2pd zmm0{k7},yword ptr [rdx-0x1000]
    vcvtdq2pd zmm0{k7},yword ptr [rdx-0x1020]
    vcvtdq2pd zmm0{k7},dword ptr [rdx+0x1fc]{1to8}
    vcvtdq2pd zmm0{k7},dword ptr [rdx+0x200]{1to8}
    vcvtdq2pd zmm0{k7},dword ptr [rdx-0x200]{1to8}
    vcvtdq2pd zmm0{k7},dword ptr [rdx-0x204]{1to8}

    vcvtdq2ps xmm0,xmm1
    vcvtdq2ps xmm0,[rax]
    vcvtdq2ps ymm0,ymm1
    vcvtdq2ps ymm0,[rax]
    vcvtdq2ps zmm0,zmm1
    vcvtdq2ps zmm0{k7},zmm1
    vcvtdq2ps zmm0{k7}{z},zmm1
    vcvtdq2ps zmm0,zmm1,{rn-sae}
    vcvtdq2ps zmm0,zmm1,{ru-sae}
    vcvtdq2ps zmm0,zmm1,{rd-sae}
    vcvtdq2ps zmm0,zmm1,{rz-sae}
    vcvtdq2ps zmm0,zword ptr [rcx]
    vcvtdq2ps zmm0,zword ptr [rax+r14*8+0x123]
    vcvtdq2ps zmm0,dword ptr [rcx]{1to16}
    vcvtdq2ps zmm0,zword ptr [rdx+0x1fc0]
    vcvtdq2ps zmm0,zword ptr [rdx+0x2000]
    vcvtdq2ps zmm0,zword ptr [rdx-0x2000]
    vcvtdq2ps zmm0,zword ptr [rdx-0x2040]
    vcvtdq2ps zmm0,dword ptr [rdx+0x1fc]{1to16}
    vcvtdq2ps zmm0,dword ptr [rdx+0x200]{1to16}
    vcvtdq2ps zmm0,dword ptr [rdx-0x200]{1to16}
    vcvtdq2ps zmm0,dword ptr [rdx-0x204]{1to16}

    vcvtpd2dq xmm0,xmm1
    vcvtpd2dq xmm0,oword ptr [rax]
    vcvtpd2dq xmm0,ymm1
    vcvtpd2dq xmm0,yword ptr [rax]
    vcvtpd2dq ymm0{k7},zmm1
    vcvtpd2dq ymm0{k7}{z},zmm1
    vcvtpd2dq ymm0{k7},zmm1,{rn-sae}
    vcvtpd2dq ymm0{k7},zmm1,{ru-sae}
    vcvtpd2dq ymm0{k7},zmm1,{rd-sae}
    vcvtpd2dq ymm0{k7},zmm1,{rz-sae}
    vcvtpd2dq ymm0{k7},zword ptr [rcx]
    vcvtpd2dq ymm0{k7},zword ptr [rax+r14*8+0x123]
    vcvtpd2dq ymm0{k7},qword ptr [rcx]{1to8}
    vcvtpd2dq ymm0{k7},zword ptr [rdx+0x1fc0]
    vcvtpd2dq ymm0{k7},zword ptr [rdx+0x2000]
    vcvtpd2dq ymm0{k7},zword ptr [rdx-0x2000]
    vcvtpd2dq ymm0{k7},zword ptr [rdx-0x2040]
    vcvtpd2dq ymm0{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvtpd2dq ymm0{k7},qword ptr [rdx+0x400]{1to8}
    vcvtpd2dq ymm0{k7},qword ptr [rdx-0x400]{1to8}
    vcvtpd2dq ymm0{k7},qword ptr [rdx-0x408]{1to8}

    vcvtpd2ps xmm0,xmm1
    vcvtpd2ps xmm0,oword ptr [rax]
    vcvtpd2ps xmm0,ymm1
    vcvtpd2ps xmm0,yword ptr [rax]
    vcvtpd2ps ymm0{k7},zmm1
    vcvtpd2ps ymm0{k7}{z},zmm1
    vcvtpd2ps ymm0{k7},zmm1,{rn-sae}
    vcvtpd2ps ymm0{k7},zmm1,{ru-sae}
    vcvtpd2ps ymm0{k7},zmm1,{rd-sae}
    vcvtpd2ps ymm0{k7},zmm1,{rz-sae}
    vcvtpd2ps ymm0{k7},zword ptr [rcx]
    vcvtpd2ps ymm0{k7},zword ptr [rax+r14*8+0x123]
    vcvtpd2ps ymm0{k7},qword ptr [rcx]{1to8}
    vcvtpd2ps ymm0{k7},zword ptr [rdx+0x1fc0]
    vcvtpd2ps ymm0{k7},zword ptr [rdx+0x2000]
    vcvtpd2ps ymm0{k7},zword ptr [rdx-0x2000]
    vcvtpd2ps ymm0{k7},zword ptr [rdx-0x2040]
    vcvtpd2ps ymm0{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvtpd2ps ymm0{k7},qword ptr [rdx+0x400]{1to8}
    vcvtpd2ps ymm0{k7},qword ptr [rdx-0x400]{1to8}
    vcvtpd2ps ymm0{k7},qword ptr [rdx-0x408]{1to8}

    vcvtsd2ss xmm0{k7},xmm1,xmm2
    vcvtsd2ss xmm0{k7}{z},xmm1,xmm2
    vcvtsd2ss xmm0{k7},xmm1,xmm2,{rn-sae}
    vcvtsd2ss xmm0{k7},xmm1,xmm2,{ru-sae}
    vcvtsd2ss xmm0{k7},xmm1,xmm2,{rd-sae}
    vcvtsd2ss xmm0{k7},xmm1,xmm2,{rz-sae}
    vcvtsd2ss xmm0{k7},xmm1,qword ptr [rcx]
    vcvtsd2ss xmm0{k7},xmm1,qword ptr [rax+r14*8+0x123]
    vcvtsd2ss xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vcvtsd2ss xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vcvtsd2ss xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vcvtsd2ss xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vcvtsi2sd xmm0,xmm1,eax
    vcvtsi2sd xmm0,xmm1,eax
    vcvtsi2sd xmm0,xmm1,ebp
    vcvtsi2sd xmm0,xmm1,r13d
    vcvtsi2sd xmm0,xmm1,dword ptr [rax]
    vcvtsi2sd xmm0,xmm1,dword ptr [rcx]
    vcvtsi2sd xmm0,xmm1,dword ptr [rax+r14*8+0x123]
    vcvtsi2sd xmm0,xmm1,dword ptr [rdx+0x1fc]
    vcvtsi2sd xmm0,xmm1,dword ptr [rdx+0x200]
    vcvtsi2sd xmm0,xmm1,dword ptr [rdx-0x200]
    vcvtsi2sd xmm0,xmm1,dword ptr [rdx-0x204]
    vcvtsi2sd xmm0,xmm1,rax
    vcvtsi2sd xmm0,xmm1,r8
    vcvtsi2sd xmm0,xmm1,qword ptr [rcx]
    vcvtsi2sd xmm0,xmm1,qword ptr [rax+r14*8+0x123]
    vcvtsi2sd xmm0,xmm1,qword ptr [rdx+0x3f8]
    vcvtsi2sd xmm0,xmm1,qword ptr [rdx+0x400]
    vcvtsi2sd xmm0,xmm1,qword ptr [rdx-0x400]
    vcvtsi2sd xmm0,xmm1,qword ptr [rdx-0x408]

    vcvtsi2ss xmm0,xmm1,eax
    vcvtsi2ss xmm0,xmm1,eax
    vcvtsi2ss xmm0,xmm1,ebp
    vcvtsi2ss xmm0,xmm1,r13d
    vcvtsi2ss xmm0,xmm1,dword ptr [rax]
    vcvtsi2ss xmm0,xmm1,dword ptr [rcx]
    vcvtsi2ss xmm0,xmm1,dword ptr [rax+r14*8+0x123]
    vcvtsi2ss xmm0,xmm1,dword ptr [rdx+0x1fc]
    vcvtsi2ss xmm0,xmm1,dword ptr [rdx+0x200]
    vcvtsi2ss xmm0,xmm1,dword ptr [rdx-0x200]
    vcvtsi2ss xmm0,xmm1,dword ptr [rdx-0x204]
    vcvtsi2ss xmm0,xmm1,rax
    vcvtsi2ss xmm0,xmm1,r8
    vcvtsi2ss xmm0,xmm1,qword ptr [rcx]
    vcvtsi2ss xmm0,xmm1,qword ptr [rax+r14*8+0x123]
    vcvtsi2ss xmm0,xmm1,qword ptr [rdx+0x3f8]
    vcvtsi2ss xmm0,xmm1,qword ptr [rdx+0x400]
    vcvtsi2ss xmm0,xmm1,qword ptr [rdx-0x400]
    vcvtsi2ss xmm0,xmm1,qword ptr [rdx-0x408]

    vcvtss2sd xmm0,xmm1,xmm2
    vcvtss2sd xmm0,xmm1,dword ptr [rax]
    vcvtss2sd xmm0{k7},xmm1,xmm2
    vcvtss2sd xmm0{k7}{z},xmm1,xmm2
    vcvtss2sd xmm0{k7},xmm1,xmm2,{sae}
    vcvtss2sd xmm0{k7},xmm1,dword ptr [rcx]
    vcvtss2sd xmm0{k7},xmm1,dword ptr [rax+r14*8+0x123]
    vcvtss2sd xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vcvtss2sd xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vcvtss2sd xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vcvtss2sd xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vcvtss2si eax,xmm1
    vextractps eax,xmm1,1
    vextractps [rax],xmm1,1
    vextractps dword ptr [rcx],xmm1,0x7b
    vextractps dword ptr [rax+r14*8+0x123],xmm1,0x7b
    vextractps dword ptr [rdx+0x1fc],xmm1,0x7b
    vextractps dword ptr [rdx+0x200],xmm1,0x7b
    vextractps dword ptr [rdx-0x200],xmm1,0x7b
    vextractps dword ptr [rdx-0x204],xmm1,0x7b

    vinsertps xmm1,xmm2,xmm3,7
    vinsertps xmm0,xmm1,xmm3,0
    vinsertps xmm0,xmm1,xmm2,0xab
    vinsertps xmm0,xmm1,xmm2,0x7b
    vinsertps xmm0,xmm1,[rax],1
    vinsertps xmm0,xmm1,dword ptr [rcx],0x7b
    vinsertps xmm0,xmm1,dword ptr [rax+r14*8+0x123],0x7b
    vinsertps xmm0,xmm1,dword ptr [rdx+0x1fc],0x7b
    vinsertps xmm0,xmm1,dword ptr [rdx+0x200],0x7b
    vinsertps xmm0,xmm1,dword ptr [rdx-0x200],0x7b
    vinsertps xmm0,xmm1,dword ptr [rdx-0x204],0x7b

    vmovapd xmm0,xmm1
    vmovapd xmm0,oword ptr [rax]
    vmovapd oword ptr [rax],xmm21
    vmovapd ymm0,ymm1
    vmovapd ymm0,yword ptr [rax]
    vmovapd yword ptr [rax],ymm1
    vmovapd zmm2{k1}{z},zmm1
    vmovapd zmm0,zmm1
    vmovapd zmm0{k7},zmm1
    vmovapd zmm0{k7}{z},zmm1
    vmovapd zmm0,zword ptr [rcx]
    vmovapd zmm0,zword ptr [rax+r14*8+0x123]
    vmovapd zmm0,zword ptr [rdx+0x1fc0]
    vmovapd zmm0,zword ptr [rdx+0x2000]
    vmovapd zmm0,zword ptr [rdx-0x2000]
    vmovapd zmm0,zword ptr [rdx-0x2040]

    vmovaps xmm0,xmm1
    vmovaps xmm0,oword ptr [rax]
    vmovaps oword ptr [rax],xmm1
    vmovaps ymm0,ymm1
    vmovaps ymm0,yword ptr [rax]
    vmovaps yword ptr [rax],ymm1
    vmovaps zmm2{k1}{z},zmm1
    vmovaps zmm0,zmm1
    vmovaps zmm0{k7},zmm1
    vmovaps zmm0{k7}{z},zmm1
    vmovaps zmm0,zword ptr [rcx]
    vmovaps zmm0,zword ptr [rax+r14*8+0x123]
    vmovaps zmm0,zword ptr [rdx+0x1fc0]
    vmovaps zmm0,zword ptr [rdx+0x2000]
    vmovaps zmm0,zword ptr [rdx-0x2000]
    vmovaps zmm0,zword ptr [rdx-0x2040]

    vmovapd zword ptr [rcx],zmm0
    vmovapd zword ptr [rcx]{k7},zmm0
    vmovapd zword ptr [rax+r14*8+0x123],zmm0
    vmovapd zword ptr [rdx+0x1fc0],zmm0
    vmovapd zword ptr [rdx+0x2000],zmm0
    vmovapd zword ptr [rdx-0x2000],zmm0
    vmovapd zword ptr [rdx-0x2040],zmm0
    vmovaps zword ptr [rcx],zmm0
    vmovaps zword ptr [rcx]{k7},zmm0
    vmovaps zword ptr [rax+r14*8+0x123],zmm0
    vmovaps zword ptr [rdx+0x1fc0],zmm0
    vmovaps zword ptr [rdx+0x2000],zmm0
    vmovaps zword ptr [rdx-0x2000],zmm0
    vmovaps zword ptr [rdx-0x2040],zmm0

    vmovhlps xmm0,xmm1,xmm2
    vmovhlps xmm0,xmm1,xmm2

    vmovlhps xmm0,xmm1,xmm2
    vmovlhps xmm0,xmm1,xmm2

    vmovsd xmm0{k7},qword ptr [rcx]
    vmovsd xmm0{k7}{z},qword ptr [rcx]
    vmovsd xmm0{k7},qword ptr [rax+r14*8+0x123]
    vmovsd xmm0{k7},qword ptr [rdx+0x3f8]
    vmovsd xmm0{k7},qword ptr [rdx+0x400]
    vmovsd xmm0{k7},qword ptr [rdx-0x400]
    vmovsd xmm0{k7},qword ptr [rdx-0x408]
    vmovsd qword ptr [rcx]{k7},xmm0
    vmovsd qword ptr [rax+r14*8+0x123]{k7},xmm0
    vmovsd qword ptr [rdx+0x3f8]{k7},xmm0
    vmovsd qword ptr [rdx+0x400]{k7},xmm0
    vmovsd qword ptr [rdx-0x400]{k7},xmm0
    vmovsd qword ptr [rdx-0x408]{k7},xmm0
    vmovsd xmm0{k7},xmm1,xmm2
    vmovsd xmm0{k7}{z},xmm1,xmm2
    vmovsd xmm0,xmm1, xmm2
    vmovsd xmm0,qword ptr [rax]
    vmovsd qword ptr [rax],xmm0
    vmovsd xmm0,qword ptr [rbx]
    vmovsd qword ptr [rbx],xmm0

    vmovss xmm0{k7},dword ptr [rcx]
    vmovss xmm0{k7}{z},dword ptr [rcx]
    vmovss xmm0{k7},dword ptr [rax+r14*8+0x123]
    vmovss xmm0{k7},dword ptr [rdx+0x1fc]
    vmovss xmm0{k7},dword ptr [rdx+0x200]
    vmovss xmm0{k7},dword ptr [rdx-0x200]
    vmovss xmm0{k7},dword ptr [rdx-0x204]
    vmovss dword ptr [rcx]{k7},xmm0
    vmovss dword ptr [rax+r14*8+0x123]{k7},xmm0
    vmovss dword ptr [rdx+0x1fc]{k7},xmm0
    vmovss dword ptr [rdx+0x200]{k7},xmm0
    vmovss dword ptr [rdx-0x200]{k7},xmm0
    vmovss dword ptr [rdx-0x204]{k7},xmm0
    vmovss xmm0{k7},xmm1,xmm2
    vmovss xmm0{k7}{z},xmm1,xmm2
    vmovss xmm0,xmm1,xmm2
    vmovss xmm0,dword ptr [rax]
    vmovss dword ptr [rax],xmm0
    vmovss xmm0,dword ptr [rbx]
    vmovss dword ptr [rbx],xmm0

    vmovntdq yword ptr [rax],ymm0
    vmovntdq zword ptr [rcx],zmm0
    vmovntdq zword ptr [rax+r14*8+0x123],zmm0
    vmovntdq zword ptr [rdx+0x1fc0],zmm0
    vmovntdq zword ptr [rdx+0x2000],zmm0
    vmovntdq zword ptr [rdx-0x2000],zmm0
    vmovntdq zword ptr [rdx-0x2040],zmm0
    vmovntdq oword ptr [rax],xmm0

    vmovntdqa xmm0,oword ptr [rax]
    vmovntdqa ymm0,yword ptr [rax]
    vmovntdqa zmm0,zword ptr [rcx]
    vmovntdqa zmm0,zword ptr [rax+r14*8+0x123]
    vmovntdqa zmm0,zword ptr [rdx+0x1fc0]
    vmovntdqa zmm0,zword ptr [rdx+0x2000]
    vmovntdqa zmm0,zword ptr [rdx-0x2000]
    vmovntdqa zmm0,zword ptr [rdx-0x2040]

    vmovntpd oword ptr [rax],xmm0
    vmovntpd yword ptr [rax],ymm0
    vmovntpd zword ptr [rcx],zmm0
    vmovntpd zword ptr [rax+r14*8+0x123],zmm0
    vmovntpd zword ptr [rdx+0x1fc0],zmm0
    vmovntpd zword ptr [rdx+0x2000],zmm0
    vmovntpd zword ptr [rdx-0x2000],zmm0
    vmovntpd zword ptr [rdx-0x2040],zmm0

    vmovntps oword ptr [rax],xmm0
    vmovntps yword ptr [rax],ymm0
    vmovntps zword ptr [rcx],zmm0
    vmovntps zword ptr [rax+r14*8+0x123],zmm0
    vmovntps zword ptr [rdx+0x1fc0],zmm0
    vmovntps zword ptr [rdx+0x2000],zmm0
    vmovntps zword ptr [rdx-0x2000],zmm0
    vmovntps zword ptr [rdx-0x2040],zmm0

    vmovshdup zmm0,zmm1
    vmovshdup zmm0{k7},zmm1
    vmovshdup zmm0{k7}{z},zmm1
    vmovshdup zmm0,zword ptr [rcx]
    vmovshdup zmm0,zword ptr [rax+r14*8+0x123]
    vmovshdup zmm0,zword ptr [rdx+0x1fc0]
    vmovshdup zmm0,zword ptr [rdx+0x2000]
    vmovshdup zmm0,zword ptr [rdx-0x2000]
    vmovshdup zmm0,zword ptr [rdx-0x2040]

    vmovsldup zmm0,zmm1
    vmovsldup zmm0{k7},zmm1
    vmovsldup zmm0{k7}{z},zmm1
    vmovsldup zmm0,zword ptr [rcx]
    vmovsldup zmm0,zword ptr [rax+r14*8+0x123]
    vmovsldup zmm0,zword ptr [rdx+0x1fc0]
    vmovsldup zmm0,zword ptr [rdx+0x2000]
    vmovsldup zmm0,zword ptr [rdx-0x2000]
    vmovsldup zmm0,zword ptr [rdx-0x2040]

    vmovupd xmm0,xmm1
    vmovupd xmm0,oword ptr [rax]
    vmovupd oword ptr [rax],xmm21
    vmovupd ymm0,ymm1
    vmovupd ymm0,yword ptr [rax]
    vmovupd yword ptr [rax],ymm1
    vmovupd zmm1{k1}{z},zmm2
    vmovupd zmm0,zmm1
    vmovupd zmm0{k7},zmm1
    vmovupd zmm0{k7}{z},zmm1
    vmovupd zmm0,zword ptr [rcx]
    vmovupd zmm0,zword ptr [rax+r14*8+0x123]
    vmovupd zmm0,zword ptr [rdx+0x1fc0]
    vmovupd zmm0,zword ptr [rdx+0x2000]
    vmovupd zmm0,zword ptr [rdx-0x2000]
    vmovupd zmm0,zword ptr [rdx-0x2040]

    vmovups xmm0,xmm1
    vmovups xmm0,oword ptr [rax]
    vmovups oword ptr [rax],xmm1
    vmovups ymm0,ymm1
    vmovups ymm0,yword ptr [rax]
    vmovups yword ptr [rax],ymm1
    vmovups zmm1{k1}{z},zmm2
    vmovups zmm0,zmm1
    vmovups zmm0{k7},zmm1
    vmovups zmm0{k7}{z},zmm1
    vmovups zmm0,zword ptr [rcx]
    vmovups zmm0,zword ptr [rax+r14*8+0x123]
    vmovups zmm0,zword ptr [rdx+0x1fc0]
    vmovups zmm0,zword ptr [rdx+0x2000]
    vmovups zmm0,zword ptr [rdx-0x2000]
    vmovups zmm0,zword ptr [rdx-0x2040]

    vmovupd zword ptr [rcx],zmm0
    vmovupd zword ptr [rcx]{k7},zmm0
    vmovupd zword ptr [rax+r14*8+0x123],zmm0
    vmovupd zword ptr [rdx+0x1fc0],zmm0
    vmovupd zword ptr [rdx+0x2000],zmm0
    vmovupd zword ptr [rdx-0x2000],zmm0
    vmovupd zword ptr [rdx-0x2040],zmm0

    vmovups zword ptr [rcx],zmm0
    vmovups zword ptr [rcx]{k7},zmm0
    vmovups zword ptr [rax+r14*8+0x123],zmm0
    vmovups zword ptr [rdx+0x1fc0],zmm0
    vmovups zword ptr [rdx+0x2000],zmm0
    vmovups zword ptr [rdx-0x2000],zmm0
    vmovups zword ptr [rdx-0x2040],zmm0

    vpabsb xmm0,xmm1
    vpabsb xmm0,[rax]
    vpabsw xmm0,xmm1
    vpabsw xmm0,[rax]
    vpabsd xmm0,xmm1
    vpabsd xmm0,[rax]

    vpabsd zmm0,zmm1
    vpabsd zmm0{k7},zmm1
    vpabsd zmm0{k7}{z},zmm1
    vpabsd zmm0,zword ptr [rcx]
    vpabsd zmm0,zword ptr [rax+r14*8+0x123]
    vpabsd zmm0,dword ptr [rcx]{1to16}
    vpabsd zmm0,zword ptr [rdx+0x1fc0]
    vpabsd zmm0,zword ptr [rdx+0x2000]
    vpabsd zmm0,zword ptr [rdx-0x2000]
    vpabsd zmm0,zword ptr [rdx-0x2040]
    vpabsd zmm0,dword ptr [rdx+0x1fc]{1to16}
    vpabsd zmm0,dword ptr [rdx+0x200]{1to16}
    vpabsd zmm0,dword ptr [rdx-0x200]{1to16}
    vpabsd zmm0,dword ptr [rdx-0x204]{1to16}

    vpaddb   xmm0,xmm1,xmm2
    vpaddw   xmm0,xmm1,xmm2
    vpaddd   xmm0,xmm1,xmm2
    vpaddq   xmm0,xmm1,xmm2
    vpaddsb  xmm0,xmm1,xmm2
    vpaddsw  xmm0,xmm1,xmm2
    vpaddusb xmm0,xmm1,xmm2
    vpaddusw xmm0,xmm1,xmm2
    vpavgb   xmm0,xmm1,xmm2
    vpavgw   xmm0,xmm1,xmm2

    vpaddb   ymm0,ymm1,ymm2
    vpaddw   ymm0,ymm1,ymm2
    vpaddd   ymm0,ymm1,ymm2
    vpaddq   ymm0,ymm1,ymm2
    vpaddsb  ymm0,ymm1,ymm2
    vpaddsw  ymm0,ymm1,ymm2
    vpaddusb ymm0,ymm1,ymm2
    vpaddusw ymm0,ymm1,ymm2
    vpavgb   ymm0,ymm1,ymm2
    vpavgw   ymm0,ymm1,ymm2

    vpaddd zmm0,zmm1,zmm2
    vpaddd zmm0{k7},zmm1,zmm2
    vpaddd zmm0{k7}{z},zmm1,zmm2
    vpaddd zmm0,zmm1,zword ptr [rcx]
    vpaddd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpaddd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpaddd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpaddd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpaddd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpaddd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpaddd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpaddd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpaddd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpaddd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpaddq zmm0,zmm1,zmm2
    vpaddq zmm0{k7},zmm1,zmm2
    vpaddq zmm0{k7}{z},zmm1,zmm2
    vpaddq zmm0,zmm1,zword ptr [rcx]
    vpaddq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpaddq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpaddq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpaddq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpaddq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpaddq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpaddq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpaddq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpaddq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpaddq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpcmpeqd k5,zmm0,zmm1
    vpcmpeqd k5{k7},zmm0,zmm1
    vpcmpeqd k5,zmm0,zword ptr [rcx]
    vpcmpeqd k5,zmm0,zword ptr [rax+r14*8+0x123]
    vpcmpeqd k5,zmm0,dword ptr [rcx]{1to16}
    vpcmpeqd k5,zmm0,zword ptr [rdx+0x1fc0]
    vpcmpeqd k5,zmm0,zword ptr [rdx+0x2000]
    vpcmpeqd k5,zmm0,zword ptr [rdx-0x2000]
    vpcmpeqd k5,zmm0,zword ptr [rdx-0x2040]
    vpcmpeqd k5,zmm0,dword ptr [rdx+0x1fc]{1to16}
    vpcmpeqd k5,zmm0,dword ptr [rdx+0x200]{1to16}
    vpcmpeqd k5,zmm0,dword ptr [rdx-0x200]{1to16}
    vpcmpeqd k5,zmm0,dword ptr [rdx-0x204]{1to16}
    vpcmpeqq k5,zmm0,zmm1
    vpcmpeqq k5{k7},zmm0,zmm1
    vpcmpeqq k5,zmm0,zword ptr [rcx]
    vpcmpeqq k5,zmm0,zword ptr [rax+r14*8+0x123]
    vpcmpeqq k5,zmm0,zword ptr [rdx+0x1fc0]
    vpcmpeqq k5,zmm0,zword ptr [rdx+0x2000]
    vpcmpeqq k5,zmm0,zword ptr [rdx-0x2000]
    vpcmpeqq k5,zmm0,zword ptr [rdx-0x2040]
    vpcmpgtd k5,zmm0,zmm1
    vpcmpgtd k5{k7},zmm0,zmm1
    vpcmpgtd k5,zmm0,zword ptr [rcx]
    vpcmpgtd k5,zmm0,zword ptr [rax+r14*8+0x123]
    vpcmpgtd k5,zmm0,dword ptr [rcx]{1to16}
    vpcmpgtd k5,zmm0,zword ptr [rdx+0x1fc0]
    vpcmpgtd k5,zmm0,zword ptr [rdx+0x2000]
    vpcmpgtd k5,zmm0,zword ptr [rdx-0x2000]
    vpcmpgtd k5,zmm0,zword ptr [rdx-0x2040]
    vpcmpgtd k5,zmm0,dword ptr [rdx+0x1fc]{1to16}
    vpcmpgtd k5,zmm0,dword ptr [rdx+0x200]{1to16}
    vpcmpgtd k5,zmm0,dword ptr [rdx-0x200]{1to16}
    vpcmpgtd k5,zmm0,dword ptr [rdx-0x204]{1to16}
    vpcmpgtq k5,zmm0,zmm1
    vpcmpgtq k5{k7},zmm0,zmm1
    vpcmpgtq k5,zmm0,zword ptr [rcx]
    vpcmpgtq k5,zmm0,zword ptr [rax+r14*8+0x123]
    vpcmpgtq k5,zmm0,qword ptr [rcx]{1to8}
    vpcmpgtq k5,zmm0,zword ptr [rdx+0x1fc0]
    vpcmpgtq k5,zmm0,zword ptr [rdx+0x2000]
    vpcmpgtq k5,zmm0,zword ptr [rdx-0x2000]
    vpcmpgtq k5,zmm0,zword ptr [rdx-0x2040]
    vpcmpgtq k5,zmm0,qword ptr [rdx+0x3f8]{1to8}
    vpcmpgtq k5,zmm0,qword ptr [rdx+0x400]{1to8}
    vpcmpgtq k5,zmm0,qword ptr [rdx-0x400]{1to8}
    vpcmpgtq k5,zmm0,qword ptr [rdx-0x408]{1to8}

    vpmaxsd zmm0,zmm1,zmm2
    vpmaxsd zmm0{k7},zmm1,zmm2
    vpmaxsd zmm0{k7}{z},zmm1,zmm2
    vpmaxsd zmm0,zmm1,zword ptr [rcx]
    vpmaxsd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpmaxsd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpmaxsd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmaxsd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmaxsd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmaxsd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpmaxsd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpmaxsd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpmaxsd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpmaxsd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpmaxud zmm0,zmm1,zmm2
    vpmaxud zmm0{k7},zmm1,zmm2
    vpmaxud zmm0{k7}{z},zmm1,zmm2
    vpmaxud zmm0,zmm1,zword ptr [rcx]
    vpmaxud zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpmaxud zmm0,zmm1,dword ptr [rcx]{1to16}
    vpmaxud zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmaxud zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmaxud zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmaxud zmm0,zmm1,zword ptr [rdx-0x2040]
    vpmaxud zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpmaxud zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpmaxud zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpmaxud zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpminsd zmm0,zmm1,zmm2
    vpminsd zmm0{k7},zmm1,zmm2
    vpminsd zmm0{k7}{z},zmm1,zmm2
    vpminsd zmm0,zmm1,zword ptr [rcx]
    vpminsd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpminsd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpminsd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpminsd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpminsd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpminsd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpminsd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpminsd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpminsd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpminsd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpminud zmm0,zmm1,zmm2
    vpminud zmm0{k7},zmm1,zmm2
    vpminud zmm0{k7}{z},zmm1,zmm2
    vpminud zmm0,zmm1,zword ptr [rcx]
    vpminud zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpminud zmm0,zmm1,dword ptr [rcx]{1to16}
    vpminud zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpminud zmm0,zmm1,zword ptr [rdx+0x2000]
    vpminud zmm0,zmm1,zword ptr [rdx-0x2000]
    vpminud zmm0,zmm1,zword ptr [rdx-0x2040]
    vpminud zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpminud zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpminud zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpminud zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpmovsxbw xmm0,xmm1
    vpmovsxbw xmm0,[rax]
    vpmovsxbd xmm0,xmm1
    vpmovsxbd xmm0,[rax]
    vpmovsxbq xmm0,xmm1
    vpmovsxbq xmm0,[rax]
    vpmovsxwd xmm0,xmm1
    vpmovsxwd xmm0,[rax]
    vpmovsxwq xmm0,xmm1
    vpmovsxwq xmm0,[rax]
    vpmovsxdq xmm0,xmm1
    vpmovsxdq xmm0,[rax]

    vpmovsxbd zmm0{k7},xmm1
    vpmovsxbd zmm0{k7}{z},xmm1
    vpmovsxbd zmm0{k7},oword ptr [rcx]
    vpmovsxbd zmm0{k7},oword ptr [rax+r14*8+0x123]
    vpmovsxbd zmm0{k7},oword ptr [rdx+0x7f0]
    vpmovsxbd zmm0{k7},oword ptr [rdx+0x800]
    vpmovsxbd zmm0{k7},oword ptr [rdx-0x800]
    vpmovsxbd zmm0{k7},oword ptr [rdx-0x810]
    vpmovsxbq zmm0{k7},xmm1
    vpmovsxbq zmm0{k7}{z},xmm1
    vpmovsxbq zmm0{k7},qword ptr [rcx]
    vpmovsxbq zmm0{k7},qword ptr [rax+r14*8+0x123]
    vpmovsxbq zmm0{k7},qword ptr [rdx+0x3f8]
    vpmovsxbq zmm0{k7},qword ptr [rdx+0x400]
    vpmovsxbq zmm0{k7},qword ptr [rdx-0x400]
    vpmovsxbq zmm0{k7},qword ptr [rdx-0x408]
    vpmovsxdq zmm0{k7},ymm1
    vpmovsxdq zmm0{k7}{z},ymm1
    vpmovsxdq zmm0{k7},yword ptr [rcx]
    vpmovsxdq zmm0{k7},yword ptr [rax+r14*8+0x123]
    vpmovsxdq zmm0{k7},yword ptr [rdx+0xfe0]
    vpmovsxdq zmm0{k7},yword ptr [rdx+0x1000]
    vpmovsxdq zmm0{k7},yword ptr [rdx-0x1000]
    vpmovsxdq zmm0{k7},yword ptr [rdx-0x1020]
    vpmovsxwd zmm0{k7},ymm1
    vpmovsxwd zmm0{k7}{z},ymm1
    vpmovsxwd zmm0{k7},yword ptr [rcx]
    vpmovsxwd zmm0{k7},yword ptr [rax+r14*8+0x123]
    vpmovsxwd zmm0{k7},yword ptr [rdx+0xfe0]
    vpmovsxwd zmm0{k7},yword ptr [rdx+0x1000]
    vpmovsxwd zmm0{k7},yword ptr [rdx-0x1000]
    vpmovsxwd zmm0{k7},yword ptr [rdx-0x1020]
    vpmovsxwq zmm0{k7},xmm1
    vpmovsxwq zmm0{k7}{z},xmm1
    vpmovsxwq zmm0{k7},oword ptr [rcx]
    vpmovsxwq zmm0{k7},oword ptr [rax+r14*8+0x123]
    vpmovsxwq zmm0{k7},oword ptr [rdx+0x7f0]
    vpmovsxwq zmm0{k7},oword ptr [rdx+0x800]
    vpmovsxwq zmm0{k7},oword ptr [rdx-0x800]
    vpmovsxwq zmm0{k7},oword ptr [rdx-0x810]
    vpmovzxbd zmm0{k7},xmm1
    vpmovzxbd zmm0{k7}{z},xmm1
    vpmovzxbd zmm0{k7},oword ptr [rcx]
    vpmovzxbd zmm0{k7},oword ptr [rax+r14*8+0x123]
    vpmovzxbd zmm0{k7},oword ptr [rdx+0x7f0]
    vpmovzxbd zmm0{k7},oword ptr [rdx+0x800]
    vpmovzxbd zmm0{k7},oword ptr [rdx-0x800]
    vpmovzxbd zmm0{k7},oword ptr [rdx-0x810]
    vpmovzxbq zmm0{k7},xmm1
    vpmovzxbq zmm0{k7}{z},xmm1
    vpmovzxbq zmm0{k7},qword ptr [rcx]
    vpmovzxbq zmm0{k7},qword ptr [rax+r14*8+0x123]
    vpmovzxbq zmm0{k7},qword ptr [rdx+0x3f8]
    vpmovzxbq zmm0{k7},qword ptr [rdx+0x400]
    vpmovzxbq zmm0{k7},qword ptr [rdx-0x400]
    vpmovzxbq zmm0{k7},qword ptr [rdx-0x408]
    vpmovzxdq zmm0{k7},ymm1
    vpmovzxdq zmm0{k7}{z},ymm1
    vpmovzxdq zmm0{k7},yword ptr [rcx]
    vpmovzxdq zmm0{k7},yword ptr [rax+r14*8+0x123]
    vpmovzxdq zmm0{k7},yword ptr [rdx+0xfe0]
    vpmovzxdq zmm0{k7},yword ptr [rdx+0x1000]
    vpmovzxdq zmm0{k7},yword ptr [rdx-0x1000]
    vpmovzxdq zmm0{k7},yword ptr [rdx-0x1020]
    vpmovzxwd zmm0{k7},ymm1
    vpmovzxwd zmm0{k7}{z},ymm1
    vpmovzxwd zmm0{k7},yword ptr [rcx]
    vpmovzxwd zmm0{k7},yword ptr [rax+r14*8+0x123]
    vpmovzxwd zmm0{k7},yword ptr [rdx+0xfe0]
    vpmovzxwd zmm0{k7},yword ptr [rdx+0x1000]
    vpmovzxwd zmm0{k7},yword ptr [rdx-0x1000]
    vpmovzxwd zmm0{k7},yword ptr [rdx-0x1020]
    vpmovzxwq zmm0{k7},xmm1
    vpmovzxwq zmm0{k7}{z},xmm1
    vpmovzxwq zmm0{k7},oword ptr [rcx]
    vpmovzxwq zmm0{k7},oword ptr [rax+r14*8+0x123]
    vpmovzxwq zmm0{k7},oword ptr [rdx+0x7f0]
    vpmovzxwq zmm0{k7},oword ptr [rdx+0x800]
    vpmovzxwq zmm0{k7},oword ptr [rdx-0x800]
    vpmovzxwq zmm0{k7},oword ptr [rdx-0x810]

    vpmovzxbw xmm0,xmm1
    vpmovzxbd xmm0,xmm1
    vpmovzxbq xmm0,xmm1
    vpmovzxwd xmm0,xmm1
    vpmovzxwq xmm0,xmm1
    vpmovzxdq xmm0,xmm1
    vpmuldq xmm0,xmm1,xmm2
    vpmulld xmm0,xmm0,xmm1

    vpmovzxbw xmm0,qword ptr [rax]
    vpmovzxbd xmm0,dword ptr [rax]
    vpmovzxbq xmm0,word	 ptr [rax]
    vpmovzxwd xmm0,qword ptr [rax]
    vpmovzxwq xmm0,dword ptr [rax]
    vpmovzxdq xmm0,qword ptr [rax]
    vpmuldq xmm0,xmm1,oword ptr [rax]
    vpmulld xmm0,xmm1,oword ptr [rax]

    vpmuldq zmm0,zmm1,zmm2
    vpmuldq zmm0{k7},zmm1,zmm2
    vpmuldq zmm0{k7}{z},zmm1,zmm2
    vpmuldq zmm0,zmm1,zword ptr [rcx]
    vpmuldq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpmuldq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpmuldq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmuldq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmuldq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmuldq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpmuldq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpmuldq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpmuldq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpmuldq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vpmulld zmm0,zmm1,zmm2
    vpmulld zmm0{k7},zmm1,zmm2
    vpmulld zmm0{k7}{z},zmm1,zmm2
    vpmulld zmm0,zmm1,zword ptr [rcx]
    vpmulld zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpmulld zmm0,zmm1,dword ptr [rcx]{1to16}
    vpmulld zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmulld zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmulld zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmulld zmm0,zmm1,zword ptr [rdx-0x2040]
    vpmulld zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpmulld zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpmulld zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpmulld zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vpmuludq zmm0,zmm1,zmm2
    vpmuludq zmm0{k7},zmm1,zmm2
    vpmuludq zmm0{k7}{z},zmm1,zmm2
    vpmuludq zmm0,zmm1,zword ptr [rcx]
    vpmuludq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpmuludq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpmuludq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmuludq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmuludq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmuludq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpmuludq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpmuludq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpmuludq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpmuludq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpshufd zmm0,zmm1,0xab
    vpshufd zmm0{k7},zmm1,0xab
    vpshufd zmm0{k7}{z},zmm1,0xab
    vpshufd zmm0,zmm1,0x7b
    vpshufd zmm0,zword ptr [rcx],0x7b
    vpshufd zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vpshufd zmm0,dword ptr [rcx]{1to16},0x7b
    vpshufd zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpshufd zmm0,zword ptr [rdx+0x2000],0x7b
    vpshufd zmm0,zword ptr [rdx-0x2000],0x7b
    vpshufd zmm0,zword ptr [rdx-0x2040],0x7b
    vpshufd zmm0,dword ptr [rdx+0x1fc]{1to16},0x7b
    vpshufd zmm0,dword ptr [rdx+0x200]{1to16},0x7b
    vpshufd zmm0,dword ptr [rdx-0x200]{1to16},0x7b
    vpshufd zmm0,dword ptr [rdx-0x204]{1to16},0x7b

    vpslld zmm0{k7},zmm1,xmm2
    vpslld zmm0{k7}{z},zmm1,xmm2
    vpslld zmm0{k7},zmm1,oword ptr [rcx]
    vpslld zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123]
    vpslld zmm0{k7},zmm1,oword ptr [rdx+0x7f0]
    vpslld zmm0{k7},zmm1,oword ptr [rdx+0x800]
    vpslld zmm0{k7},zmm1,oword ptr [rdx-0x800]
    vpslld zmm0{k7},zmm1,oword ptr [rdx-0x810]
    vpslld zmm0,zmm1,0xab
    vpslld zmm0{k7},zmm1,0xab
    vpslld zmm0{k7}{z},zmm1,0xab
    vpslld zmm0,zmm1,0x7b
    vpslld zmm0,zword ptr [rax+r14*8+0x123],0x7b

    vpsllq zmm0{k7},zmm1,xmm2
    vpsllq zmm0{k7}{z},zmm1,xmm2
    vpsllq zmm0{k7},zmm1,oword ptr [rcx]
    vpsllq zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123]
    vpsllq zmm0{k7},zmm1,oword ptr [rdx+0x7f0]
    vpsllq zmm0{k7},zmm1,oword ptr [rdx+0x800]
    vpsllq zmm0{k7},zmm1,oword ptr [rdx-0x800]
    vpsllq zmm0{k7},zmm1,oword ptr [rdx-0x810]
    vpsllq zmm0,zmm1,0xab
    vpsllq zmm0{k7},zmm1,0xab
    vpsllq zmm0{k7}{z},zmm1,0xab
    vpsllq zmm0,zmm1,0x7b
    vpsllq zmm0,zword ptr [rax+r14*8+0x123],0x7b

    vpsrlw xmm0,xmm1,xmm2
    vpsrlw xmm0,xmm1,[rax]
    vpsrld xmm0,xmm1,xmm2
    vpsrld xmm0,xmm1,[rax]
    vpsrlq xmm0,xmm1,xmm2
    vpsrlq xmm0,xmm1,[rax]
    vpsraw xmm0,xmm1,xmm2
    vpsraw xmm0,xmm1,[rax]
    vpsrad xmm0,xmm1,xmm2
    vpsrad xmm0,xmm1,[rax]
    vpsllw xmm0,xmm1,xmm2
    vpsllw xmm0,xmm1,[rax]
    vpslld xmm0,xmm1,xmm2
    vpslld xmm0,xmm1,[rax]
    vpsllq xmm0,xmm1,xmm2
    vpsllq xmm0,xmm1,[rax]

    vpslldq xmm0,xmm1,1
    vpsrldq xmm0,xmm1,2
    vpsrlw xmm0,xmm1,3
    vpsrld xmm0,xmm1,4
    vpsrlq xmm0,xmm1,5
    vpsraw xmm0,xmm1,6
    vpsrad xmm0,xmm1,7
    vpsllw xmm0,xmm1,8
    vpslld xmm0,xmm1,9
    vpsllq xmm0,xmm1,10

    vpsrlw xmm0,xmm1,xmm2
    vpsrlw xmm0,xmm1,[rax]
    vpsrld xmm0,xmm1,xmm2
    vpsrld xmm0,xmm1,[rax]
    vpsrlq xmm0,xmm1,xmm2
    vpsrlq xmm0,xmm1,[rax]
    vpsraw xmm0,xmm1,xmm2
    vpsraw xmm0,xmm1,[rax]
    vpsrad xmm0,xmm1,xmm2
    vpsrad xmm0,xmm1,[rax]
    vpsllw xmm0,xmm1,xmm2
    vpsllw xmm0,xmm1,[rax]
    vpslld xmm0,xmm1,xmm2
    vpslld xmm0,xmm1,[rax]
    vpsllq xmm0,xmm1,xmm2
    vpsllq xmm0,xmm1,[rax]

    vpsrad zmm0{k7},zmm1,xmm2
    vpsrad zmm0{k7}{z},zmm1,xmm2
    vpsrad zmm0{k7},zmm1,oword ptr [rcx]
    vpsrad zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123]
    vpsrad zmm0{k7},zmm1,oword ptr [rdx+0x7f0]
    vpsrad zmm0{k7},zmm1,oword ptr [rdx+0x800]
    vpsrad zmm0{k7},zmm1,oword ptr [rdx-0x800]
    vpsrad zmm0{k7},zmm1,oword ptr [rdx-0x810]
    vpsrad zmm0,zmm1,0xab
    vpsrad zmm0{k7},zmm1,0xab
    vpsrad zmm0{k7}{z},zmm1,0xab
    vpsrad zmm0,zmm1,0x7b
    vpsrad zmm0,zword ptr [rax+r14*8+0x123],0x7b

    vpsrld zmm0{k7},zmm1,xmm2
    vpsrld zmm0{k7}{z},zmm1,xmm2
    vpsrld zmm0{k7},zmm1,oword ptr [rcx]
    vpsrld zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123]
    vpsrld zmm0{k7},zmm1,oword ptr [rdx+0x7f0]
    vpsrld zmm0{k7},zmm1,oword ptr [rdx+0x800]
    vpsrld zmm0{k7},zmm1,oword ptr [rdx-0x800]
    vpsrld zmm0{k7},zmm1,oword ptr [rdx-0x810]
    vpsrld zmm0,zmm1,0xab
    vpsrld zmm0{k7},zmm1,0xab
    vpsrld zmm0{k7}{z},zmm1,0xab
    vpsrld zmm0,zmm1,0x7b

    vpsrlq zmm0{k7},zmm1,xmm2
    vpsrlq zmm0{k7}{z},zmm1,xmm2
    vpsrlq zmm0{k7},zmm1,oword ptr [rcx]
    vpsrlq zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123]
    vpsrlq zmm0{k7},zmm1,oword ptr [rdx+0x7f0]
    vpsrlq zmm0{k7},zmm1,oword ptr [rdx+0x800]
    vpsrlq zmm0{k7},zmm1,oword ptr [rdx-0x800]
    vpsrlq zmm0{k7},zmm1,oword ptr [rdx-0x810]
    vpsrlq zmm0,zmm1,0xab
    vpsrlq zmm0{k7},zmm1,0xab
    vpsrlq zmm0{k7}{z},zmm1,0xab
    vpsrlq zmm0,zmm1,0x7b

    vpsrld zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vpsrlq zmm0,zword ptr [rax+r14*8+0x123],0x7b

    vcvtps2dq xmm0,xmm1
    vcvtps2dq xmm0,oword ptr [rax]
    vcvtps2dq ymm0,ymm1
    vcvtps2dq ymm0,yword ptr [rax]
    vcvtps2dq zmm0,zmm1
    vcvtps2dq zmm0{k7},zmm1
    vcvtps2dq zmm0{k7}{z},zmm1
    vcvtps2dq zmm0,zmm1,{rn-sae}
    vcvtps2dq zmm0,zmm1,{ru-sae}
    vcvtps2dq zmm0,zmm1,{rd-sae}
    vcvtps2dq zmm0,zmm1,{rz-sae}
    vcvtps2dq zmm0,zword ptr [rcx]
    vcvtps2dq zmm0,zword ptr [rax+r14*8+0x123]
    vcvtps2dq zmm0,dword ptr [rcx]{1to16}
    vcvtps2dq zmm0,zword ptr [rdx+0x1fc0]
    vcvtps2dq zmm0,zword ptr [rdx+0x2000]
    vcvtps2dq zmm0,zword ptr [rdx-0x2000]
    vcvtps2dq zmm0,zword ptr [rdx-0x2040]
    vcvtps2dq zmm0,dword ptr [rdx+0x1fc]{1to16}
    vcvtps2dq zmm0,dword ptr [rdx+0x200]{1to16}
    vcvtps2dq zmm0,dword ptr [rdx-0x200]{1to16}
    vcvtps2dq zmm0,dword ptr [rdx-0x204]{1to16}

    vcvtps2pd xmm0,xmm1
    vcvtps2pd ymm0,xmm1
    vcvtps2pd zmm0{k7},ymm1
    vcvtps2pd zmm0{k7}{z},ymm1
    vcvtps2pd zmm0{k7},ymm1,{sae}
    vcvtps2pd zmm0{k7},yword ptr [rcx]
    vcvtps2pd zmm0{k7},yword ptr [rax+r14*8+0x123]
    vcvtps2pd zmm0{k7},dword ptr [rcx]{1to8}
    vcvtps2pd zmm0{k7},yword ptr [rdx+0xfe0]
    vcvtps2pd zmm0{k7},yword ptr [rdx+0x1000]
    vcvtps2pd zmm0{k7},yword ptr [rdx-0x1000]
    vcvtps2pd zmm0{k7},yword ptr [rdx-0x1020]
    vcvtps2pd zmm0{k7},dword ptr [rdx+0x1fc]{1to8}
    vcvtps2pd zmm0{k7},dword ptr [rdx+0x200]{1to8}
    vcvtps2pd zmm0{k7},dword ptr [rdx-0x200]{1to8}
    vcvtps2pd zmm0{k7},dword ptr [rdx-0x204]{1to8}

    vpsubd zmm0,zmm1,zmm2
    vpsubd zmm0{k7},zmm1,zmm2
    vpsubd zmm0{k7}{z},zmm1,zmm2
    vpsubd zmm0,zmm1,zword ptr [rcx]
    vpsubd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpsubd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpsubd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsubd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsubd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsubd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpsubd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpsubd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpsubd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpsubd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpsubq zmm0,zmm1,zmm2
    vpsubq zmm0{k7},zmm1,zmm2
    vpsubq zmm0{k7}{z},zmm1,zmm2
    vpsubq zmm0,zmm1,zword ptr [rcx]
    vpsubq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpsubq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpsubq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsubq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsubq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsubq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpsubq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpsubq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpsubq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpsubq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpunpckhdq zmm0,zmm1,zmm2
    vpunpckhdq zmm0{k7},zmm1,zmm2
    vpunpckhdq zmm0{k7}{z},zmm1,zmm2
    vpunpckhdq zmm0,zmm1,zword ptr [rcx]
    vpunpckhdq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpunpckhdq zmm0,zmm1,dword ptr [rcx]{1to16}
    vpunpckhdq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpunpckhdq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpunpckhdq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpunpckhdq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpunpckhdq zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpunpckhdq zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpunpckhdq zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpunpckhdq zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpunpckhqdq zmm0,zmm1,zmm2
    vpunpckhqdq zmm0{k7},zmm1,zmm2
    vpunpckhqdq zmm0{k7}{z},zmm1,zmm2
    vpunpckhqdq zmm0,zmm1,zword ptr [rcx]
    vpunpckhqdq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpunpckhqdq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpunpckhqdq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpunpckhqdq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpunpckhqdq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpunpckhqdq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpunpckhqdq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpunpckhqdq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpunpckhqdq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpunpckhqdq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpunpckldq zmm0,zmm1,zmm2
    vpunpckldq zmm0{k7},zmm1,zmm2
    vpunpckldq zmm0{k7}{z},zmm1,zmm2
    vpunpckldq zmm0,zmm1,zword ptr [rcx]
    vpunpckldq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpunpckldq zmm0,zmm1,dword ptr [rcx]{1to16}
    vpunpckldq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpunpckldq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpunpckldq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpunpckldq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpunpckldq zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpunpckldq zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpunpckldq zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpunpckldq zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpunpcklqdq zmm0,zmm1,zmm2
    vpunpcklqdq zmm0{k7},zmm1,zmm2
    vpunpcklqdq zmm0{k7}{z},zmm1,zmm2
    vpunpcklqdq zmm0,zmm1,zword ptr [rcx]
    vpunpcklqdq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpunpcklqdq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpunpcklqdq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpunpcklqdq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpunpcklqdq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpunpcklqdq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpunpcklqdq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpunpcklqdq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpunpcklqdq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpunpcklqdq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vshufpd zmm0,zmm1,zmm2,0xab
    vshufpd zmm0{k7},zmm1,zmm2,0xab
    vshufpd zmm0{k7}{z},zmm1,zmm2,0xab
    vshufpd zmm0,zmm1,zmm2,0x7b
    vshufpd zmm0,zmm1,zword ptr [rcx],0x7b
    vshufpd zmm0,zmm1,zword ptr [rax+r14*8+0x123],0x7b
    vshufpd zmm0,zmm1,qword ptr [rcx]{1to8},0x7b
    vshufpd zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vshufpd zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vshufpd zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vshufpd zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vshufpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8},0x7b
    vshufpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8},0x7b
    vshufpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8},0x7b
    vshufpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8},0x7b

    vshufps zmm0,zmm1,zmm2,0xab
    vshufps zmm0{k7},zmm1,zmm2,0xab
    vshufps zmm0{k7}{z},zmm1,zmm2,0xab
    vshufps zmm0,zmm1,zmm2,0x7b
    vshufps zmm0,zmm1,zword ptr [rcx],0x7b
    vshufps zmm0,zmm1,zword ptr [rax+r14*8+0x123],0x7b
    vshufps zmm0,zmm1,dword ptr [rcx]{1to16},0x7b
    vshufps zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vshufps zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vshufps zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vshufps zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vshufps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16},0x7b
    vshufps zmm0,zmm1,dword ptr [rdx+0x200]{1to16},0x7b
    vshufps zmm0,zmm1,dword ptr [rdx-0x200]{1to16},0x7b
    vshufps zmm0,zmm1,dword ptr [rdx-0x204]{1to16},0x7b

    vunpckhpd zmm0,zmm1,zmm2
    vunpckhpd zmm0{k7},zmm1,zmm2
    vunpckhpd zmm0{k7}{z},zmm1,zmm2
    vunpckhpd zmm0,zmm1,zword ptr [rcx]
    vunpckhpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vunpckhpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vunpckhpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vunpckhpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vunpckhpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vunpckhpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vunpckhpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vunpckhpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vunpckhpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vunpckhpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vunpckhps zmm0,zmm1,zmm2
    vunpckhps zmm0{k7},zmm1,zmm2
    vunpckhps zmm0{k7}{z},zmm1,zmm2
    vunpckhps zmm0,zmm1,zword ptr [rcx]
    vunpckhps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vunpckhps zmm0,zmm1,dword ptr [rcx]{1to16}
    vunpckhps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vunpckhps zmm0,zmm1,zword ptr [rdx+0x2000]
    vunpckhps zmm0,zmm1,zword ptr [rdx-0x2000]
    vunpckhps zmm0,zmm1,zword ptr [rdx-0x2040]
    vunpckhps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vunpckhps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vunpckhps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vunpckhps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vunpcklpd zmm0,zmm1,zmm2
    vunpcklpd zmm0{k7},zmm1,zmm2
    vunpcklpd zmm0{k7}{z},zmm1,zmm2
    vunpcklpd zmm0,zmm1,zword ptr [rcx]
    vunpcklpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vunpcklpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vunpcklpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vunpcklpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vunpcklpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vunpcklpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vunpcklpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vunpcklpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vunpcklpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vunpcklpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vunpcklps zmm0,zmm1,zmm2
    vunpcklps zmm0{k7},zmm1,zmm2
    vunpcklps zmm0{k7}{z},zmm1,zmm2
    vunpcklps zmm0,zmm1,zword ptr [rcx]
    vunpcklps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vunpcklps zmm0,zmm1,dword ptr [rcx]{1to16}
    vunpcklps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vunpcklps zmm0,zmm1,zword ptr [rdx+0x2000]
    vunpcklps zmm0,zmm1,zword ptr [rdx-0x2000]
    vunpcklps zmm0,zmm1,zword ptr [rdx-0x2040]
    vunpcklps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vunpcklps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vunpcklps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vunpcklps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpermw zmm1,zmm2,zmm3
    vpermw zmm1,zmm1,zmm3
    vpermw zmm1,zmm1,zmm1
    vpermw zmm1,zmm2,zmm1
    vpermw zmm1,zmm2,zmm1
    vpermw zmm1,zmm0,zmm1
    vpermw zmm1,zmm0,zmm3

    vpandd zmm0,zmm1,zmm2
    vpandd zmm0{k7},zmm1,zmm2
    vpandd zmm0{k7}{z},zmm1,zmm2
    vpandd zmm0,zmm1,zword ptr [rcx]
    vpandd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpandd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpandd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpandd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpandd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpandd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpandd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpandd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpandd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpandd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpandq zmm0,zmm1,zmm2
    vpandq zmm0{k7},zmm1,zmm2
    vpandq zmm0{k7}{z},zmm1,zmm2
    vpandq zmm0,zmm1,zword ptr [rcx]
    vpandq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpandq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpandq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpandq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpandq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpandq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpandq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpandq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpandq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpandq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpandnd zmm0,zmm1,zmm2
    vpandnd zmm0{k7},zmm1,zmm2
    vpandnd zmm0{k7}{z},zmm1,zmm2
    vpandnd zmm0,zmm1,zword ptr [rcx]
    vpandnd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpandnd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpandnd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpandnd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpandnd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpandnd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpandnd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpandnd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpandnd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpandnd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpandnq zmm0,zmm1,zmm2
    vpandnq zmm0{k7},zmm1,zmm2
    vpandnq zmm0{k7}{z},zmm1,zmm2
    vpandnq zmm0,zmm1,zword ptr [rcx]
    vpandnq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpandnq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpandnq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpandnq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpandnq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpandnq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpandnq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpandnq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpandnq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpandnq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpxord zmm0,zmm1,zmm2
    vpxord zmm0{k7},zmm1,zmm2
    vpxord zmm0{k7}{z},zmm1,zmm2
    vpxord zmm0,zmm1,zword ptr [rcx]
    vpxord zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpxord zmm0,zmm1,dword ptr [rcx]{1to16}
    vpxord zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpxord zmm0,zmm1,zword ptr [rdx+0x2000]
    vpxord zmm0,zmm1,zword ptr [rdx-0x2000]
    vpxord zmm0,zmm1,zword ptr [rdx-0x2040]
    vpxord zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpxord zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpxord zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpxord zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpxorq zmm0,zmm1,zmm2
    vpxorq zmm0{k7},zmm1,zmm2
    vpxorq zmm0{k7}{z},zmm1,zmm2
    vpxorq zmm0,zmm1,zword ptr [rcx]
    vpxorq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpxorq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpxorq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpxorq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpxorq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpxorq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpxorq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpxorq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpxorq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpxorq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpsraq zmm0{k7},zmm1,xmm2
    vpsraq zmm0{k7}{z},zmm1,xmm2
    vpsraq zmm0{k7},zmm1,oword ptr [rcx]
    vpsraq zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123]
    vpsraq zmm0{k7},zmm1,oword ptr [rdx+0x7f0]
    vpsraq zmm0{k7},zmm1,oword ptr [rdx+0x800]
    vpsraq zmm0{k7},zmm1,oword ptr [rdx-0x800]
    vpsraq zmm0{k7},zmm1,oword ptr [rdx-0x810]

    vpsraq zmm0,zmm1,0xab
    vpsraq zmm0{k7},zmm1,0xab
    vpsraq zmm0{k7}{z},zmm1,0xab
    vpsraq zmm0,zmm1,0x7b
    vpsraq zmm0,zword ptr [rax+r14*8+0x123],0x7b

    vpconflictd zmm0,zmm1
    vpconflictd zmm1,zmm3
    vpconflictd zmm3,zmm1
    vpconflictd xmm7,xmm3
    vpconflictd ymm7,ymm3

    vpconflictd zmm0,zmm1
    vpconflictd zmm0{k7},zmm1
    vpconflictd zmm0{k7}{z},zmm1
    vpconflictd zmm0,zword ptr [rcx]
    vpconflictd zmm0,zword ptr [rax+r14*8+0x123]
    vpconflictd zmm0,dword ptr [rcx]{1to16}
    vpconflictd zmm0,zword ptr [rdx+0x1fc0]
    vpconflictd zmm0,zword ptr [rdx+0x2000]
    vpconflictd zmm0,zword ptr [rdx-0x2000]
    vpconflictd zmm0,zword ptr [rdx-0x2040]
    vpconflictd zmm0,dword ptr [rdx+0x1fc]{1to16}
    vpconflictd zmm0,dword ptr [rdx+0x200]{1to16}
    vpconflictd zmm0,dword ptr [rdx-0x200]{1to16}
    vpconflictd zmm0,dword ptr [rdx-0x204]{1to16}
    vpconflictq zmm0,zmm1
    vpconflictq zmm0{k7},zmm1
    vpconflictq zmm0{k7}{z},zmm1
    vpconflictq zmm0,zword ptr [rcx]
    vpconflictq zmm0,zword ptr [rdx+0x1fc0]
    vpconflictq zmm0,zword ptr [rdx+0x2000]
    vpconflictq zmm0,zword ptr [rdx-0x2000]
    vpconflictq zmm0,zword ptr [rdx-0x2040]

    vplzcntd	zmm0,zmm1
    vplzcntd	zmm0{k7},zmm1
    vplzcntd	zmm0{k7}{z},zmm1
    vplzcntd	zmm0,zword ptr [rcx]
    vplzcntd	zmm0,zword ptr [rdx+0x1fc0]
    vplzcntd	zmm0,zword ptr [rdx+0x2000]
    vplzcntd	zmm0,zword ptr [rdx-0x2000]
    vplzcntd	zmm0,zword ptr [rdx-0x2040]
    vplzcntq	zmm0,zmm1
    vplzcntq	zmm0{k7},zmm1
    vplzcntq	zmm0{k7}{z},zmm1
    vplzcntq	zmm0,zword ptr [rcx]
    vplzcntq	zmm0,zword ptr [rdx+0x1fc0]
    vplzcntq	zmm0,zword ptr [rdx+0x2000]
    vplzcntq	zmm0,zword ptr [rdx-0x2000]
    vplzcntq	zmm0,zword ptr [rdx-0x2040]

    vptestnmd	k5,zmm1,zmm2
    vptestnmd	k5{k7},zmm1,zmm2
    vptestnmd	k5,zmm1,zword ptr [rcx]
    vptestnmd	k5,zmm1,zword ptr [rax+r14*8+0x123]
    vptestnmd	k5,zmm1,dword ptr [rcx]{1to16}
    vptestnmd	k5,zmm1,zword ptr [rdx+0x1fc0]
    vptestnmd	k5,zmm1,zword ptr [rdx+0x2000]
    vptestnmd	k5,zmm1,zword ptr [rdx-0x2000]
    vptestnmd	k5,zmm1,zword ptr [rdx-0x2040]
    vptestnmd	k5,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vptestnmd	k5,zmm1,dword ptr [rdx+0x200]{1to16}
    vptestnmd	k5,zmm1,dword ptr [rdx-0x200]{1to16}
    vptestnmd	k5,zmm1,dword ptr [rdx-0x204]{1to16}
    vptestnmq	k5,zmm1,zmm2
    vptestnmq	k5{k7},zmm1,zmm2
    vptestnmq	k5,zmm1,zword ptr [rcx]
    vptestnmq	k5,zmm1,zword ptr [rax+r14*8+0x123]
    vptestnmq	k5,zmm1,qword ptr [rcx]{1to8}
    vptestnmq	k5,zmm1,zword ptr [rdx+0x1fc0]
    vptestnmq	k5,zmm1,zword ptr [rdx+0x2000]
    vptestnmq	k5,zmm1,zword ptr [rdx-0x2000]
    vptestnmq	k5,zmm1,zword ptr [rdx-0x2040]
    vptestnmq	k5,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vptestnmq	k5,zmm1,qword ptr [rdx+0x400]{1to8}
    vptestnmq	k5,zmm1,qword ptr [rdx-0x400]{1to8}
    vptestnmq	k5,zmm1,qword ptr [rdx-0x408]{1to8}

    vpbroadcastmw2d zmm0,k6
    vpbroadcastmb2q zmm0,k6

    vexp2ps zmm0,zmm1
    vexp2ps zmm0,zword ptr [rcx]
    vexp2ps zmm0,zword ptr [rdx+0x1fc0]
    vexp2ps zmm0,zword ptr [rdx+0x2000]
    vexp2ps zmm0,zword ptr [rdx-0x2000]
    vexp2ps zmm0,zword ptr [rdx-0x2040]

    vexp2pd zmm0,zmm1
    vexp2pd zmm0,zword ptr [rcx]
    vexp2pd zmm0,zword ptr [rdx+0x1fc0]
    vexp2pd zmm0,zword ptr [rdx+0x2000]
    vexp2pd zmm0,zword ptr [rdx-0x2000]
    vexp2pd zmm0,zword ptr [rdx-0x2040]

    vrcp28ps zmm0,zmm1
    vrcp28ps zmm0{k7},zmm1
    vrcp28ps zmm0{k7}{z},zmm1
    vrcp28ps zmm0,zword ptr [rcx]
    vrcp28ps zmm0,zword ptr [rdx+0x1fc0]
    vrcp28ps zmm0,zword ptr [rdx+0x2000]
    vrcp28ps zmm0,zword ptr [rdx-0x2000]
    vrcp28ps zmm0,zword ptr [rdx-0x2040]
    vrcp28pd zmm0,zmm1
    vrcp28pd zmm0{k7},zmm1
    vrcp28pd zmm0{k7}{z},zmm1
    vrcp28pd zmm0,zword ptr [rcx]
    vrcp28pd zmm0,zword ptr [rdx+0x1fc0]
    vrcp28pd zmm0,zword ptr [rdx+0x2000]
    vrcp28pd zmm0,zword ptr [rdx-0x2000]
    vrcp28pd zmm0,zword ptr [rdx-0x2040]

    vrcp28ss xmm0{k7},xmm1,xmm2
    vrcp28ss xmm0{k7}{z},xmm1,xmm2
    vrcp28ss xmm0{k7},xmm1,dword ptr [rcx]
    vrcp28ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vrcp28ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vrcp28ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vrcp28ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vrcp28sd xmm0{k7},xmm1,xmm2
    vrcp28sd xmm0{k7}{z},xmm1,xmm2
    vrcp28sd xmm0{k7},xmm1,qword ptr [rcx]
    vrcp28sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vrcp28sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vrcp28sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vrcp28sd xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vrsqrt28ps zmm0,zmm1
    vrsqrt28ps zmm0{k7},zmm1
    vrsqrt28ps zmm0{k7}{z},zmm1
    vrsqrt28ps zmm0,zword ptr [rcx]
    vrsqrt28ps zmm0,zword ptr [rdx+0x1fc0]
    vrsqrt28ps zmm0,zword ptr [rdx+0x2000]
    vrsqrt28ps zmm0,zword ptr [rdx-0x2000]
    vrsqrt28ps zmm0,zword ptr [rdx-0x2040]
    vrsqrt28pd zmm0,zmm1
    vrsqrt28pd zmm0{k7},zmm1
    vrsqrt28pd zmm0{k7}{z},zmm1
    vrsqrt28pd zmm0,zword ptr [rcx]
    vrsqrt28pd zmm0,zword ptr [rdx+0x1fc0]
    vrsqrt28pd zmm0,zword ptr [rdx+0x2000]
    vrsqrt28pd zmm0,zword ptr [rdx-0x2000]
    vrsqrt28pd zmm0,zword ptr [rdx-0x2040]
    vrsqrt28ss xmm0{k7},xmm1,xmm2
    vrsqrt28ss xmm0{k7}{z},xmm1,xmm2
    vrsqrt28ss xmm0{k7},xmm1,dword ptr [rcx]
    vrsqrt28ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vrsqrt28ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vrsqrt28ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vrsqrt28ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vrsqrt28sd xmm0{k7},xmm1,xmm2
    vrsqrt28sd xmm0{k7}{z},xmm1,xmm2
    vrsqrt28sd xmm0{k7},xmm1,qword ptr [rcx]
    vrsqrt28sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vrsqrt28sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vrsqrt28sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vrsqrt28sd xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vrsqrt14ps zmm0,zmm1
    vrsqrt14ps zmm0{k7},zmm1
    vrsqrt14ps zmm0{k7}{z},zmm1
    vrsqrt14ps zmm0,zword ptr [rcx]
    vrsqrt14ps zmm0,zword ptr [rax+r14*8+0x123]
    vrsqrt14ps zmm0,dword ptr [rcx]{1to16}
    vrsqrt14ps zmm0,zword ptr [rdx+0x1fc0]
    vrsqrt14ps zmm0,zword ptr [rdx+0x2000]
    vrsqrt14ps zmm0,zword ptr [rdx-0x2000]
    vrsqrt14ps zmm0,zword ptr [rdx-0x2040]
    vrsqrt14ps zmm0,dword ptr [rdx+0x1fc]{1to16}
    vrsqrt14ps zmm0,dword ptr [rdx+0x200]{1to16}
    vrsqrt14ps zmm0,dword ptr [rdx-0x200]{1to16}
    vrsqrt14ps zmm0,dword ptr [rdx-0x204]{1to16}

    vrsqrt14pd zmm0,zmm1
    vrsqrt14pd zmm0{k7},zmm1
    vrsqrt14pd zmm0{k7}{z},zmm1
    vrsqrt14pd zmm0,zword ptr [rcx]
    vrsqrt14pd zmm0,zword ptr [rdx+0x1fc0]
    vrsqrt14pd zmm0,zword ptr [rdx+0x2000]
    vrsqrt14pd zmm0,zword ptr [rdx-0x2000]
    vrsqrt14pd zmm0,zword ptr [rdx-0x2040]

    vrsqrt14ps zmm0,zmm1
    vrsqrt14ps zmm0{k7},zmm1
    vrsqrt14ps zmm0{k7}{z},zmm1
    vrsqrt14ps zmm0,zword ptr [rcx]
    vrsqrt14ps zmm0,zword ptr [rax+r14*8+0x123]
    vrsqrt14ps zmm0,dword ptr [rcx]{1to16}
    vrsqrt14ps zmm0,zword ptr [rdx+0x1fc0]
    vrsqrt14ps zmm0,zword ptr [rdx+0x2000]
    vrsqrt14ps zmm0,zword ptr [rdx-0x2000]
    vrsqrt14ps zmm0,zword ptr [rdx-0x2040]
    vrsqrt14ps zmm0,dword ptr [rdx+0x1fc]{1to16}
    vrsqrt14ps zmm0,dword ptr [rdx+0x200]{1to16}
    vrsqrt14ps zmm0,dword ptr [rdx-0x200]{1to16}
    vrsqrt14ps zmm0,dword ptr [rdx-0x204]{1to16}

    vrsqrt14sd xmm0{k7},xmm1,xmm2
    vrsqrt14sd xmm0{k7}{z},xmm1,xmm2
    vrsqrt14sd xmm0{k7},xmm1,qword ptr [rcx]
    vrsqrt14sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vrsqrt14sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vrsqrt14sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vrsqrt14sd xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vrsqrt14ss xmm0,xmm1,xmm3
    vrsqrt14ss xmm0{k7},xmm1,xmm3
    vrsqrt14ss xmm0{k7}{z},xmm1,xmm3
    vrsqrt14ss xmm0,xmm3,dword ptr [rcx]
    vrsqrt14ss xmm0,xmm3,dword ptr [rcx]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx+0x1fc0]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx+0x2000]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx-0x2000]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx+0x1fc]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx+0x200]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx-0x200]
    vrsqrt14ss xmm0,xmm3,dword ptr [rdx-0x204]
    vrsqrt14ss xmm0{k7},xmm1,xmm2
    vrsqrt14ss xmm0{k7}{z},xmm1,xmm2
    vrsqrt14ss xmm0{k7},xmm1,dword ptr [rcx]
    vrsqrt14ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vrsqrt14ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vrsqrt14ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vrsqrt14ss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vmovdqa32 zmm0,zmm1
    vmovdqa32 zmm0{k7},zmm1
    vmovdqa32 zmm0{k7}{z},zmm1
    vmovdqa32 zmm0,zword ptr [rcx]
    vmovdqa32 zmm0,zword ptr [rax+r14*8+0x123]
    vmovdqa32 zmm0,zword ptr [rdx+0x1fc0]
    vmovdqa32 zmm0,zword ptr [rdx+0x2000]
    vmovdqa32 zmm0,zword ptr [rdx-0x2000]
    vmovdqa32 zmm0,zword ptr [rdx-0x2040]
    vmovdqa64 zmm0,zmm1
    vmovdqa64 zmm0{k7},zmm1
    vmovdqa64 zmm0{k7}{z},zmm1
    vmovdqa64 zmm0,zword ptr [rcx]
    vmovdqa64 zmm0,zword ptr [rax+r14*8+0x123]
    vmovdqa64 zmm0,zword ptr [rdx+0x1fc0]
    vmovdqa64 zmm0,zword ptr [rdx+0x2000]
    vmovdqa64 zmm0,zword ptr [rdx-0x2000]
    vmovdqa64 zmm0,zword ptr [rdx-0x2040]
    vmovdqu32 zmm0,zmm1
    vmovdqu32 zmm0{k7},zmm1
    vmovdqu32 zmm0{k7}{z},zmm1
    vmovdqu32 zmm0,zword ptr [rcx]
    vmovdqu32 zmm0,zword ptr [rax+r14*8+0x123]
    vmovdqu32 zmm0,zword ptr [rdx+0x1fc0]
    vmovdqu32 zmm0,zword ptr [rdx+0x2000]
    vmovdqu32 zmm0,zword ptr [rdx-0x2000]
    vmovdqu32 zmm0,zword ptr [rdx-0x2040]
    vmovdqu64 zmm0,zmm1
    vmovdqu64 zmm0{k7},zmm1
    vmovdqu64 zmm0{k7}{z},zmm1
    vmovdqu64 zmm0,zword ptr [rcx]
    vmovdqu64 zmm0,zword ptr [rax+r14*8+0x123]
    vmovdqu64 zmm0,zword ptr [rdx+0x1fc0]
    vmovdqu64 zmm0,zword ptr [rdx+0x2000]
    vmovdqu64 zmm0,zword ptr [rdx-0x2000]
    vmovdqu64 zmm0,zword ptr [rdx-0x2040]

    vmovdqa32 zword ptr [rcx],zmm0
    vmovdqa32 zword ptr [rcx]{k7},zmm0
    vmovdqa32 zword ptr [rax+r14*8+0x123],zmm0
    vmovdqa32 zword ptr [rdx+0x1fc0],zmm0
    vmovdqa32 zword ptr [rdx+0x2000],zmm0
    vmovdqa32 zword ptr [rdx-0x2000],zmm0
    vmovdqa32 zword ptr [rdx-0x2040],zmm0
    vmovdqa64 zword ptr [rcx],zmm0
    vmovdqa64 zword ptr [rcx]{k7},zmm0
    vmovdqa64 zword ptr [rax+r14*8+0x123],zmm0
    vmovdqa64 zword ptr [rdx+0x1fc0],zmm0
    vmovdqa64 zword ptr [rdx+0x2000],zmm0
    vmovdqa64 zword ptr [rdx-0x2000],zmm0
    vmovdqa64 zword ptr [rdx-0x2040],zmm0
    vmovdqu32 zword ptr [rcx],zmm0
    vmovdqu32 zword ptr [rcx]{k7},zmm0
    vmovdqu32 zword ptr [rax+r14*8+0x123],zmm0
    vmovdqu32 zword ptr [rdx+0x1fc0],zmm0
    vmovdqu32 zword ptr [rdx+0x2000],zmm0
    vmovdqu32 zword ptr [rdx-0x2000],zmm0
    vmovdqu32 zword ptr [rdx-0x2040],zmm0
    vmovdqu64 zword ptr [rcx],zmm0
    vmovdqu64 zword ptr [rcx]{k7},zmm0
    vmovdqu64 zword ptr [rax+r14*8+0x123],zmm0
    vmovdqu64 zword ptr [rdx+0x1fc0],zmm0
    vmovdqu64 zword ptr [rdx+0x2000],zmm0
    vmovdqu64 zword ptr [rdx-0x2000],zmm0
    vmovdqu64 zword ptr [rdx-0x2040],zmm0

    vcompresspd zword ptr [rcx],zmm0
    vcompresspd zword ptr [rcx]{k7},zmm0
    vcompresspd zword ptr [rax+r14*8+0x123],zmm0
    vcompresspd zword ptr [rdx+0x3f8],zmm0
    vcompresspd zword ptr [rdx+0x400],zmm0
    vcompresspd zword ptr [rdx-0x400],zmm0
    vcompresspd zword ptr [rdx-0x408],zmm0
    vcompresspd zmm0,zmm1
    vcompresspd zmm0{k7},zmm1
    vcompresspd zmm0{k7}{z},zmm1

    vcompressps zword ptr [rcx],zmm0
    vcompressps zword ptr [rcx]{k7},zmm0
    vcompressps zword ptr [rax+r14*8+0x123],zmm0
    vcompressps zword ptr [rdx+0x1fc],zmm0
    vcompressps zword ptr [rdx+0x200],zmm0
    vcompressps zword ptr [rdx-0x200],zmm0
    vcompressps zword ptr [rdx-0x204],zmm0
    vcompressps zmm0,zmm1
    vcompressps zmm0{k7},zmm1
    vcompressps zmm0{k7}{z},zmm1

    vcvtpd2qq xmm0,xmm0
    vcvtpd2qq ymm0,ymm0
    vcvtpd2qq zmm0,zmm0

    vcvtps2qq xmm0,[rax]
    vcvtps2qq ymm0,[rax]
    vcvtps2qq zmm0,[rax]

    vcvtpd2udq ymm0{k7},zmm1
    vcvtpd2udq ymm0{k7}{z},zmm1
    vcvtpd2udq ymm0{k7},zmm1,{rn-sae}
    vcvtpd2udq ymm0{k7},zmm1,{ru-sae}
    vcvtpd2udq ymm0{k7},zmm1,{rd-sae}
    vcvtpd2udq ymm0{k7},zmm1,{rz-sae}
    vcvtpd2udq ymm0{k7},zword ptr [rcx]
    vcvtpd2udq ymm0{k7},zword ptr [rax+r14*8+0x123]
    vcvtpd2udq ymm0{k7},qword ptr [rcx]{1to8}
    vcvtpd2udq ymm0{k7},zword ptr [rdx+0x1fc0]
    vcvtpd2udq ymm0{k7},zword ptr [rdx+0x2000]
    vcvtpd2udq ymm0{k7},zword ptr [rdx-0x2000]
    vcvtpd2udq ymm0{k7},zword ptr [rdx-0x2040]
    vcvtpd2udq ymm0{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvtpd2udq ymm0{k7},qword ptr [rdx+0x400]{1to8}
    vcvtpd2udq ymm0{k7},qword ptr [rdx-0x400]{1to8}
    vcvtpd2udq ymm0{k7},qword ptr [rdx-0x408]{1to8}

    vcvtps2udq zmm0,zmm1
    vcvtps2udq zmm0{k7},zmm1
    vcvtps2udq zmm0{k7}{z},zmm1
    vcvtps2udq zmm0,zmm1,{rn-sae}
    vcvtps2udq zmm0,zmm1,{ru-sae}
    vcvtps2udq zmm0,zmm1,{rd-sae}
    vcvtps2udq zmm0,zmm1,{rz-sae}
    vcvtps2udq zmm0,zword ptr [rcx]
    vcvtps2udq zmm0,zword ptr [rax+r14*8+0x123]
    vcvtps2udq zmm0,dword ptr [rcx]{1to16}
    vcvtps2udq zmm0,zword ptr [rdx+0x1fc0]
    vcvtps2udq zmm0,zword ptr [rdx+0x2000]
    vcvtps2udq zmm0,zword ptr [rdx-0x2000]
    vcvtps2udq zmm0,zword ptr [rdx-0x2040]
    vcvtps2udq zmm0,dword ptr [rdx+0x1fc]{1to16}
    vcvtps2udq zmm0,dword ptr [rdx+0x200]{1to16}
    vcvtps2udq zmm0,dword ptr [rdx-0x200]{1to16}
    vcvtps2udq zmm0,dword ptr [rdx-0x204]{1to16}

    vcvtph2ps zmm0{k7},ymm1
    vcvtph2ps zmm0{k7}{z},ymm1
    vcvtph2ps zmm0{k7},ymm1,{sae}
    vcvtph2ps zmm0{k7},yword ptr [rcx]
    vcvtph2ps zmm0{k7},yword ptr [rax+r14*8+0x123]
    vcvtph2ps zmm0{k7},yword ptr [rdx+0xfe0]
    vcvtph2ps zmm0{k7},yword ptr [rdx+0x1000]
    vcvtph2ps zmm0{k7},yword ptr [rdx-0x1000]
    vcvtph2ps zmm0{k7},yword ptr [rdx-0x1020]

    vcvtps2ph ymm0{k7},zmm1,0xab
    vcvtps2ph ymm0{k7}{z},zmm1,0xab
    vcvtps2ph ymm0{k7},zmm1,0x7b

    vcvtps2ph yword ptr [rcx],zmm0,0xab
    vcvtps2ph yword ptr [rcx]{k7},zmm0,0xab
    vcvtps2ph yword ptr [rcx],zmm0,0x7b
    vcvtps2ph yword ptr [rdx+0xfe0],zmm0,0x7b
    vcvtps2ph yword ptr [rdx+0x1000],zmm0,0x7b
    vcvtps2ph yword ptr [rdx-0x1000],zmm0,0x7b
    vcvtps2ph yword ptr [rdx-0x1020],zmm0,0x7b

    vcvttpd2udq ymm0{k7},zmm1
    vcvttpd2udq ymm0{k7}{z},zmm1
    vcvttpd2udq ymm0{k7},zmm1,{sae}
    vcvttpd2udq ymm0{k7},zword ptr [rcx]
    vcvttpd2udq ymm0{k7},zword ptr [rax+r14*8+0x123]
    vcvttpd2udq ymm0{k7},qword ptr [rcx]{1to8}
    vcvttpd2udq ymm0{k7},zword ptr [rdx+0x1fc0]
    vcvttpd2udq ymm0{k7},zword ptr [rdx+0x2000]
    vcvttpd2udq ymm0{k7},zword ptr [rdx-0x2000]
    vcvttpd2udq ymm0{k7},zword ptr [rdx-0x2040]
    vcvttpd2udq ymm0{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvttpd2udq ymm0{k7},qword ptr [rdx+0x400]{1to8}
    vcvttpd2udq ymm0{k7},qword ptr [rdx-0x400]{1to8}
    vcvttpd2udq ymm0{k7},qword ptr [rdx-0x408]{1to8}
    vcvttps2udq zmm0,zmm1
    vcvttps2udq zmm0{k7},zmm1
    vcvttps2udq zmm0{k7}{z},zmm1
    vcvttps2udq zmm0,zmm1,{sae}
    vcvttps2udq zmm0,zword ptr [rcx]
    vcvttps2udq zmm0,zword ptr [rax+r14*8+0x123]
    vcvttps2udq zmm0,dword ptr [rcx]{1to16}
    vcvttps2udq zmm0,zword ptr [rdx+0x1fc0]
    vcvttps2udq zmm0,zword ptr [rdx+0x2000]
    vcvttps2udq zmm0,zword ptr [rdx-0x2000]
    vcvttps2udq zmm0,zword ptr [rdx-0x2040]
    vcvttps2udq zmm0,dword ptr [rdx+0x1fc]{1to16}
    vcvttps2udq zmm0,dword ptr [rdx+0x200]{1to16}
    vcvttps2udq zmm0,dword ptr [rdx-0x200]{1to16}
    vcvttps2udq zmm0,dword ptr [rdx-0x204]{1to16}

    vcvtudq2pd zmm0{k7},ymm1
    vcvtudq2pd zmm0{k7}{z},ymm1
    vcvtudq2pd zmm0{k7},yword ptr [rcx]
    vcvtudq2pd zmm0{k7},yword ptr [rax+r14*8+0x123]
    vcvtudq2pd zmm0{k7},dword ptr [rcx]{1to8}
    vcvtudq2pd zmm0{k7},yword ptr [rdx+0xfe0]
    vcvtudq2pd zmm0{k7},yword ptr [rdx+0x1000]
    vcvtudq2pd zmm0{k7},yword ptr [rdx-0x1000]
    vcvtudq2pd zmm0{k7},yword ptr [rdx-0x1020]
    vcvtudq2pd zmm0{k7},dword ptr [rdx+0x1fc]{1to8}
    vcvtudq2pd zmm0{k7},dword ptr [rdx+0x200]{1to8}
    vcvtudq2pd zmm0{k7},dword ptr [rdx-0x200]{1to8}
    vcvtudq2pd zmm0{k7},dword ptr [rdx-0x204]{1to8}

    vcvtudq2ps zmm0,zmm1
    vcvtudq2ps zmm0{k7},zmm1
    vcvtudq2ps zmm0{k7}{z},zmm1
    vcvtudq2ps zmm0,zmm1,{rn-sae}
    vcvtudq2ps zmm0,zmm1,{ru-sae}
    vcvtudq2ps zmm0,zmm1,{rd-sae}
    vcvtudq2ps zmm0,zmm1,{rz-sae}
    vcvtudq2ps zmm0,zword ptr [rcx]
    vcvtudq2ps zmm0,zword ptr [rax+r14*8+0x123]
    vcvtudq2ps zmm0,dword ptr [rcx]{1to16}
    vcvtudq2ps zmm0,zword ptr [rdx+0x1fc0]
    vcvtudq2ps zmm0,zword ptr [rdx+0x2000]
    vcvtudq2ps zmm0,zword ptr [rdx-0x2000]
    vcvtudq2ps zmm0,zword ptr [rdx-0x2040]
    vcvtudq2ps zmm0,dword ptr [rdx+0x1fc]{1to16}
    vcvtudq2ps zmm0,dword ptr [rdx+0x200]{1to16}
    vcvtudq2ps zmm0,dword ptr [rdx-0x200]{1to16}
    vcvtudq2ps zmm0,dword ptr [rdx-0x204]{1to16}

    vexpandpd zmm0,zword ptr [rcx]
    vexpandpd zmm0{k7},zword ptr [rcx]
    vexpandpd zmm0{k7}{z},zword ptr [rcx]
    vexpandpd zmm0,zword ptr [rax+r14*8+0x123]
    vexpandpd zmm0,zword ptr [rdx+0x3f8]
    vexpandpd zmm0,zword ptr [rdx+0x400]
    vexpandpd zmm0,zword ptr [rdx-0x400]
    vexpandpd zmm0,zword ptr [rdx-0x408]
    vexpandpd zmm0,zmm1
    vexpandpd zmm0{k7},zmm1
    vexpandpd zmm0{k7}{z},zmm1

    vexpandps zmm0,zword ptr [rcx]
    vexpandps zmm0{k7},zword ptr [rcx]
    vexpandps zmm0{k7}{z},zword ptr [rcx]
    vexpandps zmm0,zword ptr [rax+r14*8+0x123]
    vexpandps zmm0,zword ptr [rdx+0x1fc]
    vexpandps zmm0,zword ptr [rdx+0x200]
    vexpandps zmm0,zword ptr [rdx-0x200]
    vexpandps zmm0,zword ptr [rdx-0x204]
    vexpandps zmm0,zmm1
    vexpandps zmm0{k7},zmm1
    vexpandps zmm0{k7}{z},zmm1

    vextractf32x4 xmm0{k7},zmm1,0xab
    vextractf32x4 xmm0{k7}{z},zmm1,0xab
    vextractf32x4 xmm0{k7},zmm1,0x7b
    vextractf64x4 ymm0{k7},zmm1,0xab
    vextractf64x4 ymm0{k7}{z},zmm1,0xab
    vextractf64x4 ymm0{k7},zmm1,0x7b
    vextracti32x4 xmm0{k7},zmm1,0xab
    vextracti32x4 xmm0{k7}{z},zmm1,0xab
    vextracti32x4 xmm0{k7},zmm1,0x7b
    vextracti64x4 ymm0{k7},zmm1,0xab
    vextracti64x4 ymm0{k7}{z},zmm1,0xab
    vextracti64x4 ymm0{k7},zmm1,0x7b

    vextractf32x4 oword ptr [rcx],zmm0,0xab
    vextractf32x4 oword ptr [rcx]{k7},zmm0,0xab
    vextractf32x4 oword ptr [rcx],zmm0,0x7b
    vextractf32x4 oword ptr [rdx+0x7f0],zmm0,0x7b
    vextractf32x4 oword ptr [rdx+0x800],zmm0,0x7b
    vextractf32x4 oword ptr [rdx-0x800],zmm0,0x7b
    vextractf32x4 oword ptr [rdx-0x810],zmm0,0x7b
    vextractf64x4 yword ptr [rcx],zmm0,0xab
    vextractf64x4 yword ptr [rcx]{k7},zmm0,0xab
    vextractf64x4 yword ptr [rcx],zmm0,0x7b
    vextractf64x4 yword ptr [rdx+0xfe0],zmm0,0x7b
    vextractf64x4 yword ptr [rdx+0x1000],zmm0,0x7b
    vextractf64x4 yword ptr [rdx-0x1000],zmm0,0x7b
    vextractf64x4 yword ptr [rdx-0x1020],zmm0,0x7b
    vextracti32x4 oword ptr [rcx],zmm0,0xab
    vextracti32x4 oword ptr [rcx]{k7},zmm0,0xab
    vextracti32x4 oword ptr [rcx],zmm0,0x7b
    vextracti32x4 oword ptr [rdx+0x7f0],zmm0,0x7b
    vextracti32x4 oword ptr [rdx+0x800],zmm0,0x7b
    vextracti32x4 oword ptr [rdx-0x800],zmm0,0x7b
    vextracti32x4 oword ptr [rdx-0x810],zmm0,0x7b
    vextracti64x4 yword ptr [rcx],zmm0,0xab
    vextracti64x4 yword ptr [rcx]{k7},zmm0,0xab
    vextracti64x4 yword ptr [rcx],zmm0,0x7b
    vextracti64x4 yword ptr [rdx+0xfe0],zmm0,0x7b
    vextracti64x4 yword ptr [rdx+0x1000],zmm0,0x7b
    vextracti64x4 yword ptr [rdx-0x1000],zmm0,0x7b
    vextracti64x4 yword ptr [rdx-0x1020],zmm0,0x7b

    vgatherdpd zmm0{k1}, [r14+ymm31*8+0x7b]
    vgatherdpd zmm0{k1}, [r14+ymm31*8+0x7b]
    vgatherdpd zmm0{k1}, [r9+ymm31*1+0x100]
    vgatherdpd zmm0{k1}, [rcx+ymm31*4+0x400]
    vgatherqpd zmm0{k1}, [r14+zmm31*8+0x7b]
    vgatherqpd zmm0{k1}, [r14+zmm31*8+0x7b]
    vgatherqpd zmm0{k1}, [r9+zmm31*1+0x100]
    vgatherqpd zmm0{k1}, [rcx+zmm31*4+0x400]

    vgatherdps zmm0{k1}, [r14+zmm31*8+0x7b]
    vgatherdps zmm0{k1}, [r14+zmm31*8+0x7b]
    vgatherdps zmm0{k1}, [r9+zmm31*1+0x100]
    vgatherdps zmm0{k1}, [rcx+zmm31*4+0x400]

    vpgatherdd zmm0{k1}, [r14+zmm31*8+0x7b]
    vpgatherdd zmm0{k1}, [r14+zmm31*8+0x7b]
    vpgatherdd zmm0{k1}, [r9+zmm31*1+0x100]
    vpgatherdd zmm0{k1}, [rcx+zmm31*4+0x400]
    vpgatherdq zmm0{k1}, [r14+ymm31*8+0x7b]
    vpgatherdq zmm0{k1}, [r14+ymm31*8+0x7b]
    vpgatherdq zmm0{k1}, [r9+ymm31*1+0x100]
    vpgatherdq zmm0{k1}, [rcx+ymm31*4+0x400]
    vpgatherqq zmm0{k1}, [r14+zmm31*8+0x7b]
    vpgatherqq zmm0{k1}, [r14+zmm31*8+0x7b]
    vpgatherqq zmm0{k1}, [r9+zmm31*1+0x100]
    vpgatherqq zmm0{k1}, [rcx+zmm31*4+0x400]


    vscatterdpd	 [r14+ymm31*8+0x7b]{k1},zmm0
    vscatterdpd	 [r14+ymm31*8+0x7b]{k1},zmm0
    vscatterdpd	 [r9+ymm31*1+0x100]{k1},zmm0
    vscatterdpd	 [rcx+ymm31*4+0x400]{k1},zmm0
    vscatterdps	 [r14+zmm31*8+0x7b]{k1},zmm0
    vscatterdps	 [r14+zmm31*8+0x7b]{k1},zmm0
    vscatterdps	 [r9+zmm31*1+0x100]{k1},zmm0
    vscatterdps	 [rcx+zmm31*4+0x400]{k1},zmm0
    vscatterqpd	 [r14+zmm31*8+0x7b]{k1},zmm0
    vscatterqpd	 [r14+zmm31*8+0x7b]{k1},zmm0
    vscatterqpd	 [r9+zmm31*1+0x100]{k1},zmm0
    vscatterqpd	 [rcx+zmm31*4+0x400]{k1},zmm0

    vpscatterdd	 [r14+zmm31*8+0x7b]{k1},zmm0
    vpscatterdd	 [r14+zmm31*8+0x7b]{k1},zmm0
    vpscatterdd	 [r9+zmm31*1+0x100]{k1},zmm0
    vpscatterdd	 [rcx+zmm31*4+0x400]{k1},zmm0
    vpscatterdq	 [r14+ymm31*8+0x7b]{k1},zmm0
    vpscatterdq	 [r14+ymm31*8+0x7b]{k1},zmm0
    vpscatterdq	 [r9+ymm31*1+0x100]{k1},zmm0
    vpscatterdq	 [rcx+ymm31*4+0x400]{k1},zmm0
    vpscatterqq	 [r14+zmm31*8+0x7b]{k1},zmm0
    vpscatterqq	 [r14+zmm31*8+0x7b]{k1},zmm0
    vpscatterqq	 [r9+zmm31*1+0x100]{k1},zmm0
    vpscatterqq	 [rcx+zmm31*4+0x400]{k1},zmm0

    vgetexppd zmm0,zmm1
    vgetexppd zmm0{k7},zmm1
    vgetexppd zmm0{k7}{z},zmm1
    vgetexppd zmm0,zword ptr [rcx]
    vgetexppd zmm0,zword ptr [rdx+0x1fc0]
    vgetexppd zmm0,zword ptr [rdx+0x2000]
    vgetexppd zmm0,zword ptr [rdx-0x2000]
    vgetexppd zmm0,zword ptr [rdx-0x2040]

    vgetexpps zmm0,zmm1
    vgetexpps zmm0{k7},zmm1
    vgetexpps zmm0{k7}{z},zmm1
    vgetexpps zmm0,zword ptr [rcx]
    vgetexpps zmm0,zword ptr [rdx+0x1fc0]
    vgetexpps zmm0,zword ptr [rdx+0x2000]
    vgetexpps zmm0,zword ptr [rdx-0x2000]
    vgetexpps zmm0,zword ptr [rdx-0x2040]

    vgetexpsd xmm0{k7},xmm1,xmm2
    vgetexpsd xmm0{k7}{z},xmm1,xmm2
    vgetexpsd xmm0{k7},xmm1,qword ptr [rcx]
    vgetexpsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vgetexpsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vgetexpsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vgetexpsd xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vgetexpss xmm0{k7},xmm1,xmm2
    vgetexpss xmm0{k7}{z},xmm1,xmm2
    vgetexpss xmm0{k7},xmm1,dword ptr [rcx]
    vgetexpss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vgetexpss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vgetexpss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vgetexpss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vpcompressd zword ptr [rcx],zmm0
    vpcompressd zword ptr [rcx]{k7},zmm0
    vpcompressd zword ptr [rax+r14*8+0x123],zmm0
    vpcompressd zword ptr [rdx+0x1fc],zmm0
    vpcompressd zword ptr [rdx+0x200],zmm0
    vpcompressd zword ptr [rdx-0x200],zmm0
    vpcompressd zword ptr [rdx-0x204],zmm0
    vpcompressd zmm0,zmm1
    vpcompressd zmm0{k7},zmm1
    vpcompressd zmm0{k7}{z},zmm1

    vpcompressq zword ptr [rcx],zmm0
    vpcompressq zword ptr [rcx]{k7},zmm0
    vpcompressq zword ptr [rax+r14*8+0x123],zmm0
    vpcompressq zword ptr [rdx+0x3f8],zmm0
    vpcompressq zword ptr [rdx+0x400],zmm0
    vpcompressq zword ptr [rdx-0x400],zmm0
    vpcompressq zword ptr [rdx-0x408],zmm0
    vpcompressq zmm0,zmm1
    vpcompressq zmm0{k7},zmm1
    vpcompressq zmm0{k7}{z},zmm1

    vbroadcastf32x4 zmm0,oword ptr [rcx]
    vbroadcastf32x4 zmm0{k7},oword ptr [rcx]
    vbroadcastf32x4 zmm0{k7}{z},oword ptr [rcx]
    vbroadcastf32x4 zmm0,oword ptr [rax+r14*8+0x123]
    vbroadcastf32x4 zmm0,oword ptr [rdx+0x7f0]
    vbroadcastf32x4 zmm0,oword ptr [rdx+0x800]
    vbroadcastf32x4 zmm0,oword ptr [rdx-0x800]
    vbroadcastf32x4 zmm0,oword ptr [rdx-0x810]
    vbroadcastf64x4 zmm0,yword ptr [rcx]
    vbroadcastf64x4 zmm0{k7},yword ptr [rcx]
    vbroadcastf64x4 zmm0{k7}{z},yword ptr [rcx]
    vbroadcastf64x4 zmm0,yword ptr [rax+r14*8+0x123]
    vbroadcastf64x4 zmm0,yword ptr [rdx+0xfe0]
    vbroadcastf64x4 zmm0,yword ptr [rdx+0x1000]
    vbroadcastf64x4 zmm0,yword ptr [rdx-0x1000]
    vbroadcastf64x4 zmm0,yword ptr [rdx-0x1020]
    vbroadcasti32x4 zmm0,oword ptr [rcx]
    vbroadcasti32x4 zmm0{k7},oword ptr [rcx]
    vbroadcasti32x4 zmm0{k7}{z},oword ptr [rcx]
    vbroadcasti32x4 zmm0,oword ptr [rax+r14*8+0x123]
    vbroadcasti32x4 zmm0,oword ptr [rdx+0x7f0]
    vbroadcasti32x4 zmm0,oword ptr [rdx+0x800]
    vbroadcasti32x4 zmm0,oword ptr [rdx-0x800]
    vbroadcasti32x4 zmm0,oword ptr [rdx-0x810]
    vbroadcasti64x4 zmm0,yword ptr [rcx]
    vbroadcasti64x4 zmm0{k7},yword ptr [rcx]
    vbroadcasti64x4 zmm0{k7}{z},yword ptr [rcx]
    vbroadcasti64x4 zmm0,yword ptr [rax+r14*8+0x123]
    vbroadcasti64x4 zmm0,yword ptr [rdx+0xfe0]
    vbroadcasti64x4 zmm0,yword ptr [rdx+0x1000]
    vbroadcasti64x4 zmm0,yword ptr [rdx-0x1000]
    vbroadcasti64x4 zmm0,yword ptr [rdx-0x1020]

    vpexpandd zmm0,zword ptr [rcx]
    vpexpandd zmm0{k7},zword ptr [rcx]
    vpexpandd zmm0{k7}{z},zword ptr [rcx]
    vpexpandd zmm0,zword ptr [rdx+0x1fc]
    vpexpandd zmm0,zword ptr [rdx+0x200]
    vpexpandd zmm0,zword ptr [rdx-0x200]
    vpexpandd zmm0,zword ptr [rdx-0x204]
    vpexpandd zmm0,zmm1
    vpexpandd zmm0{k7},zmm1
    vpexpandd zmm0{k7}{z},zmm1
    vpexpandq zmm0,zword ptr [rcx]
    vpexpandq zmm0{k7},zword ptr [rcx]
    vpexpandq zmm0{k7}{z},zword ptr [rcx]
    vpexpandq zmm0,zword ptr [rdx+0x3f8]
    vpexpandq zmm0,zword ptr [rdx+0x400]
    vpexpandq zmm0,zword ptr [rdx-0x400]
    vpexpandq zmm0,zword ptr [rdx-0x408]
    vpexpandq zmm0,zmm1
    vpexpandq zmm0{k7},zmm1
    vpexpandq zmm0{k7}{z},zmm1

    vrcp14pd zmm0,zmm1
    vrcp14pd zmm0{k7},zmm1
    vrcp14pd zmm0{k7}{z},zmm1
    vrcp14pd zmm0,zword ptr [rcx]
    vrcp14pd zmm0,zword ptr [rdx+0x1fc0]
    vrcp14pd zmm0,zword ptr [rdx+0x2000]
    vrcp14pd zmm0,zword ptr [rdx-0x2000]
    vrcp14pd zmm0,zword ptr [rdx-0x2040]

    vrcp14ps zmm0,zmm1
    vrcp14ps zmm0{k7},zmm1
    vrcp14ps zmm0{k7}{z},zmm1
    vrcp14ps zmm0,zword ptr [rcx]
    vrcp14ps zmm0,zword ptr [rdx+0x1fc0]
    vrcp14ps zmm0,zword ptr [rdx+0x2000]
    vrcp14ps zmm0,zword ptr [rdx-0x2000]
    vrcp14ps zmm0,zword ptr [rdx-0x2040]

    vrcp14sd xmm0{k7},xmm1,xmm2
    vrcp14sd xmm0{k7}{z},xmm1,xmm2
    vrcp14sd xmm0{k7},xmm1,qword ptr [rcx]
    vrcp14sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vrcp14sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vrcp14sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vrcp14sd xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vrcp14ss xmm0{k7},xmm1,xmm2
    vrcp14ss xmm0{k7}{z},xmm1,xmm2
    vrcp14ss xmm0{k7},xmm1,dword ptr [rcx]
    vrcp14ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vrcp14ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vrcp14ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vrcp14ss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vrndscalepd zmm0,zmm1,0xab
    vrndscalepd zmm0{k7},zmm1,0xab
    vrndscalepd zmm0{k7}{z},zmm1,0xab
    vrndscalepd zmm0,zmm1,0x7b
    vrndscalepd zmm0,zword ptr [rcx],0x7b
    vrndscalepd zmm0,zword ptr [rdx+0x1fc0],0x7b
    vrndscalepd zmm0,zword ptr [rdx+0x2000],0x7b
    vrndscalepd zmm0,zword ptr [rdx-0x2000],0x7b
    vrndscalepd zmm0,zword ptr [rdx-0x2040],0x7b
    vrndscaleps zmm0,zmm1,0xab
    vrndscaleps zmm0{k7},zmm1,0xab
    vrndscaleps zmm0{k7}{z},zmm1,0xab
    vrndscaleps zmm0,zmm1,0x7b
    vrndscaleps zmm0,zword ptr [rcx],0x7b
    vrndscaleps zmm0,zword ptr [rdx+0x1fc0],0x7b
    vrndscaleps zmm0,zword ptr [rdx+0x2000],0x7b
    vrndscaleps zmm0,zword ptr [rdx-0x2000],0x7b
    vrndscaleps zmm0,zword ptr [rdx-0x2040],0x7b
    vrndscalesd xmm0{k7},xmm1,xmm2,0xab
    vrndscalesd xmm0{k7}{z},xmm1,xmm2,0xab
    vrndscalesd xmm0{k7},xmm1,xmm2,0x7b
    vrndscalesd xmm0{k7},xmm1,qword ptr [rcx],0x7b
    vrndscalesd xmm0{k7},xmm1,qword ptr [rdx+0x3f8],0x7b
    vrndscalesd xmm0{k7},xmm1,qword ptr [rdx+0x400],0x7b
    vrndscalesd xmm0{k7},xmm1,qword ptr [rdx-0x400],0x7b
    vrndscalesd xmm0{k7},xmm1,qword ptr [rdx-0x408],0x7b
    vrndscaless xmm0{k7},xmm1,xmm2,0xab
    vrndscaless xmm0{k7}{z},xmm1,xmm2,0xab
    vrndscaless xmm0{k7},xmm1,xmm2,0x7b
    vrndscaless xmm0{k7},xmm1,dword ptr [rcx],0x7b
    vrndscaless xmm0{k7},xmm1,dword ptr [rdx+0x1fc],0x7b
    vrndscaless xmm0{k7},xmm1,dword ptr [rdx+0x200],0x7b
    vrndscaless xmm0{k7},xmm1,dword ptr [rdx-0x200],0x7b
    vrndscaless xmm0{k7},xmm1,dword ptr [rdx-0x204],0x7b

    vpmovqb xmm0{k7},zmm1
    vpmovqb xmm0{k7}{z},zmm1
    vpmovsqb xmm0{k7},zmm1
    vpmovsqb xmm0{k7}{z},zmm1
    vpmovusqb xmm0{k7},zmm1
    vpmovusqb xmm0{k7}{z},zmm1
    vpmovqw xmm0{k7},zmm1
    vpmovqw xmm0{k7}{z},zmm1
    vpmovsqw xmm0{k7},zmm1
    vpmovsqw xmm0{k7}{z},zmm1
    vpmovusqw xmm0{k7},zmm1
    vpmovusqw xmm0{k7}{z},zmm1
    vpmovqd ymm0{k7},zmm1
    vpmovqd ymm0{k7}{z},zmm1
    vpmovsqd ymm0{k7},zmm1
    vpmovsqd ymm0{k7}{z},zmm1
    vpmovusqd ymm0{k7},zmm1
    vpmovusqd ymm0{k7}{z},zmm1
    vpmovdb xmm0{k7},zmm1
    vpmovdb xmm0{k7}{z},zmm1
    vpmovsdb xmm0{k7},zmm1
    vpmovsdb xmm0{k7}{z},zmm1
    vpmovusdb xmm0{k7},zmm1
    vpmovusdb xmm0{k7}{z},zmm1
    vpmovdw ymm0{k7},zmm1
    vpmovdw ymm0{k7}{z},zmm1
    vpmovsdw ymm0{k7},zmm1
    vpmovsdw ymm0{k7}{z},zmm1
    vpmovusdw ymm0{k7},zmm1
    vpmovusdw ymm0{k7}{z},zmm1

    vpmovqb qword ptr [rcx],zmm0
    vpmovqb qword ptr [rcx]{k7},zmm0
    vpmovqb qword ptr [rdx+0x3f8],zmm0
    vpmovqb qword ptr [rdx+0x400],zmm0
    vpmovqb qword ptr [rdx-0x400],zmm0
    vpmovqb qword ptr [rdx-0x408],zmm0

    vpmovqw oword ptr [rcx],zmm0
    vpmovqw oword ptr [rcx]{k7},zmm0
    vpmovqw oword ptr [rdx+0x7f0],zmm0
    vpmovqw oword ptr [rdx+0x800],zmm0
    vpmovqw oword ptr [rdx-0x800],zmm0
    vpmovqw oword ptr [rdx-0x810],zmm0

    vpmovqd yword ptr [rcx],zmm0
    vpmovqd yword ptr [rcx]{k7},zmm0
    vpmovqd yword ptr [rdx+0xfe0],zmm0
    vpmovqd yword ptr [rdx+0x1000],zmm0
    vpmovqd yword ptr [rdx-0x1000],zmm0
    vpmovqd yword ptr [rdx-0x1020],zmm0

    vpmovdb oword ptr [rcx],zmm0
    vpmovdb oword ptr [rcx]{k7},zmm0
    vpmovdb oword ptr [rdx+0x7f0],zmm0
    vpmovdb oword ptr [rdx+0x800],zmm0
    vpmovdb oword ptr [rdx-0x800],zmm0
    vpmovdb oword ptr [rdx-0x810],zmm0

    vpmovdw yword ptr [rcx],zmm0
    vpmovdw yword ptr [rcx]{k7},zmm0
    vpmovdw yword ptr [rdx+0xfe0],zmm0
    vpmovdw yword ptr [rdx+0x1000],zmm0
    vpmovdw yword ptr [rdx-0x1000],zmm0
    vpmovdw yword ptr [rdx-0x1020],zmm0

    vpmovsdb xmm0{k7},zmm1
    vpmovsdb xmm0{k7}{z},zmm1
    vpmovsdb oword ptr [rcx],zmm0
    vpmovsdb oword ptr [rcx]{k7},zmm0
    vpmovsdb oword ptr [rdx+0x7f0],zmm0
    vpmovsdb oword ptr [rdx+0x800],zmm0
    vpmovsdb oword ptr [rdx-0x800],zmm0
    vpmovsdb oword ptr [rdx-0x810],zmm0

    vpmovsdw ymm0{k7},zmm1
    vpmovsdw ymm0{k7}{z},zmm1
    vpmovsdw yword ptr [rcx],zmm0
    vpmovsdw yword ptr [rcx]{k7},zmm0
    vpmovsdw yword ptr [rdx+0xfe0],zmm0
    vpmovsdw yword ptr [rdx+0x1000],zmm0
    vpmovsdw yword ptr [rdx-0x1000],zmm0
    vpmovsdw yword ptr [rdx-0x1020],zmm0

    vpmovsqb xmm0{k7},zmm1
    vpmovsqb xmm0{k7}{z},zmm1
    vpmovsqb qword ptr [rcx],zmm0
    vpmovsqb qword ptr [rcx]{k7},zmm0
    vpmovsqb qword ptr [rdx+0x3f8],zmm0
    vpmovsqb qword ptr [rdx+0x400],zmm0
    vpmovsqb qword ptr [rdx-0x400],zmm0
    vpmovsqb qword ptr [rdx-0x408],zmm0

    vpmovsqd ymm0{k7},zmm1
    vpmovsqd ymm0{k7}{z},zmm1
    vpmovsqd yword ptr [rcx],zmm0
    vpmovsqd yword ptr [rcx]{k7},zmm0
    vpmovsqd yword ptr [rdx+0xfe0],zmm0
    vpmovsqd yword ptr [rdx+0x1000],zmm0
    vpmovsqd yword ptr [rdx-0x1000],zmm0
    vpmovsqd yword ptr [rdx-0x1020],zmm0

    vpmovsqw xmm0{k7},zmm1
    vpmovsqw xmm0{k7}{z},zmm1
    vpmovsqw oword ptr [rcx],zmm0
    vpmovsqw oword ptr [rcx]{k7},zmm0
    vpmovsqw oword ptr [rdx+0x7f0],zmm0
    vpmovsqw oword ptr [rdx+0x800],zmm0
    vpmovsqw oword ptr [rdx-0x800],zmm0
    vpmovsqw oword ptr [rdx-0x810],zmm0

    vpmovusdb xmm0{k7},zmm1
    vpmovusdb xmm0{k7}{z},zmm1
    vpmovusdb oword ptr [rcx],zmm0
    vpmovusdb oword ptr [rcx]{k7},zmm0
    vpmovusdb oword ptr [rdx+0x7f0],zmm0
    vpmovusdb oword ptr [rdx+0x800],zmm0
    vpmovusdb oword ptr [rdx-0x800],zmm0
    vpmovusdb oword ptr [rdx-0x810],zmm0

    vpmovusdw ymm0{k7},zmm1
    vpmovusdw ymm0{k7}{z},zmm1
    vpmovusdw yword ptr [rcx],zmm0
    vpmovusdw yword ptr [rcx]{k7},zmm0
    vpmovusdw yword ptr [rdx+0xfe0],zmm0
    vpmovusdw yword ptr [rdx+0x1000],zmm0
    vpmovusdw yword ptr [rdx-0x1000],zmm0
    vpmovusdw yword ptr [rdx-0x1020],zmm0

    vpmovusqb xmm0{k7},zmm1
    vpmovusqb xmm0{k7}{z},zmm1
    vpmovusqb qword ptr [rcx],zmm0
    vpmovusqb qword ptr [rcx]{k7},zmm0
    vpmovusqb qword ptr [rdx+0x3f8],zmm0
    vpmovusqb qword ptr [rdx+0x400],zmm0
    vpmovusqb qword ptr [rdx-0x400],zmm0
    vpmovusqb qword ptr [rdx-0x408],zmm0

    vpmovusqd ymm0{k7},zmm1
    vpmovusqd ymm0{k7}{z},zmm1
    vpmovusqd yword ptr [rcx],zmm0
    vpmovusqd yword ptr [rcx]{k7},zmm0
    vpmovusqd yword ptr [rdx+0xfe0],zmm0
    vpmovusqd yword ptr [rdx+0x1000],zmm0
    vpmovusqd yword ptr [rdx-0x1000],zmm0
    vpmovusqd yword ptr [rdx-0x1020],zmm0

    vpmovusqw xmm0{k7},zmm1
    vpmovusqw xmm0{k7}{z},zmm1
    vpmovusqw oword ptr [rcx],zmm0
    vpmovusqw oword ptr [rcx]{k7},zmm0
    vpmovusqw oword ptr [rdx+0x7f0],zmm0
    vpmovusqw oword ptr [rdx+0x800],zmm0
    vpmovusqw oword ptr [rdx-0x800],zmm0
    vpmovusqw oword ptr [rdx-0x810],zmm0

    valignd zmm0,zmm1,zmm2,0xab
    valignd zmm0{k7},zmm1,zmm2,0xab
    valignd zmm0{k7}{z},zmm1,zmm2,0xab
    valignd zmm0,zmm1,zmm2,0x7b
    valignd zmm0,zmm1,zword ptr [rcx],0x7b
    valignd zmm0,zmm1,zword ptr [rax+r14*8+0x123],0x7b
    valignd zmm0,zmm1,dword ptr [rcx]{1to16},0x7b
    valignd zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    valignd zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    valignd zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    valignd zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    valignd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16},0x7b
    valignd zmm0,zmm1,dword ptr [rdx+0x200]{1to16},0x7b
    valignd zmm0,zmm1,dword ptr [rdx-0x200]{1to16},0x7b
    valignd zmm0,zmm1,dword ptr [rdx-0x204]{1to16},0x7b

    vblendmpd zmm0,zmm1,zmm2
    vblendmpd zmm0{k7},zmm1,zmm2
    vblendmpd zmm0{k7}{z},zmm1,zmm2
    vblendmpd zmm0,zmm1,zword ptr [rcx]
    vblendmpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vblendmpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vblendmpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vblendmpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vblendmpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vblendmpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vblendmpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vblendmpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vblendmpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vblendmpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vblendmps zmm0,zmm1,zmm2
    vblendmps zmm0{k7},zmm1,zmm2
    vblendmps zmm0{k7}{z},zmm1,zmm2
    vblendmps zmm0,zmm1,zword ptr [rcx]
    vblendmps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vblendmps zmm0,zmm1,dword ptr [rcx]{1to16}
    vblendmps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vblendmps zmm0,zmm1,zword ptr [rdx+0x2000]
    vblendmps zmm0,zmm1,zword ptr [rdx-0x2000]
    vblendmps zmm0,zmm1,zword ptr [rdx-0x2040]
    vblendmps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vblendmps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vblendmps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vblendmps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vbroadcastsd ymm0,qword ptr [rax]
    vbroadcastsd zmm0,qword ptr [rcx]
    vbroadcastsd zmm0{k7},qword ptr [rcx]
    vbroadcastsd zmm0{k7}{z},qword ptr [rcx]
    vbroadcastsd zmm0,qword ptr [rdx+0x3f8]
    vbroadcastsd zmm0,qword ptr [rdx+0x400]
    vbroadcastsd zmm0,qword ptr [rdx-0x400]
    vbroadcastsd zmm0,qword ptr [rdx-0x408]
    vbroadcastsd zmm0{k7},xmm1
    vbroadcastsd zmm0{k7}{z},xmm1

    vbroadcastss xmm0,dword ptr [rax]
    vbroadcastss ymm0,dword ptr [rax]
    vbroadcastss zmm0,dword ptr [rcx]
    vbroadcastss zmm0{k7},dword ptr [rcx]
    vbroadcastss zmm0{k7}{z},dword ptr [rcx]
    vbroadcastss zmm0,dword ptr [rdx+0x1fc]
    vbroadcastss zmm0,dword ptr [rdx+0x200]
    vbroadcastss zmm0,dword ptr [rdx-0x200]
    vbroadcastss zmm0,dword ptr [rdx-0x204]
    vbroadcastss zmm0{k7},xmm1
    vbroadcastss zmm0{k7}{z},xmm1

    vcomisd xmm0,xmm1
    vcomisd xmm0,[rax]
    vcomiss xmm0,xmm1
    vcomiss xmm0,[rax]
    vcomisd xmm7,xmm0
    vcomisd xmm0,xmm0
    vcomisd xmm0,[rax]
    vcomisd xmm0,xmm1
    vcomisd xmm0,xmm0
    vcomisd xmm1,xmm1
    vcomisd xmm0,xmm0
    vcomisd xmm0,xmm1
    vcomisd xmm0,qword ptr [rcx]
    vcomisd xmm0,qword ptr [rdx+0x3f8]
    vcomisd xmm0,qword ptr [rdx+0x400]
    vcomisd xmm0,qword ptr [rdx-0x400]
    vcomisd xmm0,qword ptr [rdx-0x408]

    vcomiss xmm0,xmm1
    vcomiss xmm0,dword ptr [rcx]
    vcomiss xmm0,dword ptr [rax+r14*8+0x123]
    vcomiss xmm0,dword ptr [rdx+0x1fc]
    vcomiss xmm0,dword ptr [rdx+0x200]
    vcomiss xmm0,dword ptr [rdx-0x200]
    vcomiss xmm0,dword ptr [rdx-0x204]

    vcvttpd2dq xmm0,xmm1
    vcvttpd2dq xmm0,oword ptr [rax]
    vcvttpd2dq xmm0,ymm1
    vcvttpd2dq xmm0,yword ptr [rax]
    vcvttpd2dq ymm0{k7},zmm1
    vcvttpd2dq ymm0{k7}{z},zmm1
    vcvttpd2dq ymm0{k7},zmm1,{sae}
    vcvttpd2dq ymm0{k7},zword ptr [rcx]
    vcvttpd2dq ymm0{k7},zword ptr [rax+r14*8+0x123]
    vcvttpd2dq ymm0{k7},qword ptr [rcx]{1to8}
    vcvttpd2dq ymm0{k7},zword ptr [rdx+0x1fc0]
    vcvttpd2dq ymm0{k7},zword ptr [rdx+0x2000]
    vcvttpd2dq ymm0{k7},zword ptr [rdx-0x2000]
    vcvttpd2dq ymm0{k7},zword ptr [rdx-0x2040]
    vcvttpd2dq ymm0{k7},qword ptr [rdx+0x3f8]{1to8}
    vcvttpd2dq ymm0{k7},qword ptr [rdx+0x400]{1to8}
    vcvttpd2dq ymm0{k7},qword ptr [rdx-0x400]{1to8}
    vcvttpd2dq ymm0{k7},qword ptr [rdx-0x408]{1to8}

    vcvttps2dq xmm0,xmm1
    vcvttps2dq xmm0,oword ptr [rax]
    vcvttps2dq ymm0,ymm1
    vcvttps2dq ymm0,yword ptr [rax]
    vcvttps2dq zmm0,zmm1
    vcvttps2dq zmm1{k1}{z},zmm2
    vcvttps2dq zmm0{k7},zmm1
    vcvttps2dq zmm0{k7}{z},zmm1
    vcvttps2dq zmm0,zmm1,{sae}
    vcvttps2dq zmm0,zword ptr [rcx]
    vcvttps2dq zmm0,zword ptr [rax+r14*8+0x123]
    vcvttps2dq zmm0,dword ptr [rcx]{1to16}
    vcvttps2dq zmm0,zword ptr [rdx+0x1fc0]
    vcvttps2dq zmm0,zword ptr [rdx+0x2000]
    vcvttps2dq zmm0,zword ptr [rdx-0x2000]
    vcvttps2dq zmm0,zword ptr [rdx-0x2040]
    vcvttps2dq zmm0,dword ptr [rdx+0x1fc]{1to16}
    vcvttps2dq zmm0,dword ptr [rdx+0x200]{1to16}
    vcvttps2dq zmm0,dword ptr [rdx-0x200]{1to16}
    vcvttps2dq zmm0,dword ptr [rdx-0x204]{1to16}

    vfmadd132pd zmm0,zmm1,zmm2
    vfmadd132pd zmm0{k7},zmm1,zmm2
    vfmadd132pd zmm0{k7}{z},zmm1,zmm2
    vfmadd132pd zmm0,zmm1,zmm2,{rn-sae}
    vfmadd132pd zmm0,zmm1,zmm2,{ru-sae}
    vfmadd132pd zmm0,zmm1,zmm2,{rd-sae}
    vfmadd132pd zmm0,zmm1,zmm2,{rz-sae}
    vfmadd132pd zmm0,zmm1,zword ptr [rcx]
    vfmadd132pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmadd132pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmadd132pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmadd132pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmadd132pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmadd132pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmadd132pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmadd132pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmadd132pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmadd132pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmadd132ps zmm0,zmm1,zmm2
    vfmadd132ps zmm0{k7},zmm1,zmm2
    vfmadd132ps zmm0{k7}{z},zmm1,zmm2
    vfmadd132ps zmm0,zmm1,zmm2,{rn-sae}
    vfmadd132ps zmm0,zmm1,zmm2,{ru-sae}
    vfmadd132ps zmm0,zmm1,zmm2,{rd-sae}
    vfmadd132ps zmm0,zmm1,zmm2,{rz-sae}
    vfmadd132ps zmm0,zmm1,zword ptr [rcx]
    vfmadd132ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmadd132ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmadd132ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmadd132ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmadd132ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmadd132ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmadd132ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmadd132ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmadd132ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmadd132ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmadd132sd xmm0{k7},xmm1,xmm2
    vfmadd132sd xmm0{k7}{z},xmm1,xmm2
    vfmadd132sd xmm0{k7},xmm1,qword ptr [rcx]
    vfmadd132sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfmadd132sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfmadd132sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfmadd132sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfmadd132ss xmm0{k7},xmm1,xmm2
    vfmadd132ss xmm0{k7}{z},xmm1,xmm2
    vfmadd132ss xmm0{k7},xmm1,dword ptr [rcx]
    vfmadd132ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfmadd132ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfmadd132ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfmadd132ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfmadd213pd zmm0,zmm1,zmm2
    vfmadd213pd zmm0{k7},zmm1,zmm2
    vfmadd213pd zmm0{k7}{z},zmm1,zmm2
    vfmadd213pd zmm0,zmm1,zmm2,{rn-sae}
    vfmadd213pd zmm0,zmm1,zmm2,{ru-sae}
    vfmadd213pd zmm0,zmm1,zmm2,{rd-sae}
    vfmadd213pd zmm0,zmm1,zmm2,{rz-sae}
    vfmadd213pd zmm0,zmm1,zword ptr [rcx]
    vfmadd213pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmadd213pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmadd213pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmadd213pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmadd213pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmadd213pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmadd213pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmadd213pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmadd213pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmadd213pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmadd213ps zmm0,zmm1,zmm2
    vfmadd213ps zmm0{k7},zmm1,zmm2
    vfmadd213ps zmm0{k7}{z},zmm1,zmm2
    vfmadd213ps zmm0,zmm1,zmm2,{rn-sae}
    vfmadd213ps zmm0,zmm1,zmm2,{ru-sae}
    vfmadd213ps zmm0,zmm1,zmm2,{rd-sae}
    vfmadd213ps zmm0,zmm1,zmm2,{rz-sae}
    vfmadd213ps zmm0,zmm1,zword ptr [rcx]
    vfmadd213ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmadd213ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmadd213ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmadd213ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmadd213ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmadd213ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmadd213ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmadd213ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmadd213ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmadd213ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmadd213sd xmm0{k7},xmm1,xmm2
    vfmadd213sd xmm0{k7}{z},xmm1,xmm2
    vfmadd213sd xmm0{k7},xmm1,qword ptr [rcx]
    vfmadd213sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfmadd213sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfmadd213sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfmadd213sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfmadd213ss xmm0{k7},xmm1,xmm2
    vfmadd213ss xmm0{k7}{z},xmm1,xmm2
    vfmadd213ss xmm0{k7},xmm1,dword ptr [rcx]
    vfmadd213ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfmadd213ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfmadd213ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfmadd213ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfmadd231pd zmm0,zmm1,zmm2
    vfmadd231pd zmm0{k7},zmm1,zmm2
    vfmadd231pd zmm0{k7}{z},zmm1,zmm2
    vfmadd231pd zmm0,zmm1,zmm2,{rn-sae}
    vfmadd231pd zmm0,zmm1,zmm2,{ru-sae}
    vfmadd231pd zmm0,zmm1,zmm2,{rd-sae}
    vfmadd231pd zmm0,zmm1,zmm2,{rz-sae}
    vfmadd231pd zmm0,zmm1,zword ptr [rcx]
    vfmadd231pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmadd231pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmadd231pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmadd231pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmadd231pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmadd231pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmadd231pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmadd231pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmadd231pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmadd231pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmadd231ps zmm0,zmm1,zmm2
    vfmadd231ps zmm0{k7},zmm1,zmm2
    vfmadd231ps zmm0{k7}{z},zmm1,zmm2
    vfmadd231ps zmm0,zmm1,zmm2,{rn-sae}
    vfmadd231ps zmm0,zmm1,zmm2,{ru-sae}
    vfmadd231ps zmm0,zmm1,zmm2,{rd-sae}
    vfmadd231ps zmm0,zmm1,zmm2,{rz-sae}
    vfmadd231ps zmm0,zmm1,zword ptr [rcx]
    vfmadd231ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmadd231ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmadd231ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmadd231ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmadd231ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmadd231ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmadd231ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmadd231ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmadd231ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmadd231ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmadd231sd xmm0{k7},xmm1,xmm2
    vfmadd231sd xmm0{k7}{z},xmm1,xmm2
    vfmadd231sd xmm0{k7},xmm1,qword ptr [rcx]
    vfmadd231sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfmadd231sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfmadd231sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfmadd231sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfmadd231ss xmm0{k7},xmm1,xmm2
    vfmadd231ss xmm0{k7}{z},xmm1,xmm2
    vfmadd231ss xmm0{k7},xmm1,dword ptr [rcx]
    vfmadd231ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfmadd231ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfmadd231ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfmadd231ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfmaddsub132pd zmm0,zmm1,zmm2
    vfmaddsub132pd zmm0{k7},zmm1,zmm2
    vfmaddsub132pd zmm0{k7}{z},zmm1,zmm2
    vfmaddsub132pd zmm0,zmm1,zmm2,{rn-sae}
    vfmaddsub132pd zmm0,zmm1,zmm2,{ru-sae}
    vfmaddsub132pd zmm0,zmm1,zmm2,{rd-sae}
    vfmaddsub132pd zmm0,zmm1,zmm2,{rz-sae}
    vfmaddsub132pd zmm0,zmm1,zword ptr [rcx]
    vfmaddsub132pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmaddsub132pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmaddsub132pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmaddsub132pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmaddsub132pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmaddsub132pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmaddsub132pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmaddsub132pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmaddsub132pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmaddsub132pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmaddsub132ps zmm0,zmm1,zmm2
    vfmaddsub132ps zmm0{k7},zmm1,zmm2
    vfmaddsub132ps zmm0{k7}{z},zmm1,zmm2
    vfmaddsub132ps zmm0,zmm1,zmm2,{rn-sae}
    vfmaddsub132ps zmm0,zmm1,zmm2,{ru-sae}
    vfmaddsub132ps zmm0,zmm1,zmm2,{rd-sae}
    vfmaddsub132ps zmm0,zmm1,zmm2,{rz-sae}
    vfmaddsub132ps zmm0,zmm1,zword ptr [rcx]
    vfmaddsub132ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmaddsub132ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmaddsub132ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmaddsub132ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmaddsub132ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmaddsub132ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmaddsub132ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmaddsub132ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmaddsub132ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmaddsub132ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmaddsub213pd zmm0,zmm1,zmm2
    vfmaddsub213pd zmm0{k7},zmm1,zmm2
    vfmaddsub213pd zmm0{k7}{z},zmm1,zmm2
    vfmaddsub213pd zmm0,zmm1,zmm2,{rn-sae}
    vfmaddsub213pd zmm0,zmm1,zmm2,{ru-sae}
    vfmaddsub213pd zmm0,zmm1,zmm2,{rd-sae}
    vfmaddsub213pd zmm0,zmm1,zmm2,{rz-sae}
    vfmaddsub213pd zmm0,zmm1,zword ptr [rcx]
    vfmaddsub213pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmaddsub213pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmaddsub213pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmaddsub213pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmaddsub213pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmaddsub213pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmaddsub213pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmaddsub213pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmaddsub213pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmaddsub213pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmaddsub213ps zmm0,zmm1,zmm2
    vfmaddsub213ps zmm0{k7},zmm1,zmm2
    vfmaddsub213ps zmm0{k7}{z},zmm1,zmm2
    vfmaddsub213ps zmm0,zmm1,zmm2,{rn-sae}
    vfmaddsub213ps zmm0,zmm1,zmm2,{ru-sae}
    vfmaddsub213ps zmm0,zmm1,zmm2,{rd-sae}
    vfmaddsub213ps zmm0,zmm1,zmm2,{rz-sae}
    vfmaddsub213ps zmm0,zmm1,zword ptr [rcx]
    vfmaddsub213ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmaddsub213ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmaddsub213ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmaddsub213ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmaddsub213ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmaddsub213ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmaddsub213ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmaddsub213ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmaddsub213ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmaddsub213ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmaddsub231pd zmm0,zmm1,zmm2
    vfmaddsub231pd zmm0{k7},zmm1,zmm2
    vfmaddsub231pd zmm0{k7}{z},zmm1,zmm2
    vfmaddsub231pd zmm0,zmm1,zmm2,{rn-sae}
    vfmaddsub231pd zmm0,zmm1,zmm2,{ru-sae}
    vfmaddsub231pd zmm0,zmm1,zmm2,{rd-sae}
    vfmaddsub231pd zmm0,zmm1,zmm2,{rz-sae}
    vfmaddsub231pd zmm0,zmm1,zword ptr [rcx]
    vfmaddsub231pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmaddsub231pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmaddsub231pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmaddsub231pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmaddsub231pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmaddsub231pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmaddsub231pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmaddsub231pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmaddsub231pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmaddsub231pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmaddsub231ps zmm0,zmm1,zmm2
    vfmaddsub231ps zmm0{k7},zmm1,zmm2
    vfmaddsub231ps zmm0{k7}{z},zmm1,zmm2
    vfmaddsub231ps zmm0,zmm1,zmm2,{rn-sae}
    vfmaddsub231ps zmm0,zmm1,zmm2,{ru-sae}
    vfmaddsub231ps zmm0,zmm1,zmm2,{rd-sae}
    vfmaddsub231ps zmm0,zmm1,zmm2,{rz-sae}
    vfmaddsub231ps zmm0,zmm1,zword ptr [rcx]
    vfmaddsub231ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmaddsub231ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmaddsub231ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmaddsub231ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmaddsub231ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmaddsub231ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmaddsub231ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmaddsub231ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmaddsub231ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmaddsub231ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmsub132pd zmm0,zmm1,zmm2
    vfmsub132pd zmm0{k7},zmm1,zmm2
    vfmsub132pd zmm0{k7}{z},zmm1,zmm2
    vfmsub132pd zmm0,zmm1,zmm2,{rn-sae}
    vfmsub132pd zmm0,zmm1,zmm2,{ru-sae}
    vfmsub132pd zmm0,zmm1,zmm2,{rd-sae}
    vfmsub132pd zmm0,zmm1,zmm2,{rz-sae}
    vfmsub132pd zmm0,zmm1,zword ptr [rcx]
    vfmsub132pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsub132pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmsub132pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsub132pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsub132pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsub132pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsub132pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmsub132pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmsub132pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmsub132pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmsub132ps zmm0,zmm1,zmm2
    vfmsub132ps zmm0{k7},zmm1,zmm2
    vfmsub132ps zmm0{k7}{z},zmm1,zmm2
    vfmsub132ps zmm0,zmm1,zmm2,{rn-sae}
    vfmsub132ps zmm0,zmm1,zmm2,{ru-sae}
    vfmsub132ps zmm0,zmm1,zmm2,{rd-sae}
    vfmsub132ps zmm0,zmm1,zmm2,{rz-sae}
    vfmsub132ps zmm0,zmm1,zword ptr [rcx]
    vfmsub132ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsub132ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmsub132ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsub132ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsub132ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsub132ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsub132ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmsub132ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmsub132ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmsub132ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmsub132sd xmm0{k7},xmm1,xmm2
    vfmsub132sd xmm0{k7}{z},xmm1,xmm2
    vfmsub132sd xmm0{k7},xmm1,qword ptr [rcx]
    vfmsub132sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfmsub132sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfmsub132sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfmsub132sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfmsub132ss xmm0{k7},xmm1,xmm2
    vfmsub132ss xmm0{k7}{z},xmm1,xmm2
    vfmsub132ss xmm0{k7},xmm1,dword ptr [rcx]
    vfmsub132ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfmsub132ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfmsub132ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfmsub132ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfmsub213pd zmm0,zmm1,zmm2
    vfmsub213pd zmm0{k7},zmm1,zmm2
    vfmsub213pd zmm0{k7}{z},zmm1,zmm2
    vfmsub213pd zmm0,zmm1,zmm2,{rn-sae}
    vfmsub213pd zmm0,zmm1,zmm2,{ru-sae}
    vfmsub213pd zmm0,zmm1,zmm2,{rd-sae}
    vfmsub213pd zmm0,zmm1,zmm2,{rz-sae}
    vfmsub213pd zmm0,zmm1,zword ptr [rcx]
    vfmsub213pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsub213pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmsub213pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsub213pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsub213pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsub213pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsub213pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmsub213pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmsub213pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmsub213pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmsub213ps zmm0,zmm1,zmm2
    vfmsub213ps zmm0{k7},zmm1,zmm2
    vfmsub213ps zmm0{k7}{z},zmm1,zmm2
    vfmsub213ps zmm0,zmm1,zmm2,{rn-sae}
    vfmsub213ps zmm0,zmm1,zmm2,{ru-sae}
    vfmsub213ps zmm0,zmm1,zmm2,{rd-sae}
    vfmsub213ps zmm0,zmm1,zmm2,{rz-sae}
    vfmsub213ps zmm0,zmm1,zword ptr [rcx]
    vfmsub213ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsub213ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmsub213ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsub213ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsub213ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsub213ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsub213ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmsub213ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmsub213ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmsub213ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmsub213sd xmm0{k7},xmm1,xmm2
    vfmsub213sd xmm0{k7}{z},xmm1,xmm2
    vfmsub213sd xmm0{k7},xmm1,qword ptr [rcx]
    vfmsub213sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfmsub213sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfmsub213sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfmsub213sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfmsub213ss xmm0{k7},xmm1,xmm2
    vfmsub213ss xmm0{k7}{z},xmm1,xmm2
    vfmsub213ss xmm0{k7},xmm1,dword ptr [rcx]
    vfmsub213ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfmsub213ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfmsub213ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfmsub213ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfmsub231pd zmm0,zmm1,zmm2
    vfmsub231pd zmm0{k7},zmm1,zmm2
    vfmsub231pd zmm0{k7}{z},zmm1,zmm2
    vfmsub231pd zmm0,zmm1,zmm2,{rn-sae}
    vfmsub231pd zmm0,zmm1,zmm2,{ru-sae}
    vfmsub231pd zmm0,zmm1,zmm2,{rd-sae}
    vfmsub231pd zmm0,zmm1,zmm2,{rz-sae}
    vfmsub231pd zmm0,zmm1,zword ptr [rcx]
    vfmsub231pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsub231pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmsub231pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsub231pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsub231pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsub231pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsub231pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmsub231pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmsub231pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmsub231pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmsub231ps zmm0,zmm1,zmm2
    vfmsub231ps zmm0{k7},zmm1,zmm2
    vfmsub231ps zmm0{k7}{z},zmm1,zmm2
    vfmsub231ps zmm0,zmm1,zmm2,{rn-sae}
    vfmsub231ps zmm0,zmm1,zmm2,{ru-sae}
    vfmsub231ps zmm0,zmm1,zmm2,{rd-sae}
    vfmsub231ps zmm0,zmm1,zmm2,{rz-sae}
    vfmsub231ps zmm0,zmm1,zword ptr [rcx]
    vfmsub231ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsub231ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmsub231ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsub231ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsub231ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsub231ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsub231ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmsub231ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmsub231ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmsub231ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmsub231sd xmm0{k7},xmm1,xmm2
    vfmsub231sd xmm0{k7}{z},xmm1,xmm2
    vfmsub231sd xmm0{k7},xmm1,qword ptr [rcx]
    vfmsub231sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfmsub231sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfmsub231sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfmsub231sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfmsub231ss xmm0{k7},xmm1,xmm2
    vfmsub231ss xmm0{k7}{z},xmm1,xmm2
    vfmsub231ss xmm0{k7},xmm1,dword ptr [rcx]
    vfmsub231ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfmsub231ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfmsub231ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfmsub231ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfmsubadd132pd zmm0,zmm1,zmm2
    vfmsubadd132pd zmm0{k7},zmm1,zmm2
    vfmsubadd132pd zmm0{k7}{z},zmm1,zmm2
    vfmsubadd132pd zmm0,zmm1,zmm2,{rn-sae}
    vfmsubadd132pd zmm0,zmm1,zmm2,{ru-sae}
    vfmsubadd132pd zmm0,zmm1,zmm2,{rd-sae}
    vfmsubadd132pd zmm0,zmm1,zmm2,{rz-sae}
    vfmsubadd132pd zmm0,zmm1,zword ptr [rcx]
    vfmsubadd132pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsubadd132pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmsubadd132pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsubadd132pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsubadd132pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsubadd132pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsubadd132pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmsubadd132pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmsubadd132pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmsubadd132pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmsubadd132ps zmm0,zmm1,zmm2
    vfmsubadd132ps zmm0{k7},zmm1,zmm2
    vfmsubadd132ps zmm0{k7}{z},zmm1,zmm2
    vfmsubadd132ps zmm0,zmm1,zmm2,{rn-sae}
    vfmsubadd132ps zmm0,zmm1,zmm2,{ru-sae}
    vfmsubadd132ps zmm0,zmm1,zmm2,{rd-sae}
    vfmsubadd132ps zmm0,zmm1,zmm2,{rz-sae}
    vfmsubadd132ps zmm0,zmm1,zword ptr [rcx]
    vfmsubadd132ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsubadd132ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmsubadd132ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsubadd132ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsubadd132ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsubadd132ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsubadd132ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmsubadd132ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmsubadd132ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmsubadd132ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmsubadd213pd zmm0,zmm1,zmm2
    vfmsubadd213pd zmm0{k7},zmm1,zmm2
    vfmsubadd213pd zmm0{k7}{z},zmm1,zmm2
    vfmsubadd213pd zmm0,zmm1,zmm2,{rn-sae}
    vfmsubadd213pd zmm0,zmm1,zmm2,{ru-sae}
    vfmsubadd213pd zmm0,zmm1,zmm2,{rd-sae}
    vfmsubadd213pd zmm0,zmm1,zmm2,{rz-sae}
    vfmsubadd213pd zmm0,zmm1,zword ptr [rcx]
    vfmsubadd213pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsubadd213pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmsubadd213pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsubadd213pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsubadd213pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsubadd213pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsubadd213pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmsubadd213pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmsubadd213pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmsubadd213pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmsubadd213ps zmm0,zmm1,zmm2
    vfmsubadd213ps zmm0{k7},zmm1,zmm2
    vfmsubadd213ps zmm0{k7}{z},zmm1,zmm2
    vfmsubadd213ps zmm0,zmm1,zmm2,{rn-sae}
    vfmsubadd213ps zmm0,zmm1,zmm2,{ru-sae}
    vfmsubadd213ps zmm0,zmm1,zmm2,{rd-sae}
    vfmsubadd213ps zmm0,zmm1,zmm2,{rz-sae}
    vfmsubadd213ps zmm0,zmm1,zword ptr [rcx]
    vfmsubadd213ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsubadd213ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmsubadd213ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsubadd213ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsubadd213ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsubadd213ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsubadd213ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmsubadd213ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmsubadd213ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmsubadd213ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfmsubadd231pd zmm0,zmm1,zmm2
    vfmsubadd231pd zmm0{k7},zmm1,zmm2
    vfmsubadd231pd zmm0{k7}{z},zmm1,zmm2
    vfmsubadd231pd zmm0,zmm1,zmm2,{rn-sae}
    vfmsubadd231pd zmm0,zmm1,zmm2,{ru-sae}
    vfmsubadd231pd zmm0,zmm1,zmm2,{rd-sae}
    vfmsubadd231pd zmm0,zmm1,zmm2,{rz-sae}
    vfmsubadd231pd zmm0,zmm1,zword ptr [rcx]
    vfmsubadd231pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsubadd231pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfmsubadd231pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsubadd231pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsubadd231pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsubadd231pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsubadd231pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfmsubadd231pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfmsubadd231pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfmsubadd231pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfmsubadd231ps zmm0,zmm1,zmm2
    vfmsubadd231ps zmm0{k7},zmm1,zmm2
    vfmsubadd231ps zmm0{k7}{z},zmm1,zmm2
    vfmsubadd231ps zmm0,zmm1,zmm2,{rn-sae}
    vfmsubadd231ps zmm0,zmm1,zmm2,{ru-sae}
    vfmsubadd231ps zmm0,zmm1,zmm2,{rd-sae}
    vfmsubadd231ps zmm0,zmm1,zmm2,{rz-sae}
    vfmsubadd231ps zmm0,zmm1,zword ptr [rcx]
    vfmsubadd231ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfmsubadd231ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfmsubadd231ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfmsubadd231ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfmsubadd231ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfmsubadd231ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfmsubadd231ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfmsubadd231ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfmsubadd231ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfmsubadd231ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmadd132pd zmm0,zmm1,zmm2
    vfnmadd132pd zmm0{k7},zmm1,zmm2
    vfnmadd132pd zmm0{k7}{z},zmm1,zmm2
    vfnmadd132pd zmm0,zmm1,zmm2,{rn-sae}
    vfnmadd132pd zmm0,zmm1,zmm2,{ru-sae}
    vfnmadd132pd zmm0,zmm1,zmm2,{rd-sae}
    vfnmadd132pd zmm0,zmm1,zmm2,{rz-sae}
    vfnmadd132pd zmm0,zmm1,zword ptr [rcx]
    vfnmadd132pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmadd132pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfnmadd132pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmadd132pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmadd132pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmadd132pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmadd132pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfnmadd132pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfnmadd132pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfnmadd132pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfnmadd132ps zmm0,zmm1,zmm2
    vfnmadd132ps zmm0{k7},zmm1,zmm2
    vfnmadd132ps zmm0{k7}{z},zmm1,zmm2
    vfnmadd132ps zmm0,zmm1,zmm2,{rn-sae}
    vfnmadd132ps zmm0,zmm1,zmm2,{ru-sae}
    vfnmadd132ps zmm0,zmm1,zmm2,{rd-sae}
    vfnmadd132ps zmm0,zmm1,zmm2,{rz-sae}
    vfnmadd132ps zmm0,zmm1,zword ptr [rcx]
    vfnmadd132ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmadd132ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfnmadd132ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmadd132ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmadd132ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmadd132ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmadd132ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfnmadd132ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfnmadd132ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfnmadd132ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmadd132sd xmm0{k7},xmm1,xmm2
    vfnmadd132sd xmm0{k7}{z},xmm1,xmm2
    vfnmadd132sd xmm0{k7},xmm1,qword ptr [rcx]
    vfnmadd132sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfnmadd132sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfnmadd132sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfnmadd132sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfnmadd132ss xmm0{k7},xmm1,xmm2
    vfnmadd132ss xmm0{k7}{z},xmm1,xmm2
    vfnmadd132ss xmm0{k7},xmm1,dword ptr [rcx]
    vfnmadd132ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfnmadd132ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfnmadd132ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfnmadd132ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfnmadd213pd zmm0,zmm1,zmm2
    vfnmadd213pd zmm0{k7},zmm1,zmm2
    vfnmadd213pd zmm0{k7}{z},zmm1,zmm2
    vfnmadd213pd zmm0,zmm1,zmm2,{rn-sae}
    vfnmadd213pd zmm0,zmm1,zmm2,{ru-sae}
    vfnmadd213pd zmm0,zmm1,zmm2,{rd-sae}
    vfnmadd213pd zmm0,zmm1,zmm2,{rz-sae}
    vfnmadd213pd zmm0,zmm1,zword ptr [rcx]
    vfnmadd213pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmadd213pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfnmadd213pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmadd213pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmadd213pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmadd213pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmadd213pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfnmadd213pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfnmadd213pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfnmadd213pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfnmadd213ps zmm0,zmm1,zmm2
    vfnmadd213ps zmm0{k7},zmm1,zmm2
    vfnmadd213ps zmm0{k7}{z},zmm1,zmm2
    vfnmadd213ps zmm0,zmm1,zmm2,{rn-sae}
    vfnmadd213ps zmm0,zmm1,zmm2,{ru-sae}
    vfnmadd213ps zmm0,zmm1,zmm2,{rd-sae}
    vfnmadd213ps zmm0,zmm1,zmm2,{rz-sae}
    vfnmadd213ps zmm0,zmm1,zword ptr [rcx]
    vfnmadd213ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmadd213ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfnmadd213ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmadd213ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmadd213ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmadd213ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmadd213ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfnmadd213ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfnmadd213ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfnmadd213ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmadd213sd xmm0{k7},xmm1,xmm2
    vfnmadd213sd xmm0{k7}{z},xmm1,xmm2
    vfnmadd213sd xmm0{k7},xmm1,qword ptr [rcx]
    vfnmadd213sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfnmadd213sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfnmadd213sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfnmadd213sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfnmadd213ss xmm0{k7},xmm1,xmm2
    vfnmadd213ss xmm0{k7}{z},xmm1,xmm2
    vfnmadd213ss xmm0{k7},xmm1,dword ptr [rcx]
    vfnmadd213ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfnmadd213ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfnmadd213ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfnmadd213ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfnmadd231pd zmm0,zmm1,zmm2
    vfnmadd231pd zmm0{k7},zmm1,zmm2
    vfnmadd231pd zmm0{k7}{z},zmm1,zmm2
    vfnmadd231pd zmm0,zmm1,zmm2,{rn-sae}
    vfnmadd231pd zmm0,zmm1,zmm2,{ru-sae}
    vfnmadd231pd zmm0,zmm1,zmm2,{rd-sae}
    vfnmadd231pd zmm0,zmm1,zmm2,{rz-sae}
    vfnmadd231pd zmm0,zmm1,zword ptr [rcx]
    vfnmadd231pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmadd231pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfnmadd231pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmadd231pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmadd231pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmadd231pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmadd231pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfnmadd231pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfnmadd231pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfnmadd231pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfnmadd231ps zmm0,zmm1,zmm2
    vfnmadd231ps zmm0{k7},zmm1,zmm2
    vfnmadd231ps zmm0{k7}{z},zmm1,zmm2
    vfnmadd231ps zmm0,zmm1,zmm2,{rn-sae}
    vfnmadd231ps zmm0,zmm1,zmm2,{ru-sae}
    vfnmadd231ps zmm0,zmm1,zmm2,{rd-sae}
    vfnmadd231ps zmm0,zmm1,zmm2,{rz-sae}
    vfnmadd231ps zmm0,zmm1,zword ptr [rcx]
    vfnmadd231ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmadd231ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfnmadd231ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmadd231ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmadd231ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmadd231ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmadd231ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfnmadd231ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfnmadd231ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfnmadd231ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmadd231sd xmm0{k7},xmm1,xmm2
    vfnmadd231sd xmm0{k7}{z},xmm1,xmm2
    vfnmadd231sd xmm0{k7},xmm1,qword ptr [rcx]
    vfnmadd231sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfnmadd231sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfnmadd231sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfnmadd231sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfnmadd231ss xmm0{k7},xmm1,xmm2
    vfnmadd231ss xmm0{k7}{z},xmm1,xmm2
    vfnmadd231ss xmm0{k7},xmm1,dword ptr [rcx]
    vfnmadd231ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfnmadd231ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfnmadd231ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfnmadd231ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfnmsub132pd zmm0,zmm1,zmm2
    vfnmsub132pd zmm0{k7},zmm1,zmm2
    vfnmsub132pd zmm0{k7}{z},zmm1,zmm2
    vfnmsub132pd zmm0,zmm1,zmm2,{rn-sae}
    vfnmsub132pd zmm0,zmm1,zmm2,{ru-sae}
    vfnmsub132pd zmm0,zmm1,zmm2,{rd-sae}
    vfnmsub132pd zmm0,zmm1,zmm2,{rz-sae}
    vfnmsub132pd zmm0,zmm1,zword ptr [rcx]
    vfnmsub132pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmsub132pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfnmsub132pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmsub132pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmsub132pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmsub132pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmsub132pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfnmsub132pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfnmsub132pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfnmsub132pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfnmsub132ps zmm0,zmm1,zmm2
    vfnmsub132ps zmm0{k7},zmm1,zmm2
    vfnmsub132ps zmm0{k7}{z},zmm1,zmm2
    vfnmsub132ps zmm0,zmm1,zmm2,{rn-sae}
    vfnmsub132ps zmm0,zmm1,zmm2,{ru-sae}
    vfnmsub132ps zmm0,zmm1,zmm2,{rd-sae}
    vfnmsub132ps zmm0,zmm1,zmm2,{rz-sae}
    vfnmsub132ps zmm0,zmm1,zword ptr [rcx]
    vfnmsub132ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmsub132ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfnmsub132ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmsub132ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmsub132ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmsub132ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmsub132ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfnmsub132ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfnmsub132ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfnmsub132ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmsub132sd xmm0{k7},xmm1,xmm2
    vfnmsub132sd xmm0{k7}{z},xmm1,xmm2
    vfnmsub132sd xmm0{k7},xmm1,qword ptr [rcx]
    vfnmsub132sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfnmsub132sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfnmsub132sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfnmsub132sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfnmsub132ss xmm0{k7},xmm1,xmm2
    vfnmsub132ss xmm0{k7}{z},xmm1,xmm2
    vfnmsub132ss xmm0{k7},xmm1,dword ptr [rcx]
    vfnmsub132ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfnmsub132ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfnmsub132ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfnmsub132ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfnmsub213pd zmm0,zmm1,zmm2
    vfnmsub213pd zmm0{k7},zmm1,zmm2
    vfnmsub213pd zmm0{k7}{z},zmm1,zmm2
    vfnmsub213pd zmm0,zmm1,zmm2,{rn-sae}
    vfnmsub213pd zmm0,zmm1,zmm2,{ru-sae}
    vfnmsub213pd zmm0,zmm1,zmm2,{rd-sae}
    vfnmsub213pd zmm0,zmm1,zmm2,{rz-sae}
    vfnmsub213pd zmm0,zmm1,zword ptr [rcx]
    vfnmsub213pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmsub213pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfnmsub213pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmsub213pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmsub213pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmsub213pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmsub213pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfnmsub213pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfnmsub213pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfnmsub213pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfnmsub213ps zmm0,zmm1,zmm2
    vfnmsub213ps zmm0{k7},zmm1,zmm2
    vfnmsub213ps zmm0{k7}{z},zmm1,zmm2
    vfnmsub213ps zmm0,zmm1,zmm2,{rn-sae}
    vfnmsub213ps zmm0,zmm1,zmm2,{ru-sae}
    vfnmsub213ps zmm0,zmm1,zmm2,{rd-sae}
    vfnmsub213ps zmm0,zmm1,zmm2,{rz-sae}
    vfnmsub213ps zmm0,zmm1,zword ptr [rcx]
    vfnmsub213ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmsub213ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfnmsub213ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmsub213ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmsub213ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmsub213ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmsub213ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfnmsub213ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfnmsub213ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfnmsub213ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmsub213sd xmm0{k7},xmm1,xmm2
    vfnmsub213sd xmm0{k7}{z},xmm1,xmm2
    vfnmsub213sd xmm0{k7},xmm1,qword ptr [rcx]
    vfnmsub213sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfnmsub213sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfnmsub213sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfnmsub213sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfnmsub213ss xmm0{k7},xmm1,xmm2
    vfnmsub213ss xmm0{k7}{z},xmm1,xmm2
    vfnmsub213ss xmm0{k7},xmm1,dword ptr [rcx]
    vfnmsub213ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfnmsub213ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfnmsub213ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfnmsub213ss xmm0{k7},xmm1,dword ptr [rdx-0x204]
    vfnmsub231pd zmm0,zmm1,zmm2
    vfnmsub231pd zmm0{k7},zmm1,zmm2
    vfnmsub231pd zmm0{k7}{z},zmm1,zmm2
    vfnmsub231pd zmm0,zmm1,zmm2,{rn-sae}
    vfnmsub231pd zmm0,zmm1,zmm2,{ru-sae}
    vfnmsub231pd zmm0,zmm1,zmm2,{rd-sae}
    vfnmsub231pd zmm0,zmm1,zmm2,{rz-sae}
    vfnmsub231pd zmm0,zmm1,zword ptr [rcx]
    vfnmsub231pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmsub231pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vfnmsub231pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmsub231pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmsub231pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmsub231pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmsub231pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vfnmsub231pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vfnmsub231pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vfnmsub231pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}
    vfnmsub231ps zmm0,zmm1,zmm2
    vfnmsub231ps zmm0{k7},zmm1,zmm2
    vfnmsub231ps zmm0{k7}{z},zmm1,zmm2
    vfnmsub231ps zmm0,zmm1,zmm2,{rn-sae}
    vfnmsub231ps zmm0,zmm1,zmm2,{ru-sae}
    vfnmsub231ps zmm0,zmm1,zmm2,{rd-sae}
    vfnmsub231ps zmm0,zmm1,zmm2,{rz-sae}
    vfnmsub231ps zmm0,zmm1,zword ptr [rcx]
    vfnmsub231ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vfnmsub231ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vfnmsub231ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vfnmsub231ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vfnmsub231ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vfnmsub231ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vfnmsub231ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vfnmsub231ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vfnmsub231ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vfnmsub231ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vfnmsub231sd xmm0{k7},xmm1,xmm2
    vfnmsub231sd xmm0{k7}{z},xmm1,xmm2
    vfnmsub231sd xmm0{k7},xmm1,qword ptr [rcx]
    vfnmsub231sd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vfnmsub231sd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vfnmsub231sd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vfnmsub231sd xmm0{k7},xmm1,qword ptr [rdx-0x408]
    vfnmsub231ss xmm0{k7},xmm1,xmm2
    vfnmsub231ss xmm0{k7}{z},xmm1,xmm2
    vfnmsub231ss xmm0{k7},xmm1,dword ptr [rcx]
    vfnmsub231ss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vfnmsub231ss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vfnmsub231ss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vfnmsub231ss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vgetmantpd zmm0,zmm1,0xab
    vgetmantpd zmm0{k7},zmm1,0xab
    vgetmantpd zmm0{k7}{z},zmm1,0xab
    vgetmantpd zmm0,zmm1,0x7b
    vgetmantpd zmm0,zword ptr [rcx],0x7b
    vgetmantpd zmm0,zword ptr [rdx+0x1fc0],0x7b
    vgetmantpd zmm0,zword ptr [rdx+0x2000],0x7b
    vgetmantpd zmm0,zword ptr [rdx-0x2000],0x7b
    vgetmantpd zmm0,zword ptr [rdx-0x2040],0x7b
    vgetmantps zmm0,zmm1,0xab
    vgetmantps zmm0{k7},zmm1,0xab
    vgetmantps zmm0{k7}{z},zmm1,0xab
    vgetmantps zmm0,zmm1,0x7b
    vgetmantps zmm0,zword ptr [rcx],0x7b
    vgetmantps zmm0,zword ptr [rdx+0x1fc0],0x7b
    vgetmantps zmm0,zword ptr [rdx+0x2000],0x7b
    vgetmantps zmm0,zword ptr [rdx-0x2000],0x7b
    vgetmantps zmm0,zword ptr [rdx-0x2040],0x7b
    vgetmantsd xmm0{k7},xmm1,xmm2,0xab
    vgetmantsd xmm0{k7}{z},xmm1,xmm2,0xab
    vgetmantsd xmm0{k7},xmm1,xmm2,0x7b
    vgetmantsd xmm0{k7},xmm1,qword ptr [rcx],0x7b
    vgetmantsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8],0x7b
    vgetmantsd xmm0{k7},xmm1,qword ptr [rdx+0x400],0x7b
    vgetmantsd xmm0{k7},xmm1,qword ptr [rdx-0x400],0x7b
    vgetmantsd xmm0{k7},xmm1,qword ptr [rdx-0x408],0x7b
    vgetmantss xmm0{k7},xmm1,xmm2,0xab
    vgetmantss xmm0{k7}{z},xmm1,xmm2,0xab
    vgetmantss xmm0{k7},xmm1,xmm2,0x7b
    vgetmantss xmm0{k7},xmm1,dword ptr [rcx],0x7b
    vgetmantss xmm0{k7},xmm1,dword ptr [rdx+0x1fc],0x7b
    vgetmantss xmm0{k7},xmm1,dword ptr [rdx+0x200],0x7b
    vgetmantss xmm0{k7},xmm1,dword ptr [rdx-0x200],0x7b
    vgetmantss xmm0{k7},xmm1,dword ptr [rdx-0x204],0x7b

    vinsertf32x4 zmm0{k7},zmm1,xmm2,0xab
    vinsertf32x4 zmm0{k7}{z},zmm1,xmm2,0xab
    vinsertf32x4 zmm0{k7},zmm1,xmm2,0x7b
    vinsertf32x4 zmm0{k7},zmm1,oword ptr [rcx],0x7b
    vinsertf32x4 zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123],0x7b
    vinsertf32x4 zmm0{k7},zmm1,oword ptr [rdx+0x7f0],0x7b
    vinsertf32x4 zmm0{k7},zmm1,oword ptr [rdx+0x800],0x7b
    vinsertf32x4 zmm0{k7},zmm1,oword ptr [rdx-0x800],0x7b
    vinsertf32x4 zmm0{k7},zmm1,oword ptr [rdx-0x810],0x7b
    vinsertf64x4 zmm0{k7},zmm1,ymm2,0xab
    vinsertf64x4 zmm0{k7}{z},zmm1,ymm2,0xab
    vinsertf64x4 zmm0{k7},zmm1,ymm2,0x7b
    vinsertf64x4 zmm0{k7},zmm1,yword ptr [rcx],0x7b
    vinsertf64x4 zmm0{k7},zmm1,yword ptr [rax+r14*8+0x123],0x7b
    vinsertf64x4 zmm0{k7},zmm1,yword ptr [rdx+0xfe0],0x7b
    vinsertf64x4 zmm0{k7},zmm1,yword ptr [rdx+0x1000],0x7b
    vinsertf64x4 zmm0{k7},zmm1,yword ptr [rdx-0x1000],0x7b
    vinsertf64x4 zmm0{k7},zmm1,yword ptr [rdx-0x1020],0x7b
    vinserti32x4 zmm0{k7},zmm1,xmm2,0xab
    vinserti32x4 zmm0{k7}{z},zmm1,xmm2,0xab
    vinserti32x4 zmm0{k7},zmm1,xmm2,0x7b
    vinserti32x4 zmm0{k7},zmm1,oword ptr [rcx],0x7b
    vinserti32x4 zmm0{k7},zmm1,oword ptr [rax+r14*8+0x123],0x7b
    vinserti32x4 zmm0{k7},zmm1,oword ptr [rdx+0x7f0],0x7b
    vinserti32x4 zmm0{k7},zmm1,oword ptr [rdx+0x800],0x7b
    vinserti32x4 zmm0{k7},zmm1,oword ptr [rdx-0x800],0x7b
    vinserti32x4 zmm0{k7},zmm1,oword ptr [rdx-0x810],0x7b
    vinserti64x4 zmm0{k7},zmm1,ymm2,0xab
    vinserti64x4 zmm0{k7}{z},zmm1,ymm2,0xab
    vinserti64x4 zmm0{k7},zmm1,ymm2,0x7b
    vinserti64x4 zmm0{k7},zmm1,yword ptr [rcx],0x7b
    vinserti64x4 zmm0{k7},zmm1,yword ptr [rax+r14*8+0x123],0x7b
    vinserti64x4 zmm0{k7},zmm1,yword ptr [rdx+0xfe0],0x7b
    vinserti64x4 zmm0{k7},zmm1,yword ptr [rdx+0x1000],0x7b
    vinserti64x4 zmm0{k7},zmm1,yword ptr [rdx-0x1000],0x7b
    vinserti64x4 zmm0{k7},zmm1,yword ptr [rdx-0x1020],0x7b

    vmovddup xmm0,xmm1
    vmovddup xmm0,qword ptr [rax]
    vmovddup ymm0,ymm1
    vmovddup ymm0,yword ptr [rax]
    vmovddup zmm0,zmm1
    vmovddup zmm0{k7},zmm1
    vmovddup zmm0{k7}{z},zmm1
    vmovddup zmm0,zword ptr [rcx]
    vmovddup zmm0,zword ptr [rax+r14*8+0x123]
    vmovddup zmm0,zword ptr [rdx+0x1fc0]
    vmovddup zmm0,zword ptr [rdx+0x2000]
    vmovddup zmm0,zword ptr [rdx-0x2000]
    vmovddup zmm0,zword ptr [rdx-0x2040]

    vmovhpd xmm0,xmm1,qword ptr [rax]
    vmovhpd xmm1,xmm0,qword ptr [rcx]
    vmovhpd xmm1,xmm0,qword ptr [rdx+0x3f8]
    vmovhpd xmm1,xmm0,qword ptr [rdx+0x400]
    vmovhpd xmm1,xmm0,qword ptr [rdx-0x400]
    vmovhpd xmm1,xmm0,qword ptr [rdx-0x408]
    vmovhpd qword ptr [rax],xmm1
    vmovhpd qword ptr [rcx],xmm0
    vmovhpd qword ptr [rdx+0x3f8],xmm0
    vmovhpd qword ptr [rdx+0x400],xmm0
    vmovhpd qword ptr [rdx-0x400],xmm0
    vmovhpd qword ptr [rdx-0x408],xmm0

    vmovhps xmm0,xmm1,qword ptr [rax]
    vmovhps xmm1,xmm0,qword ptr [rcx]
    vmovhps xmm1,xmm0,qword ptr [rdx+0x3f8]
    vmovhps xmm1,xmm0,qword ptr [rdx+0x400]
    vmovhps xmm1,xmm0,qword ptr [rdx-0x400]
    vmovhps xmm1,xmm0,qword ptr [rdx-0x408]
    vmovhps qword ptr [rax],xmm1
    vmovhps qword ptr [rcx],xmm0
    vmovhps qword ptr [rax+r14*8+0x123],xmm0
    vmovhps qword ptr [rdx+0x3f8],xmm0
    vmovhps qword ptr [rdx+0x400],xmm0
    vmovhps qword ptr [rdx-0x400],xmm0
    vmovhps qword ptr [rdx-0x408],xmm0

    vmovlpd xmm0,xmm1,qword ptr [rax]
    vmovlpd xmm1,xmm0,qword ptr [rcx]
    vmovlpd xmm1,xmm0,qword ptr [rdx+0x3f8]
    vmovlpd xmm1,xmm0,qword ptr [rdx+0x400]
    vmovlpd xmm1,xmm0,qword ptr [rdx-0x400]
    vmovlpd xmm1,xmm0,qword ptr [rdx-0x408]
    vmovlpd qword ptr [rax],xmm1
    vmovlpd qword ptr [rcx],xmm0
    vmovlpd qword ptr [rdx+0x3f8],xmm0
    vmovlpd qword ptr [rdx+0x400],xmm0
    vmovlpd qword ptr [rdx-0x400],xmm0
    vmovlpd qword ptr [rdx-0x408],xmm0

    vmovlps xmm0,xmm1,qword ptr [rax]
    vmovlps xmm1,xmm0,qword ptr [rcx]
    vmovlps xmm1,xmm0,qword ptr [rax+r14*8+0x123]
    vmovlps xmm1,xmm0,qword ptr [rdx+0x3f8]
    vmovlps xmm1,xmm0,qword ptr [rdx+0x400]
    vmovlps xmm1,xmm0,qword ptr [rdx-0x400]
    vmovlps xmm1,xmm0,qword ptr [rdx-0x408]
    vmovlps qword ptr [rax],xmm1
    vmovlps qword ptr [rcx],xmm0
    vmovlps qword ptr [rax+r14*8+0x123],xmm0
    vmovlps qword ptr [rdx+0x3f8],xmm0
    vmovlps qword ptr [rdx+0x400],xmm0
    vmovlps qword ptr [rdx-0x400],xmm0
    vmovlps qword ptr [rdx-0x408],xmm0

    vpabsq zmm0,zmm1
    vpabsq zmm0{k7},zmm1
    vpabsq zmm0{k7}{z},zmm1
    vpabsq zmm0,zword ptr [rcx]
    vpabsq zmm0,zword ptr [rax+r14*8+0x123]
    vpabsq zmm0,qword ptr [rcx]{1to8}
    vpabsq zmm0,zword ptr [rdx+0x1fc0]
    vpabsq zmm0,zword ptr [rdx+0x2000]
    vpabsq zmm0,zword ptr [rdx-0x2000]
    vpabsq zmm0,zword ptr [rdx-0x2040]
    vpabsq zmm0,qword ptr [rdx+0x3f8]{1to8}
    vpabsq zmm0,qword ptr [rdx+0x400]{1to8}
    vpabsq zmm0,qword ptr [rdx-0x400]{1to8}
    vpabsq zmm0,qword ptr [rdx-0x408]{1to8}

    vpblendmd zmm0,zmm1,zmm2
    vpblendmd zmm0{k7},zmm1,zmm2
    vpblendmd zmm0{k7}{z},zmm1,zmm2
    vpblendmd zmm0,zmm1,zword ptr [rcx]
    vpblendmd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpblendmd zmm0,zmm1,dword ptr [rcx]{1to16}
    vpblendmd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpblendmd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpblendmd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpblendmd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpblendmd zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpblendmd zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpblendmd zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpblendmd zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vpbroadcastd zmm0,dword ptr [rcx]
    vpbroadcastd zmm0{k7},dword ptr [rcx]
    vpbroadcastd zmm0{k7}{z},dword ptr [rcx]
    vpbroadcastd zmm0,dword ptr [rdx+0x1fc]
    vpbroadcastd zmm0,dword ptr [rdx+0x200]
    vpbroadcastd zmm0,dword ptr [rdx-0x200]
    vpbroadcastd zmm0,dword ptr [rdx-0x204]
    vpbroadcastd zmm0{k7},xmm1
    vpbroadcastd zmm0{k7}{z},xmm1
    vpbroadcastd zmm0,eax
    vpbroadcastd zmm0{k7},eax
    vpbroadcastd zmm0{k7}{z},eax
    vpbroadcastd zmm0,ebp

    vpbroadcastq zmm0,qword ptr [rcx]
    vpbroadcastq zmm0{k7},qword ptr [rcx]
    vpbroadcastq zmm0{k7}{z},qword ptr [rcx]
    vpbroadcastq zmm0,qword ptr [rdx+0x3f8]
    vpbroadcastq zmm0,qword ptr [rdx+0x400]
    vpbroadcastq zmm0,qword ptr [rdx-0x400]
    vpbroadcastq zmm0,qword ptr [rdx-0x408]
    vpbroadcastq zmm0{k7},xmm1
    vpbroadcastq zmm0{k7}{z},xmm1
    vpbroadcastq zmm0,rax
    vpbroadcastq zmm0{k7},rax
    vpbroadcastq zmm0{k7}{z},rax

    vpcmpd k5,zmm0,zmm1,0xab
    vpcmpd k5{k7},zmm0,zmm1,0xab
    vpcmpd k5,zmm0,zmm1,0x7b
    vpcmpd k5,zmm0,zword ptr [rcx],0x7b
    vpcmpd k5,zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpd k5,zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpcmpd k5,zmm0,zword ptr [rdx+0x2000],0x7b
    vpcmpd k5,zmm0,zword ptr [rdx-0x2000],0x7b
    vpcmpd k5,zmm0,zword ptr [rdx-0x2040],0x7b

    vpcmpq k5,zmm0,zmm1,0xab
    vpcmpq k5{k7},zmm0,zmm1,0xab
    vpcmpq k5,zmm0,zmm1,0x7b
    vpcmpq k5,zmm0,zword ptr [rcx],0x7b
    vpcmpq k5,zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpq k5,zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpcmpq k5,zmm0,zword ptr [rdx+0x2000],0x7b
    vpcmpq k5,zmm0,zword ptr [rdx-0x2000],0x7b
    vpcmpq k5,zmm0,zword ptr [rdx-0x2040],0x7b

    vpcmpud k5,zmm0,zmm1,0xab
    vpcmpud k5{k7},zmm0,zmm1,0xab
    vpcmpud k5,zmm0,zmm1,0x7b
    vpcmpud k5,zmm0,zword ptr [rcx],0x7b
    vpcmpud k5,zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpud k5,zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpcmpud k5,zmm0,zword ptr [rdx+0x2000],0x7b
    vpcmpud k5,zmm0,zword ptr [rdx-0x2000],0x7b
    vpcmpud k5,zmm0,zword ptr [rdx-0x2040],0x7b

    vpcmpuq k5,zmm0,zmm1,0xab
    vpcmpuq k5{k7},zmm0,zmm1,0xab
    vpcmpuq k5,zmm0,zmm1,0x7b
    vpcmpuq k5,zmm0,zword ptr [rcx],0x7b
    vpcmpuq k5,zmm0,zword ptr [rax+r14*8+0x123],0x7b
    vpcmpuq k5,zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpcmpuq k5,zmm0,zword ptr [rdx+0x2000],0x7b
    vpcmpuq k5,zmm0,zword ptr [rdx-0x2000],0x7b
    vpcmpuq k5,zmm0,zword ptr [rdx-0x2040],0x7b

    vpblendmq zmm0,zmm1,zmm2
    vpblendmq zmm0{k7},zmm1,zmm2
    vpblendmq zmm0{k7}{z},zmm1,zmm2
    vpblendmq zmm0,zmm1,zword ptr [rcx]
    vpblendmq zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpblendmq zmm0,zmm1,qword ptr [rcx]{1to8}
    vpblendmq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpblendmq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpblendmq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpblendmq zmm0,zmm1,zword ptr [rdx-0x2040]
    vpblendmq zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpblendmq zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpblendmq zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpblendmq zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpermd zmm0,zmm1,zmm2
    vpermd zmm0{k7},zmm1,zmm2
    vpermd zmm0{k7}{z},zmm1,zmm2
    vpermd zmm0,zmm1,zword ptr [rcx]
    vpermd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermd zmm0,zmm1,zword ptr [rdx-0x2040]

    vpermilpd xmm0,xmm1,xmm2
    vpermilpd xmm0,xmm1,oword ptr [rax]
    vpermilpd xmm0,xmm1,1
    vpermilpd ymm0,ymm1,ymm2
    vpermilpd ymm0,ymm1,yword ptr [rax]
    vpermilpd ymm0,ymm1,1
    vpermilpd zmm0,zmm1,0xab
    vpermilpd zmm0{k7},zmm1,0xab
    vpermilpd zmm0{k7}{z},zmm1,0xab
    vpermilpd zmm0,zmm1,0x7b
    vpermilpd zmm0,zword ptr [rcx],0x7b
    vpermilpd zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpermilpd zmm0,zword ptr [rdx+0x2000],0x7b
    vpermilpd zmm0,zword ptr [rdx-0x2000],0x7b
    vpermilpd zmm0,zword ptr [rdx-0x2040],0x7b
    vpermilpd zmm0,zmm1,zmm2
    vpermilpd zmm0{k7},zmm1,zmm2
    vpermilpd zmm0{k7}{z},zmm1,zmm2
    vpermilpd zmm0,zmm1,zword ptr [rcx]
    vpermilpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermilpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermilpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermilpd zmm0,zmm1,zword ptr [rdx-0x2040]

    vpermilps xmm0,xmm1,xmm2
    vpermilps xmm0,xmm1,oword ptr [rax]
    vpermilps xmm0,xmm1,1
    vpermilps ymm0,ymm1,ymm2
    vpermilps ymm0,ymm1,yword ptr [rax]
    vpermilps ymm0,ymm1,1
    vpermilps zmm0,zmm1,0xab
    vpermilps zmm0{k7},zmm1,0xab
    vpermilps zmm0{k7}{z},zmm1,0xab
    vpermilps zmm0,zmm1,0x7b
    vpermilps zmm0,zword ptr [rcx],0x7b
    vpermilps zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpermilps zmm0,zword ptr [rdx+0x2000],0x7b
    vpermilps zmm0,zword ptr [rdx-0x2000],0x7b
    vpermilps zmm0,zword ptr [rdx-0x2040],0x7b
    vpermilps zmm0,zmm1,zmm2
    vpermilps zmm0{k7},zmm1,zmm2
    vpermilps zmm0{k7}{z},zmm1,zmm2
    vpermilps zmm0,zmm1,zword ptr [rcx]
    vpermilps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermilps zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermilps zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermilps zmm0,zmm1,zword ptr [rdx-0x2040]

    vpermpd ymm0,ymm6,0x7
    vpermpd ymm0,yword ptr [rcx],0x7
    vpermpd zmm0,zmm1,0xab
    vpermpd zmm0{k7},zmm1,0xab
    vpermpd zmm0{k7}{z},zmm1,0xab
    vpermpd zmm0,zmm1,0x7b
    vpermpd zmm0,zword ptr [rcx],0x7b
    vpermpd zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpermpd zmm0,zword ptr [rdx+0x2000],0x7b
    vpermpd zmm0,zword ptr [rdx-0x2000],0x7b
    vpermpd zmm0,zword ptr [rdx-0x2040],0x7b

    vpermpd zmm0,zmm1,zmm2
    vpermpd zmm0{k7},zmm1,zmm2
    vpermpd zmm0{k7}{z},zmm1,zmm2
    vpermpd zmm0,zmm1,zword ptr [rcx]
    vpermpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermpd zmm0,zmm1,zword ptr [rdx-0x2040]

    vpermps ymm0,ymm6,ymm4
    vpermps ymm0,ymm6,YMMWORD PTR [rcx]
    vpermps zmm0,zmm1,zmm2
    vpermps zmm0{k7},zmm1,zmm2
    vpermps zmm0{k7}{z},zmm1,zmm2
    vpermps zmm0,zmm1,zword ptr [rcx]
    vpermps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermps zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermps zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermps zmm0,zmm1,zword ptr [rdx-0x2040]

    vpermq ymm0,ymm6,0x7
    vpermq ymm0,YMMWORD PTR [rcx],0x7
    vpermd ymm0,ymm6,ymm4
    vpermd ymm0,ymm6,YMMWORD PTR [rcx]
    vpermq zmm0,zmm1,0xab
    vpermq zmm0{k7},zmm1,0xab
    vpermq zmm0{k7}{z},zmm1,0xab
    vpermq zmm0,zmm1,0x7b
    vpermq zmm0,zword ptr [rcx],0x7b
    vpermq zmm0,zword ptr [rdx+0x1fc0],0x7b
    vpermq zmm0,zword ptr [rdx+0x2000],0x7b
    vpermq zmm0,zword ptr [rdx-0x2000],0x7b
    vpermq zmm0,zword ptr [rdx-0x2040],0x7b

    vpermq zmm0,zmm1,zmm2
    vpermq zmm0{k7},zmm1,zmm2
    vpermq zmm0{k7}{z},zmm1,zmm2
    vpermq zmm0,zmm1,zword ptr [rcx]
    vpermq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpmaxsq zmm0,zmm1,zmm2
    vpmaxsq zmm0{k7},zmm1,zmm2
    vpmaxsq zmm0{k7}{z},zmm1,zmm2
    vpmaxsq zmm0,zmm1,zword ptr [rcx]
    vpmaxsq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmaxsq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmaxsq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmaxsq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpmaxuq zmm0,zmm1,zmm2
    vpmaxuq zmm0{k7},zmm1,zmm2
    vpmaxuq zmm0{k7}{z},zmm1,zmm2
    vpmaxuq zmm0,zmm1,zword ptr [rcx]
    vpmaxuq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpmaxuq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpmaxuq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpmaxuq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpminsq zmm0,zmm1,zmm2
    vpminsq zmm0{k7},zmm1,zmm2
    vpminsq zmm0{k7}{z},zmm1,zmm2
    vpminsq zmm0,zmm1,zword ptr [rcx]
    vpminsq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpminsq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpminsq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpminsq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpminuq zmm0,zmm1,zmm2
    vpminuq zmm0{k7},zmm1,zmm2
    vpminuq zmm0{k7}{z},zmm1,zmm2
    vpminuq zmm0,zmm1,zword ptr [rcx]
    vpminuq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpminuq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpminuq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpminuq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpord  zmm0,zmm1,zmm2
    vpord  zmm0{k7},zmm1,zmm2
    vpord  zmm0{k7}{z},zmm1,zmm2
    vpord  zmm0,zmm1,zword ptr [rcx]
    vpord  zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpord  zmm0,zmm1,zword ptr [rdx+0x2000]
    vpord  zmm0,zmm1,zword ptr [rdx-0x2000]
    vpord  zmm0,zmm1,zword ptr [rdx-0x2040]
    vporq  zmm0,zmm1,zmm2
    vporq  zmm0{k7},zmm1,zmm2
    vporq  zmm0{k7}{z},zmm1,zmm2
    vporq  zmm0,zmm1,zword ptr [rcx]
    vporq  zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vporq  zmm0,zmm1,zword ptr [rdx+0x2000]
    vporq  zmm0,zmm1,zword ptr [rdx-0x2000]
    vporq  zmm0,zmm1,zword ptr [rdx-0x2040]

    vpsllvd ymm0,ymm6,ymm4
    vpsllvd ymm0,ymm6,yword ptr [rcx]
    vpsllvq ymm0,ymm6,ymm4
    vpsllvq ymm0,ymm6,yword ptr [rcx]
    vpsravd ymm0,ymm6,ymm4
    vpsravd ymm0,ymm6,yword ptr [rcx]
    vpsrlvd ymm0,ymm6,ymm4
    vpsrlvd ymm0,ymm6,yword ptr [rcx]
    vpsrlvq ymm0,ymm6,ymm4
    vpsrlvq ymm0,ymm6,yword ptr [rcx]

    vpsllvd zmm0,zmm1,zmm2
    vpsllvd zmm0{k7},zmm1,zmm2
    vpsllvd zmm0{k7}{z},zmm1,zmm2
    vpsllvd zmm0,zmm1,zword ptr [rcx]
    vpsllvd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsllvd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsllvd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsllvd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpsllvq zmm0,zmm1,zmm2
    vpsllvq zmm0{k7},zmm1,zmm2
    vpsllvq zmm0{k7}{z},zmm1,zmm2
    vpsllvq zmm0,zmm1,zword ptr [rcx]
    vpsllvq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsllvq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsllvq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsllvq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpsravd zmm0,zmm1,zmm2
    vpsravd zmm0{k7},zmm1,zmm2
    vpsravd zmm0{k7}{z},zmm1,zmm2
    vpsravd zmm0,zmm1,zword ptr [rcx]
    vpsravd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsravd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsravd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsravd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpsravq zmm0,zmm1,zmm2
    vpsravq zmm0{k7},zmm1,zmm2
    vpsravq zmm0{k7}{z},zmm1,zmm2
    vpsravq zmm0,zmm1,zword ptr [rcx]
    vpsravq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsravq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsravq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsravq zmm0,zmm1,zword ptr [rdx-0x2040]

    vpsrlvd zmm0,zmm1,zmm2
    vpsrlvd zmm0{k7},zmm1,zmm2
    vpsrlvd zmm0{k7}{z},zmm1,zmm2
    vpsrlvd zmm0,zmm1,zword ptr [rcx]
    vpsrlvd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsrlvd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsrlvd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsrlvd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpsrlvq zmm0,zmm1,zmm2
    vpsrlvq zmm0{k7},zmm1,zmm2
    vpsrlvq zmm0{k7}{z},zmm1,zmm2
    vpsrlvq zmm0,zmm1,zword ptr [rcx]
    vpsrlvq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpsrlvq zmm0,zmm1,zword ptr [rdx+0x2000]
    vpsrlvq zmm0,zmm1,zword ptr [rdx-0x2000]
    vpsrlvq zmm0,zmm1,zword ptr [rdx-0x2040]

    vptestmd k5,zmm0,zmm1
    vptestmd k5{k7},zmm0,zmm1
    vptestmd k5,zmm0,zword ptr [rcx]
    vptestmd k5,zmm0,zword ptr [rdx+0x1fc0]
    vptestmd k5,zmm0,zword ptr [rdx+0x2000]
    vptestmd k5,zmm0,zword ptr [rdx-0x2000]
    vptestmd k5,zmm0,zword ptr [rdx-0x2040]
    vptestmq k5,zmm0,zmm1
    vptestmq k5{k7},zmm0,zmm1
    vptestmq k5,zmm0,zword ptr [rcx]
    vptestmq k5,zmm0,zword ptr [rdx+0x1fc0]
    vptestmq k5,zmm0,zword ptr [rdx+0x2000]
    vptestmq k5,zmm0,zword ptr [rdx-0x2000]
    vptestmq k5,zmm0,zword ptr [rdx-0x2040]

    vucomisd xmm0,xmm1
    vucomisd xmm0,[rax]
    vucomisd xmm0,xmm1
    vucomisd xmm0,qword ptr [rcx]
    vucomisd xmm0,qword ptr [rdx+0x3f8]
    vucomisd xmm0,qword ptr [rdx+0x400]
    vucomisd xmm0,qword ptr [rdx-0x400]
    vucomisd xmm0,qword ptr [rdx-0x408]

    vucomiss xmm0,xmm1
    vucomiss xmm0,[rax]
    vucomiss xmm0,xmm1
    vucomiss xmm0,dword ptr [rcx]
    vucomiss xmm0,dword ptr [rax+r14*8+0x123]
    vucomiss xmm0,dword ptr [rdx+0x1fc]
    vucomiss xmm0,dword ptr [rdx+0x200]
    vucomiss xmm0,dword ptr [rdx-0x200]
    vucomiss xmm0,dword ptr [rdx-0x204]

    vpternlogd zmm0,zmm1,zmm2,0xab
    vpternlogd zmm0{k7},zmm1,zmm2,0xab
    vpternlogd zmm0{k7}{z},zmm1,zmm2,0xab
    vpternlogd zmm0,zmm1,zmm2,0x7b
    vpternlogd zmm0,zmm1,zword ptr [rcx],0x7b
    vpternlogd zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vpternlogd zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vpternlogd zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vpternlogd zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vpternlogq zmm0,zmm1,zmm2,0xab
    vpternlogq zmm0{k7},zmm1,zmm2,0xab
    vpternlogq zmm0{k7}{z},zmm1,zmm2,0xab
    vpternlogq zmm0,zmm1,zmm2,0x7b
    vpternlogq zmm0,zmm1,zword ptr [rcx],0x7b
    vpternlogq zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vpternlogq zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vpternlogq zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vpternlogq zmm0,zmm1,zword ptr [rdx-0x2040],0x7b

    vshuff32x4 zmm0,zmm1,zmm2,0xab
    vshuff32x4 zmm0{k7},zmm1,zmm2,0xab
    vshuff32x4 zmm0{k7}{z},zmm1,zmm2,0xab
    vshuff32x4 zmm0,zmm1,zmm2,0x7b
    vshuff32x4 zmm0,zmm1,zword ptr [rcx],0x7b
    vshuff32x4 zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vshuff32x4 zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vshuff32x4 zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vshuff32x4 zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vshuff64x2 zmm0,zmm1,zmm2,0xab
    vshuff64x2 zmm0{k7},zmm1,zmm2,0xab
    vshuff64x2 zmm0{k7}{z},zmm1,zmm2,0xab
    vshuff64x2 zmm0,zmm1,zmm2,0x7b
    vshuff64x2 zmm0,zmm1,zword ptr [rcx],0x7b
    vshuff64x2 zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vshuff64x2 zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vshuff64x2 zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vshuff64x2 zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vshufi32x4 zmm0,zmm1,zmm2,0xab
    vshufi32x4 zmm0{k7},zmm1,zmm2,0xab
    vshufi32x4 zmm0{k7}{z},zmm1,zmm2,0xab
    vshufi32x4 zmm0,zmm1,zmm2,0x7b
    vshufi32x4 zmm0,zmm1,zword ptr [rcx],0x7b
    vshufi32x4 zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vshufi32x4 zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vshufi32x4 zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vshufi32x4 zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vshufi64x2 zmm0,zmm1,zmm2,0xab
    vshufi64x2 zmm0{k7},zmm1,zmm2,0xab
    vshufi64x2 zmm0{k7}{z},zmm1,zmm2,0xab
    vshufi64x2 zmm0,zmm1,zmm2,0x7b
    vshufi64x2 zmm0,zmm1,zword ptr [rcx],0x7b
    vshufi64x2 zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vshufi64x2 zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vshufi64x2 zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vshufi64x2 zmm0,zmm1,zword ptr [rdx-0x2040],0x7b

    valignq zmm0,zmm1,zmm2,0xab
    valignq zmm0{k7},zmm1,zmm2,0xab
    valignq zmm0{k7}{z},zmm1,zmm2,0xab
    valignq zmm0,zmm1,zmm2,0x7b
    valignq zmm0,zmm1,zword ptr [rcx],0x7b
    valignq zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    valignq zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    valignq zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    valignq zmm0,zmm1,zword ptr [rdx-0x2040],0x7b

    vcvtsd2usi eax,xmm0
    vcvtsd2usi eax,xmm0,{rn-sae}
    vcvtsd2usi eax,xmm0,{ru-sae}
    vcvtsd2usi eax,xmm0,{rd-sae}
    vcvtsd2usi eax,xmm0,{rz-sae}
    vcvtsd2usi ebp,xmm0
    vcvtsd2usi ebp,xmm0,{rn-sae}
    vcvtsd2usi ebp,xmm0,{ru-sae}
    vcvtsd2usi ebp,xmm0,{rd-sae}
    vcvtsd2usi ebp,xmm0,{rz-sae}
    vcvtsd2usi r13d,xmm0
    vcvtsd2usi r13d,xmm0,{rn-sae}
    vcvtsd2usi r13d,xmm0,{ru-sae}
    vcvtsd2usi r13d,xmm0,{rd-sae}
    vcvtsd2usi r13d,xmm0,{rz-sae}
    vcvtsd2usi rax,xmm0
    vcvtsd2usi rax,xmm0,{rn-sae}
    vcvtsd2usi rax,xmm0,{ru-sae}
    vcvtsd2usi rax,xmm0,{rd-sae}
    vcvtsd2usi rax,xmm0,{rz-sae}

    vcvtsd2usi r8,xmm0
    vcvtsd2usi r8,xmm0,{rn-sae}
    vcvtsd2usi r8,xmm0,{ru-sae}
    vcvtsd2usi r8,xmm0,{rd-sae}
    vcvtsd2usi r8,xmm0,{rz-sae}

    vcvtss2usi eax,xmm0
    vcvtss2usi eax,xmm0,{rn-sae}
    vcvtss2usi eax,xmm0,{ru-sae}
    vcvtss2usi eax,xmm0,{rd-sae}
    vcvtss2usi eax,xmm0,{rz-sae}
    vcvtss2usi eax,dword ptr [rcx]
    vcvtss2usi eax,dword ptr [rax+r14*8+0x123]
    vcvtss2usi eax,dword ptr [rdx+0x1fc]
    vcvtss2usi eax,dword ptr [rdx+0x200]
    vcvtss2usi eax,dword ptr [rdx-0x200]
    vcvtss2usi eax,dword ptr [rdx-0x204]

    vcvtss2usi ebp,xmm0
    vcvtss2usi ebp,xmm0,{rn-sae}
    vcvtss2usi ebp,xmm0,{ru-sae}
    vcvtss2usi ebp,xmm0,{rd-sae}
    vcvtss2usi ebp,xmm0,{rz-sae}
    vcvtss2usi ebp,dword ptr [rcx]
    vcvtss2usi ebp,dword ptr [rax+r14*8+0x123]
    vcvtss2usi ebp,dword ptr [rdx+0x1fc]
    vcvtss2usi ebp,dword ptr [rdx+0x200]
    vcvtss2usi ebp,dword ptr [rdx-0x200]
    vcvtss2usi ebp,dword ptr [rdx-0x204]
    vcvtss2usi r13d,xmm0
    vcvtss2usi r13d,xmm0,{rn-sae}
    vcvtss2usi r13d,xmm0,{ru-sae}
    vcvtss2usi r13d,xmm0,{rd-sae}
    vcvtss2usi r13d,xmm0,{rz-sae}
    vcvtss2usi r13d,dword ptr [rcx]
    vcvtss2usi r13d,dword ptr [rax+r14*8+0x123]
    vcvtss2usi r13d,dword ptr [rdx+0x1fc]
    vcvtss2usi r13d,dword ptr [rdx+0x200]
    vcvtss2usi r13d,dword ptr [rdx-0x200]
    vcvtss2usi r13d,dword ptr [rdx-0x204]
    vcvtss2usi rax,xmm0
    vcvtss2usi rax,xmm0,{rn-sae}
    vcvtss2usi rax,xmm0,{ru-sae}
    vcvtss2usi rax,xmm0,{rd-sae}
    vcvtss2usi rax,xmm0,{rz-sae}
    vcvtss2usi r8,xmm0
    vcvtss2usi r8,xmm0,{rn-sae}
    vcvtss2usi r8,xmm0,{ru-sae}
    vcvtss2usi r8,xmm0,{rd-sae}
    vcvtss2usi r8,xmm0,{rz-sae}

    vcvtusi2sd xmm0,xmm1,eax
    vcvtusi2sd xmm0,xmm1,ebp
    vcvtusi2sd xmm0,xmm1,dword ptr [rcx]
    vcvtusi2sd xmm0,xmm1,dword ptr [rdx+0x1fc]
    vcvtusi2sd xmm0,xmm1,dword ptr [rdx+0x200]
    vcvtusi2sd xmm0,xmm1,dword ptr [rdx-0x200]
    vcvtusi2sd xmm0,xmm1,dword ptr [rdx-0x204]
    vcvtusi2sd xmm0,xmm1,{rn-sae},rax
    vcvtusi2sd xmm0,xmm1,{ru-sae},rax
    vcvtusi2sd xmm0,xmm1,{rd-sae},rax
    vcvtusi2sd xmm0,xmm1,{rz-sae},rax
    vcvtusi2sd xmm0,xmm1,qword ptr [rcx]
    vcvtusi2sd xmm0,xmm1,qword ptr [rdx+0x3f8]
    vcvtusi2sd xmm0,xmm1,qword ptr [rdx+0x400]
    vcvtusi2sd xmm0,xmm1,qword ptr [rdx-0x400]
    vcvtusi2sd xmm0,xmm1,qword ptr [rdx-0x408]

    vcvtusi2ss xmm0,xmm1,eax
    vcvtusi2ss xmm0,xmm1,{rn-sae},eax
    vcvtusi2ss xmm0,xmm1,{ru-sae},eax
    vcvtusi2ss xmm0,xmm1,{rd-sae},eax
    vcvtusi2ss xmm0,xmm1,{rz-sae},eax
    vcvtusi2ss xmm0,xmm1,ebp
    vcvtusi2ss xmm0,xmm1,{rn-sae},ebp
    vcvtusi2ss xmm0,xmm1,{ru-sae},ebp
    vcvtusi2ss xmm0,xmm1,{rd-sae},ebp
    vcvtusi2ss xmm0,xmm1,{rz-sae},ebp
    vcvtusi2ss xmm0,xmm1,dword ptr [rcx]
    vcvtusi2ss xmm0,xmm1,dword ptr [rdx+0x1fc]
    vcvtusi2ss xmm0,xmm1,dword ptr [rdx+0x200]
    vcvtusi2ss xmm0,xmm1,dword ptr [rdx-0x200]
    vcvtusi2ss xmm0,xmm1,dword ptr [rdx-0x204]
    vcvtusi2ss xmm0,xmm1,{rn-sae},rax
    vcvtusi2ss xmm0,xmm1,{ru-sae},rax
    vcvtusi2ss xmm0,xmm1,{rd-sae},rax
    vcvtusi2ss xmm0,xmm1,{rz-sae},rax
    vcvtusi2ss xmm0,xmm1,qword ptr [rcx]
    vcvtusi2ss xmm0,xmm1,qword ptr [rdx+0x3f8]
    vcvtusi2ss xmm0,xmm1,qword ptr [rdx+0x400]
    vcvtusi2ss xmm0,xmm1,qword ptr [rdx-0x400]
    vcvtusi2ss xmm0,xmm1,qword ptr [rdx-0x408]

    vscalefpd zmm0,zmm1,zmm2
    vscalefpd zmm0{k7},zmm1,zmm2
    vscalefpd zmm0{k7}{z},zmm1,zmm2
    vscalefpd zmm0,zmm1,zmm2,{rn-sae}
    vscalefpd zmm0,zmm1,zmm2,{ru-sae}
    vscalefpd zmm0,zmm1,zmm2,{rd-sae}
    vscalefpd zmm0,zmm1,zmm2,{rz-sae}
    vscalefpd zmm0,zmm1,zword ptr [rcx]
    vscalefpd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vscalefpd zmm0,zmm1,qword ptr [rcx]{1to8}
    vscalefpd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vscalefpd zmm0,zmm1,zword ptr [rdx+0x2000]
    vscalefpd zmm0,zmm1,zword ptr [rdx-0x2000]
    vscalefpd zmm0,zmm1,zword ptr [rdx-0x2040]
    vscalefpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vscalefpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vscalefpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vscalefpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vscalefps zmm0,zmm1,zmm2
    vscalefps zmm0{k7},zmm1,zmm2
    vscalefps zmm0{k7}{z},zmm1,zmm2
    vscalefps zmm0,zmm1,zmm2,{rn-sae}
    vscalefps zmm0,zmm1,zmm2,{ru-sae}
    vscalefps zmm0,zmm1,zmm2,{rd-sae}
    vscalefps zmm0,zmm1,zmm2,{rz-sae}
    vscalefps zmm0,zmm1,zword ptr [rcx]
    vscalefps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vscalefps zmm0,zmm1,dword ptr [rcx]{1to16}
    vscalefps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vscalefps zmm0,zmm1,zword ptr [rdx+0x2000]
    vscalefps zmm0,zmm1,zword ptr [rdx-0x2000]
    vscalefps zmm0,zmm1,zword ptr [rdx-0x2040]
    vscalefps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vscalefps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vscalefps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vscalefps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}

    vscalefsd xmm0{k7},xmm1,xmm2
    vscalefsd xmm0{k7}{z},xmm1,xmm2
    vscalefsd xmm0{k7},xmm1,qword ptr [rcx]
    vscalefsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8]
    vscalefsd xmm0{k7},xmm1,qword ptr [rdx+0x400]
    vscalefsd xmm0{k7},xmm1,qword ptr [rdx-0x400]
    vscalefsd xmm0{k7},xmm1,qword ptr [rdx-0x408]

    vscalefss xmm0{k7},xmm1,xmm2
    vscalefss xmm0{k7}{z},xmm1,xmm2
    vscalefss xmm0{k7},xmm1,dword ptr [rcx]
    vscalefss xmm0{k7},xmm1,dword ptr [rdx+0x1fc]
    vscalefss xmm0{k7},xmm1,dword ptr [rdx+0x200]
    vscalefss xmm0{k7},xmm1,dword ptr [rdx-0x200]
    vscalefss xmm0{k7},xmm1,dword ptr [rdx-0x204]

    vfixupimmps zmm0,zmm1,zmm2,0xab
    vfixupimmps zmm0{k7},zmm1,zmm2,0xab
    vfixupimmps zmm0{k7}{z},zmm1,zmm2,0xab
    vfixupimmps zmm0,zmm1,zmm2,{sae},0xab
    vfixupimmps zmm0,zmm1,zmm2,0x7b
    vfixupimmps zmm0,zmm1,zmm2,{sae},0x7b
    vfixupimmps zmm0,zmm1,zword ptr [rcx],0x7b
    vfixupimmps zmm0,zmm1,zword ptr [rax+r14*8+0x123],0x7b
    vfixupimmps zmm0,zmm1,dword ptr [rcx]{1to16},0x7b
    vfixupimmps zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vfixupimmps zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vfixupimmps zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vfixupimmps zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vfixupimmps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16},0x7b
    vfixupimmps zmm0,zmm1,dword ptr [rdx+0x200]{1to16},0x7b
    vfixupimmps zmm0,zmm1,dword ptr [rdx-0x200]{1to16},0x7b
    vfixupimmps zmm0,zmm1,dword ptr [rdx-0x204]{1to16},0x7b
    vfixupimmpd zmm0,zmm1,zmm2,0xab
    vfixupimmpd zmm0{k7},zmm1,zmm2,0xab
    vfixupimmpd zmm0{k7}{z},zmm1,zmm2,0xab
    vfixupimmpd zmm0,zmm1,zmm2,{sae},0xab
    vfixupimmpd zmm0,zmm1,zmm2,0x7b
    vfixupimmpd zmm0,zmm1,zmm2,{sae},0x7b
    vfixupimmpd zmm0,zmm1,zword ptr [rcx],0x7b
    vfixupimmpd zmm0,zmm1,zword ptr [rax+r14*8+0x123],0x7b
    vfixupimmpd zmm0,zmm1,qword ptr [rcx]{1to8},0x7b
    vfixupimmpd zmm0,zmm1,zword ptr [rdx+0x1fc0],0x7b
    vfixupimmpd zmm0,zmm1,zword ptr [rdx+0x2000],0x7b
    vfixupimmpd zmm0,zmm1,zword ptr [rdx-0x2000],0x7b
    vfixupimmpd zmm0,zmm1,zword ptr [rdx-0x2040],0x7b
    vfixupimmpd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8},0x7b
    vfixupimmpd zmm0,zmm1,qword ptr [rdx+0x400]{1to8},0x7b
    vfixupimmpd zmm0,zmm1,qword ptr [rdx-0x400]{1to8},0x7b
    vfixupimmpd zmm0,zmm1,qword ptr [rdx-0x408]{1to8},0x7b
    vfixupimmss xmm0{k7},xmm1,xmm2,0xab
    vfixupimmss xmm0{k7}{z},xmm1,xmm2,0xab
    vfixupimmss xmm0{k7},xmm1,xmm2,0x7b
    vfixupimmss xmm0{k7},xmm1,dword ptr [rcx],0x7b
    vfixupimmss xmm0{k7},xmm1,dword ptr [rdx+0x1fc],0x7b
    vfixupimmss xmm0{k7},xmm1,dword ptr [rdx+0x200],0x7b
    vfixupimmss xmm0{k7},xmm1,dword ptr [rdx-0x200],0x7b
    vfixupimmss xmm0{k7},xmm1,dword ptr [rdx-0x204],0x7b
    vfixupimmsd xmm0{k7},xmm1,xmm2,0xab
    vfixupimmsd xmm0{k7}{z},xmm1,xmm2,0xab
    vfixupimmsd xmm0{k7},xmm1,xmm2,0x7b
    vfixupimmsd xmm0{k7},xmm1,qword ptr [rcx],0x7b
    vfixupimmsd xmm0{k7},xmm1,qword ptr [rdx+0x3f8],0x7b
    vfixupimmsd xmm0{k7},xmm1,qword ptr [rdx+0x400],0x7b
    vfixupimmsd xmm0{k7},xmm1,qword ptr [rdx-0x400],0x7b
    vfixupimmsd xmm0{k7},xmm1,qword ptr [rdx-0x408],0x7b

    vprolvd zmm0,zmm1,zmm2
    vprolvd zmm0{k7},zmm1,zmm2
    vprolvd zmm0{k7}{z},zmm1,zmm2
    vprolvd zmm0,zmm1,zword ptr [rcx]
    vprolvd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vprolvd zmm0,zmm1,zword ptr [rdx+0x2000]
    vprolvd zmm0,zmm1,zword ptr [rdx-0x2000]
    vprolvd zmm0,zmm1,zword ptr [rdx-0x2040]

    vprolvq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vprolvq zmm0,zmm1,zword ptr [rdx+0x2000]
    vprolvq zmm0,zmm1,zword ptr [rdx-0x2000]
    vprolvq zmm0,zmm1,zword ptr [rdx-0x2040]

    vprorvd zmm0,zmm1,zmm2
    vprorvd zmm0{k7},zmm1,zmm2
    vprorvd zmm0{k7}{z},zmm1,zmm2
    vprorvd zmm0,zmm1,zword ptr [rcx]
    vprorvd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vprorvd zmm0,zmm1,zword ptr [rdx+0x2000]
    vprorvd zmm0,zmm1,zword ptr [rdx-0x2000]
    vprorvd zmm0,zmm1,zword ptr [rdx-0x2040]

    vprorvq zmm0,zmm1,zmm2
    vprorvq zmm0{k7},zmm1,zmm2
    vprorvq zmm0{k7}{z},zmm1,zmm2
    vprorvq zmm0,zmm1,zword ptr [rcx]
    vprorvq zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vprorvq zmm0,zmm1,zword ptr [rdx+0x2000]
    vprorvq zmm0,zmm1,zword ptr [rdx-0x2000]
    vprorvq zmm0,zmm1,zword ptr [rdx-0x2040]

    vcvttsd2usi eax,xmm0
    vcvttsd2usi eax,xmm0,{sae}
    vcvttsd2usi ebp,xmm0
    vcvttsd2usi ebp,xmm0,{sae}
    vcvttsd2usi r13d,xmm0
    vcvttsd2usi r13d,xmm0,{sae}
    vcvttsd2usi rax,xmm0
    vcvttsd2usi rax,xmm0,{sae}
    vcvttsd2usi r8,xmm0
    vcvttsd2usi r8,xmm0,{sae}
    vcvttss2usi eax,xmm0
    vcvttss2usi eax,xmm0,{sae}
    vcvttss2usi ebp,xmm0
    vcvttss2usi ebp,xmm0,{sae}
    vcvttss2usi r13d,xmm0
    vcvttss2usi r13d,xmm0,{sae}
    vcvttss2usi rax,xmm0
    vcvttss2usi rax,xmm0,{sae}
    vcvttss2usi r8,xmm0
    vcvttss2usi r8,xmm0,{sae}

    vpermi2d zmm0,zmm1,zmm2
    vpermi2d zmm0{k7},zmm1,zmm2
    vpermi2d zmm0{k7}{z},zmm1,zmm2
    vpermi2d zmm0,zmm1,zword ptr [rcx]
    vpermi2d zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpermi2d zmm0,zmm1,dword ptr [rcx]{1to16}
    vpermi2d zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermi2d zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermi2d zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermi2d zmm0,zmm1,zword ptr [rdx-0x2040]
    vpermi2d zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpermi2d zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpermi2d zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpermi2d zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vpermi2q zmm0,zmm1,zmm2
    vpermi2q zmm0{k7},zmm1,zmm2
    vpermi2q zmm0{k7}{z},zmm1,zmm2
    vpermi2q zmm0,zmm1,zword ptr [rcx]
    vpermi2q zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpermi2q zmm0,zmm1,qword ptr [rcx]{1to8}
    vpermi2q zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermi2q zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermi2q zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermi2q zmm0,zmm1,zword ptr [rdx-0x2040]
    vpermi2q zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpermi2q zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpermi2q zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpermi2q zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    vpermi2ps zmm0,zmm1,zmm2
    vpermi2ps zmm0{k7},zmm1,zmm2
    vpermi2ps zmm0{k7}{z},zmm1,zmm2
    vpermi2ps zmm0,zmm1,zword ptr [rcx]
    vpermi2ps zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpermi2ps zmm0,zmm1,dword ptr [rcx]{1to16}
    vpermi2ps zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermi2ps zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermi2ps zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermi2ps zmm0,zmm1,zword ptr [rdx-0x2040]
    vpermi2ps zmm0,zmm1,dword ptr [rdx+0x1fc]{1to16}
    vpermi2ps zmm0,zmm1,dword ptr [rdx+0x200]{1to16}
    vpermi2ps zmm0,zmm1,dword ptr [rdx-0x200]{1to16}
    vpermi2ps zmm0,zmm1,dword ptr [rdx-0x204]{1to16}
    vpermi2pd zmm0,zmm1,zmm2
    vpermi2pd zmm0{k7},zmm1,zmm2
    vpermi2pd zmm0{k7}{z},zmm1,zmm2
    vpermi2pd zmm0,zmm1,zword ptr [rcx]
    vpermi2pd zmm0,zmm1,zword ptr [rax+r14*8+0x123]
    vpermi2pd zmm0,zmm1,qword ptr [rcx]{1to8}
    vpermi2pd zmm0,zmm1,zword ptr [rdx+0x1fc0]
    vpermi2pd zmm0,zmm1,zword ptr [rdx+0x2000]
    vpermi2pd zmm0,zmm1,zword ptr [rdx-0x2000]
    vpermi2pd zmm0,zmm1,zword ptr [rdx-0x2040]
    vpermi2pd zmm0,zmm1,qword ptr [rdx+0x3f8]{1to8}
    vpermi2pd zmm0,zmm1,qword ptr [rdx+0x400]{1to8}
    vpermi2pd zmm0,zmm1,qword ptr [rdx-0x400]{1to8}
    vpermi2pd zmm0,zmm1,qword ptr [rdx-0x408]{1to8}

    end
