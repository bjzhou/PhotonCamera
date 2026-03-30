.class Lhth;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhtr;
.implements Ljpv;
.implements Ljpq;


# static fields
.field private static final a:Lsdb;

.field private static final b:Lryb;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;

.field private final d:Lggv;

.field private final e:Loyn;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Lmjv;

.field private final h:Lgvg;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sget-object v1, Lnne;->c:Lnne;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, v2, v3}, Lryb;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lryb;

    move-result-object v0

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

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lhth;->a:Lsdb;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "hth"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lnne;->b:Lnne;

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

    :goto_d
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_f
    sput-object v0, Lhth;->b:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    sget-object v2, Lnne;->i:Lnne;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v3, Lnne;->h:Lnne;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
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

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Lmjv;Lggv;Loyn;Lgvg;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhth;->c:Ljava/lang/ref/WeakReference;

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

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lhth;->d:Lggv;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lhth;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p4, p0, Lhth;->e:Loyn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const v1, 0x18

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

    :goto_12
    iput-object p2, p0, Lhth;->g:Lmjv;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p5, p0, Lhth;->h:Lgvg;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 12

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_3
    iget-object v0, p0, Lhth;->g:Lmjv;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v0, "Camera has been disabled because of security policies."

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

    :goto_5
    invoke-static {v1, v2, v0, v11}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v11, Ljava/lang/Exception;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->BvhWToF:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lhth;->a:Lsdb;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    const/16 v2, 0x4c8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v11}, Lhth;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const/4 v1, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v5, -0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v6, 0x0

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

    :goto_15
    const/4 v1, 0x0

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

    :goto_16
    invoke-virtual/range {v0 .. v10}, Lmjv;->s(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lpdr;Z)V

    goto/32 :goto_4

    nop

    nop

    :goto_17
    sget-object v9, Lpdr;->m:Lpdr;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    const v1, 0x2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v11}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    :goto_1c
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v7, v8

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/lang/Throwable;)V
    .locals 12

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "Camera Hardware failure: One or more cameras may not have been enumerated"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Lhtn;

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0x4c9

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

    :goto_6
    iget-object v0, p1, Lhtn;->a:Ljava/util/List;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lpdr;->a:Lpdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_a
    const/4 v6, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    sget-object v0, Lhth;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget v0, Lryb;->d:I

    nop

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

    :goto_12
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lkotlinx/coroutines/android/cMC/QBzQbzDQvUUZ;->UbGy:Ljava/lang/String;

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

    :goto_14
    const/16 v1, 0xc

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual/range {v0 .. v10}, Lmjv;->s(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lpdr;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    sget-object v8, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    const v1, 0x10

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v9, p1, Lhtn;->b:Lpdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    invoke-static {v1, v2, v0, v11}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    new-instance v11, Ljava/lang/Exception;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    move-object v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v11}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lhth;->g:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1, v11}, Lhth;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final cX()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    iget-object p0, p0, Lhth;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhth;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Ljava/lang/Throwable;)V
    .locals 14

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, v1, Lhts;->b:Lpnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1
    const-string v0, "Camera open failure invoked while the camera is paused, camera had successfully opened before, ignoring."

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lnne;->f:Lnne;

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_25

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Lgvg;->j()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v1, p1

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

    nop

    :goto_9
    move-object v4, p1

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

    :goto_a
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v6, v1, Lpdx;->b:Lpnx;

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

    :goto_d
    move-object v10, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lhth;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v6, v1}, Lryb;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1, p0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_21

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_12
    invoke-static {v1, v2, p1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v12}, Lpdr;->c()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_14
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    :goto_16
    const/4 v6, -0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual/range {v1 .. v11}, Lmjv;->s(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lpdr;Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2}, Lpdr;->e(Lpdr;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_19
    move v11, v3

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_1a
    const-wide/16 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1b
    const/16 v2, 0x4ca

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v1, Lhts;->b:Lpnx;

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

    :goto_1d
    iget-object v1, p0, Lhth;->h:Lgvg;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_57

    nop

    nop

    :goto_1f
    if-nez v13, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    iget-object v1, v1, Lpdx;->b:Lpnx;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_24
    check-cast v1, Lhts;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_25
    iget-wide v6, v1, Lhts;->c:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_26
    iget-object v3, v3, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    instance-of v1, p1, Lpdx;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_28
    sget-object p0, Lhth;->a:Lsdb;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2a
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2c
    invoke-virtual {v6}, Lpnx;->c()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto :goto_31

    nop

    :goto_2e
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3}, Lpnx;->c()Z

    move-result v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_30
    move v13, v5

    nop

    nop

    :goto_31
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_76

    nop

    nop

    :goto_35
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v6, p0, Lhth;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_37
    const-string v2, "1"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_38
    move-object v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    :goto_3c
    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->QSDOnQ:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3d
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3e
    const v1, 0x12

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_40
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v1, Lhtg;->b:Lhtg;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Lhth;->e:Loyn;

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_45
    const-string v1, "c2xvd19tb19maXg"

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v6, :cond_8

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Lhth;->e:Loyn;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    new-instance v0, Ljava/lang/Exception;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4a
    if-gtz v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_9
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v1, Lpdx;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4c
    iget-boolean v3, v1, Lpdx;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/4 v5, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_4f
    iget-object v3, v3, Lhtg;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v2, v1, Lhts;->a:Lpdr;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_53
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_41

    nop

    nop

    :goto_54
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_56
    const/16 v1, 0x4cb

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_57
    move-object v1, p1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5a
    if-eq v1, v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_45

    nop

    nop

    :goto_5b
    new-instance v9, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5c
    cmp-long v1, v6, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5d
    move-object v3, v1

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

    :goto_5e
    invoke-static {v1}, Lcom/a;->ab(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, v1, Lpdx;->a:Lpdr;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_61
    invoke-virtual {p0, p1, v0}, Lhth;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_62
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v1, v2}, Lcom/a;->aa(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_64
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_65
    instance-of v1, p1, Lhts;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    sget-object v2, Lpdr;->m:Lpdr;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_67
    invoke-static {v1}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move v4, v5

    nop

    :goto_69
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6a
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6b
    invoke-static {}, Lcom/google/android/apps/camera/legacy/app/activity/main/CameraActivity;->a()V

    :goto_6c
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_6d
    iget-object v1, p0, Lhth;->g:Lmjv;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_6e
    sget-object v1, Lhtg;->c:Lhtg;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v1, v1, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto :goto_69

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_73
    sget-object v6, Lhth;->b:Lryb;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget v2, Lryb;->d:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_75
    if-nez v3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_36

    nop

    nop

    :goto_76
    sget-object v3, Lhtg;->d:Lhtg;

    nop

    nop

    :goto_77
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    :cond_d
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_79
    sget-object v3, Lhtg;->a:Lhtg;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_22

    nop

    nop

    :goto_7b
    goto/32 :goto_28

    nop

    nop
.end method

.method public final f()V
    .locals 12

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    sget v0, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    const-string v1, "Handling Camera Reconnect Failure:"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    goto/32 :goto_18

    nop

    :goto_5
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v9, Lpdr;->m:Lpdr;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    invoke-static {v1, v2, v0, v11}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0, v11}, Lhth;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    move-object v7, v8

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    move-object v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    sget-object v8, Lsbh;->a:Lryb;

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
    sget-object v0, Lhth;->a:Lsdb;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    const/16 v2, 0x4cc

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhth;->g:Lmjv;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual/range {v0 .. v10}, Lmjv;->s(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lpdr;Z)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v11}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v5, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1b
    const-string v0, "Camera Reconnect Failure"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    new-instance v11, Ljava/lang/Exception;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 12

    goto/32 :goto_10

    nop

    nop

    :goto_0
    move-object v3, v11

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhth;->g:Lmjv;

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

    :goto_5
    invoke-virtual {p0, v0, v11}, Lhth;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v5, -0x1

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

    :goto_7
    invoke-virtual/range {v0 .. v10}, Lmjv;->s(ILjava/lang/String;Ljava/lang/Throwable;IIILjava/util/List;Ljava/util/List;Lpdr;Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v8, Lsbh;->a:Lryb;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x1

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

    nop

    :goto_c
    new-instance v11, Ljava/lang/Exception;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x4cd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    sget-object v0, Lhth;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v9, Lpdr;->m:Lpdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_14
    move-object v7, v8

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Camera Access Failure"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-static {v1, v2, v0, v11}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    invoke-direct {v11}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v1, "Handling Camera Access Failure:"

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

    :goto_1c
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v10, 0x0

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

    :goto_1e
    const v1, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    sget v0, Lryb;->d:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 7

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_5
    goto/32 :goto_43

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    :goto_7
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    :goto_a
    const-string v1, "There was a problem with the media recorder."

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    iput v2, v3, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_d
    sget-object v1, Lskd;->a:Lskd;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1, v0}, Lhth;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Lhth;->g:Lmjv;

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

    :goto_10
    or-int/lit16 v2, v2, 0x80

    nop

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

    nop

    :goto_11
    if-eqz v4, :cond_2

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v3, 0x4ce

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_14
    sget-object v1, Lhth;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Ltkb;->i()Ltkg;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_16
    iget-object v3, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ltkg;->m()Ltkb;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v2, v4, Lskd;->b:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    or-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v5, Lske;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v4, v2, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v4, v1, Ltkb;->b:Ltkg;

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

    :goto_1f
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_21
    move-object v5, v4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v2, "Handling MediaRecorder Failure:"

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

    nop

    :goto_24
    iget v2, v2, Lskc;->aG:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v0, Ljava/lang/Exception;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_26
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v2, v4, Lskd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

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

    nop

    :goto_2a
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    check-cast v3, Lskd;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2c
    sget-object v2, Lske;->a:Lske;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v4, v5, Lske;->e:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    iput-object v2, v4, Lskd;->l:Lske;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast v4, Lskd;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_30
    iget v2, v3, Lskd;->b:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput v6, v5, Lske;->b:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2}, Ltkb;->o()V

    :goto_33
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    iget-object v4, v3, Lmjv;->h:Ljava/lang/String;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_38
    or-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_39
    check-cast v5, Lske;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v3, v1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3b
    iget v6, v5, Lske;->b:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v2, Lskc;->g:Lskc;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3e
    iget v6, v5, Lske;->b:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v5, v2, Ltkb;->b:Ltkg;

    nop

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

    :goto_41
    iput v6, v5, Lske;->b:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v6, v5, Lske;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

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

    :goto_47
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_48
    goto/32 :goto_1e

    nop

    nop

    :goto_49
    or-int/lit8 v6, v6, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4a
    iget-object v3, v2, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    check-cast v2, Lske;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_4c
    iput v2, v3, Lskd;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop
.end method

.method protected final i(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const/16 v3, 0x4c6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Lhth;->d:Lggv;

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

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const-string v2, "Activity received a fatal error. Finishing activity: %s"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lhth;->d:Lggv;

    nop

    invoke-virtual {p0}, Lggv;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

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

    nop

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lggu;

    nop

    invoke-interface {v0, p2}, Lggu;->a(Ljava/lang/Throwable;)V

    goto :goto_e

    nop

    nop

    :cond_0
    monitor-exit p1

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

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {v2, p1, v3, v1, p2}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v1, Lhth;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lhth;->c:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
