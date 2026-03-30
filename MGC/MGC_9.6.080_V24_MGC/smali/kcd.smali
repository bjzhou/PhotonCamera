.class public Lkcd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final a:Loyd;

.field public final b:Lhco;

.field public final c:Loyn;

.field private final e:Z

.field private final f:Landroid/app/Activity;

.field private final g:Lpnv;

.field private final h:Llyv;

.field private final i:Lknu;

.field private final j:Lhoh;


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Lpog;)I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lkcd;->g:Lpnv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    invoke-static {v0, p1, v1, p0}, Llfp;->o(Lpnx;Lpnv;Lknu;Lhoh;)Lkog;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Lpnv;->e(Lpog;)Lpnx;

    move-result-object v0

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

    :goto_4
    iget-object p0, p0, Lkcd;->j:Lhoh;

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

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_7
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lpoh;->g()I

    move-result p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "Can\'t find camera ID with facing %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    sget-object p0, Lkcd;->d:Lsdb;

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

    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lkcd;->i:Lknu;

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
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p0, 0x5a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    return p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v0, 0xb28

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lkcd;->g:Lpnv;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    sput-object v0, Lkcd;->d:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const-string v0, "kcd"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

.method public constructor <init>(Landroid/app/Activity;Lfwv;Lhco;Lhoh;Llyv;Loyd;Loyd;Lknu;Lpnv;Loyd;)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p0, p7, p3, p5}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_17

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    new-instance p3, Lkcc;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Lkcd;->j:Lhoh;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    new-instance v0, Loxv;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lkcd;->f:Landroid/app/Activity;

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
    invoke-virtual {p1, p0}, Lows;->d(Lpci;)V

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    iput-object p3, p0, Lkcd;->b:Lhco;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p9, p0, Lkcd;->g:Lpnv;

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

    :goto_c
    const/4 p4, 0x3

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_d
    invoke-virtual {p4, v0}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_e
    invoke-virtual {p2}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lkcd;->e:Z

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    sget-object p4, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x20

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    invoke-interface {p6, p3, p4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    invoke-virtual {p1, p3}, Lows;->d(Lpci;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    iput-object p5, p0, Lkcd;->h:Llyv;

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    sget-object p4, Lstd;->a:Lstd;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lkcd;->c:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Lfwv;->i()Lows;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p6, p0, Lkcd;->a:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p10, p2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p3, 0x4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p3, p0, v1}, Lkcc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_21
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

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

    goto/32 :goto_18

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    iput-object p8, p0, Lkcd;->i:Lknu;

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

    :goto_26
    invoke-virtual {p2}, Lfwv;->i()Lows;

    move-result-object p1

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

    :goto_27
    new-instance p2, Ljyl;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p3, p0, p7, p4, p5}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance p3, Ljyl;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p5, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, p3}, Lows;->d(Lpci;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v0, Lhmq;->bw:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    :goto_2e
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p7, p3, p4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, v2}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop
.end method


# virtual methods
.method public final a(Lmyr;I)Z
    .locals 10

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    return v3

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    return v3

    nop

    :goto_4
    goto/32 :goto_31

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    const/4 v9, 0x0

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

    :goto_9
    if-eq p0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq p0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p1, 0x5

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c
    iget p0, p1, Lmyr;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x20

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v0, v3, :cond_4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    :goto_10
    const/4 v7, 0x0

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

    nop

    :goto_11
    const v1, 0x1d

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int/lit16 p2, p2, 0xb4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v4, p0, Lkcd;->f:Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_14
    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    return v3

    nop

    :goto_17
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p2, v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_19
    return v1

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

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1c
    iget v0, p1, Lmyr;->b:I

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

    :goto_1d
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_4

    nop

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_22
    iget-boolean v0, p0, Lkcd;->e:Z

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lkcd;->f:Landroid/app/Activity;

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

    :goto_27
    if-eq p2, v2, :cond_8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

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

    :goto_29
    const/4 p1, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2c
    const/16 v2, 0x5a

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

    :goto_2d
    const/4 v8, 0x0

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

    :goto_2e
    invoke-static/range {v4 .. v9}, Lnzk;->aS(Landroid/content/Context;Landroid/view/Display;Lhoh;Lnne;Lmyr;Lprb;)Lnbe;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2f
    if-eq p0, p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_9
    goto/32 :goto_12

    nop

    nop

    :goto_30
    invoke-virtual {v4}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    return v1

    nop

    nop

    :goto_32
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int/lit16 p2, p2, 0xb4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p1, Lnbe;->a:Lnbe;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Lkcd;->f:Landroid/app/Activity;

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
.end method

.method public final b()Z
    .locals 2

    goto/32 :goto_e

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_1
    invoke-direct {p0, v0}, Lkcd;->23ce148e54b083367f51e25c7971761em(Lpog;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lrtt;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Llyr;->f:Llzf;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Lmyr;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1c

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lkcd;->e:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lkcd;->h:Llyv;

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

    :goto_b
    throw v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    :goto_d
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    const v0, 0x1a

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

    nop

    :goto_f
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lkcd;->a:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkcd;->b:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    const-string v1, "Unknown video aspect ratio "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    if-eq p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    :goto_19
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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

    :goto_1a
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    :goto_1c
    new-instance v0, Lrtt;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    const v1, 0x17

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

    :goto_1e
    invoke-virtual {v0}, Lhco;->a()Lpog;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_21
    invoke-virtual {p0, v1, v0}, Lkcd;->a(Lmyr;I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    :goto_23
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final c(Lpog;)Z
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lpog;->a:Lpog;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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
    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

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

    :goto_3
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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
    goto :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget p0, p0, Lmyr;->b:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    check-cast p0, Lmyr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p0, p1, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lkcd;->a:Loyd;

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

    :goto_11
    move v1, v0

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    return v1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    return v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lkcd;->f:Landroid/app/Activity;

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
.end method

.method public final d(Lpog;)I
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Lkcd;->h:Llyv;

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

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_26

    nop

    :goto_5
    check-cast p0, Ljava/lang/Integer;

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

    :goto_6
    iget-object p0, p0, Lkcd;->h:Llyv;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Lkav;->G(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lkcd;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_10
    sget-object p1, Llyr;->g:Llzf;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Lkcd;->e:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Ljava/lang/Integer;

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

    :goto_13
    const/4 p0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    return p0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    return p0

    nop

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0, v1}, Lkcd;->a(Lmyr;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_1c
    check-cast v0, Lmyr;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lkcd;->h:Llyv;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1}, Lkcd;->23ce148e54b083367f51e25c7971761em(Lpog;)I

    move-result v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    sget-object p1, Llyr;->e:Llzf;

    nop

    goto/32 :goto_1b

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

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p1, Llyr;->e:Llzf;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p0}, Lkav;->G(I)I

    move-result p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Lkav;->G(I)I

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Lkcd;->c(Lpog;)Z

    move-result p1

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
.end method
