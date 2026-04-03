.class public Lnrj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/AutoCloseable;
.implements Lpgf;
.implements Lnrv;
.implements Lnje;
.implements Lnrk;
.implements Lnrr;


# static fields
.field public static final a:Lsdb;

.field private static final j:Lj$/time/Instant;

.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:Lpci;

.field private final B:Ljava/util/concurrent/atomic/AtomicInteger;

.field private C:Lrss;

.field private D:Z

.field private E:J

.field private final F:Ljava/lang/Object;

.field private volatile G:Lryb;

.field private H:Z

.field private I:Lpdh;

.field private J:I

.field private K:Z

.field private final L:Llad;

.field private final M:Lhql;

.field public final b:Loyd;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Lows;

.field public final g:Lnrs;

.field public final h:Ljava/util/List;

.field public i:Landroid/util/Size;

.field private final l:Loyd;

.field private final m:Lhoa;

.field private final n:Landroid/util/CloseGuard;

.field private final o:Lqht;

.field private final p:Lpdf;

.field private final q:Lpdj;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final u:Ljdm;

.field private final v:Ljea;

.field private final w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final x:Z

.field private final y:Ljava/util/Set;

.field private z:J


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(Lpge;Ljava/lang/String;)V
    .locals 8

    goto/32 :goto_c

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p1, p0, Lnrj;->J:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface/range {v1 .. v7}, Lscz;->I(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const-string v2, "[%s][%s, closed=%s](repeat=%d) %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lnrj;->J:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v0, Lnrj;->a:Lsdb;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v4, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Lpge;->f()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Lnrj;->c:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, 0x1448

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    move-object v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput p1, p0, Lnrj;->J:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    move-object v7, p2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(Lpci;Ljava/util/function/Function;)Lrss;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/16 :goto_f

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    :try_start_0
    sget-object p2, Lnrj;->a:Lsdb;

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 v0, 0x1432

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    iget-object p0, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    invoke-interface {p2, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lrss;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    sget-object p1, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lqrg;->B(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lnrj;->g:Lnrs;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_c
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    nop

    nop

    :goto_11
    :try_start_2
    invoke-interface {p2, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lrss;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1, p2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_16
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1, v0}, Lpge;->e(Lphh;)Lprw;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x12

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_4
    :try_start_4
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_1f

    nop

    nop

    :catchall_2
    move-exception p2

    nop

    :try_start_5
    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_5
    :try_start_6
    sget-object p2, Lnrj;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 v2, 0x1430

    nop

    nop

    invoke-interface {p2, v2}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    iget-object p0, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, Lscz;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Lnrj;->H:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    instance-of v0, p1, Lprw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_26
    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_7
    :try_start_7
    sget-object p2, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 v0, 0x1431

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const-string v0, "[%s] can\'t save screenshot as frame has no YUV image"

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lnrj;->c:Ljava/lang/String;

    nop

    invoke-interface {p2, v0, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_45

    nop

    nop

    :goto_2a
    goto :goto_2d

    nop

    :catchall_4
    move-exception p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2b
    sget-object p1, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    check-cast p1, Lpge;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_31
    const-string p2, "[%s] cannot take screenshot after VFE is closed"

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/16 p2, 0x1434

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/16 p2, 0x1433

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Lnrj;->c:Ljava/lang/String;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object p0

    nop

    nop

    :goto_3a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3b
    invoke-interface {p1, p2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    instance-of v0, p1, Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3e
    const-string v1, "[%s] can\'t save screenshot as YUV image has no associated HardwareBuffer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_8
    :try_start_8
    invoke-interface {p1}, Lprw;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string p2, "[%s] no frame found to save as screenshot"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_9
    goto/32 :goto_36

    nop

    :goto_45
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, v0, Lnrs;->b:Lphh;

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m(Lprw;Ljava/lang/String;)V
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface/range {v1 .. v6}, Lscz;->H(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    check-cast v1, Lscz;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x1449

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    add-int/lit8 p1, p1, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const v1, 0x18

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    move-object v6, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v0, Lnrj;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    iget p1, p0, Lnrj;->J:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_15
    iget p1, p0, Lnrj;->J:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    const-string v2, "[%s][%d](repeat=%d) %s"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Lnrj;->J:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    move-object v1, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop
.end method

.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    :goto_0
    aput-object v0, v2, v4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lnrj;->j:Lj$/time/Instant;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const-wide/16 v0, 0x7d0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    const-string v0, "nrj"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const/16 v4, 0x1ba

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Lnrj;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_12
    invoke-static {v4, v5, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_15
    check-cast v0, Lsdb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    new-array v2, v2, [Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_18

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lqht;Loyd;Loyd;Lpdf;Lhoa;Llad;Lnrw;Ljdm;Ljea;Lhql;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lnrs;Lnrq;)V
    .locals 11

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, v0, Lnrj;->I:Lpdh;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v9, v0, Lnrj;->F:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v2, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2, v9}, Lpdf;->b(Ljava/lang/String;)Lpdj;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_4
    iput-object v9, v0, Lnrj;->w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v3, Loyc;

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, v2, v8}, Ligz;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_7
    iput-object v9, v0, Lnrj;->h:Ljava/util/List;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p3, v3, v9}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v3, Lstd;->a:Lstd;

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v7}, Landroid/util/CloseGuard;-><init>()V

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_b
    move-object/from16 v9, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_c
    const-string v1, "close"

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean v7, v0, Lnrj;->H:Z

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean v7, v0, Lnrj;->D:Z

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_f
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v6, v0, Lnrj;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v5, Lnha;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object/from16 v9, p7

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    new-instance v1, Ligz;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_15
    iput-object v6, v0, Lnrj;->f:Lows;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_17
    invoke-virtual {v6, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_c

    nop

    nop

    :goto_18
    iput-object v9, v0, Lnrj;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v9, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_1a
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    check-cast v1, Ljava/util/Collection;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1c
    iput-object v8, v0, Lnrj;->A:Lpci;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v9, v0, Lnrj;->M:Lhql;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_21
    iput-object v7, v0, Lnrj;->m:Lhoa;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v2, Ljava/util/Set;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_25
    invoke-interface {v1, p0}, Lpgh;->l(Lpgg;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v1}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v6}, Lows;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a
    iput-object v9, v0, Lnrj;->L:Llad;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_72

    nop

    nop

    :goto_2c
    iget-object v1, v4, Lnrs;->a:Lpgh;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v9, v0, Lnrj;->o:Lqht;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_2e
    new-instance v7, Landroid/util/CloseGuard;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2f
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_32
    new-instance v3, Lnao;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_33
    move-object v9, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v3, v1}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_35
    goto/32 :goto_1e

    nop

    nop

    :goto_36
    goto/32 :goto_82

    nop

    nop

    :goto_37
    iput-object v4, v0, Lnrj;->g:Lnrs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_38
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v7, p6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v3, v2}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3d
    new-instance v6, Lows;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v3, 0xc

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3f
    iput-object v6, v0, Lnrj;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_40
    iput-object v9, v0, Lnrj;->u:Ljdm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_41
    iput v7, v0, Lnrj;->J:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_42
    const/16 v8, 0xb

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_43
    iput-object v9, v0, Lnrj;->v:Ljea;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v3, p0, v8}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-boolean v9, v5, Lnrq;->b:Z

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_46
    new-instance v5, Lipo;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v6, v9}, Lows;->d(Lpci;)V

    :goto_48
    goto/32 :goto_32

    nop

    nop

    :goto_49
    move-object/from16 v9, p10

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    sget-object v9, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_4c
    iput-object v7, v0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4d
    sget-object v9, Lstd;->a:Lstd;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4e
    invoke-direct {v5, v9}, Lnha;-><init>(I)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v8, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_50
    sget-object v9, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_51
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v5}, Lj$/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_53
    const-wide/16 v8, -0x1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_54
    const-string v10, "VFEPipeline-"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-object/from16 v9, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v3, v5}, Lnha;-><init>(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v3, v5}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v1, v5, Lnrq;->a:Lryy;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5a
    move-object v9, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v5, p14

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v10, "VFE.ready"

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5d
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v3, v1}, Loyc;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v9, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_64

    nop

    nop

    :goto_60
    iput-object v8, v0, Lnrj;->y:Ljava/util/Set;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v2, v10}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v9, Ljava/lang/Object;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_63
    move-object/from16 v4, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_64
    iput-object v9, v0, Lnrj;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_36

    nop

    :goto_66
    move-object v9, p1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_67
    const/16 v9, 0xf

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_69
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v2, p0, v3}, Lnao;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6e
    iput-object v6, v0, Lnrj;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6f
    iput-object v7, v0, Lnrj;->n:Landroid/util/CloseGuard;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {v9, v3, p0, v2, v8}, Lngp;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_71
    iput-object v9, v0, Lnrj;->q:Lpdj;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iput-object v6, v0, Lnrj;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iput-boolean v7, v0, Lnrj;->K:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput-wide v8, v0, Lnrj;->z:J

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_75
    move-object/from16 v9, p11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_76
    invoke-virtual {v7, v1}, Landroid/util/CloseGuard;->open(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    :goto_77
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_78
    invoke-virtual {v6, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/16 v5, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object v9, Lpdh;->a:Lpdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-interface {v1, v2, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v3, Lnha;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_7d
    iput-object v1, v0, Lnrj;->b:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    new-instance v9, Lngp;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_7f
    iput-object v2, v0, Lnrj;->p:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iput-object v9, v0, Lnrj;->I:Lpdh;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iput-object v9, v0, Lnrj;->l:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_82
    move-object v0, p0

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_83
    invoke-virtual {v3, p0}, Lnrw;->a(Lnrv;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_84
    new-instance v2, Lnao;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-object v9, v0, Lnrj;->C:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v1, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_87
    const-string v9, "VFE.IntervalMs"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sget-object v3, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_8b
    sget-object v7, Lnrj;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_8c
    iput-object v9, v0, Lnrj;->G:Lryb;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8d
    if-nez v9, :cond_1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_1
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-direct {v5, v2}, Lipo;-><init>(I)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move-object/from16 v3, p8

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_90
    sget v9, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_91
    iput-boolean v9, v0, Lnrj;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_93
    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized a74c8a79bf0ef0e20983317119c87838m(Lprw;)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto :goto_4

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_d

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v0, Lpde;

    nop

    nop

    nop

    iget-object v1, p0, Lnrj;->p:Lpdf;

    nop

    nop

    const-string v2, "VFE.processFast"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1, v2}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v1, p0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_0

    nop

    const-string v1, "No outputSpecs. Skipping the image."

    nop

    invoke-direct {p0, p1, v1}, Lnrj;->430f03c2ea70bd28108d593eca0c7c30m(Lprw;Ljava/lang/String;)V

    invoke-interface {p1}, Lprw;->close()V

    goto :goto_8

    nop

    nop

    nop

    :cond_0
    new-instance v1, Lpol;

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    invoke-direct {v1, p1, v2}, Lpol;-><init>(Lprw;I)V

    invoke-direct {p0, v1}, Lnrj;->d116db4599d9ddc8c35e61366a4f4967m(Lpci;)V

    invoke-direct {p0}, Lnrj;->b1051a9d8893542362ad09051775f8f6m()Lows;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Lows;->d(Lpci;)V

    invoke-virtual {v1}, Lprt;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_1

    nop

    nop

    nop

    const-string v1, "Failed to get the buffer. Skipping the image."

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v1}, Lnrj;->430f03c2ea70bd28108d593eca0c7c30m(Lprw;Ljava/lang/String;)V

    invoke-virtual {v2}, Lows;->close()V

    goto :goto_8

    nop

    nop

    :cond_1
    new-instance p1, Lndt;

    nop

    nop

    nop

    nop

    const/16 v4, 0xc

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v3, v4, v5}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v2, p1}, Lows;->d(Lpci;)V

    invoke-static {p0}, Lcodexlutruntime;->b(Lnrk;)Lnrm;

    move-result-object v4

    if-eqz v4, :cond_codex_fast_lut_ready

    invoke-interface {v4, v1, v1}, Lnrm;->a(Lprw;Lprw;)Lnrl;

    move-result-object v4

    sget-object v5, Lnrl;->c:Lnrl;

    if-ne v4, v5, :cond_codex_fast_lut_ready

    invoke-virtual {v2}, Lows;->close()V

    goto :goto_8

    :cond_codex_fast_lut_ready
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Lcom/hinnka/mycamera/previewhook/api/MgcMtkPreviewFlowTracer;->refreshSubmitBuffer(Ljava/lang/Object;Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2, p1}, Lnrj;->c43d12f4f4da28dd6c943a4effe477b7m(Lprw;Landroid/hardware/HardwareBuffer;Lows;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_8
    :try_start_4
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()Lows;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xd

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0xa

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lows;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1, p0, v2, v3}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v1, Lndt;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    :goto_11
    iget-object p0, p0, Lnrj;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lnrj;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_14
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Lprw;Landroid/hardware/HardwareBuffer;Lows;Z)V
    .locals 32

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v3, v4, v5}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V

    :try_start_0
    iget-object v4, v0, Lnrj;->h:Ljava/util/List;

    nop

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    xor-int/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrrf;->x(Z)V

    iget-boolean v4, v0, Lnrj;->x:Z

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    iget-boolean v4, v0, Lnrj;->K:Z

    nop

    if-ne v2, v4, :cond_0

    nop

    nop

    goto :goto_2

    nop

    nop

    :cond_0
    iput-boolean v2, v0, Lnrj;->K:Z

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p0 .. p0}, Lnrj;->g()Lryb;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lryb;->size()I

    :cond_1
    :goto_2
    iget-object v2, v0, Lnrj;->u:Ljdm;

    nop

    sget-object v4, Ljds;->a:Ljds;

    nop

    invoke-interface/range {p1 .. p1}, Lprw;->d()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4, v6, v7}, Ljdm;->a(Ljds;J)V

    iget-object v2, v0, Lnrj;->g:Lnrs;

    nop

    iget-object v2, v2, Lnrs;->c:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    iget-object v4, v0, Lnrj;->L:Llad;

    nop

    nop

    invoke-virtual {v4}, Llad;->b()Lpcg;

    move-result-object v4

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v6

    nop

    nop

    nop

    iget-wide v8, v0, Lnrj;->z:J

    nop

    nop

    nop

    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    cmp-long v12, v8, v10

    nop

    nop

    if-lez v12, :cond_2

    nop

    nop

    nop

    nop

    iget-object v12, v0, Lnrj;->q:Lpdj;

    nop

    nop

    nop

    sub-long v8, v6, v8

    nop

    invoke-static {v8, v9}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object v8

    nop

    nop

    invoke-virtual {v8}, Lj$/time/Duration;->toMillis()J

    move-result-wide v8

    nop

    nop

    nop

    long-to-int v8, v8

    nop

    nop

    invoke-interface {v12, v8}, Lpdj;->c(I)V

    :cond_2
    iput-wide v6, v0, Lnrj;->z:J

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Lnrb;

    nop

    nop

    nop

    iget-object v7, v0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v6, v1, v7, v8}, Lnrb;-><init>(Lpci;II)V

    iget-object v7, v0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    if-eqz v9, :cond_e

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Lnjd;

    nop

    nop

    iget-object v13, v0, Lnrj;->g:Lnrs;

    nop

    nop

    nop

    invoke-virtual {v13}, Lnrs;->a()Lpog;

    move-result-object v13

    nop

    nop

    sget-object v14, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    const/4 v15, 0x3

    nop

    nop

    nop

    if-ne v13, v14, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v0, Lnrj;->l:Loyd;

    nop

    nop

    invoke-interface {v13}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    check-cast v13, Ljav;

    nop

    nop

    iget-boolean v13, v13, Ljav;->a:Z

    nop

    nop

    nop

    nop

    nop

    rsub-int v14, v2, 0x168

    nop

    if-eqz v13, :cond_3

    nop

    rsub-int v13, v2, 0x21c

    nop

    nop

    rem-int/lit16 v13, v13, 0x168

    nop

    invoke-static {v13}, Lnrj;->t(I)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_3
    rem-int/lit16 v14, v14, 0x168

    nop

    invoke-static {v14}, Lnrj;->t(I)I

    move-result v13

    nop

    xor-int/2addr v13, v5

    nop

    :goto_4
    or-int/lit8 v13, v13, 0x8

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    invoke-static {v2}, Lnrj;->t(I)I

    move-result v13

    nop

    nop

    or-int/lit8 v14, v13, 0x8

    nop

    nop

    iget-object v10, v0, Lnrj;->b:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    check-cast v10, Ljau;

    nop

    nop

    nop

    nop

    iget-boolean v10, v10, Ljau;->b:Z

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_6

    nop

    nop

    nop

    :cond_5
    or-int/lit8 v13, v13, 0xa

    nop

    nop

    nop

    nop

    :goto_5
    move/from16 v29, v13

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_6
    iget-boolean v10, v9, Lnjd;->b:Z

    nop

    nop

    nop

    if-eqz v10, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lpcg;->ordinal()I

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_5

    nop

    nop

    nop

    nop

    if-eq v10, v5, :cond_7

    nop

    nop

    nop

    const/4 v11, 0x2

    nop

    nop

    nop

    if-eq v10, v11, :cond_5

    nop

    nop

    if-eq v10, v15, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_7
    or-int/lit8 v13, v13, 0x9

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_8
    :goto_6
    move/from16 v29, v14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v10, Landroid/graphics/Rect;

    nop

    nop

    invoke-static/range {p1 .. p2}, Lcom/hinnka/mycamera/previewhook/api/MgcMtkPreviewFlowTracer;->refreshSubmitBuffer(Ljava/lang/Object;Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v11

    nop

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v8, v8, v11, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v11, v6, v12}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    invoke-virtual/range {p2 .. p2}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    iget-object v14, v9, Lnjd;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v9, Lnjd;->c:Lnrt;

    nop

    nop

    if-eqz v13, :cond_9

    nop

    nop

    sget-object v9, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lscs;->c()Lsdo;

    move-result-object v9

    nop

    nop

    nop

    const/16 v10, 0x144e

    nop

    invoke-interface {v9, v10}, Lscz;->M(I)Lsdo;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lscz;

    nop

    nop

    nop

    nop

    const-string v10, "displayBuffer: The buffer is already closed."

    nop

    invoke-interface {v9, v10}, Lscz;->s(Ljava/lang/String;)V

    invoke-virtual {v11}, Landroidx/wear/ambient/AmbientMode$AmbientController;->w()V

    :goto_8
    const-wide/16 v10, 0x0

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    :cond_9
    monitor-enter v9

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object v13, v9

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;

    nop

    nop

    nop

    nop

    nop

    iget-wide v12, v13, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->c:J

    nop

    nop

    const-wide/16 v16, 0x0

    nop

    nop

    cmp-long v12, v12, v16

    nop

    nop

    nop

    nop

    if-nez v12, :cond_a

    nop

    nop

    nop

    nop

    sget-object v10, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Lscs;->c()Lsdo;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    const/16 v11, 0x144d

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10, v11}, Lscz;->M(I)Lsdo;

    move-result-object v10

    nop

    nop

    check-cast v10, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v11, "Calling displayBuffer on an already closed BufferFlinger."

    nop

    invoke-interface {v10, v11}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v9

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_a
    move-object v12, v9

    nop

    nop

    check-cast v12, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;

    nop

    nop

    nop

    iget-object v12, v12, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->b:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v12, v11}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-object v11, v9

    nop

    nop

    nop

    nop

    nop

    check-cast v11, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->b:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Ljava/util/Queue;->size()I

    move-result v11

    nop

    nop

    if-le v11, v15, :cond_b

    nop

    move-object v11, v9

    nop

    check-cast v11, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;

    nop

    iget-object v11, v11, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->b:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v11}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    move-object v12, v11

    nop

    nop

    nop

    check-cast v12, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    :cond_b
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v11, v9

    nop

    nop

    nop

    nop

    check-cast v11, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;

    nop

    nop

    move-object/from16 p4, v6

    nop

    nop

    nop

    nop

    nop

    iget-wide v5, v11, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->c:J

    nop

    nop

    iget v11, v10, Landroid/graphics/Rect;->left:I

    nop

    nop

    iget v15, v10, Landroid/graphics/Rect;->top:I

    nop

    iget v13, v10, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    iget v8, v14, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    move/from16 v30, v2

    nop

    nop

    nop

    nop

    nop

    iget v2, v14, Landroid/graphics/Rect;->top:I

    nop

    move-object/from16 v31, v4

    nop

    iget v4, v14, Landroid/graphics/Rect;->right:I

    nop

    nop

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    move-wide/from16 v18, v5

    nop

    move-object/from16 v20, p2

    nop

    nop

    move/from16 v21, v11

    nop

    nop

    nop

    move/from16 v22, v15

    nop

    nop

    move/from16 v23, v13

    nop

    nop

    nop

    nop

    nop

    move/from16 v24, v10

    nop

    nop

    nop

    nop

    move/from16 v25, v8

    nop

    nop

    nop

    nop

    move/from16 v26, v2

    nop

    nop

    nop

    nop

    nop

    move/from16 v27, v4

    nop

    move/from16 v28, v14

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v18 .. v29}, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->nativeDisplayBuffer(JLandroid/hardware/HardwareBuffer;IIIIIIIII)Z

    move-result v2

    nop

    if-nez v2, :cond_c

    nop

    nop

    nop

    sget-object v2, Lcom/google/android/apps/camera/viewfindereffects/bufferflinger/SurfaceControlBufferFlinger;->a:Lsdb;

    nop

    nop

    invoke-virtual {v2}, Lscs;->c()Lsdo;

    move-result-object v2

    nop

    const/16 v4, 0x144c

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    check-cast v2, Lscz;

    nop

    const-string v4, "displayBuffer: Surface transaction has failed."

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lscz;->s(Ljava/lang/String;)V

    monitor-exit v9

    nop

    nop

    nop

    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :cond_c
    monitor-exit v9

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v4, v31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v2, v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    move/from16 v2, p4

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_10
    throw v1

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    :goto_12
    move-object/from16 v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v6, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v5, "VFE.submitImage"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v12, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_d
    :try_start_2
    invoke-virtual {v12}, Landroidx/wear/ambient/AmbientMode$AmbientController;->w()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v2, v30

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v3}, Lpde;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_8

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v9

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw v0

    nop

    :cond_e
    iget-object v2, v0, Lnrj;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    const/4 v4, 0x1

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    invoke-virtual {v2, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    nop

    if-eqz v2, :cond_f

    nop

    iget-object v2, v0, Lnrj;->w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    nop

    sget-object v4, Lmkd;->r:Lmkd;

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    invoke-virtual {v2, v4, v5}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    iget-object v4, v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lpdh;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpdh;->a()V

    sget-object v4, Lpdh;->a:Lpdh;

    nop

    iput-object v4, v2, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->e:Lpdh;

    nop

    nop

    iget-object v2, v0, Lnrj;->v:Ljea;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljea;->b()V

    :cond_f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v2, v4, v6

    nop

    nop

    nop

    if-ltz v2, :cond_11

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lnrj;->M:Lhql;

    nop

    iget-object v6, v2, Lhql;->d:Lpvg;

    nop

    nop

    invoke-virtual {v6, v4, v5}, Lpvg;->b(J)V

    monitor-enter v2

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v4, v2, Lhql;->a:Ljava/util/List;

    nop

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Lhqk;

    nop

    nop

    invoke-virtual {v5}, Lhqk;->b()V

    goto :goto_1f

    nop

    nop

    :cond_10
    monitor-exit v2

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0

    nop

    :cond_11
    :goto_20
    iget-object v2, v0, Lnrj;->u:Ljdm;

    nop

    nop

    nop

    sget-object v4, Ljds;->b:Ljds;

    nop

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v4, v5, v6}, Ljdm;->a(Ljds;J)V

    iget v2, v0, Lnrj;->J:I

    nop

    nop

    nop

    if-lez v2, :cond_12

    nop

    nop

    nop

    nop

    new-instance v2, Lndt;

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0xb

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    invoke-direct {v2, v0, v4, v5}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput v1, v0, Lnrj;->J:I

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_12
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_22
    move-object/from16 v0, p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_23
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_13
    goto/32 :goto_26

    nop

    :goto_25
    new-instance v3, Lpde;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    move-object v1, v0

    nop

    nop

    nop

    :try_start_7
    invoke-virtual {v3}, Lpde;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v4, v0, Lnrj;->p:Lpdf;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(Lpci;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnrj;->y:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lnrj;->y:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lpci;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m(Lpci;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnrj;->A:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    const-string v3, "[%s] do not update screenshot for WCA - idle time is too long"

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1f

    nop

    nop

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lnrj;->C:Lrss;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Lj$/time/Instant;->isAfter(Lj$/time/Instant;)Z

    move-result v0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lnrj;->j:Lj$/time/Instant;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_10
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_12
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Lnrj;->ccb4c19b7dbd16be9d2a43125797659dm(Lpci;)V

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_18
    iget-boolean v0, p0, Lnrj;->D:Z

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljlz;

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x12

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Ljlz;-><init>(Ljava/lang/Object;I)V

    invoke-direct {p0, p1, v0}, Lnrj;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpci;Ljava/util/function/Function;)Lrss;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lnrj;->C:Lrss;

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v3, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    instance-of v0, p1, Lpge;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2}, Lqrg;->B(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-boolean v1, p0, Lnrj;->D:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_28
    iget-wide v2, p0, Lnrj;->E:J

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2b
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2d
    const/16 v2, 0x1447

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_4

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v2, v3}, Lj$/time/Instant;->minusMillis(J)Lj$/time/Instant;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_31
    if-eqz v0, :cond_5

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    :goto_32
    iput-object p1, p0, Lnrj;->A:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    instance-of v0, p1, Lprw;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final t(I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0xb4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x10e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x7

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x4

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    const-string p0, "vfe"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b(II)Lrss;
    .locals 2

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-interface {p1, v0, p2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const-string v0, "[%s] update screenshot for WCA since it is connected"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_21

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v1, p0, Lnrj;->D:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    invoke-static {p0, p1, p2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Landroid/graphics/Bitmap;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_12
    const/16 p2, 0x1435

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnrj;->C:Lrss;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_14
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lnrj;->C:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    const v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    :goto_19
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    iput-wide v0, p0, Lnrj;->E:J

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p2, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final c(II)Lrss;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lnrj;->A:Lpci;

    nop

    nop

    nop

    new-instance v1, Lnrg;

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, p2}, Lnrg;-><init>(Lnrj;II)V

    invoke-direct {p0, v0, v1}, Lnrj;->1a36313b7ed15ba14e0acb4da569b8b7m(Lpci;Ljava/util/function/Function;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lnrj;->p:Lpdf;

    nop

    nop

    const-string v1, "VFE.close"

    nop

    new-instance v2, Lpde;

    nop

    invoke-direct {v2, v0, v1}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lnrj;->H:Z

    nop

    nop

    if-eqz v0, :cond_0

    nop

    goto/16 :goto_4

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lnrj;->H:Z

    nop

    nop

    iget-object v0, p0, Lnrj;->g:Lnrs;

    nop

    nop

    nop

    iget-object v0, v0, Lnrs;->a:Lpgh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p0}, Lpgh;->m(Lpgg;)V

    iget-object v0, p0, Lnrj;->A:Lpci;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0, v0}, Lnrj;->ccb4c19b7dbd16be9d2a43125797659dm(Lpci;)V

    :cond_1
    iget-object v0, p0, Lnrj;->y:Ljava/util/Set;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lnrj;->y:Ljava/util/Set;

    nop

    nop

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v3, p0, Lnrj;->y:Ljava/util/Set;

    nop

    invoke-interface {v3}, Ljava/util/Set;->clear()V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpci;

    nop

    invoke-interface {v1}, Lpci;->close()V

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    new-instance v1, Lkzc;

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0xf

    nop

    nop

    nop

    nop

    invoke-direct {v1, v3}, Lkzc;-><init>(I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget v0, Lryb;->d:I

    nop

    nop

    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Lnrj;->j(Lryb;)V

    iget-object v0, p0, Lnrj;->p:Lpdf;

    nop

    nop

    nop

    const-string v1, "glContext"

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    invoke-static {}, Lcodexlutruntime;->c()V

    iget-object v0, p0, Lnrj;->f:Lows;

    nop

    nop

    invoke-virtual {v0}, Lows;->close()V

    iget-object v0, p0, Lnrj;->o:Lqht;

    nop

    invoke-interface {v0}, Lqht;->close()V

    iget-object v0, p0, Lnrj;->p:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    iget-object v0, p0, Lnrj;->n:Landroid/util/CloseGuard;

    nop

    nop

    invoke-virtual {v0}, Landroid/util/CloseGuard;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_4
    :try_start_4
    invoke-virtual {v2}, Lpde;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_8
    goto :goto_9

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    nop

    :try_start_5
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_0

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :catchall_2
    move-exception v1

    nop

    nop

    nop

    :try_start_6
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    nop

    nop

    :try_start_8
    invoke-virtual {v2}, Lpde;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x11

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpjo;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnrj;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v2}, Lpdh;->a()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lnrj;->y:Ljava/util/Set;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, p0, v0, v2}, Lnii;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p1, p0, Lnrj;->y:Ljava/util/Set;

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lpjo;->a()Lpge;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Lpge;->f()Z

    move-result p1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lnrj;->d:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_31

    nop

    nop

    :goto_11
    sget-object p1, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lnrj;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    const-string v1, "[%s] The frame %s should be non-null but it is."

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Lnii;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lnrj;->w:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v2, Lpdh;->a:Lpdh;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1, v1}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    check-cast p1, Lscz;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    const/16 v1, 0x1442

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    const-string v2, "[%s] The frame %s should be valid but is closed on arrival."

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lpjo;->b()Lpgi;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v1, 0x1441

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    sget-object v2, Lmkd;->p:Lmkd;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->f:Lpdh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    :goto_2e
    sget-object v3, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->a:Lmko;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2f
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, v2, v3}, Lmkp;->i(Ljava/lang/Enum;Lmko;)V

    goto/32 :goto_2c

    nop

    nop

    :goto_34
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_a

    nop

    nop

    :goto_36
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-interface {v0}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {p1, v2, v1, v0}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3b
    goto/32 :goto_f

    nop

    nop

    :goto_3c
    invoke-interface {v0, v1, p0, p1}, Lscz;->E(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3d
    iput-object v2, v0, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->f:Lpdh;

    nop

    :goto_3e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Lnrj;->k()Z

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final e(Landroid/hardware/HardwareBuffer;IIZ)Landroid/graphics/Bitmap;
    .locals 18

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1c

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, v0

    nop

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-direct {v2, v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V

    :try_start_1
    iget-object v3, v0, Lnrj;->o:Lqht;

    nop

    nop

    nop

    invoke-static {v3, v2}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    new-instance v4, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;

    nop

    nop

    nop

    invoke-direct {v4, v1}, Lcom/google/android/libraries/oliveoil/natives/BitmapNativeBuffer;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnrj;->f()Lqht;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v4, Lqlq;->a:Lqhe;

    nop

    invoke-static {v5, v6}, Lqjv;->g(Lqht;Lqhe;)Lqjv;

    move-result-object v5

    nop

    nop

    nop

    nop

    new-instance v6, Lqlr;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5}, Lqlr;-><init>(Ljava/lang/Object;)V

    invoke-static {v6}, Lqjs;->l(Lqlt;)Lqjs;

    move-result-object v5

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lnrj;->f()Lqht;

    move-result-object v6

    nop

    nop

    nop

    nop

    new-instance v7, Lqjw;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v6}, Lqjw;-><init>(Lqht;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v6, v0, Lnrj;->g:Lnrs;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Lnrs;->c:Loyd;

    nop

    nop

    nop

    invoke-interface {v6}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    nop

    nop

    if-eqz p4, :cond_0

    nop

    nop

    nop

    nop

    rsub-int v6, v6, 0x168

    nop

    rem-int/lit16 v6, v6, 0x168

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const/16 v8, 0x10

    nop

    nop

    nop

    nop

    nop

    new-array v15, v8, [F

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    invoke-static {v15, v14}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/high16 v9, 0x3f000000    # 0.5f

    nop

    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v15, v14, v9, v9, v13}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    neg-int v9, v6

    nop

    nop

    nop

    nop

    int-to-float v11, v9

    nop

    nop

    nop

    nop

    const/16 v16, 0x0

    nop

    const/high16 v17, 0x3f800000    # 1.0f

    nop

    nop

    const/4 v10, 0x0

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    move-object v9, v15

    nop

    nop

    move v8, v13

    nop

    nop

    move/from16 v13, v16

    nop

    nop

    nop

    move-object/from16 p2, v1

    nop

    nop

    nop

    move v1, v14

    nop

    nop

    nop

    nop

    move/from16 v14, v17

    nop

    nop

    nop

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    if-eqz p4, :cond_2

    nop

    nop

    nop

    nop

    nop

    rem-int/lit16 v6, v6, 0xb4

    nop

    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    const/high16 v11, 0x43340000    # 180.0f

    nop

    nop

    const/4 v12, 0x0

    nop

    move-object v9, v15

    nop

    nop

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto :goto_8

    nop

    nop

    nop

    :cond_1
    const/4 v13, 0x0

    nop

    const/4 v14, 0x0

    nop

    const/4 v10, 0x0

    nop

    const/high16 v11, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    nop

    const/high16 v12, 0x3f800000    # 1.0f

    nop

    nop

    nop

    move-object v9, v15

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_2
    :goto_8
    const/high16 v6, -0x41000000    # -0.5f

    nop

    nop

    nop

    nop

    invoke-static {v15, v1, v6, v6, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    move v14, v1

    nop

    nop

    nop

    const/16 v1, 0x10

    nop

    nop

    :goto_9
    if-ge v14, v1, :cond_3

    nop

    nop

    nop

    nop

    aget v6, v15, v14

    nop

    nop

    nop

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    nop

    nop

    int-to-float v6, v6

    nop

    nop

    nop

    aput v6, v15, v14

    nop

    nop

    nop

    add-int/lit8 v14, v14, 0x1

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v7, v3, v5, v15}, Lqjw;->c(Lqiu;Lqjs;[F)V

    new-instance v1, Lkhy;

    nop

    nop

    const/4 v6, 0x3

    nop

    nop

    nop

    invoke-direct {v1, v6}, Lkhy;-><init>(I)V

    new-instance v8, Lqex;

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v8, v4, v6, v9}, Lqex;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v5, v1, v8}, Lqia;->d(Lqja;Lqeu;)Lqfs;

    iget-object v0, v0, Lnrj;->o:Lqht;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lqoe;->B(Lqht;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v7}, Lqjw;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v5}, Lqia;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v3}, Lqia;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a

    nop

    :goto_d
    move-object v1, v0

    nop

    nop

    nop

    :try_start_9
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    move-object v2, v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    move/from16 v2, p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object p2

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v1, v0

    nop

    :try_start_a
    invoke-virtual {v3}, Lqia;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    move-object/from16 v3, p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x10

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_1f

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v4, v0

    nop

    nop

    nop

    nop

    :try_start_b
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1c
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v0

    nop

    :try_start_c
    throw v0

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v1, v0

    nop

    nop

    :try_start_d
    invoke-virtual {v7}, Lqjw;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    move-object v3, v0

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_21
    throw v1

    nop

    nop

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :catchall_6
    move-exception v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw v1

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v1, v0

    nop

    nop

    nop

    nop

    :try_start_f
    invoke-virtual {v5}, Lqia;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_21

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public final f()Lqht;
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnrj;->o:Lqht;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    const-string v1, "[%s] Tried to get GL context after ViewfinderEffectsPipeline is closed"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    iget-object v2, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v2}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lnrj;->H:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    xor-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    const v0, 0x11

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final finalize()V
    .locals 4

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lnrj;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lnrj;->a:Lsdb;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x1439

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/util/CloseGuard;->warnIfOpen()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    const-string v0, "Inflight VFE images after close!"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lhoa;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v3, "[%s] Still %d inflight process(es) at VFE close!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lnrj;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lnrj;->B:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnrj;->n:Landroid/util/CloseGuard;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1a
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_20
    invoke-interface {v0, v3, v1, v2}, Lscz;->C(Ljava/lang/String;Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lnrj;->m:Lhoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_22
    sget-object v0, Lhoa;->a:Lhoa;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_23
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop
.end method

.method public final g()Lryb;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lnrj;->G:Lryb;

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnrj;->F:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final h(Lprw;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    iget-object v0, p0, Lnrj;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Lnrj;->a74c8a79bf0ef0e20983317119c87838m(Lprw;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method final declared-synchronized i(Lpge;)V
    .locals 9

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p1

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    :try_start_1
    invoke-virtual {v2}, Lpde;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lnrj;->p:Lpdf;

    nop

    nop

    const-string v1, "VFE.process"

    nop

    nop

    nop

    new-instance v2, Lpde;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v0, v1}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-boolean v0, p0, Lnrj;->H:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    const-string v0, "Pipeline was already closed. Aborting Display."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0}, Lnrj;->132cd3b981019b59dc42653eea0b34b4m(Lpge;Ljava/lang/String;)V

    goto/16 :goto_f

    nop

    :cond_1
    invoke-direct {p0, p1}, Lnrj;->d116db4599d9ddc8c35e61366a4f4967m(Lpci;)V

    iget-object v0, p0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    const-string v0, "No output configured yet. Aborting display."

    nop

    nop

    invoke-direct {p0, p1, v0}, Lnrj;->132cd3b981019b59dc42653eea0b34b4m(Lpge;Ljava/lang/String;)V

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lnrj;->g:Lnrs;

    nop

    invoke-direct {p0}, Lnrj;->b1051a9d8893542362ad09051775f8f6m()Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->a()Lpge;

    move-result-object v3

    nop

    nop

    if-nez v3, :cond_3

    nop

    const-string v0, "failed to fork() frame. Aborting display."

    nop

    nop

    invoke-direct {p0, p1, v0}, Lnrj;->132cd3b981019b59dc42653eea0b34b4m(Lpge;Ljava/lang/String;)V

    invoke-virtual {v1}, Lows;->close()V

    goto/16 :goto_f

    nop

    nop

    nop

    :cond_3
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    iget-object v4, v0, Lnrs;->b:Lphh;

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpge;->e(Lphh;)Lprw;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    const-string v0, "can\'t display frame as frame has no associated YUV image"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0}, Lnrj;->132cd3b981019b59dc42653eea0b34b4m(Lpge;Ljava/lang/String;)V

    invoke-virtual {v1}, Lows;->close()V

    goto/16 :goto_f

    nop

    nop

    nop

    :cond_4
    invoke-virtual {v1, v3}, Lows;->d(Lpci;)V

    invoke-interface {v3}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v4

    nop

    nop

    if-nez v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    const-string v0, "can\'t display frame as YUV image has no associated HardwareBuffer"

    nop

    invoke-direct {p0, p1, v0}, Lnrj;->132cd3b981019b59dc42653eea0b34b4m(Lpge;Ljava/lang/String;)V

    invoke-virtual {v1}, Lows;->close()V

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    new-instance v5, Lndt;

    nop

    nop

    const/16 v6, 0xc

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    invoke-direct {v5, v4, v6, v7}, Lndt;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v1, v5}, Lows;->d(Lpci;)V

    invoke-static {p0}, Lcodexlutruntime;->b(Lnrk;)Lnrm;

    move-result-object v5

    if-eqz v5, :cond_codex_lut_ready

    iget-object v6, v0, Lnrs;->b:Lphh;

    invoke-interface {v5, p1, v6, p1}, Lnrm;->b(Lpge;Lphh;Lpge;)Lnrl;

    move-result-object v5

    sget-object v6, Lnrl;->c:Lnrl;

    if-ne v5, v6, :cond_codex_lut_ready

    invoke-virtual {v1}, Lows;->close()V

    goto :goto_f

    :cond_codex_lut_ready
    invoke-virtual {p0}, Lnrj;->g()Lryb;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lryb;->isEmpty()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_7

    nop

    nop

    invoke-virtual {v5}, Lryb;->t()Lscq;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Lnrm;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v0, Lnrs;->b:Lphh;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, p1, v7, p1}, Lnrm;->b(Lpge;Lphh;Lpge;)Lnrl;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lnrl;->c:Lnrl;

    nop

    nop

    if-ne v6, v7, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lows;->close()V

    goto :goto_f

    nop

    nop

    nop

    :cond_7
    const/4 p1, 0x1

    nop

    nop

    nop

    invoke-static {v3, v4}, Lcom/hinnka/mycamera/previewhook/api/MgcMtkPreviewFlowTracer;->refreshSubmitBuffer(Ljava/lang/Object;Landroid/hardware/HardwareBuffer;)Landroid/hardware/HardwareBuffer;

    move-result-object v4

    invoke-direct {p0, v3, v4, v1, p1}, Lnrj;->c43d12f4f4da28dd6c943a4effe477b7m(Lprw;Landroid/hardware/HardwareBuffer;Lows;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_f
    :try_start_4
    invoke-virtual {v2}, Lpde;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final j(Lryb;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    :try_start_0
    invoke-static {p0, p1}, Lcom/hinnka/mycamera/previewhook/api/MgcNrjStageChainAugmenter;->augmentStages(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_codex_keep_stages

    move-object p1, v1

    check-cast p1, Lryb;

    :cond_codex_keep_stages
    iput-object p1, p0, Lnrj;->G:Lryb;

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnrj;->F:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lnrj;->g()Lryb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lryb;->isEmpty()Z

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lnrj;->x:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized l(Lnjd;)Lpci;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnrj;->h:Ljava/util/List;

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lnjd;->d:Ljava/util/function/Consumer;

    nop

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget v0, p1, Lnjd;->f:I

    nop

    iget v1, p1, Lnjd;->g:I

    nop

    nop

    nop

    const/16 v2, 0x180

    nop

    nop

    if-le v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    mul-int/2addr v1, v2

    nop

    nop

    nop

    nop

    div-int/2addr v1, v0

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    mul-int/2addr v0, v2

    nop

    div-int/2addr v0, v1

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    move v2, v0

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroid/util/Size;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v0, p0, Lnrj;->i:Landroid/util/Size;

    nop

    nop

    iget-object v0, p0, Lnrj;->I:Lpdh;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdh;->a()V

    sget-object v0, Lpdh;->a:Lpdh;

    nop

    nop

    nop

    iput-object v0, p0, Lnrj;->I:Lpdh;

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Lhkf;

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    invoke-direct {v1, p0, v0, p1, v2}, Lhkf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lpci;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    return-object p1

    nop

    nop

    :cond_3
    :try_start_2
    iget-object v0, p0, Lnrj;->h:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    new-instance p1, Lncl;

    nop

    nop

    nop

    nop

    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, v0}, Lncl;-><init>(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_3
    iget-boolean v0, p1, Lnjd;->e:Z

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Surface is invalid: ignoring set filter output"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lnrj;->H:Z

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    new-instance p1, Lncl;

    nop

    nop

    nop

    const/16 v0, 0xa

    nop

    invoke-direct {p1, v0}, Lncl;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
