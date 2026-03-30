.class public Llmd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llmf;


# static fields
.field private static final z:Lsdb;


# instance fields
.field private final A:Loyn;

.field private final B:Landroid/content/Context;

.field private final C:Lglm;

.field private final D:Loyd;

.field private final E:Lhoh;

.field private final F:Lpzi;

.field private final G:Lhhg;

.field public final a:Ljava/lang/Object;

.field public final b:[D

.field public c:J

.field public final d:Lowu;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public final f:Landroid/hardware/Sensor;

.field public final g:Landroid/hardware/SensorEventListener;

.field public final h:Landroid/hardware/SensorManager;

.field public final i:Lnsa;

.field public j:Landroid/widget/FrameLayout;

.field public k:Lneh;

.field public l:Landroid/animation/ObjectAnimator;

.field public m:Ljava/util/concurrent/ScheduledFuture;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/ViewGroup;

.field public r:Landroid/view/ViewGroup;

.field public s:Landroid/view/ViewGroup;

.field public t:I

.field public u:D

.field public v:D

.field public w:J

.field public x:J

.field public final y:Lixe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    sput-object v0, Llmd;->z:Lsdb;

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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "lmd"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfdn;Lglm;Lpzi;Landroid/content/Context;Lhoh;Lixe;Lowu;Lnsa;Loyn;Ljava/util/concurrent/ScheduledExecutorService;Loyn;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p8, p0, Llmd;->i:Lnsa;

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
    iput-object p9, p0, Llmd;->D:Loyd;

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

    :goto_2
    iput-object p10, p0, Llmd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Llmd;->E:Lhoh;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/Object;

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

    :goto_7
    iput-object v1, p0, Llmd;->b:[D

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    iput-object v0, p0, Llmd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Llmd;->h:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a
    iput-object p4, p0, Llmd;->B:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    const/4 p3, 0x4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x18

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

    :goto_f
    iput-object p7, p0, Llmd;->d:Lowu;

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

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Llma;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Llmd;->g:Landroid/hardware/SensorEventListener;

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

    :goto_14
    new-array v1, v0, [D

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Llmd;->G:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_16
    iput-object p2, p0, Llmd;->C:Lglm;

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

    nop

    :goto_17
    invoke-direct {p1, p0}, Llma;-><init>(Llmd;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, p3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x3

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

    :goto_1b
    iput-object p2, p0, Llmd;->f:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1c
    iput-object p11, p0, Llmd;->A:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1d
    iput-object p6, p0, Llmd;->y:Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1f
    new-instance p1, Lhzb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object p1

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

    :goto_21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p1, p0, v0}, Lhzb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1}, Lfdn;->p()Landroid/hardware/SensorManager;

    move-result-object p2

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

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    iput-object p3, p0, Llmd;->F:Lpzi;

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

    :goto_26
    add-int v0, v0, v1

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
.end method

.method public static final g()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lhnu;->a:Lhmo;

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
    sget-object v0, Lhly;->a:Lhmo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Llmd;->e(Z)V

    goto/32 :goto_2

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
.end method

.method public final b()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Lldq;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Llmd;->e:Ljava/util/concurrent/ScheduledExecutorService;

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
    const v1, 0x5

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

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llmd;->G:Lhhg;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llmd;->f:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Llmd;->e(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_8
    goto/32 :goto_15

    nop

    nop

    :goto_9
    const/4 v0, 0x1

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, p0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0}, Lglm;->A(Lhhg;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    :goto_13
    const/16 v2, 0x10

    nop

    goto/32 :goto_c

    nop

    nop

    nop

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

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_15
    iget-object v0, p0, Llmd;->C:Lglm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    iget-object v0, p0, Llmd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    const-wide/32 v2, 0x493e0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-ne v3, v2, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Llmd;->D:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v2, Lnne;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/32 v2, 0xea60

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v1, Lldq;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-static {}, Llmd;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_8

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, p0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Llmd;->e(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v3}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v2

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

    :goto_15
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_16
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    iput-object v0, p0, Llmd;->m:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2

    nop

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Llmd;->f()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    const/16 v2, 0xd

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v3, Lnne;->l:Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method public final d()V
    .locals 8

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v3, v1}, Ldtx;->a(Landroid/content/Context;ILdtw;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Llmd;->B:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_25

    nop

    nop

    :goto_4
    iget-object v0, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Llmd;->s:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_7
    new-instance v2, Lgko;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Llmd;->s:Landroid/view/ViewGroup;

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
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7f0b0057

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_12
    new-instance v2, Lnei;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getRootView()Landroid/view/View;

    move-result-object v0

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

    :goto_15
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, v1, Lnsa;->a:Lnsh;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Llmd;->r:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0}, Llmb;-><init>(Llmd;)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Llmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_1c
    iget-object v0, p0, Llmd;->C:Lglm;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput v6, v2, Lnei;->h:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    const v2, 0x7f07071b

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_7d

    nop

    nop

    :goto_20
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Lpic;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, p0, Llmd;->o:Landroid/view/View;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_26
    new-instance v3, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_28
    invoke-direct {v3, p0, v6, v7}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v3, 0x7f14046c

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p0, Llmd;->n:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Llmd;->p:Landroid/view/View;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_16

    nop

    :goto_33
    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_64

    nop

    nop

    :goto_34
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Llmd;->q:Landroid/view/ViewGroup;

    nop

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

    :goto_36
    invoke-virtual {v2}, Lnei;->a()Lneh;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_37
    iget-object v3, p0, Llmd;->o:Landroid/view/View;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_38
    new-instance v1, Llmc;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v2, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v3, p0, Llmd;->o:Landroid/view/View;

    nop

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

    nop

    :goto_3c
    const/16 v6, 0x8

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Llmd;->n:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, p0, Llmd;->B:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Llmd;->p:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_41
    const v2, 0x7f0600d1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_42
    iput-object v0, p0, Llmd;->r:Landroid/view/ViewGroup;

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

    :goto_43
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_37

    nop

    nop

    :goto_45
    invoke-direct {v1, p0}, Llmc;-><init>(Llmd;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_46
    const v1, 0x7f0b00dd

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Llmd;->F:Lpzi;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_48
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v0, p0, Llmd;->k:Lneh;

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4a
    invoke-direct {v2, p0, v3, v7}, Lgko;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v1, p0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto/32 :goto_38

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object v1, p0, Llmd;->n:Landroid/widget/TextView;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput-object v3, p0, Llmd;->j:Landroid/widget/FrameLayout;

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

    :goto_50
    iget-object v1, p0, Llmd;->p:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_51
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_53
    div-float/2addr v2, v3

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, p0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_56
    const/16 v2, 0x11

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Llmd;->F:Lpzi;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_59
    iput v0, p0, Llmd;->t:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_5b
    const v0, 0x1a

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

    nop

    :goto_5c
    iget-object v2, p0, Llmd;->B:Landroid/content/Context;

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

    :goto_5d
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v7, p0, Llmd;->B:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5f
    const/16 v3, 0x31

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_60
    const v2, 0x7f0701e1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Llmd;->F:Lpzi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_62
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_63
    iget-object v1, p0, Llmd;->n:Landroid/widget/TextView;

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

    :goto_64
    iput-object v2, p0, Llmd;->p:Landroid/view/View;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_65
    iget-object v0, p0, Llmd;->f:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_67
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-object v3, p0, Llmd;->o:Landroid/view/View;

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

    nop

    :goto_69
    iget-object p0, p0, Llmd;->G:Lhhg;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_6a
    iget-object v0, v0, Lpzi;->h:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6b
    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    const v2, 0x7f14046d

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v3, v2, Lnei;->g:Landroid/content/Context;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_70
    new-instance v3, Lgko;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_71
    iget-object v1, p0, Llmd;->n:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_72
    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_30

    nop

    nop

    :goto_73
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_74
    const/high16 v5, -0x1000000

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_8e

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

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_77
    const v1, 0x7f0b04ea

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

    :goto_78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_7a
    invoke-direct {v1, p0, v2}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, p0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

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

    nop

    :goto_7c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v3, p0, Llmd;->o:Landroid/view/View;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v2, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7f
    const v3, 0x7f09001a

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

    :goto_80
    invoke-virtual {v0, p0}, Lglm;->z(Lhhg;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_82
    iput-boolean v3, v2, Lnei;->a:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_83
    iput-object v0, v2, Lnei;->e:Ljava/lang/String;

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

    :goto_84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_86
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    int-to-float v2, v2

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

    :goto_88
    iget-object v0, p0, Llmd;->B:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0, v1}, Lpic;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget v3, v3, Landroid/util/DisplayMetrics;->scaledDensity:F

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_8d
    invoke-direct {v2}, Lnei;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    new-instance v2, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_8f
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_90
    iget-object v4, p0, Llmd;->B:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v3, p0, Llmd;->B:Landroid/content/Context;

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

    nop

    :goto_92
    const/4 v4, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_94
    new-instance v1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v0, p0, Llmd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v1, p0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v1, Lldq;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_98
    iget-object v1, p0, Llmd;->i:Lnsa;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_99
    iget-object v1, p0, Llmd;->j:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_9a
    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v0, p0, Llmd;->q:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9e
    iget-object v1, p0, Llmd;->p:Landroid/view/View;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Z)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0x11

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v2}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llmd;->m:Ljava/util/concurrent/ScheduledFuture;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object p0, Llmd;->z:Lsdb;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Llmd;->r:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/16 :goto_18

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lfgu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_2
    goto/32 :goto_23

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_11
    check-cast p0, Lscz;

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

    :goto_12
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const-string p1, "Screen dimming mode has not been setup."

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

    nop

    nop

    :goto_15
    iget-object v0, p0, Llmd;->s:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Llmd;->q:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v1, p0, Llmd;->m:Ljava/util/concurrent/ScheduledFuture;

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 p1, 0xf21

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Llmd;->d:Lowu;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_22

    nop

    nop

    :goto_24
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    invoke-direct {v2, p0, p1, v3, v1}, Lfgu;-><init>(Ljava/lang/Object;ZI[C)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_4

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final f()Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Llmd;->A:Loyn;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
