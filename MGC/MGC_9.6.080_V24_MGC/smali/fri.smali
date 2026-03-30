.class public final Lfri;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lfix;

.field public final b:Ljava/util/List;

.field public final c:Lfio;

.field public d:Z

.field public e:Lfrh;

.field public f:Z

.field public g:Lfrh;

.field public h:Landroid/graphics/Bitmap;

.field public i:Lfrh;

.field public j:I

.field public k:I

.field public l:I

.field private final m:Landroid/os/Handler;

.field private final n:Lfmf;

.field private o:Z

.field private p:Lfim;


# direct methods
.method public constructor <init>(Lfia;Lfix;IILfjt;Landroid/graphics/Bitmap;)V
    .locals 3

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfri;->p:Lfim;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    invoke-virtual {v2, p3, p4}, Lfsj;->u(II)Lfsj;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    invoke-direct {p3, p4, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {p0, p5, p6}, Lfri;->e(Lfjt;Landroid/graphics/Bitmap;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v2, Lfsr;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    check-cast v2, Lfsr;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lokn;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lfri;->n:Lfmf;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2}, Lfsj;->N()Lfsj;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x1

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

    :goto_c
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Lfio;->b()Lfim;

    move-result-object p1

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

    :goto_e
    invoke-static {p1}, Lfia;->c(Landroid/content/Context;)Lfio;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    :goto_10
    const v1, 0xd

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v2}, Lfsj;->M()Lfsj;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/32 :goto_1f

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lfia;->a()Landroid/content/Context;

    move-result-object p1

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

    :goto_17
    invoke-direct {v1, p0, v2}, Lokn;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p3, p0, Lfri;->m:Landroid/os/Handler;

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

    :goto_19
    iput-object p3, p0, Lfri;->b:Ljava/util/List;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p1, Lfia;->a:Lfmf;

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

    nop

    nop

    :goto_1b
    iput-object v1, p0, Lfri;->c:Lfio;

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

    :goto_1c
    invoke-virtual {p1, p3}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
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

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v2}, Lfsr;->c(Lfli;)Lfsr;

    move-result-object v2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_22
    iput-object p2, p0, Lfri;->a:Lfix;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    sget-object v2, Lfli;->a:Lfli;

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

    :goto_24
    new-instance p3, Ljava/util/ArrayList;

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

    :goto_25
    const v0, 0x1b

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

    :goto_26
    invoke-virtual {p1}, Lfia;->a()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    new-instance p3, Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()I
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    check-cast p0, Lfjb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object p0, p0, Lfjb;->f:Lfiz;

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
    iget p0, p0, Lfiz;->c:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    iget-object p0, p0, Lfri;->a:Lfix;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_13

    nop

    nop

    :goto_0
    iput-object v4, p0, Lfri;->g:Lfrh;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lfim;->f(Ljava/lang/Object;)Lfim;

    move-result-object v0

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

    nop

    :goto_2
    check-cast v0, Lfiy;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2}, Lfsr;-><init>()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    :goto_7
    check-cast v3, Lfjb;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfri;->a:Lfix;

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

    :goto_9
    invoke-virtual {p0, v0}, Lfri;->c(Lfrh;)V

    goto/32 :goto_40

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_b
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Lfri;->d:Z

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2f

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_11
    new-instance v4, Lfrh;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    iget v3, v0, Lfiy;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lfjb;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_15
    invoke-virtual {v2, v1}, Lfsj;->z(Lfjl;)Lfsj;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    new-instance v1, Lfth;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, p0, Lfri;->a:Lfix;

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

    :goto_18
    iget-object v1, v0, Lfjb;->f:Lfiz;

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

    :goto_19
    if-ltz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Lfri;->a:Lfix;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lfri;->i:Lfrh;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-gtz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    :goto_20
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    check-cast v1, Lfsr;

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

    :goto_23
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-interface {v2}, Lfix;->b()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    invoke-direct {v4, v2, v3, v0, v1}, Lfrh;-><init>(Landroid/os/Handler;IJ)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lfri;->p:Lfim;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Lfsr;

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

    :goto_2b
    if-lt v0, v2, :cond_4

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

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Lfri;->m:Landroid/os/Handler;

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

    :goto_2d
    iget-object v1, p0, Lfri;->a:Lfix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2e
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v2}, Lfth;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean v0, p0, Lfri;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_32
    const/4 v3, 0x0

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

    :goto_33
    iget v0, v0, Lfjb;->e:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_34
    iget-object p0, p0, Lfri;->g:Lfrh;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_35
    int-to-long v2, v3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_36
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

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

    :goto_37
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, p0}, Lfim;->l(Lfsz;)V

    :goto_39
    goto/32 :goto_27

    nop

    nop

    :goto_3a
    add-long/2addr v0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v1, p0, Lfri;->i:Lfrh;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3c
    iget-boolean v0, p0, Lfri;->o:Z

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3d
    const/4 v1, 0x0

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

    :goto_3e
    iget v3, v3, Lfjb;->e:I

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

    :goto_3f
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

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

    :goto_44
    invoke-virtual {v0, v1}, Lfim;->b(Lfsj;)Lfim;

    move-result-object v0

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

    :goto_45
    iget-object v1, v1, Lfiz;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_46
    iget v2, v1, Lfiz;->c:I

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop
.end method

.method public final c(Lfrh;)V
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_4
    iget-object p0, p0, Lfri;->m:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    iget v5, v5, Lfrh;->a:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_6
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

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

    :goto_7
    if-ne v4, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

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

    :goto_9
    goto/16 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfri;->d()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lfri;->b()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

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

    nop

    :goto_11
    iput v4, v3, Lfrd;->c:I

    nop

    nop

    :goto_12
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Lfrd;->invalidateSelf()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v3}, Lfrd;->invalidateSelf()V

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    iget v4, v3, Lfrd;->c:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    add-int/lit8 p1, p1, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lfri;->m:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    check-cast v3, Lfrd;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1c
    instance-of v5, v4, Landroid/graphics/drawable/Drawable;

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

    :goto_1d
    if-nez v5, :cond_4

    nop

    nop

    goto/32 :goto_32

    nop

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

    :goto_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

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

    :goto_1f
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_20
    check-cast v4, Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_21
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_22
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    if-eq v5, v4, :cond_7

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_7
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_24
    move v5, v2

    nop

    :goto_25
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr p1, v2

    nop

    :goto_28
    goto/32 :goto_49

    nop

    nop

    :goto_29
    add-int/2addr v4, v2

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    iget v4, v3, Lfrd;->d:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    goto :goto_25

    nop

    :goto_2c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lfri;->e:Lfrh;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-boolean v0, p0, Lfri;->f:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_4b

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_50

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1f

    nop

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    :goto_37
    goto/32 :goto_39

    nop

    nop

    :goto_38
    iget-object v3, p0, Lfri;->b:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_39
    iget-boolean v0, p0, Lfri;->d:Z

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v2, -0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget v4, v3, Lfrd;->c:I

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

    :goto_3f
    invoke-virtual {v3}, Lfrd;->stop()V

    goto/32 :goto_15

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_41
    goto/32 :goto_c

    nop

    nop

    :goto_42
    iget-object v0, p1, Lfrh;->b:Landroid/graphics/Bitmap;

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

    :goto_43
    iput-object p1, p0, Lfri;->e:Lfrh;

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

    nop

    nop

    :goto_44
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_8
    goto/32 :goto_33

    nop

    :goto_45
    if-gez v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object p1, p0, Lfri;->i:Lfrh;

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

    :goto_47
    iget-object v5, v4, Lfri;->e:Lfrh;

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

    :goto_48
    invoke-virtual {v4}, Lfri;->a()I

    move-result v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_49
    if-gez p1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_38

    nop

    nop

    :goto_4a
    invoke-virtual {v3}, Lfrd;->stop()V

    :goto_4b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v4, v3, Lfrd;->a:Lfrc;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iput-boolean v0, p0, Lfri;->o:Z

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p1, p0, Lfri;->b:Ljava/util/List;

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

    :goto_4f
    invoke-virtual {v3}, Lfrd;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v4

    nop

    nop

    :goto_50
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v4, v4, Lfrc;->a:Lfri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :cond_b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lfri;->n:Lfmf;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfri;->h:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    iput-object v0, p0, Lfri;->h:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    invoke-interface {v1, v0}, Lfmf;->d(Landroid/graphics/Bitmap;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const v1, 0x16

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

    :goto_10
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method final e(Lfjt;Landroid/graphics/Bitmap;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

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

    :goto_3
    iput p1, p0, Lfri;->l:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1}, Lfsr;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Lfri;->h:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    new-instance v1, Lfsr;

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

    :goto_d
    invoke-static {p2}, Lftw;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_f
    iget-object v0, p0, Lfri;->p:Lfim;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1}, Lfsj;->B(Lfjt;)Lfsj;

    move-result-object p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lfri;->p:Lfim;

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

    :goto_12
    iput p1, p0, Lfri;->k:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    iput p1, p0, Lfri;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Lfim;->b(Lfsj;)Lfim;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    goto/32 :goto_16

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 v0, 0x0

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

    :goto_2
    iput-boolean v0, p0, Lfri;->d:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
