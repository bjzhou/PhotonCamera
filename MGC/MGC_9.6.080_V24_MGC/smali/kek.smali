.class public Lkek;
.super Lggo;
.source "PG"


# static fields
.field private static Z:Z

.field public static final a:Lsdb;


# instance fields
.field public final A:Landroid/os/Handler;

.field public final B:Loyn;

.field public final C:Ljava/util/Set;

.field public final D:I

.field public E:Z

.field public F:Landroid/os/Handler;

.field public G:Lihg;

.field public H:Ldr;

.field public I:Ldr;

.field public final J:Landroid/content/DialogInterface$OnClickListener;

.field public final K:Landroid/view/View$OnTouchListener;

.field public L:I

.field public M:J

.field public N:I

.field public O:I

.field public final P:Llpz;

.field public final Q:Lmhf;

.field public R:Ljnv;

.field public final S:Ljhy;

.field public final T:Lnft;

.field public final U:Llvw;

.field public final V:Lidi;

.field public final W:Lico;

.field public final X:Lmjv;

.field public final Y:Lfdo;

.field private final aA:Lhoh;

.field private final aB:Lhhg;

.field private aC:Lscn;

.field private final aa:Ljnq;

.field private final ab:Lngo;

.field private final ac:Lowu;

.field private final ad:Ljqp;

.field private ae:Landroid/view/View;

.field private af:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private ag:Ljnd;

.field private ah:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

.field private final ai:Loyd;

.field private final aj:Loyd;

.field private ak:Lows;

.field private final al:Lglu;

.field private am:Landroid/os/HandlerThread;

.field private final an:Lnfk;

.field private final ao:Lpcm;

.field private final ap:Ljny;

.field private final aq:Ljny;

.field private final ar:Ljny;

.field private final as:Llzy;

.field private final at:Ljdc;

.field private final au:Ljdb;

.field private final av:Ljava/lang/Runnable;

.field private final aw:Ljava/lang/Runnable;

.field private final ax:Lggh;

.field private final ay:Lmly;

.field private final az:Llad;

.field public final b:Llqc;

.field public final c:Lglm;

.field public final d:Lngu;

.field public final e:Loyn;

.field public f:Ljmn;

.field public g:Ljmb;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

.field public final l:Landroid/view/WindowManager;

.field public final m:Landroid/content/Context;

.field public final n:Landroid/content/Context;

.field public o:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

.field public p:Z

.field public q:I

.field public r:Ljmx;

.field public s:Ljmu;

.field public v:Ljava/lang/Thread;

.field public w:I

.field public x:I

.field public y:I

.field public final z:Lmwv;


# direct methods
.method private final 58bdc013cbfa0784191428aca07544ffm()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    invoke-direct {p0, v0}, Lkek;->7852ab18ac4bc461fee1a84b3ceac02dm(Z)V

    goto/32 :goto_2

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
.end method

.method private final 7852ab18ac4bc461fee1a84b3ceac02dm(Z)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    iget-object p1, p0, Lkek;->av:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget-object p1, p0, Lkek;->A:Landroid/os/Handler;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lkek;->j:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v2, v3}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_6
    new-instance v1, Ljxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_7
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lkek;->ai:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lkek;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1}, Lkek;->D(Ljava/lang/String;)V

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x18

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

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    const-wide/16 v2, 0x578

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    goto :goto_d

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    :goto_1d
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Loxv;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lkek;->aw:Ljava/lang/Runnable;

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

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_19

    nop

    nop

    :goto_22
    const/16 v2, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 881c79c34bf9fa64d93830b11a6c3f5am()V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    iget-object v0, p0, Lkek;->s:Ljmu;

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

    :goto_1
    new-instance v2, Lkee;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lkek;->aa:Ljnq;

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

    :goto_b
    invoke-virtual {v0}, Ljmu;->f()V

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-direct {v2, p0, v0}, Lkee;-><init>(Lkek;Lsuu;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lkek;->F:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljnq;->d()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lsuu;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_13
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_16
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lkek;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-nez v1, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1c
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0x1f4

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2, p0}, Lsuu;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Fail to wait freeGLMemory to finish"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    const/16 v0, 0xb47

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1f
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

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
    sput-object v0, Lkek;->a:Lsdb;

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

    :goto_3
    const-string v0, "kek"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Llvw;Lggh;Ljhy;Lnft;Lmhf;Lhoh;Llpz;Llqc;Lmlf;Lows;Lowu;Loyd;Loyd;Ljdc;Lmwv;Lfdo;Lglm;Lngo;Lmjv;Lidi;Lico;Lmhz;Llwz;Llad;Loyn;Ljava/util/Set;Lmly;Lnch;Loyn;Lpdf;Landroid/content/Context;Landroid/content/Context;Ljqp;Llyx;)V
    .locals 16

    goto/32 :goto_7b

    nop

    nop

    :goto_0
    iput-object v9, v0, Lkek;->l:Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v4, Ljmo;->a:Ljnv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    iput-object v14, v0, Lkek;->ap:Ljny;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v12, 0x3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4
    iput v10, v0, Lkek;->L:I

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_5
    iput-object v4, v0, Lkek;->ac:Lowu;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_6
    new-instance v11, Lkei;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {p18 .. p18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v1, v0, Lkek;->aC:Lscn;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v11, v0, Lkek;->K:Landroid/view/View$OnTouchListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_a
    move-object/from16 v12, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_b
    iput-object v4, v0, Lkek;->R:Ljnv;

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

    :goto_c
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_48

    nop

    nop

    :goto_d
    iput-object v12, v0, Lkek;->Y:Lfdo;

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

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v12, Lkdz;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_10
    invoke-direct {v11, v0, v12}, Lgko;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v10, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v7, v0, Lkek;->z:Lmwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_13
    move-object/from16 v12, p24

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_14
    sget-object v1, Lhmq;->bs:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_15
    new-instance v12, Lkdz;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_16
    iput-object v12, v0, Lkek;->av:Ljava/lang/Runnable;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_17
    iput v12, v0, Lkek;->N:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v11, Lkeg;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x2

    nop

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

    :goto_1a
    invoke-direct {v11, v0, v10}, Lkeg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v12, v0, Lkek;->aq:Ljny;

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

    nop

    :goto_1c
    iput-object v6, v0, Lkek;->aj:Loyd;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v13, v0, Lkek;->ad:Ljqp;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v10, v0, Lkek;->p:Z

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual/range {p15 .. p15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v12, v0, Lkek;->T:Lnft;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v12, v0, Lkek;->ar:Ljny;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v12, v0, Lkek;->P:Llpz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    invoke-direct {v11, v0, v12, v13}, Lfwq;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v9, v0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_25
    invoke-virtual/range {p14 .. p14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v12, p25

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_27
    iput v1, v0, Lkek;->y:I

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object/from16 v5, p12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v12, p18

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

    nop

    :goto_2a
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_2b
    iput-object v12, v0, Lkek;->at:Ljdc;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v11, v0}, Lkei;-><init>(Lkek;)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v9, p31

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2e
    invoke-direct/range {p0 .. p0}, Lggo;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v4, v0, v7}, Lkea;-><init>(Lkek;Lmwv;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v12, v0, v15, v13}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v12, v0, Lkek;->ay:Lmly;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_32
    move-object/from16 v7, p15

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 v4, p11

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b0

    nop

    :goto_35
    iput-object v12, v0, Lkek;->az:Llad;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_36
    iput-object v12, v0, Lkek;->ab:Lngo;

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

    :goto_37
    iput-object v12, v0, Lkek;->aw:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    invoke-direct {v15, v0, v12}, Lifk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_39
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3a
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_59

    nop

    nop

    :goto_3b
    move-object/from16 v12, p17

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v9}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object v8, v0, Lkek;->aa:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v11, v0, Lkek;->an:Lnfk;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v12, Ljxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_40
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v8, p26

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v12, v0, Lkek;->V:Lidi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_43
    invoke-interface {v5, v11, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v4

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v2, v1}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_45
    iput-object v2, v0, Lkek;->aA:Lhoh;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_46
    const/4 v14, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_47
    check-cast v9, Landroid/view/WindowManager;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_48
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_49
    iput-object v8, v0, Lkek;->C:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v12, p20

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iput-object v4, v0, Lkek;->d:Lngu;

    nop

    nop

    :try_start_0
    new-instance v4, Ljnv;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p14, v4

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p15, p1

    nop

    nop

    nop

    nop

    move-object/from16 p16, p9

    nop

    nop

    move-object/from16 p17, p22

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p18, p23

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p19, p33

    nop

    nop

    nop

    nop

    nop

    move-object/from16 p20, p28

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {p14 .. p20}, Ljnv;-><init>(Llvw;Lmlf;Lmhz;Llwz;Ljqp;Lnch;)V

    sput-object v4, Ljmo;->a:Ljnv;

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    :goto_4c
    move-object/from16 v13, p32

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4d
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_4e
    iput-object v12, v0, Lkek;->Q:Lmhf;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v5, v0, Lkek;->ai:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v11, Lnfl;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v12, v0, Lkek;->S:Ljhy;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v12, v0, v14}, Lkdz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    :goto_53
    invoke-direct {v1, v0, v2}, Lkcc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v1, Lkeb;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v13, v0, Lkek;->n:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-direct {v14}, Lkeh;-><init>()V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_1
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_58
    iput v15, v0, Lkek;->D:I

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_59
    move-object/from16 v12, p7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v3, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v2, p6

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const v1, 0x12

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const v15, 0x7f15047b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5e
    move-object/from16 v12, p21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_5f
    iput v10, v0, Lkek;->O:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_60
    throw v1

    nop

    :goto_61
    goto/32 :goto_2a

    nop

    nop

    :goto_62
    invoke-direct {v15, v10, v8}, Lglu;-><init>(Lpdf;Ljava/util/Set;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v3, v0}, Lows;->d(Lpci;)V

    :goto_64
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-static {v9}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_67
    move-object/from16 v10, p30

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_68
    const-string v15, "window"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_69
    move-object/from16 v12, p5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v14, 0x5

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_6b
    move-object/from16 v12, p14

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6c
    new-instance v4, Lkdy;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v14, v8}, Llzy;->d(Llyx;)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iput-object v14, v0, Lkek;->as:Llzy;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_70
    move-object/from16 v12, p27

    nop

    nop

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

    :goto_71
    new-instance v8, Ljnq;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {v4, v0}, Lkdy;-><init>(Lkek;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_73
    iput-object v12, v0, Lkek;->c:Lglm;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v9, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_75
    move-object/from16 v12, p19

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_76
    rem-int v0, v0, v1

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

    nop

    :goto_77
    const/16 v12, 0xc

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_78
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v15, Lifk;

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

    :goto_7a
    new-instance v14, Lkeh;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_7c
    iput-object v11, v0, Lkek;->J:Landroid/content/DialogInterface$OnClickListener;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v11, Lfwq;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_7e
    new-instance v11, Lgko;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_80
    move-object/from16 v8, p34

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_81
    new-instance v12, Ljxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_83
    invoke-direct {v1, v0, v4}, Lkeb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_84
    iput-object v12, v0, Lkek;->X:Lmjv;

    nop

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

    :goto_85
    invoke-direct {v11, v0}, Lnfl;-><init>(Lkek;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_86
    invoke-direct {v12, v0, v14}, Lkdz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput-object v11, v0, Lkek;->ao:Lpcm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_88
    const/16 v15, 0xf

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_89
    invoke-direct {v12, v0, v15, v13}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_8a
    iput-object v1, v0, Lkek;->af:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v12, 0x4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    move-object/from16 v12, p1

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual/range {p2 .. p2}, Lggh;->j()V

    goto/32 :goto_3c

    nop

    nop

    :goto_8e
    invoke-virtual {v0, v4}, Lkek;->F(Z)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8f
    iput-object v12, v0, Lkek;->W:Lico;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const-wide/16 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v13, p29

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_92
    move-object/from16 v1, p2

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_93
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v1}, Lscn;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_95
    iput-object v12, v0, Lkek;->U:Llvw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iput-object v1, v0, Lkek;->ax:Lggh;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v14, Lkdz;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_98
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-direct {v8, v1}, Ljnq;-><init>(Lggh;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-object v4, v0, Lkek;->aB:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_9b
    move-object/from16 v12, p3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_9c
    iput-object v15, v0, Lkek;->al:Lglu;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-interface {v6, v1, v0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_9e
    iput-object v15, v0, Lkek;->au:Ljdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_9f
    move-object/from16 v13, p33

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a0
    new-instance v4, Lkea;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_a2
    move-object/from16 v12, p4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v6, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a4
    iput-wide v14, v0, Lkek;->M:J

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v3, v4}, Lows;->d(Lpci;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move-object/from16 v12, p16

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a7
    iput-boolean v10, v0, Lkek;->E:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_a8
    iput-object v11, v0, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_a9
    iput-object v12, v0, Lkek;->B:Loyn;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iput v10, v0, Lkek;->q:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_ab
    iput v1, v0, Lkek;->y:I

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_ac
    new-instance v1, Lscn;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual/range {p17 .. p17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iput-object v12, v0, Lkek;->b:Llqc;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iput-object v13, v0, Lkek;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_b2
    const/16 v15, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_b3
    new-instance v15, Lglu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    new-instance v1, Lkcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v14, v0, v12}, Lkdz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b6
    const-string v2, "Cannot instantiate PanoramaModule."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop
.end method

.method private final ca40d22f1631a8d5d6ec3ccdb7c19696m()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    invoke-direct {p0, v0}, Lkek;->7852ab18ac4bc461fee1a84b3ceac02dm(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lkek;->s:Ljmu;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lkek;->b()V

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lkek;->q:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1}, Llqc;->c()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean v0, p0, Lkek;->p:Z

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

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lkek;->T:Lnft;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lkek;->b:Llqc;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lkek;->S:Ljhy;

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

    :goto_12
    const v0, 0x1b

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

    :goto_13
    iput-boolean v0, p0, Lkek;->i:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1}, Ljmu;->f()V

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Ljhy;->K:Lghe;

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

    :goto_19
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lnft;->h()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method


# virtual methods
.method public final B()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final C()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

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
    const v1, 0x9

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljmo;->O(Landroid/view/WindowManager;)I

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lkek;->ah:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

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

    nop

    :goto_7
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lkek;->y:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->b(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :goto_e
    iget-object v0, p0, Lkek;->l:Landroid/view/WindowManager;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lkek;->b()V

    goto/32 :goto_a

    nop

    nop
.end method

.method public final D(Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Ljmu;->h(I)V

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lkek;->s:Ljmu;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lkek;->s:Ljmu;

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

    :goto_4
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7f1404b1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    const v1, 0x7f1404ae

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

    :goto_e
    iget p1, p0, Lkek;->O:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_69

    nop

    :goto_11
    iget-object p1, p0, Lkek;->r:Ljmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lkek;->O:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_13
    const v0, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Ljmu;->h(I)V

    :goto_16
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x3

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_1d

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v0}, Ljmx;->f(I)V

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lkek;->r:Ljmx;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x7f1404b2

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

    :goto_21
    invoke-virtual {p1, v0}, Ljmx;->f(I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p1, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3e

    nop

    nop

    :goto_23
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v0, p0, Lggo;->t:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_25
    iget p1, p0, Lkek;->O:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget p1, p0, Lkek;->O:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x7f1404af

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_28
    iput v0, p0, Lkek;->O:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x7f1404b0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v0}, Ljmx;->f(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lkek;->r:Ljmx;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lkek;->r:Ljmx;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

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

    :goto_2f
    iget p1, p0, Lkek;->O:I

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_30
    iput p0, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->j:I

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_58

    nop

    nop

    :goto_32
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lkek;->r:Ljmx;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    :goto_38
    if-ne p1, v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_8
    goto/32 :goto_42

    nop

    nop

    :goto_39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_3a
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez p1, :cond_a

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

    :cond_a
    goto/32 :goto_0

    nop

    nop

    :goto_3c
    iget p1, p0, Lkek;->O:I

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_3e
    iget v0, p0, Lkek;->O:I

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_3f
    if-nez p1, :cond_b

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v0}, Ljmu;->h(I)V

    :goto_41
    goto/32 :goto_36

    nop

    nop

    :goto_42
    iput v0, p0, Lkek;->O:I

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

    nop

    :goto_43
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_31

    nop

    nop

    :goto_45
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_6a

    nop

    nop

    :goto_48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget p0, p0, Lkek;->O:I

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

    :goto_4a
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v0, 0x5

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

    :goto_4c
    iget v0, p0, Lkek;->O:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v0, p0, Lkek;->O:I

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

    :goto_4e
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_e
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_1d

    nop

    :goto_50
    goto/32 :goto_19

    nop

    nop

    :goto_51
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_52
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_53
    if-nez v0, :cond_f

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_f
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-ne p1, v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput v0, p0, Lkek;->O:I

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object p1, p0, Lkek;->s:Ljmu;

    nop

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

    :goto_57
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_47

    nop

    nop

    :goto_5a
    iput v0, p0, Lkek;->O:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez p1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    :cond_11
    goto/32 :goto_6d

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v0}, Ljmu;->h(I)V

    :goto_5d
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5e
    if-ne p1, v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_5f
    if-ne p1, v0, :cond_13

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_62
    iput v0, p0, Lkek;->O:I

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_63
    if-nez p1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_14
    goto/32 :goto_40

    nop

    nop

    :goto_64
    iget v0, p0, Lkek;->O:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_1d

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_33

    nop

    nop

    :goto_67
    iget-boolean v0, p0, Lkek;->j:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_68
    if-nez p1, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1, v0}, Ljmx;->f(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1, v0}, Ljmu;->h(I)V

    :goto_6e
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6f
    if-nez v0, :cond_16

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_16
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p1, v0}, Ljmx;->f(I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p1, p0, Lkek;->s:Ljmu;

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

    :goto_72
    if-nez p1, :cond_17

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_2f

    nop

    nop
.end method

.method public final declared-synchronized E()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lggo;->t:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-direct {p0}, Lkek;->ca40d22f1631a8d5d6ec3ccdb7c19696m()V

    invoke-virtual {p0}, Lkek;->H()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final F(Z)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ljhy;->K:Lghe;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Lghe;->l(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lkek;->S:Ljhy;

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

    :goto_4
    iput-boolean p1, p0, Lkek;->h:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final G()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, -0x1

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

    :goto_1
    iget-object v0, v0, Lihg;->i:Landroid/os/Handler;

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

    :goto_2
    const v0, 0x20

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

    :goto_3
    invoke-direct {p0}, Lkek;->ca40d22f1631a8d5d6ec3ccdb7c19696m()V

    goto/32 :goto_28

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-ne v1, v2, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

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

    :goto_f
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v3, 0x2

    nop

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

    :goto_11
    iput-object v1, p0, Lkek;->s:Ljmu;

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Ljmu;->z:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    iput-object v1, p0, Lkek;->G:Lihg;

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lggh;->f()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Lggh;->i(I)V

    :goto_1c
    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-direct {v2, v0, v3}, Lihf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lkek;->C:Ljava/util/Set;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Lihf;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_21
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lkek;->C:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lkek;->G:Lihg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_24
    const v1, 0x4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lkek;->ax:Lggh;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final H()V
    .locals 15

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_0
    const-string v3, "sensor"

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

    nop

    :goto_1
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_33

    nop

    nop

    :goto_3
    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v3, v6}, Lfhi;->b(I)Lfhh;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v8, p0, Lkek;->aA:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v3, v1, Ljmu;->c:Ljmb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_9
    iget-object v0, v0, Ljmb;->b:Lfgv;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x16

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_c
    iget v1, p0, Lkek;->O:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljnq;->b()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_e
    iput-object v2, v1, Ljmu;->w:Ljny;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_11
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    :goto_12
    invoke-direct {v2, v1}, Ljnp;-><init>(Ljnq;)V

    goto/32 :goto_83

    nop

    nop

    :goto_13
    move v2, v6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    const/16 v0, 0xb48

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "Can\'t setup LightCycleController for startPreview."

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_18
    iget-boolean v0, p0, Lkek;->i:Z

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v1, Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v3, :cond_2

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_2
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v13, p0, Lkek;->r:Ljmx;

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

    :goto_1e
    iget-boolean v3, v1, Ljnq;->m:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    iget-object v9, p0, Lkek;->g:Ljmb;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v10, p0, Lkek;->aa:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_21
    iget v2, p0, Lkek;->O:I

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_22
    iput v3, v2, Ljmx;->A:I

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_24
    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-ne v2, v6, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Ljmu;->b()F

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Ljnp;

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

    :goto_2a
    iget-object v3, v3, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_2b
    iput-object v2, v1, Ljnq;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, p0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_2d
    if-lez v3, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    :goto_2e
    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

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

    :goto_2f
    iget-object v6, p0, Lkek;->aA:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    int-to-float v3, v3

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

    :goto_31
    invoke-virtual {v1, v2}, Ljmu;->h(I)V

    :try_start_0
    iget-object v2, v1, Ljmu;->p:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    nop

    nop

    iget-object v3, v1, Ljmu;->p:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_7

    nop

    nop

    :goto_32
    iget-object v1, v1, Ljnq;->i:Liic;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v3}, Ljmc;->a(Lfhg;)Lmhz;

    move-result-object v3

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3}, Lfgv;->e()Lfhg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Lkek;->ar:Ljny;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_38
    iget-object v2, p0, Lkek;->G:Lihg;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_39
    invoke-virtual {v2, v3, v6, v1, v5}, Ljmb;->a(Landroid/view/WindowManager;Lhoh;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;Z)Lfhs;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lkek;->s:Ljmu;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_3e
    iput-object v2, v1, Ljmu;->t:Lihg;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_82

    nop

    nop

    :goto_40
    invoke-direct {v2, v1, v3, v4, v5}, Ljmx;-><init>(Landroid/content/Context;Ljnd;Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;Llad;)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_5

    nop

    nop

    :goto_42
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object v5, p0, Lkek;->az:Llad;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_44
    sget-object v3, Ljmp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_45
    invoke-virtual {v2}, Ljmu;->g()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v1, p0, Lkek;->s:Ljmu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1}, Lnft;->h()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v6, 0x6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Lkek;->g:Ljmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4b
    goto/16 :goto_8e

    nop

    nop

    nop

    :catch_1
    :try_start_1
    sget-object v5, Ljnv;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x9d1

    nop

    invoke-interface {v5, v7}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    check-cast v5, Lscz;

    nop

    const-string v7, "Could not delete temporary images."

    nop

    invoke-interface {v5, v7}, Lscz;->s(Ljava/lang/String;)V

    :cond_5
    new-instance v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    invoke-direct {v5}, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;-><init>()V

    iput-object v2, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->a:Ljava/lang/String;

    nop

    nop

    nop

    iget-object v7, v1, Ljnv;->d:Ljava/io/File;

    nop

    nop

    nop

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    iput-object v7, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v1, Ljnv;->e:Ljava/io/File;

    nop

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    nop

    iput-object v7, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->d:Ljava/lang/String;

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    iput-object v7, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const-string v7, "session_"

    nop

    nop

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    const-string v7, "panorama_sessions"

    nop

    nop

    nop

    nop

    invoke-static {v7, v2}, Lj$/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Lj$/nio/file/Path;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lj$/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    iput-object v2, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->f:Ljava/lang/String;

    nop

    nop

    iget-object v2, v1, Ljnv;->c:Lmlf;

    nop

    nop

    nop

    invoke-interface {v2, v3, v4}, Lmlf;->c(J)Ljava/lang/String;

    move-result-object v2

    nop

    new-instance v10, Llxj;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ljnv;->g:Llwz;

    nop

    nop

    nop

    iget-object v4, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->f:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10, v3, v4, v2}, Llxj;-><init>(Llwz;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10}, Llxj;->c()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ljnv;->i:Lmhz;

    nop

    nop

    nop

    iget-object v4, v1, Ljnv;->f:Ljqp;

    nop

    invoke-interface {v4}, Ljqp;->b()Lgii;

    move-result-object v12

    nop

    iget-object v4, v3, Lmhz;->a:Ljava/lang/Object;

    nop

    new-instance v14, Llwr;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    move-object v9, v3

    nop

    check-cast v9, Llqc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v4

    nop

    nop

    check-cast v8, Llvt;

    nop

    nop

    move-object v7, v14

    nop

    nop

    nop

    move-object v11, v2

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v7 .. v13}, Llwr;-><init>(Llvt;Llqc;Llxj;Ljava/lang/String;Lgii;Llxg;)V

    iput-object v14, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Llwr;

    nop

    nop

    nop

    sget-object v3, Lpsz;->c:Lpsz;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lpsz;->j:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    invoke-virtual {v1}, Ljnv;->a()Ljava/io/File;

    move-result-object v3

    nop

    nop

    if-nez v3, :cond_6

    nop

    sget-object v1, Ljnv;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    const/16 v2, 0x9d2

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Could not get the thumbnail directory."

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    const-string v1, ""

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto :goto_4c

    nop

    :cond_6
    new-instance v3, Ljava/io/File;

    nop

    invoke-virtual {v1}, Ljnv;->a()Ljava/io/File;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->g:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v1, "orientations.txt"

    nop

    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "session.meta"

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/io/File;

    nop

    nop

    nop

    invoke-direct {v2, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, v5, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iput-object v5, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lkek;->C:Ljava/util/Set;

    nop

    nop

    nop

    nop

    monitor-enter v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v2, p0, Lkek;->C:Ljava/util/Set;

    nop

    iget-object v3, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    iget-object v3, v3, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lkek;->al:Lglu;

    nop

    iget-object v2, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    iget-object v2, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lglu;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lkek;->al:Lglu;

    nop

    nop

    iget-object v2, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    iget-object v3, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->d:Ljava/lang/String;

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    invoke-virtual {v1, v2}, Lglu;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v1, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v2, p0, Lkek;->aq:Ljny;

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

    nop

    :goto_50
    invoke-virtual {v1}, Lfhs;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_51
    invoke-static {v3}, Ljmc;->a(Lfhg;)Lmhz;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1}, Liic;->e()V

    :goto_53
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v0, 0xb4a

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_55
    if-ne v2, v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_58
    new-instance v1, Lkec;

    nop

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

    :goto_59
    iget-object v3, p0, Lkek;->l:Landroid/view/WindowManager;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v3}, Lggh;->f()I

    move-result v6

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    :cond_8
    goto/32 :goto_a6

    nop

    nop

    :goto_5c
    const/4 v5, 0x5

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_5d
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v3, v3, Lggh;->d:Lfhi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v3, v1, Ljmu;->b:Ljmx;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_60
    iget-object p0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_61
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v2, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v14, p0, Lkek;->ad:Ljqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_64
    const/16 v2, 0xb49

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v2, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_66
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

    :try_start_4
    monitor-exit v1

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0

    nop

    nop

    nop

    :cond_9
    const-string p0, "Cannot create temporary session file."

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v2, p0, Lkek;->ap:Ljny;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v1, v1, Ljmu;->J:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v1, p0, Lkek;->T:Lnft;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6b
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_6d
    iput-boolean v0, v1, Ljnq;->c:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6e
    iput v1, v2, Ljmx;->B:I

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v3, :cond_b

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v3, v2}, Ljmx;->f(I)V

    goto/32 :goto_31

    nop

    nop

    :goto_75
    iget-object v3, v1, Ljmu;->c:Ljmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->j:I

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

    :goto_77
    const-string v1, "Cannot start capture, local session storage not ready."

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v2, p0, Lkek;->g:Ljmb;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_79
    iget-object v0, p0, Lkek;->g:Ljmb;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v3, v1, Ljnq;->p:Lggh;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-lez v0, :cond_c

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_81

    nop

    :goto_7c
    move-object v6, v1

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_7d
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v3}, Lfhh;->a()I

    move-result v3

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1}, Lfhs;->b()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_80
    new-instance v1, Ljmn;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iput-object v2, v1, Ljnq;->n:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v3, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_85
    sget-object p0, Lkek;->a:Lsdb;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v1}, Ljmn;-><init>()V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_87
    iput v3, v1, Ljnq;->j:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v3, p0, Lkek;->ag:Ljnd;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v0, Lkek;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v2}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetAppVersion(Ljava/lang/String;)V

    :goto_8b
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v7, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8d
    iput v0, p0, Lkek;->L:I

    nop

    nop

    nop

    :try_start_6
    iget-object v1, p0, Lkek;->R:Ljnv;

    nop

    const-string v2, "PHOTOSPHERE"

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    iget-object v5, v1, Ljnv;->h:Lnch;

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Lidb;->c:Lidb;

    nop

    invoke-virtual {v5, v3, v4, v6, v2}, Lnch;->b(JLidb;Ljava/lang/String;)Llxg;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    const-string v2, "yyyyMMdd_HHmmss"

    nop

    nop

    nop

    nop

    new-instance v5, Ljava/text/SimpleDateFormat;

    nop

    nop

    invoke-direct {v5, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    nop

    nop

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    nop

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    const-string v6, "session_"

    nop

    nop

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    new-instance v6, Ljava/io/File;

    nop

    nop

    iget-object v7, v1, Ljnv;->e:Ljava/io/File;

    nop

    nop

    nop

    invoke-direct {v6, v7, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :try_start_7
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    move v7, v0

    nop

    :goto_8e
    array-length v8, v5

    nop

    nop

    nop

    nop

    if-ge v7, v8, :cond_5

    nop

    nop

    nop

    new-instance v8, Ljava/io/File;

    nop

    nop

    aget-object v9, v5, v7

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/32 :goto_5d

    nop

    nop

    :goto_8f
    iget-object v3, v3, Ljmb;->b:Lfgv;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_90
    invoke-direct {v1, p0, v0}, Lkec;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput-object v1, p0, Lkek;->f:Ljmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_92
    cmpg-float v3, v3, v6

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_93
    iget v2, p0, Lkek;->O:I

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

    :goto_94
    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->g:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput v0, p0, Lkek;->q:I

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_96
    check-cast p0, Lscz;

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_97
    move-object v3, v4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_98
    iput-object v2, v1, Ljmu;->x:Ljny;

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

    nop

    :goto_99
    invoke-virtual {v3}, Lfhs;->b()I

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-direct {p0}, Lkek;->ca40d22f1631a8d5d6ec3ccdb7c19696m()V

    :goto_9b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0, p0, v1}, Lfgv;->r(Landroid/os/Handler;Lfgw;)V

    goto/32 :goto_66

    nop

    nop

    :goto_9d
    invoke-virtual {v1}, Ljmu;->e()V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v2, Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    new-instance v2, Ljmx;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-eq v2, v5, :cond_d

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a1
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v2, v2, Ljmu;->b:Ljmx;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    const v0, 0xc

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a4
    iput-boolean v5, v1, Ljnq;->m:Z

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    sget-object p0, Lkek;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_a7
    iget-object v11, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a8
    invoke-direct/range {v6 .. v14}, Ljmu;-><init>(Landroid/content/Context;Lhoh;Ljmb;Ljnq;Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Ljmn;Ljmx;Ljqp;)V

    goto/32 :goto_46

    nop

    nop

    :goto_a9
    iget-object v1, p0, Lkek;->aa:Ljnq;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v2, v1}, Ljmx;->f(I)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_ab
    iput-object v2, p0, Lkek;->r:Ljmx;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v2, v1, Ljnq;->n:Landroid/os/HandlerThread;

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

    nop

    :goto_ad
    return-void

    nop

    nop

    :goto_ae
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const-string v0, "startCapture: camera device not open yet."

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iput-object v2, v1, Ljmu;->B:Ljny;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_b2
    iget-object v12, p0, Lkek;->f:Ljmn;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    iget-object v4, p0, Lkek;->ah:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop
.end method

.method public final I()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkek;->F:Landroid/os/Handler;

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

.method public final b()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lghe;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkek;->S:Ljhy;

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

    :goto_5
    const v0, 0x15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkek;->az:Llad;

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

    :goto_7
    goto/32 :goto_1

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

    nop

    :goto_9
    invoke-virtual {p0, v0}, Llad;->g(Ljava/lang/Class;)V

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

    :goto_b
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    const-class v0, Lkek;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Ljhy;->K:Lghe;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Lkek;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_14
    invoke-virtual {p0, v0}, Llad;->k(Ljava/lang/Class;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lkek;->az:Llad;

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
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, v2}, Lkdz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lkek;->58bdc013cbfa0784191428aca07544ffm()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x69

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Lkdz;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    const/4 v2, 0x2

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

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljmn;->isAlive()Z

    move-result v0

    nop

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

    :goto_8
    iget-object v0, p0, Lkek;->C:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lkek;->C:Ljava/util/Set;

    nop

    nop

    nop

    iget-object p0, p0, Lkek;->k:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->e:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Lkek;->F(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lkek;->881c79c34bf9fa64d93830b11a6c3f5am()V

    goto/32 :goto_21

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Ljmn;->isInterrupted()Z

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lkek;->f:Ljmn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x8

    nop

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

    :goto_18
    iget-object v0, p0, Lkek;->f:Ljmn;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lkek;->b()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_6

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljmn;->a(Ljny;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_1e
    const v1, 0x16

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

    :goto_1f
    goto/16 :goto_10

    nop

    :goto_20
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lkek;->f:Ljmn;

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

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

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lkek;->am:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    new-instance v0, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "PhotoSphereGLThread"

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lkek;->am:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lkej;

    nop

    nop

    iget-object v1, p0, Lkek;->am:Landroid/os/HandlerThread;

    nop

    nop

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    invoke-direct {v0, p0, v1}, Lkej;-><init>(Lkek;Landroid/os/Looper;)V

    iput-object v0, p0, Lkek;->F:Landroid/os/Handler;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

    nop

    goto/32 :goto_a

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    return-void

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

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
.end method

.method public final dB()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final dD()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v1, Lghf;

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

    :goto_3
    iget-object p0, p0, Lkek;->ac:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkek;->ay:Lmly;

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
    invoke-direct {v1, p0, v2}, Lghf;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0x12

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
    goto/32 :goto_d

    nop

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

    nop

    :goto_9
    invoke-static {v0, v1, p0}, Lolx;->bn(Lsui;Lpbz;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lmly;->a()Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    const v1, 0x6

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final e()V
    .locals 6

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 v4, 0x12c

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lked;-><init>(Lkek;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lkek;->ae:Landroid/view/View;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v3, Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :goto_b
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_d
    const-string v4, "alpha"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {v4, v1, v2, v0}, Ljnw;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lkek;->a:Lsdb;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, v1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkek;->Q:Lmhf;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_13
    iget-boolean v0, v0, Ljmx;->q:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lkek;->b()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljmn;->a(Ljny;)V

    goto/32 :goto_21

    nop

    nop

    :goto_18
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    iget-object v3, v1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetOutputResolutionLarge()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x15

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    check-cast v3, Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lked;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    iget-object v3, v1, Lscn;->a:Ljava/lang/Object;

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

    :goto_21
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3e99999a    # 0.3f
        0x0
    .end array-data

    :goto_22
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v1}, Lmhf;->c(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v1, p0, v2}, Lkdz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "Not finishing capture since photo taking is in progress."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    new-array v3, v3, [F

    nop

    nop

    nop

    fill-array-data v3, :array_0

    goto/32 :goto_d

    nop

    nop

    :goto_27
    const v0, 0x13

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

    :goto_28
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_8

    nop

    :goto_2a
    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_3

    nop

    nop

    :goto_2b
    invoke-direct {p0}, Lkek;->881c79c34bf9fa64d93830b11a6c3f5am()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v3, Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    return-void

    nop

    :goto_2e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p0, Lkek;->v:Ljava/lang/Thread;

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

    :goto_30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v4, Ljnw;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lkek;->f:Ljmn;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_34
    invoke-virtual {p0, v0}, Lkek;->F(Z)V

    goto/32 :goto_42

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_36
    new-instance v1, Lkdz;

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

    :goto_37
    iget-object v1, p0, Lkek;->aC:Lscn;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, v1, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v3, Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x7f13007f

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

    :goto_3d
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3e
    const/16 v0, 0xb42

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3f
    check-cast v0, Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_40
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v1, Ljmp;->a:Ljava/lang/Object;

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

    :goto_43
    iget-object v0, p0, Lkek;->r:Ljmx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_44
    iput-object v3, v1, Lscn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

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

    :goto_46
    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_3a

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljxk;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lkek;->A:Landroid/os/Handler;

    nop

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

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, v1, v2}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_4

    nop

    :goto_f
    const/16 v1, 0xd

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lkek;->e()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x12

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumTotalTargets()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lkek;->O:I

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

    :goto_a
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_b
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_d
    iget-boolean v0, p0, Lkek;->h:Z

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, p0, v2, v3}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    new-instance v1, Ljxk;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lkek;->e()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v2, 0xe

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    sget-object v0, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkek;->z:Lmwv;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

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

    :goto_2
    iput-boolean v0, p0, Lkek;->j:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lmwq;->d()V

    goto/32 :goto_3

    nop

    nop
.end method

.method public final l()V
    .locals 5

    goto/32 :goto_30

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, v1, v3}, Lfwq;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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

    :goto_3
    const v1, 0x7f0b01d6

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v3, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Ljnv;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Ljhy;->u(Lnfk;Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkek;->au:Ljdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_c
    goto/32 :goto_5a

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lows;

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

    :goto_f
    const p0, 0x7f14049e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_28

    nop

    nop

    :goto_12
    iget-object v0, v1, Ljnv;->b:Ljava/io/File;

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

    :goto_13
    new-instance v0, Ljnd;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    invoke-direct {v3, p0, v2}, Lkeg;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lggh;->f()I

    move-result v0

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

    :goto_16
    iget-object v1, p0, Lkek;->aB:Lhhg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lkek;->ah:Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v1, v3}, Lngo;->e(Lngu;)Lpci;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;->b(I)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget v1, p0, Lkek;->y:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x7f0b02ca

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lkek;->ag:Ljnd;

    nop

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

    :goto_1e
    iget-object v0, p0, Lkek;->n:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1f
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p0}, Ljdc;->b(Ljdb;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Ljnd;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lkek;->o:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lkek;->ab:Lngo;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

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

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v2, v1, Ljnv;->b:Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_27
    const/16 v1, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lkek;->S:Ljhy;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_29
    const/16 v0, -0x13

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_2a
    if-lez v1, :cond_3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_3
    goto/32 :goto_5b

    nop

    nop

    :goto_2b
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    const/4 v1, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    const/16 v1, 0x9d6

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v4, v0, v1}, Lrgu;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_6e

    nop

    nop

    :goto_30
    const v0, 0x18

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v1, "display"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_32
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    :goto_34
    new-instance v3, Lkeg;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lkek;->ax:Lggh;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_37
    new-instance v4, Lrgu;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v0, p0, Lkek;->ae:Landroid/view/View;

    nop

    :goto_3b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Lmle;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

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

    :goto_3f
    iget-object v0, p0, Lkek;->ak:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_40
    iget-object v0, p0, Lkek;->at:Ljdc;

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

    :goto_41
    check-cast v0, Lcom/google/android/apps/camera/legacy/lightcycle/ui/PhotoSphereMessageOverlay;

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

    :goto_42
    iget-object v3, p0, Lkek;->d:Lngu;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lkek;->d()V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0}, Lggh;->j()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Lkek;->an:Lnfk;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_47
    invoke-virtual {p0}, Lggo;->w()V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const v3, 0x7f0e00f9

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4a
    invoke-static {}, Lnzk;->bi()Lmle;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4c
    iget-object v1, p0, Lkek;->af:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v1, Ljnv;->b:Ljava/io/File;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lghe;->e:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v0, v0, Ljhy;->K:Lghe;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v0, Lfwq;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_52
    iput-object v0, p0, Lkek;->ak:Lows;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_53
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const-string v1, "Panorama directory not created."

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v4}, Ldq;->b()Ldr;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v3, v2}, Loxv;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v4, v2}, Lrgu;->f(Z)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v0, Landroid/hardware/display/DisplayManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_59
    invoke-virtual {v4, v0}, Lrgu;->g(I)V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v1, p0, Lkek;->n:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    return-void

    nop

    :goto_5d
    goto/32 :goto_7

    nop

    nop

    :goto_5e
    new-instance v2, Ljava/io/File;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lkek;->o:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_60
    const v1, 0x7f0b0360

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_61
    iput-object v0, p0, Lkek;->o:Lcom/google/android/apps/camera/ui/layout/MainActivityLayout;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1}, Lglm;->z(Lhhg;)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_63
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v0, p0, Lkek;->S:Ljhy;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Lggo;->z()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_67
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_68
    iget-object v1, v1, Lmwv;->d:Loxv;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_6b
    iget v1, p0, Lkek;->D:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v0, p0, Lkek;->ax:Lggh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6d
    iget-object v1, p0, Lkek;->R:Ljnv;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6e
    const v0, 0x7f1404e4

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v4, p0, v0}, Lrgu;->l(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lkek;->c:Lglm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_71
    iget-object v1, p0, Lkek;->z:Lmwv;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_72
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Ldr;->show()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final m()V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_32

    nop

    nop

    :goto_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1}, Lnff;-><init>()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lkek;->G()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    invoke-direct {v2, p0, v3, v1}, Ljxk;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v1, p0, Lkek;->F:Landroid/os/Handler;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lglm;->A(Lhhg;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljmn;->interrupt()V

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    :goto_b
    iget-object v1, p0, Lkek;->aB:Lhhg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljmn;->isInterrupted()Z

    move-result v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1, v2}, Ljhy;->u(Lnfk;Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_e
    new-instance v2, Ljxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lkek;->f:Ljmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkek;->S:Ljhy;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_13
    const-string v1, "display"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lkek;->f:Ljmn;

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

    :goto_15
    iget-object v0, p0, Lkek;->am:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_16
    iget-object v0, p0, Lkek;->at:Ljdc;

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

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lkek;->au:Ljdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0}, Lkek;->58bdc013cbfa0784191428aca07544ffm()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_23

    nop

    nop

    :goto_1f
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_20
    new-instance v1, Lnff;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x0

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

    :goto_23
    iput-object v1, p0, Lkek;->g:Ljmb;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lkek;->c:Lglm;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_25
    iget-object v1, p0, Lkek;->af:Landroid/hardware/display/DisplayManager$DisplayListener;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_26
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lkek;->aa:Ljnq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    const/16 v3, 0x12

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2b
    iput-object v1, p0, Lkek;->am:Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Ljnq;->d()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2e
    check-cast v0, Landroid/hardware/display/DisplayManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, p0}, Ljdc;->g(Ljdb;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    :goto_32
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lkek;->ak:Lows;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop
.end method

.method public final o()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lkek;->z:Lmwv;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lmwq;->h()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lkek;->j:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lkek;->f()V

    goto/32 :goto_3

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p()Lrss;
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v0, v2, v3}, Lnjh;-><init>(Landroid/graphics/Bitmap;ILrss;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    goto/32 :goto_10

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v0, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lnjh;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v2, Lrsa;->a:Lrsa;

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

    :goto_10
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f14026a

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1

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

    :goto_4
    const v0, 0x7f140388

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    const v0, 0x7f140201

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

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

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x4

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

    :goto_a
    return-object p0

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    const v0, 0x7f140762

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    :goto_11
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x7f1407ed

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x7f1404da

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    goto :goto_18

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x0

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
    add-int/lit8 v1, v0, -0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1f
    goto :goto_18

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

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

    :goto_22
    if-ne v1, v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto :goto_18

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lkek;->m:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_14

    nop

    nop

    :goto_27
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    if-ne v1, v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-ne v1, v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2a
    iget v0, p0, Lkek;->O:I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(Lfgv;)V
    .locals 7

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lfhs;->b()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Lfhs;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2
    check-cast v6, Lfhs;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lfgv;->e()Lfhg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_4
    sput-boolean v0, Lkek;->Z:Z

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Lfhs;

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
    invoke-static {v0}, Ljml;->a(F)F

    move-result v0

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lfhs;->a()I

    move-result v0

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

    :goto_a
    iget-object v1, v0, Lghe;->s:Landroid/graphics/SurfaceTexture;

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

    :goto_b
    invoke-virtual {p1, v3}, Lfgv;->m(Lfhn;)V

    goto/32 :goto_23

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

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v6}, Lfhs;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_50

    nop

    nop

    :goto_10
    iget v0, v0, Lghe;->u:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v5, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v4, v5, v0}, Lfhs;-><init>(II)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_0
    goto/32 :goto_3d

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v4, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_18
    iget-object v0, p0, Lkek;->S:Ljhy;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lkek;->an:Lnfk;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v5}, Lfhs;->b()I

    move-result v5

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_1c
    iget-object v0, v0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, v0, Lfhg;->u:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Ljmb;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lfgv;->n()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v0, Ljhy;->K:Lghe;

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

    :goto_21
    invoke-virtual {v3, v4}, Lfhn;->k(Lfhs;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lfgv;->e()Lfhg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    new-instance v1, Lfhs;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v4, v5, v6}, Lfhs;-><init>(II)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Lfgv;->e()Lfhg;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lfgv;->f()Lfhn;

    move-result-object v3

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lkek;->A:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2a
    invoke-interface {p0, v1, p1, v0}, Lnfk;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :goto_2b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v4, Lfhs;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v4

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4b

    nop

    nop

    :goto_2e
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_3

    nop

    nop

    :goto_30
    iget-object v3, v0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_31
    sget-boolean v0, Lkek;->Z:Z

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

    nop

    :goto_32
    iget-object v5, v0, Lmhz;->a:Ljava/lang/Object;

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

    :goto_33
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_34
    invoke-direct {v1, p1, v0}, Ljmb;-><init>(Lfgv;Landroid/os/Handler;)V

    goto/32 :goto_4e

    nop

    nop

    :goto_35
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_37
    monitor-enter v4

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v5, Ljmp;->d:Lcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v1, v0, v5}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->Init(IIFLcom/google/android/apps/camera/legacy/lightcycle/panorama/LightCycle$LightCycleProgressCallback;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    nop

    sput-object v0, Ljmp;->b:Ljava/lang/Boolean;

    nop

    monitor-exit v4

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v4, Ljmp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v1, v2, v2}, Lfhs;-><init>(II)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Lfhs;->b()I

    move-result v3

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

    :goto_3c
    invoke-static {v0}, Ljmc;->a(Lfhg;)Lmhz;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3d
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lkek;->G:Lihg;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v1, Lfhs;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_41
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3, v4}, Lfhn;->l(Lfhs;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0}, Ljmc;->a(Lfhg;)Lmhz;

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

    nop

    :goto_45
    invoke-direct {v1, v3, v0}, Lfhs;-><init>(II)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v5}, Lfhs;->b()I

    move-result v5

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

    :goto_47
    if-lez v0, :cond_4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    :goto_48
    iget-object v5, v0, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Lfhs;->a()I

    move-result v0

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

    nop

    :goto_4a
    iget-object v0, v0, Lmhz;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4b
    throw p0

    nop

    nop

    :goto_4c
    goto/32 :goto_11

    nop

    nop

    :goto_4d
    iget-object v6, v0, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4e
    iput-object v1, p0, Lkek;->g:Ljmb;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Lfhs;->a()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lkek;->H()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v5, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_52
    check-cast v3, Lfhs;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget p1, v0, Lghe;->t:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final t(I)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v1, v2

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkek;->r:Ljmx;

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

    :goto_3
    const/4 v2, 0x1

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v0, v2

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

    :goto_7
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_c
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

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

    :goto_f
    goto/32 :goto_5

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v1, p0, Ljmx;->t:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    iput p1, p0, Lkek;->N:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    goto :goto_d

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-boolean v0, p0, Ljmx;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1a
    const v0, 0xc

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq p1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop
.end method
