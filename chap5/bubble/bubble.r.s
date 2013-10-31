
bubble:     file format elf32-i386


Disassembly of section .init:

080482f4 <_init>:
 80482f4:	53                   	push   %ebx
 80482f5:	83 ec 08             	sub    $0x8,%esp
 80482f8:	e8 00 00 00 00       	call   80482fd <_init+0x9>
 80482fd:	5b                   	pop    %ebx
 80482fe:	81 c3 f7 1c 00 00    	add    $0x1cf7,%ebx
 8048304:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 804830a:	85 c0                	test   %eax,%eax
 804830c:	74 05                	je     8048313 <_init+0x1f>
 804830e:	e8 4d 00 00 00       	call   8048360 <__gmon_start__@plt>
 8048313:	e8 08 01 00 00       	call   8048420 <frame_dummy>
 8048318:	e8 63 03 00 00       	call   8048680 <__do_global_ctors_aux>
 804831d:	83 c4 08             	add    $0x8,%esp
 8048320:	5b                   	pop    %ebx
 8048321:	c3                   	ret    

Disassembly of section .plt:

08048330 <printf@plt-0x10>:
 8048330:	ff 35 f8 9f 04 08    	pushl  0x8049ff8
 8048336:	ff 25 fc 9f 04 08    	jmp    *0x8049ffc
 804833c:	00 00                	add    %al,(%eax)
	...

08048340 <printf@plt>:
 8048340:	ff 25 00 a0 04 08    	jmp    *0x804a000
 8048346:	68 00 00 00 00       	push   $0x0
 804834b:	e9 e0 ff ff ff       	jmp    8048330 <_init+0x3c>

08048350 <puts@plt>:
 8048350:	ff 25 04 a0 04 08    	jmp    *0x804a004
 8048356:	68 08 00 00 00       	push   $0x8
 804835b:	e9 d0 ff ff ff       	jmp    8048330 <_init+0x3c>

08048360 <__gmon_start__@plt>:
 8048360:	ff 25 08 a0 04 08    	jmp    *0x804a008
 8048366:	68 10 00 00 00       	push   $0x10
 804836b:	e9 c0 ff ff ff       	jmp    8048330 <_init+0x3c>

08048370 <__libc_start_main@plt>:
 8048370:	ff 25 0c a0 04 08    	jmp    *0x804a00c
 8048376:	68 18 00 00 00       	push   $0x18
 804837b:	e9 b0 ff ff ff       	jmp    8048330 <_init+0x3c>

08048380 <putchar@plt>:
 8048380:	ff 25 10 a0 04 08    	jmp    *0x804a010
 8048386:	68 20 00 00 00       	push   $0x20
 804838b:	e9 a0 ff ff ff       	jmp    8048330 <_init+0x3c>

Disassembly of section .text:

08048390 <_start>:
 8048390:	31 ed                	xor    %ebp,%ebp
 8048392:	5e                   	pop    %esi
 8048393:	89 e1                	mov    %esp,%ecx
 8048395:	83 e4 f0             	and    $0xfffffff0,%esp
 8048398:	50                   	push   %eax
 8048399:	54                   	push   %esp
 804839a:	52                   	push   %edx
 804839b:	68 70 86 04 08       	push   $0x8048670
 80483a0:	68 00 86 04 08       	push   $0x8048600
 80483a5:	51                   	push   %ecx
 80483a6:	56                   	push   %esi
 80483a7:	68 47 85 04 08       	push   $0x8048547
 80483ac:	e8 bf ff ff ff       	call   8048370 <__libc_start_main@plt>
 80483b1:	f4                   	hlt    
 80483b2:	90                   	nop
 80483b3:	90                   	nop
 80483b4:	90                   	nop
 80483b5:	90                   	nop
 80483b6:	90                   	nop
 80483b7:	90                   	nop
 80483b8:	90                   	nop
 80483b9:	90                   	nop
 80483ba:	90                   	nop
 80483bb:	90                   	nop
 80483bc:	90                   	nop
 80483bd:	90                   	nop
 80483be:	90                   	nop
 80483bf:	90                   	nop

080483c0 <__do_global_dtors_aux>:
 80483c0:	55                   	push   %ebp
 80483c1:	89 e5                	mov    %esp,%ebp
 80483c3:	53                   	push   %ebx
 80483c4:	83 ec 04             	sub    $0x4,%esp
 80483c7:	80 3d 1c a0 04 08 00 	cmpb   $0x0,0x804a01c
 80483ce:	75 3f                	jne    804840f <__do_global_dtors_aux+0x4f>
 80483d0:	a1 20 a0 04 08       	mov    0x804a020,%eax
 80483d5:	bb 20 9f 04 08       	mov    $0x8049f20,%ebx
 80483da:	81 eb 1c 9f 04 08    	sub    $0x8049f1c,%ebx
 80483e0:	c1 fb 02             	sar    $0x2,%ebx
 80483e3:	83 eb 01             	sub    $0x1,%ebx
 80483e6:	39 d8                	cmp    %ebx,%eax
 80483e8:	73 1e                	jae    8048408 <__do_global_dtors_aux+0x48>
 80483ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 80483f0:	83 c0 01             	add    $0x1,%eax
 80483f3:	a3 20 a0 04 08       	mov    %eax,0x804a020
 80483f8:	ff 14 85 1c 9f 04 08 	call   *0x8049f1c(,%eax,4)
 80483ff:	a1 20 a0 04 08       	mov    0x804a020,%eax
 8048404:	39 d8                	cmp    %ebx,%eax
 8048406:	72 e8                	jb     80483f0 <__do_global_dtors_aux+0x30>
 8048408:	c6 05 1c a0 04 08 01 	movb   $0x1,0x804a01c
 804840f:	83 c4 04             	add    $0x4,%esp
 8048412:	5b                   	pop    %ebx
 8048413:	5d                   	pop    %ebp
 8048414:	c3                   	ret    
 8048415:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 8048419:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

08048420 <frame_dummy>:
 8048420:	55                   	push   %ebp
 8048421:	89 e5                	mov    %esp,%ebp
 8048423:	83 ec 18             	sub    $0x18,%esp
 8048426:	a1 24 9f 04 08       	mov    0x8049f24,%eax
 804842b:	85 c0                	test   %eax,%eax
 804842d:	74 12                	je     8048441 <frame_dummy+0x21>
 804842f:	b8 00 00 00 00       	mov    $0x0,%eax
 8048434:	85 c0                	test   %eax,%eax
 8048436:	74 09                	je     8048441 <frame_dummy+0x21>
 8048438:	c7 04 24 24 9f 04 08 	movl   $0x8049f24,(%esp)
 804843f:	ff d0                	call   *%eax
 8048441:	c9                   	leave  
 8048442:	c3                   	ret    
 8048443:	90                   	nop

08048444 <bubble_sort>:
 8048444:	55                   	push   %ebp
 8048445:	89 e5                	mov    %esp,%ebp
 8048447:	83 ec 28             	sub    $0x28,%esp
 804844a:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 804844e:	74 06                	je     8048456 <bubble_sort+0x12>
 8048450:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 8048454:	7f 11                	jg     8048467 <bubble_sort+0x23>
 8048456:	c7 04 24 d0 86 04 08 	movl   $0x80486d0,(%esp)
 804845d:	e8 ee fe ff ff       	call   8048350 <puts@plt>
 8048462:	e9 84 00 00 00       	jmp    80484eb <bubble_sort+0xa7>
 8048467:	c7 45 ec 00 00 00 00 	movl   $0x0,-0x14(%ebp)
 804846e:	eb 70                	jmp    80484e0 <bubble_sort+0x9c>
 8048470:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8048473:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8048476:	eb 59                	jmp    80484d1 <bubble_sort+0x8d>
 8048478:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804847b:	c1 e0 02             	shl    $0x2,%eax
 804847e:	03 45 08             	add    0x8(%ebp),%eax
 8048481:	8b 10                	mov    (%eax),%edx
 8048483:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048486:	83 c0 01             	add    $0x1,%eax
 8048489:	c1 e0 02             	shl    $0x2,%eax
 804848c:	03 45 08             	add    0x8(%ebp),%eax
 804848f:	8b 00                	mov    (%eax),%eax
 8048491:	39 c2                	cmp    %eax,%edx
 8048493:	7e 38                	jle    80484cd <bubble_sort+0x89>
 8048495:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8048498:	c1 e0 02             	shl    $0x2,%eax
 804849b:	03 45 08             	add    0x8(%ebp),%eax
 804849e:	8b 00                	mov    (%eax),%eax
 80484a0:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80484a3:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80484a6:	c1 e0 02             	shl    $0x2,%eax
 80484a9:	03 45 08             	add    0x8(%ebp),%eax
 80484ac:	8b 55 f0             	mov    -0x10(%ebp),%edx
 80484af:	83 c2 01             	add    $0x1,%edx
 80484b2:	c1 e2 02             	shl    $0x2,%edx
 80484b5:	03 55 08             	add    0x8(%ebp),%edx
 80484b8:	8b 12                	mov    (%edx),%edx
 80484ba:	89 10                	mov    %edx,(%eax)
 80484bc:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80484bf:	83 c0 01             	add    $0x1,%eax
 80484c2:	c1 e0 02             	shl    $0x2,%eax
 80484c5:	03 45 08             	add    0x8(%ebp),%eax
 80484c8:	8b 55 f4             	mov    -0xc(%ebp),%edx
 80484cb:	89 10                	mov    %edx,(%eax)
 80484cd:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80484d1:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484d4:	83 e8 01             	sub    $0x1,%eax
 80484d7:	3b 45 f0             	cmp    -0x10(%ebp),%eax
 80484da:	7f 9c                	jg     8048478 <bubble_sort+0x34>
 80484dc:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 80484e0:	8b 45 0c             	mov    0xc(%ebp),%eax
 80484e3:	83 e8 01             	sub    $0x1,%eax
 80484e6:	3b 45 ec             	cmp    -0x14(%ebp),%eax
 80484e9:	7f 85                	jg     8048470 <bubble_sort+0x2c>
 80484eb:	c9                   	leave  
 80484ec:	c3                   	ret    

080484ed <print>:
 80484ed:	55                   	push   %ebp
 80484ee:	89 e5                	mov    %esp,%ebp
 80484f0:	83 ec 28             	sub    $0x28,%esp
 80484f3:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80484f7:	74 06                	je     80484ff <print+0x12>
 80484f9:	83 7d 0c 00          	cmpl   $0x0,0xc(%ebp)
 80484fd:	7f 0e                	jg     804850d <print+0x20>
 80484ff:	c7 04 24 d0 86 04 08 	movl   $0x80486d0,(%esp)
 8048506:	e8 45 fe ff ff       	call   8048350 <puts@plt>
 804850b:	eb 38                	jmp    8048545 <print+0x58>
 804850d:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8048514:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 804851b:	eb 20                	jmp    804853d <print+0x50>
 804851d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048520:	c1 e0 02             	shl    $0x2,%eax
 8048523:	03 45 08             	add    0x8(%ebp),%eax
 8048526:	8b 10                	mov    (%eax),%edx
 8048528:	b8 db 86 04 08       	mov    $0x80486db,%eax
 804852d:	89 54 24 04          	mov    %edx,0x4(%esp)
 8048531:	89 04 24             	mov    %eax,(%esp)
 8048534:	e8 07 fe ff ff       	call   8048340 <printf@plt>
 8048539:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 804853d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8048540:	3b 45 0c             	cmp    0xc(%ebp),%eax
 8048543:	7c d8                	jl     804851d <print+0x30>
 8048545:	c9                   	leave  
 8048546:	c3                   	ret    

08048547 <main>:
 8048547:	55                   	push   %ebp
 8048548:	89 e5                	mov    %esp,%ebp
 804854a:	83 e4 f0             	and    $0xfffffff0,%esp
 804854d:	83 ec 40             	sub    $0x40,%esp
 8048550:	c7 44 24 14 1e 00 00 	movl   $0x1e,0x14(%esp)
 8048557:	00 
 8048558:	c7 44 24 18 04 00 00 	movl   $0x4,0x18(%esp)
 804855f:	00 
 8048560:	c7 44 24 1c 0d 00 00 	movl   $0xd,0x1c(%esp)
 8048567:	00 
 8048568:	c7 44 24 20 36 00 00 	movl   $0x36,0x20(%esp)
 804856f:	00 
 8048570:	c7 44 24 24 22 00 00 	movl   $0x22,0x24(%esp)
 8048577:	00 
 8048578:	c7 44 24 28 17 00 00 	movl   $0x17,0x28(%esp)
 804857f:	00 
 8048580:	c7 44 24 2c 62 00 00 	movl   $0x62,0x2c(%esp)
 8048587:	00 
 8048588:	c7 44 24 30 4e 00 00 	movl   $0x4e,0x30(%esp)
 804858f:	00 
 8048590:	c7 44 24 34 4c 00 00 	movl   $0x4c,0x34(%esp)
 8048597:	00 
 8048598:	c7 44 24 38 64 00 00 	movl   $0x64,0x38(%esp)
 804859f:	00 
 80485a0:	c7 44 24 3c 0a 00 00 	movl   $0xa,0x3c(%esp)
 80485a7:	00 
 80485a8:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 80485ac:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485b0:	8d 44 24 14          	lea    0x14(%esp),%eax
 80485b4:	89 04 24             	mov    %eax,(%esp)
 80485b7:	e8 31 ff ff ff       	call   80484ed <print>
 80485bc:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80485c3:	e8 b8 fd ff ff       	call   8048380 <putchar@plt>
 80485c8:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 80485cc:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485d0:	8d 44 24 14          	lea    0x14(%esp),%eax
 80485d4:	89 04 24             	mov    %eax,(%esp)
 80485d7:	e8 68 fe ff ff       	call   8048444 <bubble_sort>
 80485dc:	8b 44 24 3c          	mov    0x3c(%esp),%eax
 80485e0:	89 44 24 04          	mov    %eax,0x4(%esp)
 80485e4:	8d 44 24 14          	lea    0x14(%esp),%eax
 80485e8:	89 04 24             	mov    %eax,(%esp)
 80485eb:	e8 fd fe ff ff       	call   80484ed <print>
 80485f0:	c7 04 24 0a 00 00 00 	movl   $0xa,(%esp)
 80485f7:	e8 84 fd ff ff       	call   8048380 <putchar@plt>
 80485fc:	c9                   	leave  
 80485fd:	c3                   	ret    
 80485fe:	90                   	nop
 80485ff:	90                   	nop

08048600 <__libc_csu_init>:
 8048600:	55                   	push   %ebp
 8048601:	57                   	push   %edi
 8048602:	56                   	push   %esi
 8048603:	53                   	push   %ebx
 8048604:	e8 69 00 00 00       	call   8048672 <__i686.get_pc_thunk.bx>
 8048609:	81 c3 eb 19 00 00    	add    $0x19eb,%ebx
 804860f:	83 ec 1c             	sub    $0x1c,%esp
 8048612:	8b 6c 24 30          	mov    0x30(%esp),%ebp
 8048616:	8d bb 20 ff ff ff    	lea    -0xe0(%ebx),%edi
 804861c:	e8 d3 fc ff ff       	call   80482f4 <_init>
 8048621:	8d 83 20 ff ff ff    	lea    -0xe0(%ebx),%eax
 8048627:	29 c7                	sub    %eax,%edi
 8048629:	c1 ff 02             	sar    $0x2,%edi
 804862c:	85 ff                	test   %edi,%edi
 804862e:	74 29                	je     8048659 <__libc_csu_init+0x59>
 8048630:	31 f6                	xor    %esi,%esi
 8048632:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 8048638:	8b 44 24 38          	mov    0x38(%esp),%eax
 804863c:	89 2c 24             	mov    %ebp,(%esp)
 804863f:	89 44 24 08          	mov    %eax,0x8(%esp)
 8048643:	8b 44 24 34          	mov    0x34(%esp),%eax
 8048647:	89 44 24 04          	mov    %eax,0x4(%esp)
 804864b:	ff 94 b3 20 ff ff ff 	call   *-0xe0(%ebx,%esi,4)
 8048652:	83 c6 01             	add    $0x1,%esi
 8048655:	39 fe                	cmp    %edi,%esi
 8048657:	75 df                	jne    8048638 <__libc_csu_init+0x38>
 8048659:	83 c4 1c             	add    $0x1c,%esp
 804865c:	5b                   	pop    %ebx
 804865d:	5e                   	pop    %esi
 804865e:	5f                   	pop    %edi
 804865f:	5d                   	pop    %ebp
 8048660:	c3                   	ret    
 8048661:	eb 0d                	jmp    8048670 <__libc_csu_fini>
 8048663:	90                   	nop
 8048664:	90                   	nop
 8048665:	90                   	nop
 8048666:	90                   	nop
 8048667:	90                   	nop
 8048668:	90                   	nop
 8048669:	90                   	nop
 804866a:	90                   	nop
 804866b:	90                   	nop
 804866c:	90                   	nop
 804866d:	90                   	nop
 804866e:	90                   	nop
 804866f:	90                   	nop

08048670 <__libc_csu_fini>:
 8048670:	f3 c3                	repz ret 

08048672 <__i686.get_pc_thunk.bx>:
 8048672:	8b 1c 24             	mov    (%esp),%ebx
 8048675:	c3                   	ret    
 8048676:	90                   	nop
 8048677:	90                   	nop
 8048678:	90                   	nop
 8048679:	90                   	nop
 804867a:	90                   	nop
 804867b:	90                   	nop
 804867c:	90                   	nop
 804867d:	90                   	nop
 804867e:	90                   	nop
 804867f:	90                   	nop

08048680 <__do_global_ctors_aux>:
 8048680:	55                   	push   %ebp
 8048681:	89 e5                	mov    %esp,%ebp
 8048683:	53                   	push   %ebx
 8048684:	83 ec 04             	sub    $0x4,%esp
 8048687:	a1 14 9f 04 08       	mov    0x8049f14,%eax
 804868c:	83 f8 ff             	cmp    $0xffffffff,%eax
 804868f:	74 13                	je     80486a4 <__do_global_ctors_aux+0x24>
 8048691:	bb 14 9f 04 08       	mov    $0x8049f14,%ebx
 8048696:	66 90                	xchg   %ax,%ax
 8048698:	83 eb 04             	sub    $0x4,%ebx
 804869b:	ff d0                	call   *%eax
 804869d:	8b 03                	mov    (%ebx),%eax
 804869f:	83 f8 ff             	cmp    $0xffffffff,%eax
 80486a2:	75 f4                	jne    8048698 <__do_global_ctors_aux+0x18>
 80486a4:	83 c4 04             	add    $0x4,%esp
 80486a7:	5b                   	pop    %ebx
 80486a8:	5d                   	pop    %ebp
 80486a9:	c3                   	ret    
 80486aa:	90                   	nop
 80486ab:	90                   	nop

Disassembly of section .fini:

080486ac <_fini>:
 80486ac:	53                   	push   %ebx
 80486ad:	83 ec 08             	sub    $0x8,%esp
 80486b0:	e8 00 00 00 00       	call   80486b5 <_fini+0x9>
 80486b5:	5b                   	pop    %ebx
 80486b6:	81 c3 3f 19 00 00    	add    $0x193f,%ebx
 80486bc:	e8 ff fc ff ff       	call   80483c0 <__do_global_dtors_aux>
 80486c1:	83 c4 08             	add    $0x8,%esp
 80486c4:	5b                   	pop    %ebx
 80486c5:	c3                   	ret    
