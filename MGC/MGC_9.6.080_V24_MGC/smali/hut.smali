.class public final Lhut;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;
.implements Lnbg;


# instance fields
.field private final A:Lpdf;

.field private B:Landroid/animation/Animator;

.field private C:Lneh;

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Lpci;

.field private final I:Lixe;

.field public final a:Landroid/content/Context;

.field public final b:Loyn;

.field public final c:Loyn;

.field public final d:Loyn;

.field public final e:Loyd;

.field public final f:Loyd;

.field public final g:Loyn;

.field public final h:Loyn;

.field public i:Lhva;

.field public j:Lhvf;

.field public k:Lcom/google/android/apps/camera/evcomp/EvCompView;

.field public l:Landroid/animation/ObjectAnimator;

.field public m:Loyn;

.field public n:Lnel;

.field public o:Lrss;

.field public p:Loyn;

.field public q:Landroid/widget/CheckBox;

.field public r:Landroid/widget/ImageButton;

.field public s:Z

.field public t:Loyd;

.field public u:Lnei;

.field public v:Lnei;

.field public w:Lhoh;

.field public x:Limz;

.field private final y:Lj$/time/Duration;

.field private final z:Lows;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lpdf;Loyd;Loyd;Loyn;Loyn;Lixe;)V
    .locals 3

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lhut;->D:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1
    iput-object v0, p0, Lhut;->d:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhut;->y:Lj$/time/Duration;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lhut;->f:Loyd;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    new-instance v0, Loxv;

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

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lhut;->b:Loyn;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    const p2, 0x7f0c00aa

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
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Loxv;

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

    :goto_11
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_14
    invoke-direct {v0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lhut;->A:Lpdf;

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
    iput-object p2, p0, Lhut;->z:Lows;

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

    :goto_17
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p6, p0, Lhut;->h:Loyn;

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

    :goto_19
    iput-boolean v1, p0, Lhut;->G:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1a
    invoke-direct {p2}, Lows;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_1b
    const v0, 0x1

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

    :goto_1c
    iput-object v0, p0, Lhut;->c:Loyn;

    nop

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

    :goto_1d
    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    int-to-long p1, p1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_20
    const/16 v0, 0xfa0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    iput-boolean v1, p0, Lhut;->F:Z

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_22
    new-instance p2, Lows;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_23
    iput-object p5, p0, Lhut;->g:Loyn;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean v1, p0, Lhut;->s:Z

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

    :goto_25
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    iput-object p1, p0, Lhut;->a:Landroid/content/Context;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_27
    iput-object v0, p0, Lhut;->B:Landroid/animation/Animator;

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

    :goto_28
    invoke-direct {v0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_29
    iput-object p3, p0, Lhut;->e:Loyd;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean v1, p0, Lhut;->E:Z

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object p7, p0, Lhut;->I:Lixe;

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

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast v0, Lrsx;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lhut;->H:Lpci;

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhut;->o:Lrss;

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

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1, v2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

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

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_a
    invoke-direct {v1, p0, v2}, Lhup;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lhup;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Llfr;->e:Loxv;

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
    iget-object v2, p0, Lhut;->a:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Llfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhut;->H:Lpci;

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lhva;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhut;->i:Lhva;

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
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lhuv;->b()V

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const v1, 0xc

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

    :goto_8
    iget-object v0, p0, Lhut;->b:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    return-void

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
    iget-object v0, p0, Lhut;->i:Lhva;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lhut;->z:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhvf;->h()V

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

    nop

    :goto_2
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lhut;->j:Lhvf;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lhut;->d116db4599d9ddc8c35e61366a4f4967m()V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p1, p0, Lhut;->E:Z

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3
    sget-object p2, Lnbe;->d:Lnbe;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    xor-int/2addr p1, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p2, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    iput-boolean p2, p0, Lhut;->s:Z

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

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

    :goto_b
    invoke-virtual {p0, p1}, Lhut;->g(Z)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_d
    move p2, v1

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

    :goto_e
    if-nez p2, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lhut;->d()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move p2, v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_14
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    if-nez p2, :cond_5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    :goto_1a
    invoke-virtual {v0, p2}, Lcom/google/android/apps/camera/evcomp/EvCompView;->e(Lnbh;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    :goto_1c
    invoke-virtual {p1, p2}, Lnbe;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1, v0}, Lhut;->l(ZZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object p2, Lnbe;->d:Lnbe;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_8

    nop

    nop

    :goto_20
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    check-cast p2, Lnne;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_25
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    move p2, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    nop

    :goto_28
    invoke-interface {p2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-boolean p1, p0, Lhut;->E:Z

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

    :goto_2a
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_16

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p2, p0, Lhut;->p:Loyn;

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

    :goto_2e
    iput-boolean p1, p0, Lhut;->F:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-boolean v2, p0, Lhut;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p2}, Lnzk;->aj(Lnne;)Z

    move-result p2

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

    :goto_33
    iput-object p2, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->i:Lnbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_34
    xor-int/2addr p1, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_3
    iput-boolean v0, p0, Lhut;->F:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhut;->A:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    const-string v1, "EvCompViewCtrl#disable"

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lhuv;->c()V

    :goto_e
    goto/32 :goto_4

    nop

    nop

    :goto_f
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    const v0, 0x2

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

    :goto_11
    iget-object v0, p0, Lhut;->i:Lhva;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iput-boolean v0, p0, Lhut;->E:Z

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

    :goto_14
    iget-object v0, p0, Lhut;->A:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1b

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
.end method

.method public final f(IIF)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lpdf;->g()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    invoke-virtual {p0}, Lhut;->a()Lhva;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lhut;->E:Z

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
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

    :goto_6
    const v1, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    iput-boolean p1, p0, Lhut;->F:Z

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    :goto_a
    const-string v1, "EvCompViewCtrl#enable"

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhut;->A:Lpdf;

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

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean p1, p0, Lhut;->F:Z

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lhut;->A:Lpdf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, p1}, Lhut;->l(ZZ)V

    goto/32 :goto_8

    nop

    nop

    :goto_13
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lhut;->d()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1, p2, p3}, Lhuv;->d(IIF)V

    goto/32 :goto_11

    nop

    nop

    :goto_19
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop
.end method

.method public final g(Z)V
    .locals 2

    goto/32 :goto_a

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

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhut;->a()Lhva;

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

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lhuv;->e(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lhut;->G:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    iput-object v0, p0, Lhut;->C:Lneh;

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Lixe;->f(Lixf;)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_d
    iget-object v1, p0, Lhut;->I:Lixe;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto :goto_17

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhut;->C:Lneh;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_18
    iget-boolean v0, p0, Lhut;->s:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final h()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-static {p0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lhvf;->j()V

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0, v0}, Lhut;->m(ZZ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhut;->j:Lhvf;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhut;->o:Lrss;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    check-cast v0, Llfr;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lhvf;->l()V

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lhut;->j:Lhvf;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lrsx;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_10
    iget-object v0, p0, Lhut;->d:Loyn;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    check-cast v0, Loxv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Llfr;->h()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lnel;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    iget-object p0, p0, Lhut;->n:Lnel;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final j(Z)V
    .locals 2

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    check-cast v0, Llyv;

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

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Limz;->b:Ljava/lang/Object;

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

    :goto_5
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xa

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p1, Loxv;

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

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lfwd;->e:Lfwd;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Limz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v0, Lfwd;->b:Lfwd;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_26

    nop

    nop

    :goto_12
    check-cast p0, Lfwe;

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
    sget-object v0, Lfwd;->g:Lfwd;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_14
    if-eq v0, p1, :cond_2

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_15
    if-eqz p1, :cond_3

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_17
    check-cast v0, Loxv;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    check-cast p1, Loxv;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    if-nez p1, :cond_4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lhut;->j:Lhvf;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhut;->x:Limz;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lfwe;->a:Loyn;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Lfwd;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_3d

    nop

    :goto_24
    goto/32 :goto_32

    nop

    nop

    :goto_25
    check-cast p1, Loxv;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lfwe;

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

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    :goto_28
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    :goto_2b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p1, Lfwd;->b:Lfwd;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_6
    goto/32 :goto_27

    nop

    :goto_30
    sget-object p1, Lfwd;->e:Lfwd;

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

    :goto_31
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lhut;->c:Loyn;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v1, Llyr;->aU:Llze;

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

    :goto_35
    if-nez p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v0}, Lfwd;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_37
    check-cast p1, Loxv;

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

    :goto_38
    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_39
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lhut;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3c
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_3d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Lhvb;->e()V

    :goto_3f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p1, Lfwd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lfwe;->a:Loyn;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_44
    check-cast p1, Lfwd;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p1, Lfwd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_47
    const v0, 0xf

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

    :goto_48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_49
    if-eqz p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4a
    iget-object p0, p0, Lfwe;->a:Loyn;

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

    :goto_4b
    sget-object v0, Lfwd;->d:Lfwd;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method

.method public final k(Lhuj;)V
    .locals 9

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x2

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

    :goto_1
    goto/32 :goto_5f

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

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

    :goto_5
    invoke-virtual {p1}, Lhvf;->j()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Lhum;IIII)Lhul;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhut;->k:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_9
    const v5, 0x7f08015d

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_c
    const v5, 0x7f08015e

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_e
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v6, 0x7f1401c5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_21

    nop

    nop

    :goto_11
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2, p0, p1}, Lhuo;-><init>(Lhut;Lhvf;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_14
    move v3, v8

    nop

    :goto_15
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v7, 0x8

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

    :goto_17
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Lhum;IIII)Lhul;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_18
    const v3, 0x7f0803d3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_19
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->invalidate()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/camera/evcomp/EvCompView;->d(Lhul;F)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v4, 0x7f060545

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1d
    goto :goto_15

    nop

    :goto_1e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    check-cast v1, Lhul;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1, v7}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    :goto_21
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lhut;->m:Loyn;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_25
    invoke-virtual {p1, v8}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_26
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/apps/camera/evcomp/EvCompView;->n(Lhum;IIII)Lhul;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_28
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_2a
    move-object v1, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->l()V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_2c
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, v8}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto/32 :goto_19

    nop

    nop

    :goto_2e
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lhut;->t:Loyd;

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

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Lhul;

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_33
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_34
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v3, 0x7f080295

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v8}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v2, Lhuo;

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

    nop

    :goto_38
    sget-object v2, Llyr;->aU:Llze;

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

    :goto_39
    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Lhul;

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_3a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    check-cast v0, Loxv;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

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

    :goto_3e
    if-lt v8, v1, :cond_1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_3f
    invoke-virtual {p1, v7}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_40
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->l:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_42
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->removeView(Landroid/view/View;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v2, Lhul;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_46
    goto/32 :goto_30

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->requestLayout()V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object v1, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_49
    sget-object v2, Lhum;->b:Lhum;

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

    :goto_4a
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->h:Lhul;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_4b
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4d
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v3, 0x7f080294

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const v1, 0x3

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

    :goto_51
    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->f:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v1, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-ne p1, v1, :cond_3

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6a

    nop

    nop

    :goto_55
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_3b

    nop

    nop

    :goto_57
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->removeView(Landroid/view/View;)V

    :goto_59
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->indexOfChild(Landroid/view/View;)I

    move-result v5

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, v7}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setVisibility(I)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_5c
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

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

    nop

    :goto_5d
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    :goto_5f
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    nop

    :goto_61
    invoke-static {p1}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_68

    nop

    nop

    :goto_62
    goto :goto_59

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_29

    nop

    nop

    :goto_64
    if-lez v0, :cond_5

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_5
    goto/32 :goto_1

    nop

    :goto_65
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_66
    iget v3, v2, Lhul;->d:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-lt v3, v2, :cond_6

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_6
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1}, Lhvb;->c()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_21

    nop

    nop

    :goto_6b
    goto/32 :goto_6d

    nop

    nop

    :goto_6c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

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

    :goto_6d
    sget-object v2, Lhum;->a:Lhum;

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

    :goto_6e
    const v0, 0x1c

    nop

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

    :goto_6f
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

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

    :goto_70
    const v6, 0x7f1400be

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_72
    iget-object v5, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_74
    const v4, 0x7f06053d

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

    :goto_75
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-interface {v0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_77
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_78
    iget-object p1, p0, Lhut;->j:Lhvf;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

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

    :goto_7a
    const v5, 0x7f08015d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7b
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->k()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v1, v2}, Lhul;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p1}, Lhuj;->ordinal()I

    move-result p1

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_81
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_82
    check-cast v4, Lhul;

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_46

    nop

    nop

    :goto_84
    goto/32 :goto_5e

    nop

    nop

    :goto_85
    invoke-virtual {v0}, Lcom/google/android/apps/camera/evcomp/EvCompView;->j()V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->e:Lcom/google/android/apps/camera/evcomp/EvCompSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_87
    goto/32 :goto_2

    nop

    :goto_88
    const v6, 0x7f140625

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v1, :cond_8

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast v1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_8b
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->addView(Landroid/view/View;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_8d
    const v4, 0x7f060545

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8f
    add-int/lit8 v3, v3, 0x1

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

    :goto_90
    iget-object v1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->b:Loyn;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v5, v4}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->indexOfChild(Landroid/view/View;)I

    move-result v5

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_92
    if-ne v5, v6, :cond_9

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_32

    nop

    nop

    :goto_93
    goto/16 :goto_57

    nop

    :goto_94
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-ne v5, v6, :cond_a

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_97
    iget-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->a:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_99
    sget-object v2, Lhum;->a:Lhum;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_9a
    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_9b
    iput-object p1, v0, Lcom/google/android/apps/camera/evcomp/EvCompView;->g:Lhul;

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

    nop

    nop
.end method

.method public final l(ZZ)V
    .locals 5

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lhut;->m:Loyn;

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

    :goto_1
    invoke-direct {v3, p0, v0, v4}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_47

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Ljrz;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v4, 0x6

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    iget-object p1, p0, Lhut;->m:Loyn;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Ljrz;->e:Lj$/util/Optional;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v2, Ljrz;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lnei;->a()Lneh;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, v2, Ljrz;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lhut;->v:Lnei;

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_46

    nop

    nop

    :goto_13
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    const/16 v4, 0x8

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

    nop

    :goto_16
    check-cast v2, Ljrz;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

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

    :goto_19
    invoke-direct {v3, p0, v0, v4}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lhut;->a()Lhva;

    move-result-object p0

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

    :goto_1b
    iget-object v2, p0, Lhut;->f:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_1e
    sget-object v3, Lhuj;->a:Lhuj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Loxv;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lhut;->e:Loyd;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lhut;->u:Lnei;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v0, Lhmp;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p1}, Lixe;->a(Lixf;)Lpci;

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq p1, p2, :cond_3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Lhut;->f:Loyd;

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

    :goto_2a
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lhut;->t:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_22

    nop

    nop

    :goto_30
    goto/16 :goto_42

    nop

    nop

    :goto_31
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x7

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_35
    iget-object v0, p0, Lhut;->f:Loyd;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Lhut;->f:Loyd;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_37
    invoke-direct {v3, p0, v0, v4}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v2, v2, Ljrz;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v3, Lgbt;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3a
    iput p2, p1, Lnei;->b:I

    nop

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

    :goto_3b
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_3d
    new-instance v3, Lgbt;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v2, v2, Ljrz;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_24

    nop

    nop

    :goto_40
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, p1, p2}, Lhuv;->f(ZZ)V

    :goto_42
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v3, Lgbt;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v2, Ljrz;

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

    :goto_45
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget p2, p0, Lhut;->D:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_47
    invoke-virtual {v2, v3}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_48
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lhut;->c:Loyn;

    nop

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

    :goto_4c
    if-eq v2, v3, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4e
    iget-object p2, p0, Lhut;->I:Lixe;

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

    :goto_4f
    if-lez v0, :cond_6

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3f

    nop

    :goto_50
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast v0, Ljrz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_54
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, v1, v0}, Lhut;->m(ZZ)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_56
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_57
    iput-object p1, p0, Lhut;->C:Lneh;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_58
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

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

    :goto_5a
    sget-object p2, Lhuj;->a:Lhuj;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    .local v1, "v1":Z
    .local v0, "v0":Z
    goto/32 :goto_55

    nop

    nop

    nop

    nop
.end method

.method public final m(ZZ)V
    .locals 4

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_2f

    nop

    nop

    :goto_1
    iget-object p2, p0, Lhut;->y:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6
    cmpl-float p1, p1, v2

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

    :goto_7
    iget-object p1, p0, Lhut;->a:Landroid/content/Context;

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

    :goto_8
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    const/high16 p2, 0x10b0000

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lhut;->s:Z

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p2, p0, Lhut;->y:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    :goto_10
    goto/32 :goto_c

    nop

    nop

    :goto_11
    cmpl-float p1, p1, v1

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

    :goto_12
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_5

    nop

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lhut;->B:Landroid/animation/Animator;

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

    :goto_19
    iget-object p0, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p2, p0}, Lhur;-><init>(Lhut;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1b
    if-eqz p2, :cond_2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lhut;->H:Lpci;

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

    :goto_1d
    return-void

    nop

    :goto_1e
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    iget-object p1, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_21
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    :goto_24
    iget-object p2, p0, Lhut;->r:Landroid/widget/ImageButton;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_4
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lhut;->B:Landroid/animation/Animator;

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

    :goto_27
    const/4 v3, 0x1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_29
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lhut;->r:Landroid/widget/ImageButton;

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

    :goto_2d
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lhut;->r:Landroid/widget/ImageButton;

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

    :goto_2f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_30
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    :goto_31
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_34
    new-instance p2, Lhus;

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

    :goto_35
    return-void

    nop

    :goto_36
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setAlpha(F)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3b
    if-nez p2, :cond_6

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

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    :goto_3c
    iput-object p1, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p1, p2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

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

    :goto_40
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const v0, 0xd

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

    :goto_46
    if-lez v0, :cond_7

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_43

    nop

    :goto_47
    invoke-direct {p2, p0}, Lhus;-><init>(Lhut;)V

    goto/32 :goto_12

    nop

    nop

    :goto_48
    iput-object v0, p0, Lhut;->H:Lpci;

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p0, Lhut;->a:Landroid/content/Context;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_2b

    nop

    nop

    :goto_4e
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/widget/ImageButton;->getAlpha()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_50
    iget-object p1, p0, Lhut;->B:Landroid/animation/Animator;

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

    :goto_51
    iget-object p1, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_52
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_53
    iget-object p2, p0, Lhut;->r:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lhut;->r:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct {p0}, Lhut;->d116db4599d9ddc8c35e61366a4f4967m()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance p2, Lhur;

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

    :goto_57
    const p2, 0x10b0001

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iput-object p1, p0, Lhut;->B:Landroid/animation/Animator;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-ne v3, p2, :cond_9

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

    :cond_9
    goto/32 :goto_37

    nop

    nop

    :goto_5a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5c
    if-ne p1, v0, :cond_a

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

    :cond_a
    goto/32 :goto_4

    nop

    nop

    :goto_5d
    if-ne v3, p2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_b
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p2}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object p1, p0, Lhut;->r:Landroid/widget/ImageButton;

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

    :goto_60
    iget-object p1, p0, Lhut;->r:Landroid/widget/ImageButton;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/16 :goto_49

    nop

    :goto_62
    goto/32 :goto_1c

    nop

    nop

    :goto_63
    goto/16 :goto_42

    nop

    :goto_64
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_65
    iget-object p1, p0, Lhut;->r:Landroid/widget/ImageButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final n(I)V
    .locals 4

    goto/32 :goto_2

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

    :goto_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x16

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

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lhvf;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/camera/evcomp/EvCompView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lhut;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Lhvf;->l:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Lhut;->D:I

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lhvf;->h()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Lcom/google/android/apps/camera/evcomp/EvCompView;->getVisibility()I

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Lqrg;->G(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lhut;->j:Lhvf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    int-to-long v2, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Loxv;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v1, :cond_3

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

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v0, Lhvf;->a:Lcom/google/android/apps/camera/evcomp/EvCompView;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lhut;->t:Loyd;

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
.end method

.method public final o(Z)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-boolean p1, p0, Lhut;->G:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lhut;->s:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

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
    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Lhut;->g(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

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

    :goto_b
    return-void

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0, p1}, Lhut;->l(ZZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final p(I)Lnei;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object p0, v0, Lnei;->g:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    :goto_2
    iget-object v1, p0, Lhut;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lnei;->c()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, v0, Lnei;->e:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Lnei;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

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

    :goto_c
    new-instance v0, Lnei;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget-object p0, p0, Lhut;->a:Landroid/content/Context;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
