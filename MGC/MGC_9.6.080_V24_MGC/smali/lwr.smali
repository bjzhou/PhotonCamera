.class public final Llwr;
.super Llwf;
.source "PG"


# static fields
.field public static final c:Lsdb;


# instance fields
.field public final d:Llxj;

.field public final e:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "lwr"

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Llwr;->c:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Llvt;Llqc;Llxj;Ljava/lang/String;Lgii;Llxg;)V
    .locals 11

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v1, v0, Llwr;->e:Ljava/util/concurrent/locks/ReentrantLock;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v2, Llxo;->g:Llxo;

    nop

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

    :goto_6
    move-object v3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v6, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x12

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

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_d
    iput-object v1, v0, Llwr;->d:Llxj;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {v1 .. v10}, Llvt;->a(Llxo;Ljava/lang/String;Lgii;Llxg;Llqc;Lrss;ZJ)Llvs;

    move-result-object v1

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

    :goto_11
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    move-object v1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    move-object/from16 v5, p6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v4, p5

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

    :goto_15
    return-void

    nop

    :goto_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    iget-wide v9, v5, Llxg;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    invoke-direct {p0, v1}, Llwf;-><init>(Llvs;)V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final C()V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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
    goto/32 :goto_3

    nop

    nop

    :goto_3
    const-string v0, "finish"

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

    :goto_4
    invoke-virtual {v0}, Lfdo;->O()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

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

    :goto_7
    invoke-virtual {v0, v1, v2}, Lfdo;->R(II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Cannot call finish without calling startSession first."

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

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_a
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x13

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v1, p0, v2}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_13
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    invoke-virtual {p0}, Llwf;->z()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Llmx;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final L()V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v2}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "Ignoring updatePreview. CaptureSession is not started."

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Llwf;->z()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "updatePreview"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Llwf;->J(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    const/16 v2, 0x14

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    new-instance v1, Llmx;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lfdo;->O()Z

    move-result v0

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
.end method

.method public final X(Lpck;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Llwf;->Q()V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Llwb;->c(Ljrl;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Ljrl;->a()Ljrk;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object p1, p0, Llwf;->b:Llvs;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Llvs;->K(Llxm;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Llwf;->j()Llxm;

    move-result-object v0

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

    :goto_6
    invoke-super {p0, p1}, Llwf;->X(Lpck;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Llwf;->k()Llxo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iput-object p0, v0, Ljrk;->a:Llxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Llwf;->g()Llwb;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljrk;->a()Ljrl;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final s([BLmla;)Lsui;
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lfdo;->M()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Llwf;->f()Lgii;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Llwf;->ag()Lmjn;

    move-result-object v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v1, Lpfv;

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

    :goto_5
    invoke-virtual {p0}, Llwf;->f()Lgii;

    move-result-object v0

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

    :goto_6
    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    move-object v3, p0

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

    :goto_8
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

    :goto_9
    filled-new-array {v2, v3}, [I

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Llwf;->J(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lgii;->b()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v1

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

    :goto_f
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0}, Lpic;->L(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lgii;->b()Lrss;

    move-result-object v1

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

    nop

    :goto_12
    move-object v4, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lpsz;->c:Lpsz;

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

    :goto_14
    const/4 v3, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Llvs;->y:Lpic;

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Llwf;->q()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v0}, Lpfv;->d(Landroid/location/Location;)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1a
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v1, v0}, Lpfv;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Llwf;->z()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v3}, Lfdo;->Q(I)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, v1, Lmjn;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

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

    :goto_23
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3a

    nop

    nop

    :goto_25
    new-instance v1, Leqn;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct/range {v2 .. v7}, Leqn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v6, p2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v7, 0xe

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

    :goto_2a
    invoke-virtual {v1, v2}, Lfdo;->P([I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Lgii;->b()Lrss;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    move-object v2, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    :goto_2e
    check-cast v0, Landroid/location/Location;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v1}, Llwf;->H(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_3
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3d

    nop

    :goto_32
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_33
    const-string p1, "Ignoring saveAndFinish. CaptureSession has been deleted or canceled."

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Llwf;->f()Lgii;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Llwf;->K()Lfdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p2, Lmla;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3b
    const-string v1, "saveAndFinish"

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

    :goto_3c
    goto/32 :goto_36

    nop

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v1, :cond_5

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, v1, Lpfv;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_42
    iget-object v1, p2, Lmla;->a:Lpsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_43
    iput-object v1, p2, Lmla;->c:Lrss;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Llwf;->b:Llvs;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method
