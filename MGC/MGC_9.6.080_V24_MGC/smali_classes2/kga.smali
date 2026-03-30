.class public final Lkga;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjc;


# static fields
.field private static final b:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final a:Lkhf;

.field private final c:Lpcu;

.field private final d:Landroid/media/MediaFormat;

.field private final e:Landroid/media/MediaFormat;

.field private final f:J

.field private final g:Llgc;

.field private final h:Lrss;

.field private final i:Lrss;

.field private final j:Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

.field private final k:Lhoh;

.field private final l:Lkug;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lkga;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    const v0, 0xa

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x7

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
    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkug;Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;Lpcu;Lhoh;Lkhf;Landroid/media/MediaFormat;Landroid/media/MediaFormat;JLlgc;Lrss;Lrss;)V
    .locals 0

    goto/32 :goto_e

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkga;->l:Lkug;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lkga;->k:Lhoh;

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

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    iput-wide p8, p0, Lkga;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iput-object p12, p0, Lkga;->i:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lkga;->a:Lkhf;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lkga;->j:Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p7, p0, Lkga;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Lkga;->d:Landroid/media/MediaFormat;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-interface {p3, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-class p1, Lkhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iput-object p10, p0, Lkga;->g:Llgc;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p11, p0, Lkga;->h:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lkga;->c:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private static d(ZZ)I
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    const/4 p0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
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

    :goto_8
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final b(Lpge;Lkmq;Lkjj;Lkjb;)V
    .locals 20

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v14, v1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "launcher got a HDR+ burst"

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v13, v3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v19, v9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v11, v2, v3}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface/range {p1 .. p1}, Lpge;->close()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_21

    nop

    :goto_b
    :try_start_0
    new-instance v3, Lkfz;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v1

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v11, Loel;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v1, Lpok;

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

    :goto_10
    iget-object v2, v0, Lkga;->c:Lpcu;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v14, v2, v1}, Lpcy;-><init>(Lpcu;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v2, v0

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v14, v1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_16
    move-object/from16 v19, v9

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_17
    move-object/from16 v10, p4

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_18
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    invoke-interface {v10, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    move-object v11, v14

    nop

    nop

    :try_start_2
    invoke-direct/range {v1 .. v11}, Lkfz;-><init>(Lkga;Lpol;Lkjj;JLpro;Lprw;Lprw;Lkjb;Lpcu;)V

    iget-object v1, v0, Lkga;->l:Lkug;

    nop

    invoke-virtual/range {v16 .. v16}, Loel;->d()Lphh;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lphh;->d()Lpnx;

    move-result-object v2

    nop

    nop

    iget v3, v12, Lkmq;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v15, v3}, Lkug;->a(Lpnx;Lpro;I)Lrle;

    move-result-object v1

    nop

    nop

    nop

    iget-boolean v2, v12, Lkmq;->i:Z

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_1c
    const v0, 0x1d

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v1, v0

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

    :goto_1e
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v1, " "

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object v1, v0

    nop

    :goto_21
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1, v5, v6}, Lpok;-><init>(J)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v12, p2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_27
    goto/16 :goto_8c

    nop

    :catchall_2
    move-exception v0

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_28
    move-object v7, v15

    nop

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

    nop

    :goto_29
    const-string v1, "Could not get a raw image from input frame"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_2a
    move-object v8, v4

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_85

    nop

    nop

    :goto_2c
    move-object v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "Timed out waiting for metadata."

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v11}, Loel;->g()Lprw;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_5c

    nop

    nop

    :goto_32
    move-object v1, v0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_33
    if-eqz v4, :cond_1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v3, Lcom/google/android/apps/camera/jni/microvideotonemap/EeD/yHEIcF;->rcVeLScdbsIxmZg:Ljava/lang/String;

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

    :goto_35
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :cond_2
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v9, Lpol;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_37
    goto :goto_3e

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v10, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v19, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Lkga;->g:Llgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v14, v1}, Lpcu;->b(Ljava/lang/String;)V

    :try_start_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/apps/camera/moments/MomentsUtils;->a(Lpge;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x1388

    nop

    nop

    invoke-interface {v1, v3, v4, v2}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    move-object v15, v1

    nop

    check-cast v15, Lpro;

    nop

    nop
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_0

    goto/32 :goto_73

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3e
    goto/32 :goto_c

    nop

    nop

    :goto_3f
    sget-object v1, Lkga;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_41
    move-object v1, v0

    nop

    nop

    nop

    :goto_42
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_44
    move-object/from16 v19, v9

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface/range {p1 .. p1}, Lpge;->close()V

    goto/32 :goto_19

    nop

    nop

    :goto_48
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_40

    nop

    nop

    :goto_4a
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_2a

    nop

    nop

    :goto_4c
    const-string v13, "launched FastMomentsHdr shot, outputFormat = "

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4d
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    :goto_4f
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_51
    new-instance v14, Lpcy;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const-string v1, "Failed to acquire metadata from the first frame."

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_53
    invoke-direct {v9, v2, v7}, Lpol;-><init>(Lprw;I)V

    :try_start_6
    new-instance v4, Lpol;

    nop

    nop

    nop

    invoke-direct {v4, v8, v7}, Lpol;-><init>(Lprw;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    const-string v1, "Acquired frame metadata successfully."

    nop

    nop

    nop

    invoke-interface {v14, v1}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v4}, Lpol;->k()Lprw;

    move-result-object v16

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object v2, v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_55
    move-object/from16 v18, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v10, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface/range {p1 .. p1}, Lpge;->close()V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    return-void

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_5c
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5d
    move-object/from16 v18, v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5e
    move-object/from16 v18, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v1, "metadata get interrupted"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_60
    move-object/from16 v9, v16

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_61
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_62
    add-int v0, v0, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v11}, Loel;->h()Lprw;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_65
    invoke-interface {v14, v1}, Lpcu;->d(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    :goto_66
    move-object/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_67
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_68
    return-void

    nop

    :cond_3
    :try_start_8
    iget-object v0, v0, Lkga;->j:Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v1, v15, v13}, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a(Lprw;Lrle;Lkiv;Lkiu;)V

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v4, v0, :cond_5

    nop

    nop

    nop

    if-eq v4, v3, :cond_4

    nop

    nop

    nop

    const-string v0, "YUV_IMAGE"

    nop

    goto :goto_69

    nop

    nop

    nop

    :cond_4
    const-string v0, "YUV_HARDWARE_BUFFER"

    nop

    nop

    nop

    nop

    goto :goto_69

    nop

    :cond_5
    const-string v0, "RGBA_HARDWARE_BUFFER"

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, v12, Lsxy;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    move-object/from16 v3, v17

    nop

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", outputColorSpace = "

    nop

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v14, v0}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/32 :goto_2d

    nop

    nop

    :goto_6a
    move-object v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_6b
    invoke-virtual/range {v19 .. v19}, Lpol;->l()V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v10, v0}, Lkjb;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface/range {p1 .. p1}, Lpge;->b()Lpgi;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v16, v11

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-wide v5, v1, Lpgi;->b:J

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_70
    new-instance v0, Ljava/lang/RuntimeException;

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

    :goto_71
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const-string v3, "    with frame: "

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface/range {p1 .. p1}, Lpge;->b()Lpgi;

    move-result-object v1

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

    nop

    :goto_74
    invoke-virtual {v9}, Lpol;->l()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-object/from16 v17, v13

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-eqz v16, :cond_6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_6
    :try_start_a
    const-string v0, "Failed to fork PD image"

    nop

    nop

    invoke-interface {v14, v0}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v4}, Lpol;->l()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_c
    new-instance v2, Lpck;

    nop

    nop

    iget-object v5, v0, Lkga;->e:Landroid/media/MediaFormat;

    nop

    nop

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    iget-object v5, v0, Lkga;->e:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    invoke-direct {v2, v4, v3}, Lpck;-><init>(II)V

    goto :goto_79

    nop

    nop

    nop

    nop

    :goto_78
    new-instance v2, Lpck;

    nop

    iget-object v5, v0, Lkga;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    iget-object v5, v0, Lkga;->d:Landroid/media/MediaFormat;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    invoke-direct {v2, v4, v3}, Lpck;-><init>(II)V

    :goto_79
    move-object v6, v2

    nop

    nop

    nop

    nop

    iget-boolean v2, v12, Lkmq;->i:Z

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lkga;->k:Lhoh;

    nop

    nop

    nop

    nop

    sget-object v3, Lhna;->B:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_8

    nop

    nop

    iget-object v2, v0, Lkga;->k:Lhoh;

    nop

    nop

    nop

    sget-object v3, Lhna;->X:Lhmn;

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_8

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_8
    iget-object v2, v0, Lkga;->k:Lhoh;

    nop

    nop

    nop

    sget-object v3, Lhna;->C:Lhmn;

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v2}, Lkga;->d(ZZ)I

    move-result v2

    nop

    nop

    nop

    nop

    goto :goto_7a

    nop

    :cond_9
    sget-object v2, Lhna;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v7}, Lkga;->d(ZZ)I

    move-result v2

    nop

    :goto_7a
    move v7, v2

    nop

    nop

    iget-object v2, v0, Lkga;->k:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Lhna;->H:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v0, Lkga;->k:Lhoh;

    nop

    nop

    nop

    sget-object v8, Lhna;->ae:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v8}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_a

    nop

    nop

    nop

    move-object/from16 v8, p3

    nop

    nop

    nop

    move v5, v3

    nop

    nop

    nop

    nop

    nop

    goto :goto_7b

    nop

    nop

    :cond_a
    move-object/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7b

    nop

    nop

    nop

    :cond_b
    move-object/from16 v8, p3

    nop

    move v5, v4

    nop

    nop

    :goto_7b
    iget-boolean v8, v8, Lkjj;->a:Z

    nop

    nop

    if-eqz v8, :cond_c

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v0, Lkga;->h:Lrss;

    nop

    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_c

    nop

    nop

    nop

    nop

    goto :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    move v4, v5

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v5, v0, Lkga;->i:Lrss;

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v8

    nop

    if-eqz v8, :cond_d

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Lmhz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lmhz;->r()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lsxy;->c:Lsxy;

    nop

    nop

    goto :goto_7d

    nop

    :cond_d
    sget-object v5, Lsxy;->b:Lsxy;

    nop

    nop

    :goto_7d
    move-object v12, v5

    nop

    nop

    nop

    nop

    nop

    new-instance v15, Lkiv;

    nop

    nop

    nop

    if-eqz v2, :cond_e

    nop

    nop

    nop

    nop

    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_7e
    move-wide v10, v8

    nop

    goto :goto_7f

    nop

    nop

    nop

    nop

    nop

    :cond_e
    iget-wide v8, v0, Lkga;->f:J

    nop

    goto :goto_7e

    nop

    nop

    nop

    :goto_7f
    move-object v5, v15

    nop

    nop

    move v8, v4

    nop

    nop

    move-object v9, v12

    nop

    invoke-direct/range {v5 .. v11}, Lkiv;-><init>(Lpck;IILsxy;J)V

    invoke-virtual/range {v19 .. v19}, Lpol;->k()Lprw;

    move-result-object v2

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    const-string v0, "Failed to fork raw image"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14, v0}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual/range {v18 .. v18}, Lpol;->l()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_80
    move-object v8, v1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-wide v3, v1, Lpgi;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_82
    const-string v4, "width"

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_31

    nop

    nop

    :goto_84
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

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

    :goto_85
    invoke-interface/range {p1 .. p1}, Lpge;->close()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :catchall_7
    move-exception v0

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

    nop

    :goto_87
    const-string v3, "height"

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move-object/from16 v10, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    return-void

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v19, v9

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_41

    nop

    nop

    :goto_8d
    invoke-interface {v14, v1}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpge;Llgc;)Z
    .locals 1

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lprw;->close()V

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "No RAW10 image found in frame. Can\'t use FastMomentsHdr"

    nop

    nop

    invoke-interface {p0, v0}, Lpcu;->d(Ljava/lang/String;)V

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    nop

    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    const/4 p2, 0x1

    nop

    nop

    nop

    :cond_1
    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_4
    goto :goto_d

    nop

    nop

    :catchall_0
    move-exception p1

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

    :goto_5
    iget-object p0, p0, Lkga;->j:Lcom/google/android/apps/camera/moments/FastMomentsHdrImpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Loel;->h()Lprw;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p2, 0x0

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

    :goto_8
    invoke-direct {v0, p2, p1}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    :try_start_1
    invoke-interface {p1}, Lprw;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p2

    nop

    nop

    nop

    :catchall_1
    move-exception p0

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

    :goto_c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Loel;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
