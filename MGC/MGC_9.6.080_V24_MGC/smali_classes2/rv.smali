.class public final Lrv;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lsc;

.field public final b:Z

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:Lrr;

.field private final f:Ljava/util/Map;

.field private final g:Lqp;

.field private final h:I

.field private final i:Lwb;

.field private final j:Lejk;


# direct methods
.method public constructor <init>(Lsc;Lejk;Ljava/util/Map;Lqp;Z)V
    .locals 1

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    invoke-direct {p4, p3, p5}, Lwb;-><init>(Landroid/media/ImageWriter;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    sget-object p3, Lrw;->a:Lueo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x25

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p3, p0, Lrv;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_17

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
    invoke-virtual {p3}, Lueo;->b()I

    move-result p3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lrv;->a:Lsc;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p3, p4, p2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_2f

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string p1, "inputSurface is required to create instance of imageWriter."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    sget p5, Lwb;->b:I

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    new-instance p3, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Lejk;->a()Landroid/os/Handler;

    move-result-object p2

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

    :goto_11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p3, p0, Lrv;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iget p3, p3, Lvi;->b:I

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

    :goto_14
    iput-object p4, p0, Lrv;->g:Lqp;

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

    :goto_15
    invoke-static {p3}, Lrkm;->as(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    check-cast p3, Lvi;

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

    nop

    :goto_17
    move-object p3, p4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput p3, p0, Lrv;->h:I

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

    :goto_1a
    iput-object p2, p0, Lrv;->j:Lejk;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v0, 0x14

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

    :goto_1e
    invoke-interface {p1}, Lsc;->a()Landroid/view/Surface;

    move-result-object p4

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

    :goto_1f
    iget-object p3, p3, Lvm;->i:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_20
    new-instance p3, Lqo;

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

    :goto_21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p4, Lwb;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    check-cast p3, Lvm;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-boolean p5, p0, Lrv;->b:Z

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

    :goto_25
    iget p5, p3, Lvi;->a:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget p3, p3, Lqo;->a:I

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p4, Lvm;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2c
    invoke-static {p4, v0, p3}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;

    move-result-object p3

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p3, v0}, Lqo;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    :goto_2e
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object p4, p0, Lrv;->i:Lwb;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    iget-object p3, p4, Lvm;->i:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lrr;Ltzy;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iget-object p1, v0, Lrs;->e:Lrr;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    move-object v0, p2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :try_start_0
    new-instance p2, Lrt;

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    invoke-direct {p2, p1, v2, v4}, Lrt;-><init>(Lrr;Ltzy;I)V

    iput-object p0, v0, Lrs;->d:Lrv;

    nop

    nop

    nop

    nop

    iput-object p1, v0, Lrs;->e:Lrr;

    nop

    iput v3, v0, Lrs;->c:I

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x7d0

    nop

    nop

    invoke-static {v2, v3, p2, v0}, Lucu;->m(JLubo;Ltzy;)Ljava/lang/Object;

    move-result-object p0

    nop
    :try_end_0
    .catch Luhv; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2c

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_6
    iget-object p0, v0, Lrs;->d:Lrv;

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V
    :try_end_1
    .catch Luhv; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, p2, Lrs;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_9
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_b
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x13

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    :goto_f
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    return-object v1

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_32

    nop

    nop

    :goto_1c
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0, p2}, Lrs;-><init>(Lrv;Ltzy;)V

    :goto_1e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1f
    const/high16 v2, -0x80000000

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_20
    iput v1, v0, Lrs;->c:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v2, v0, Lrs;->c:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string p0, "#close: awaitStarted on last repeating request timed out, lastSingleRepeatingRequestSequence = "

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

    :goto_23
    new-instance v0, Lrs;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p2}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_14

    nop

    nop

    :catch_0
    move-exception p2

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

    :goto_26
    if-eq v2, v3, :cond_4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Lrs;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-eq p0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_9

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

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

    :goto_30
    iget v1, v0, Lrs;->c:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    iget-object p2, v0, Lrs;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_34
    sub-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_35
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_36
    and-int v3, v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_37
    const-string p1, "CXCP"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_38
    throw p2

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_27

    nop

    nop

    nop

    nop
.end method

.method public final b(Ltzy;)Ljava/lang/Object;
    .locals 5

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Lucs;->a:Ljava/lang/Object;

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

    :goto_1
    if-ne p1, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    :goto_2
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    :goto_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    throw p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_a
    sget-object v1, Luag;->a:Luag;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lru;

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string p1, "#close"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_e
    invoke-virtual {p0, p1, v0}, Lrv;->a(Lrr;Ltzy;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_f
    throw p0

    nop

    :catchall_2
    move-exception p0

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_10
    iget-boolean v2, p0, Lrv;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, p1}, Lru;-><init>(Lrv;Ltzy;)V

    :goto_12
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    instance-of v0, p1, Lru;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    invoke-direct {p1}, Lucs;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    :goto_1c
    iget v2, v0, Lru;->c:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_1d
    if-nez v2, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_3

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    :goto_1f
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_20
    const/high16 v2, -0x80000000

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput v1, v0, Lru;->c:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    :goto_23
    sub-int/2addr v1, v2

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

    :goto_24
    if-eq v2, v3, :cond_4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Lrv;->c:Ljava/lang/Object;

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

    nop

    :goto_26
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_27
    check-cast p1, Lrr;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_28
    monitor-enter v2

    nop

    :try_start_1
    iget-boolean v4, p0, Lrv;->d:Z

    nop

    if-eqz v4, :cond_a

    nop

    nop

    nop

    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, v0, Lru;->c:I

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

    :goto_2a
    if-nez v0, :cond_5

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_8

    nop

    nop

    :goto_2e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_31
    iput-object p0, v0, Lru;->d:Lrv;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_32
    move-object v0, p1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    :goto_34
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object p1, p0, Lrv;->c:Ljava/lang/Object;

    nop

    nop

    monitor-enter p1

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, p0, Lrv;->i:Lwb;

    nop

    if-eqz v0, :cond_8

    nop

    nop

    nop

    invoke-virtual {v0}, Lwb;->close()V

    :cond_8
    iget-object p0, p0, Lrv;->a:Lsc;

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lsc;->a()Landroid/view/Surface;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_9

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/view/Surface;->release()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :try_start_4
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_35
    monitor-exit v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_36
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, v0, Lru;->d:Lrv;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_39
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3a
    iput v3, v0, Lru;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3b
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3c
    monitor-exit v2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, v0, Lru;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    and-int v3, v1, v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_40
    new-instance p1, Lucs;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p1}, Lrgw;->ak(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v0, Lru;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_43
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_44
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_46
    return-object p0

    nop

    nop

    nop

    nop

    :cond_a
    :try_start_5
    iput-boolean v3, p0, Lrv;->d:Z

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lrv;->e:Lrr;

    nop

    nop

    nop

    nop

    iput-object v4, p1, Lucs;->a:Ljava/lang/Object;

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic c(ZLjava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Landroidx/wear/ambient/AmbientMode$AmbientController;)Lrr;
    .locals 27

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v22, v5

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, v6

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    :goto_3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    :goto_4
    goto/32 :goto_168

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_52

    nop

    nop

    :goto_6
    check-cast v0, Lvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_211

    nop

    nop

    :goto_8
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v14, 0x3

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    move-object/from16 v5, v22

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v15, v7

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_e
    move-object/from16 p2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v6, v12, Lvk;->h:Lqi;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v14, v15, Lqh;->a:J

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    :cond_0
    goto/32 :goto_107

    nop

    nop

    nop

    :goto_13
    new-instance v11, Lqq;

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v12, :cond_1

    nop

    nop

    nop

    goto/32 :goto_251

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    :cond_2
    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v16, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    const-wide/16 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_1a
    iget-object v0, v1, Lrv;->a:Lsc;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_1d
    move-object/from16 v9, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_12c

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v10, :cond_3

    nop

    goto/32 :goto_229

    nop

    :cond_3
    :goto_21
    goto/32 :goto_289

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct/range {v9 .. v14}, Lsb;-><init>(Lsc;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;ZLqk;)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v0, v1, Lrv;->g:Lqp;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    iget v0, v0, Lqm;->a:I

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v9, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    div-double/2addr v1, v3

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_75

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_266

    nop

    nop

    :goto_2a
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    :goto_2c
    div-double/2addr v11, v13

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v7, Lsb;

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-class v11, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string v1, "Failed to create ImageWriter for capture session: "

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_31
    move-object v9, v7

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

    nop

    :goto_32
    if-nez v9, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    :cond_4
    goto/32 :goto_298

    nop

    nop

    nop

    nop

    :goto_33
    move v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct/range {v9 .. v14}, Lsb;-><init>(Lsc;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;ZLqk;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v7}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_38
    const-wide/16 v20, 0x3

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22a

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_3c
    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_3d
    const-wide/16 v18, 0x1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_3e
    sub-long/2addr v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v7, v15

    nop

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_f2

    nop

    :goto_41
    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move/from16 v13, p1

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_43
    move-object v12, v3

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_273

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-wide/from16 v18, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_46
    move-object/from16 v23, v6

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_215

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v0, v0, Lvm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_27b

    nop

    :goto_4e
    goto/32 :goto_28b

    nop

    nop

    nop

    :goto_4f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    :goto_50
    throw v0

    nop

    nop

    :goto_51
    goto/32 :goto_115

    nop

    nop

    :goto_52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v6, :cond_5

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_26c

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v9, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_56
    move-object v11, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28f

    nop

    nop

    :goto_58
    const-string v10, "%.3f ms"

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_59
    move-object/from16 v23, v6

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v11, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v2, v0, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_5c
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_5d
    const-string v1, "Failed to unwrap FrameInfo "

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5e
    throw v1

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_138

    nop

    nop

    nop

    :goto_60
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object v12, v3

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_242

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_65
    goto/32 :goto_203

    nop

    nop

    :goto_66
    iget-object v5, v6, Lqk;->e:Lpv;

    nop

    goto/32 :goto_267

    nop

    nop

    nop

    nop

    :goto_67
    move-wide/from16 v14, v20

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    nop

    :goto_69
    move v15, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_6a
    iget v10, v10, Lqq;->a:I

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_29d

    nop

    nop

    :goto_6c
    move-object/from16 v15, v22

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_6d
    if-eqz v13, :cond_6

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

    :cond_6
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_b4

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_271

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const-string v12, "The previous high speed request and the current high speed request must both have a preview stream use case or hint. Previous request contains preview stream use case or hint: "

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_1bc

    nop

    nop

    :goto_72
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const-wide/16 v18, 0x1

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    :goto_74
    if-nez v13, :cond_7

    nop

    nop

    goto/32 :goto_27b

    nop

    :cond_7
    :goto_75
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_76
    throw v0

    nop

    nop

    :goto_77
    goto/32 :goto_231

    nop

    nop

    :goto_78
    const-wide/16 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_79
    const-wide/16 v5, 0x1

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/16 v6, 0x2e

    nop

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v12, Lvk;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move v10, v7

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_193

    nop

    nop

    :goto_7e
    move-object v12, v11

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_7f
    invoke-static {v10, v6, v11, v7, v9}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_80
    instance-of v12, v15, Ljava/util/Collection;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v15, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    :cond_8
    :goto_82
    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v12, v6, Lqk;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_84
    const/16 v10, 0x2e

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_85
    instance-of v7, v10, Lqt;

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_87
    check-cast v12, Lvk;

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_88
    const-wide/16 v20, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    sget-object v5, Lse;->a:Lpx;

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_8b
    const-wide/16 v18, 0x1

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_8c
    check-cast v7, Lvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    move-object/from16 p2, v10

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_8e
    goto/16 :goto_1e1

    nop

    :goto_8f
    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v13, v12, Lvk;->f:Lqh;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_91
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_92
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_93
    move-object/from16 v6, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_95
    const/4 v11, 0x1

    nop

    goto/32 :goto_13d

    nop

    nop

    :goto_96
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    nop

    nop

    :try_start_0
    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v5, v0

    nop

    nop

    check-cast v5, Lqu;

    nop

    iget-object v5, v5, Lqu;->b:Ljava/lang/String;

    nop

    move-object v9, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Lqu;

    nop

    iget-object v9, v9, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    check-cast v0, Lqu;

    nop

    iget-object v0, v0, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    invoke-virtual {v0, v7}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_98
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/16 :goto_1e5

    nop

    nop

    :goto_9b
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_9c
    iget-object v12, v12, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    :goto_9d
    iget-object v11, v1, Lrv;->a:Lsc;

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    move v2, v13

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_219

    nop

    :cond_9
    goto/32 :goto_218

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_a1
    const-string v1, "Check failed."

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    instance-of v0, v0, Lqt;

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_a4
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_a5
    invoke-static {v15, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a6
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_a7
    move-object v12, v3

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

    :goto_a8
    const-string v0, ". Ignoring failure and closing "

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iget-object v5, v6, Lqk;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v10, v10, Lvm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v14, v6

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_ac
    check-cast v5, Lqu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v0, v6, Lqk;->e:Lpv;

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_af
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    if-nez v10, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    :cond_a
    goto/32 :goto_1fe

    nop

    nop

    nop

    :goto_b3
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :goto_b4
    goto/32 :goto_167

    nop

    nop

    :goto_b5
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    :goto_b7
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_b8
    move-object v5, v9

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_286

    nop

    nop

    nop

    :goto_ba
    invoke-static {v5, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    :goto_bb
    move-object v15, v7

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_bc
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_d3

    nop

    nop

    :goto_be
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-eqz v9, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_b
    goto/32 :goto_23

    nop

    nop

    :goto_c0
    iget-object v14, v10, Lqk;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_c1
    invoke-interface {v0}, Lsc;->b()Lsd;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    :goto_c2
    move-object/from16 v10, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v10, Lqq;

    nop

    nop

    nop

    goto/32 :goto_299

    nop

    nop

    :goto_c4
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    :goto_c5
    if-eqz v0, :cond_c

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c6
    invoke-static {v9, v10, v9, v10}, La;->q(JJ)Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_162

    nop

    nop

    nop

    :goto_c8
    if-eqz v7, :cond_e

    nop

    goto/32 :goto_1c7

    nop

    :cond_e
    goto/32 :goto_265

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object/from16 v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_cb
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    :goto_cc
    iget-object v15, v15, Lvm;->k:Ljava/util/List;

    nop

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

    :goto_cd
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_ce
    if-nez v9, :cond_f

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :cond_f
    goto/32 :goto_11

    nop

    nop

    :goto_cf
    move-object/from16 v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/32 :goto_222

    nop

    nop

    nop

    nop

    :goto_d2
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const v0, 0x19

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_d5
    const-wide/16 v9, 0x1

    nop

    nop

    :goto_d6
    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_d8
    check-cast v10, Lqq;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_d9
    move-object v15, v14

    nop

    nop

    goto/32 :goto_296

    nop

    nop

    nop

    nop

    :goto_da
    sub-long v11, v25, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_db
    move-object/from16 v16, v15

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-static {v6, v7, v6, v7}, La;->q(JJ)Z

    move-result v12

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_de
    iget-object v7, v6, Lqk;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_df
    invoke-static {v9, v10, v14, v15}, La;->q(JJ)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_e0
    iget v9, v9, Lqq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move-object/from16 v14, v22

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v0, v6, Lqk;->e:Lpv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_e3
    check-cast v6, Lqk;

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_e4
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    :goto_e5
    const-string v1, "HIGH_SPEED CameraGraph must only contain Preview and/or Video streams. Configured outputs are "

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    :goto_e6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    check-cast v0, Lplo;

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-direct {v10, v9}, Lqq;-><init>(I)V

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_e9
    if-nez v12, :cond_10

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-static {v14, v15, v5, v6}, La;->q(JJ)Z

    move-result v14

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    nop

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

    :goto_ec
    goto/16 :goto_fe

    nop

    :goto_ed
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_ee
    const-wide/16 v14, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_ef
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_f0
    if-nez v12, :cond_11

    nop

    goto/32 :goto_127

    nop

    :cond_11
    goto/32 :goto_1ec

    nop

    nop

    :goto_f1
    const/4 v7, 0x0

    nop

    :goto_f2
    goto/32 :goto_1d7

    nop

    nop

    :goto_f3
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    move v7, v13

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

    :goto_f7
    const-string v6, "build(...) should never be called with an empty request list!"

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_fb
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_fc
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    nop

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    move v12, v13

    nop

    nop

    nop

    nop

    :goto_fe
    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v9}, Lvk;->a()Z

    move-result v9

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_100
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_102
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_225

    nop

    nop

    nop

    :goto_103
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_104
    move-object/from16 v16, v15

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_105
    if-nez v14, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :cond_12
    :goto_106
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_107
    goto/16 :goto_1e1

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_109
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_8e

    nop

    nop

    :goto_10a
    if-nez v15, :cond_13

    nop

    nop

    goto/32 :goto_82

    nop

    :cond_13
    goto/32 :goto_4b

    nop

    nop

    :goto_10b
    move-object v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_10c
    iget-object v7, v1, Lrv;->i:Lwb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_10d
    check-cast v13, Lvk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iget-object v10, v1, Lrv;->g:Lqp;

    nop

    goto/32 :goto_1cd

    nop

    nop

    :goto_10f
    long-to-double v1, v1

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    :goto_110
    move-object/from16 v22, v15

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v9, v12, Lvk;->h:Lqi;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_1a9

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    instance-of v9, v7, Ljava/util/Collection;

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_116
    add-int/lit8 v12, v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    :goto_117
    invoke-static {v13, v14}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_118
    check-cast v10, Lvm;

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_119
    iget-object v1, v1, Lpv;->b:Lpn;

    nop

    nop

    goto/32 :goto_281

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-interface {v5}, Lwf;->close()V

    :goto_11b
    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_11c
    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_11d
    if-nez v10, :cond_14

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :goto_11e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11f
    iget-object v10, v1, Lrv;->g:Lqp;

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_120
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    :goto_121
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    goto/32 :goto_295

    nop

    nop

    nop

    :goto_123
    move-object v9, v5

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    :goto_124
    if-eqz v14, :cond_15

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_125
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    nop

    nop

    :goto_127
    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-interface {v8, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_248

    nop

    nop

    :goto_129
    if-nez v14, :cond_16

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :cond_16
    goto/32 :goto_143

    nop

    nop

    nop

    :goto_12a
    check-cast v10, Lqt;

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    :goto_12b
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_12c
    goto/32 :goto_285

    nop

    nop

    nop

    :goto_12d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    goto/32 :goto_297

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    if-nez v13, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_287

    nop

    nop

    nop

    :goto_131
    if-eqz v12, :cond_18

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    if-nez v7, :cond_19

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_19
    goto/32 :goto_174

    nop

    nop

    nop

    :goto_134
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    :goto_135
    if-nez v9, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_136
    goto/16 :goto_12e

    nop

    nop

    nop

    nop

    :goto_137
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_138
    move-object/from16 v5, p3

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    move-object v1, v9

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    :goto_13b
    move-object/from16 v14, v22

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_13c
    if-lez v0, :cond_1b

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_29c

    nop

    :goto_13d
    move-object/from16 v2, p4

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_13e
    invoke-static {v11, v6}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    :goto_13f
    throw v0

    nop

    nop

    nop

    :goto_140
    goto/32 :goto_6b

    nop

    nop

    :goto_141
    new-instance v13, Lucb;

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    goto/16 :goto_262

    nop

    nop

    :goto_144
    goto/32 :goto_261

    nop

    nop

    :goto_145
    invoke-static {v0, v2}, Le;->k(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    :goto_146
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_147
    div-double v11, v11, v23

    nop

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_148
    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_198

    nop

    nop

    :goto_149
    iget v15, v15, Lqq;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_14b
    goto/16 :goto_233

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

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    const-wide/16 v5, 0x1

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_14d
    long-to-double v11, v11

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_14e
    const-string v13, ". Current request contains preview stream use case or hint: "

    nop

    goto/32 :goto_20d

    nop

    nop

    :goto_14f
    const-class v14, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    goto/32 :goto_260

    nop

    nop

    nop

    :goto_150
    goto/16 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_151
    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_152
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_153
    invoke-static {v7}, Lqm;->a(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_154
    move-object v0, v9

    nop

    nop

    nop

    :goto_155
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_157
    const-wide/16 v20, 0x3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_158
    check-cast v9, Lqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    if-nez v0, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    :cond_1c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15a
    invoke-static {v13, v14, v6, v7}, La;->q(JJ)Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    if-nez v11, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    :cond_1d
    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-virtual {v3, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    :goto_15d
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    :goto_15e
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    :goto_15f
    if-eqz v5, :cond_1e

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    iget-object v15, v1, Lrv;->g:Lqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_161
    new-instance v9, Lrr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_162
    sget v13, Luct;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    :goto_163
    check-cast v12, Lqu;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_165
    move-object/from16 v23, v6

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    :goto_166
    check-cast v15, Lqq;

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_167
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    :goto_168
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    :goto_169
    if-nez v12, :cond_1f

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

    nop

    :cond_1f
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_16a
    if-nez v0, :cond_20

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    :goto_16b
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_227

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    goto/16 :goto_1ac

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    invoke-static {v15, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v13, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_21

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    invoke-virtual {v9, v5, v0, v13}, Lezz;->d(Ljava/lang/String;IZ)V

    const/4 v0, 0x0

    nop

    goto/16 :goto_98

    nop

    nop

    nop

    :cond_21
    instance-of v13, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    if-eqz v13, :cond_23

    nop

    nop

    nop

    :cond_22
    :goto_16e
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    const/16 v14, 0x9

    nop

    nop

    nop

    goto :goto_16f

    nop

    nop

    nop

    nop

    nop

    :cond_23
    instance-of v13, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    if-nez v13, :cond_22

    nop

    nop

    nop

    instance-of v13, v0, Ljava/lang/SecurityException;

    nop

    nop

    nop

    nop

    nop

    if-nez v13, :cond_22

    nop

    instance-of v13, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    if-nez v13, :cond_22

    nop

    nop

    nop

    nop

    nop

    instance-of v13, v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_24

    nop

    nop

    nop

    nop

    goto :goto_16e

    nop

    nop

    nop

    nop

    :cond_24
    throw v0

    nop

    nop

    nop

    :goto_16f
    invoke-virtual {v9, v5, v14, v13}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1ab

    nop

    nop

    nop

    :goto_170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    const-wide/16 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    :goto_172
    sub-long/2addr v1, v11

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_173
    throw v0

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    :goto_174
    iget-object v5, v5, Lpv;->a:Lwf;

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    :goto_176
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    :goto_177
    const-string v7, "CXCP"

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_178
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    nop

    nop

    :goto_179
    move-object/from16 v2, p4

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

    nop

    :goto_17a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_17b
    iget-object v0, v1, Lrv;->a:Lsc;

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_17c
    if-nez v9, :cond_25

    nop

    goto/32 :goto_235

    nop

    :cond_25
    goto/32 :goto_234

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_17e
    if-nez v5, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_241

    nop

    :cond_26
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_17f
    move-object v5, v0

    nop

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

    :goto_180
    move v14, v11

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_181
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_182
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    if-nez v0, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_294

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    const-string v13, "CXCP#createReprocessCaptureRequest-"

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_185
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    iget-object v14, v12, Lvk;->f:Lqh;

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_187
    const-string v1, " as TotalCaptureResult"

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    :goto_188
    iget-object v6, v5, Lqk;->a:Ljava/util/List;

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_189
    invoke-interface {v3, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    :goto_18a
    if-eqz v12, :cond_28

    nop

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :cond_28
    :goto_18b
    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-static {v5, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-interface {v0}, Lsc;->b()Lsd;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_18f
    move-object v11, v9

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    :goto_190
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_191
    move v10, v11

    nop

    nop

    nop

    nop

    :goto_192
    goto/32 :goto_226

    nop

    nop

    nop

    nop

    :goto_193
    if-lt v7, v5, :cond_29

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_194
    goto/16 :goto_144

    nop

    nop

    :goto_195
    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_196
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_197
    move-object/from16 p2, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_198
    iget-object v0, v6, Lqk;->d:Lqm;

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    :goto_199
    iget-object v7, v1, Lrv;->g:Lqp;

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_19a
    div-double/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_f8

    nop

    nop

    :goto_19c
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19d
    invoke-direct {v7, v9}, Lqq;-><init>(I)V

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    if-eqz v0, :cond_2a

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    :cond_2a
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_19f
    check-cast v15, Lvm;

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_1a0
    check-cast v5, Lqk;

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    goto/16 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    goto/32 :goto_291

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    iget-object v5, v6, Lqk;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    move-object/from16 v7, p6

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    const-wide v23, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_1a8
    goto/16 :goto_4a

    nop

    :goto_1a9
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    invoke-static {v0, v5}, Le;->k(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1ac
    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_3
    invoke-static {v0}, Lqx;->a(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-static {v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v11, v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    if-eqz v11, :cond_2b

    nop

    nop

    nop

    check-cast v0, Landroid/hardware/camera2/CameraAccessException;

    nop

    nop

    invoke-static {v0}, La;->al(Landroid/hardware/camera2/CameraAccessException;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x1

    nop

    nop

    invoke-virtual {v9, v12, v0, v11}, Lezz;->d(Ljava/lang/String;IZ)V

    move-object/from16 v17, v5

    nop

    nop

    goto :goto_1b0

    nop

    :cond_2b
    instance-of v11, v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2c
    :goto_1ae
    move-object/from16 v17, v5

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    const/16 v11, 0x9

    nop

    goto :goto_1af

    nop

    nop

    nop

    nop

    :cond_2d
    instance-of v11, v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    if-nez v11, :cond_2c

    nop

    nop

    nop

    nop

    nop

    instance-of v11, v0, Ljava/lang/SecurityException;

    nop

    nop

    if-nez v11, :cond_2c

    nop

    nop

    nop

    instance-of v11, v0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    if-nez v11, :cond_2c

    nop

    nop

    nop

    nop

    instance-of v11, v0, Ljava/lang/NullPointerException;

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_2e

    nop

    goto :goto_1ae

    nop

    :cond_2e
    throw v0

    nop

    :goto_1af
    invoke-virtual {v9, v12, v11, v5}, Lezz;->d(Ljava/lang/String;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1b0
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_1b1
    move-object/from16 v17, v14

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

    :goto_1b2
    iget-object v7, v1, Lrv;->i:Lwb;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    if-nez v12, :cond_2f

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    iget-object v10, v10, Lvm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    :goto_1b6
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    goto/16 :goto_204

    nop

    nop

    nop

    nop

    :goto_1b8
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_1b9
    goto/16 :goto_146

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    :goto_1ba
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_1bb
    if-eqz v9, :cond_30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    :cond_30
    :goto_1bc
    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_1be
    invoke-static {v2, v10, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget-object v0, v0, Lpv;->b:Lpn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    const-wide v13, 0x412e848000000000L    # 1000000.0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1c1
    move/from16 v13, p1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1c2
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_1c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_1c4
    const-wide/16 v20, 0x3

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    iget-object v10, v1, Lrv;->a:Lsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    :goto_1c6
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_1c7
    goto/32 :goto_103

    nop

    nop

    nop

    :goto_1c8
    if-nez v10, :cond_31

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    sub-long/2addr v1, v13

    nop

    goto/32 :goto_1fa

    nop

    nop

    :goto_1ca
    invoke-interface {v3, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    if-nez v9, :cond_32

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_32
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_1cd
    check-cast v10, Lvm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    iget-wide v9, v14, Lqh;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1cf
    invoke-virtual {v7}, Luep;->c()J

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    :goto_1d0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_1d1
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_1d2
    goto/16 :goto_3c

    nop

    nop

    :goto_1d3
    goto/32 :goto_153

    nop

    nop

    nop

    :goto_1d4
    return-object v9

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    sget-object v7, Lrw;->c:Luep;

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    :goto_1d7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    if-nez v12, :cond_33

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    :cond_33
    goto/32 :goto_284

    nop

    nop

    :goto_1d9
    check-cast v9, Lvk;

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_1da
    new-instance v10, Lqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1db
    check-cast v11, Landroid/hardware/camera2/CaptureRequest;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1dc
    goto/16 :goto_237

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    goto/32 :goto_21c

    nop

    nop

    :goto_1de
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    invoke-direct/range {v1 .. v8}, Lrr;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/List;Landroidx/wear/ambient/AmbientMode$AmbientController;Ljava/util/Map;)V

    :goto_1e1
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    new-instance v7, Lqq;

    nop

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    if-nez v10, :cond_34

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_34
    :goto_1e5
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1e6
    if-eqz v12, :cond_35

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :cond_35
    :goto_1e7
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1e8
    invoke-static {v9, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    const-wide/16 v19, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    move-object/from16 v16, v15

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    move-object/from16 v6, p5

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_1ec
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_1ed
    iget-object v0, v0, Lplo;->a:Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_1ef
    iget-object v10, v1, Lrv;->f:Ljava/util/Map;

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

    :goto_1f0
    iget-object v7, v1, Lrv;->i:Lwb;

    nop

    nop

    nop

    :try_start_4
    const-class v10, Landroid/media/Image;

    nop

    nop

    nop

    nop

    nop

    sget v12, Luct;->a:I

    nop

    nop

    new-instance v12, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v12, v10}, Lucb;-><init>(Ljava/lang/Class;)V

    const-class v10, Landroid/media/Image;

    nop

    nop

    nop

    nop

    new-instance v14, Lucb;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v14, v10}, Lucb;-><init>(Ljava/lang/Class;)V

    invoke-static {v12, v14}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    if-eqz v10, :cond_36

    nop

    nop

    nop

    nop

    move-object v10, v5

    nop

    nop

    nop

    check-cast v10, Lwa;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v10, Lwa;->a:Landroid/media/Image;

    nop

    nop

    goto :goto_1f1

    nop

    nop

    nop

    nop

    :cond_36
    move-object v10, v9

    nop

    nop

    :goto_1f1
    if-nez v10, :cond_37

    nop

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to unwrap image wrapper "

    nop

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :cond_37
    iget-object v12, v7, Lwb;->a:Landroid/media/ImageWriter;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12, v10}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    iget-object v13, v13, Lvk;->h:Lqi;

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    new-instance v9, Lsb;

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_1f5
    move/from16 v13, p1

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_1f6
    sget-object v5, Lse;->b:Lpx;

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    :goto_1f7
    if-eqz v15, :cond_38

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    :goto_1f8
    const-wide v3, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_1f9
    if-nez v17, :cond_39

    nop

    goto/32 :goto_1dd

    nop

    nop

    :cond_39
    goto/32 :goto_a2

    nop

    nop

    :goto_1fa
    long-to-double v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_1fb
    move-object/from16 v1, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_1fc
    const-string v9, ". Current request contains video stream use case: "

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1fd
    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_1ff
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_200
    goto/32 :goto_20c

    nop

    nop

    :goto_201
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    :goto_202
    instance-of v12, v10, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_203
    move-object/from16 v2, p4

    nop

    nop

    nop

    nop

    nop

    :goto_204
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_205
    move v13, v2

    nop

    nop

    goto/32 :goto_259

    nop

    nop

    :goto_206
    goto/16 :goto_48

    nop

    nop

    :goto_207
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_208
    check-cast v10, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    :goto_209
    const-string v9, "CXCP#createCaptureRequest-"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_20a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    :goto_20b
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    if-nez v10, :cond_3a

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_3a
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    invoke-static {v6, v5, v9, v12, v13}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_20e
    move-object/from16 v6, v23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    :goto_20f
    move-object v15, v7

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_210
    if-nez v7, :cond_3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_211
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    :goto_212
    move-object v7, v15

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a8

    nop

    nop

    :goto_214
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    :goto_215
    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    :goto_216
    move/from16 v3, p1

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    :goto_217
    invoke-direct/range {v9 .. v14}, Lsb;-><init>(Lsc;Landroid/hardware/camera2/CaptureRequest;Ljava/util/Map;ZLqk;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_218
    goto/16 :goto_1e1

    nop

    :goto_219
    goto/32 :goto_8a

    nop

    nop

    :goto_21a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_21b
    iget-object v0, v1, Lrv;->a:Lsc;

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_21c
    move-object/from16 v22, v5

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    move-object v5, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    :goto_21e
    invoke-direct {v7, v9}, Lqq;-><init>(I)V

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_21f
    iget-object v7, v6, Lqk;->b:Ljava/util/Map;

    nop

    goto/32 :goto_25a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_220
    invoke-virtual {v10, v0}, Lqt;->k(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_221
    invoke-static {v5, v6, v14, v15}, La;->q(JJ)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_222
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    nop

    nop

    :goto_223
    goto/32 :goto_182

    nop

    nop

    nop

    :goto_224
    iget-object v10, v1, Lrv;->a:Lsc;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_225
    new-instance v8, Landroid/util/ArrayMap;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_226
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_227
    iget-object v0, v1, Lrv;->i:Lwb;

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_228
    goto/16 :goto_6f

    nop

    nop

    nop

    :goto_229
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_22a
    iget-object v1, v6, Lqk;->e:Lpv;

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22b
    if-nez v12, :cond_3c

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_27c

    nop

    nop

    nop

    :goto_22c
    invoke-interface {v11}, Lsc;->b()Lsd;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_22d
    invoke-direct {v11, v9}, Lqq;-><init>(I)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    invoke-direct {v14, v11}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_22f
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_230
    goto/32 :goto_249

    nop

    nop

    nop

    nop

    :goto_231
    move-object/from16 v15, v22

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_232
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_233
    goto/32 :goto_19e

    nop

    nop

    :goto_234
    goto/16 :goto_2a

    nop

    nop

    :goto_235
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_236
    const/4 v11, 0x0

    nop

    :goto_237
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_238
    const-string v3, "Failed to queue image to "

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_239
    move-object/from16 v5, v17

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_23a
    long-to-double v11, v11

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    :goto_23b
    move-object/from16 v17, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_23c
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    :goto_23d
    instance-of v12, v10, Ljava/util/Collection;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    nop

    :goto_23f
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_240
    goto/16 :goto_1e1

    nop

    nop

    nop

    :goto_241
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_242
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_21a

    nop

    nop

    nop

    :goto_243
    goto/16 :goto_17

    nop

    nop

    :goto_244
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_245
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_246
    move-object v15, v7

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_247
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    nop

    :goto_248
    new-instance v7, Lqq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_249
    iget-object v9, v10, Lqk;->a:Ljava/util/List;

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_24a
    invoke-static {v2, v10, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_24b
    if-eqz v13, :cond_3d

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :cond_3d
    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_24c
    if-lt v12, v7, :cond_3e

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_3e
    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    :goto_24d
    throw v1

    nop

    nop

    nop

    :goto_24e
    goto/32 :goto_29b

    nop

    nop

    :goto_24f
    check-cast v10, Lqk;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_250
    if-eqz v12, :cond_3f

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    :cond_3f
    :goto_251
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_252
    if-nez v11, :cond_40

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_253
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_4f

    nop

    nop

    :goto_254
    move-object/from16 v5, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_255
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13c

    nop

    nop

    :goto_256
    invoke-static {v9, v10, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :goto_257
    check-cast v0, Lqu;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_258
    new-instance v14, Lucb;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_259
    move-wide/from16 v9, v18

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_25a
    invoke-static {v0, v7}, Le;->k(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    goto/32 :goto_145

    nop

    nop

    :goto_25b
    invoke-static {v0, v5}, Le;->k(Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/Map;)V

    goto/32 :goto_21f

    nop

    nop

    :goto_25c
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    :goto_25d
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_25e
    if-nez v10, :cond_41

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :goto_25f
    if-nez v9, :cond_42

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_1e8

    nop

    nop

    nop

    :goto_260
    invoke-direct {v13, v14}, Lucb;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_258

    nop

    nop

    :goto_261
    if-eqz v13, :cond_43

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    :cond_43
    :goto_262
    goto/32 :goto_1a1

    nop

    nop

    nop

    :goto_263
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_264
    const/16 v6, 0x2e

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

    :goto_265
    invoke-static {v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_266
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_267
    if-nez v5, :cond_44

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_1b2

    nop

    nop

    :goto_268
    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    :goto_269
    const-wide v3, 0x412e848000000000L    # 1000000.0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26a
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    nop

    :goto_26b
    iget-object v0, v1, Lrv;->a:Lsc;

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    :goto_26c
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1ba

    nop

    nop

    :goto_26d
    iget-object v7, v7, Lvm;->k:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_26e
    iget-object v5, v5, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26f
    move-object/from16 v22, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    :goto_270
    if-eqz v7, :cond_45

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_282

    nop

    nop

    nop

    nop

    :goto_271
    iget-object v10, v1, Lrv;->a:Lsc;

    nop

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    :goto_272
    new-instance v7, Lsb;

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_273
    new-instance v3, Landroid/util/ArrayMap;

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_274
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    :goto_275
    move-object v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    :goto_276
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/32 :goto_1b3

    nop

    nop

    :goto_277
    if-nez v12, :cond_46

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_278
    check-cast v12, Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    :goto_279
    const-string v3, " due to error "

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_27a
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_27c
    goto/16 :goto_d6

    nop

    nop

    nop

    :goto_27d
    goto/32 :goto_27e

    nop

    nop

    :goto_27e
    move-object/from16 v10, p2

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27f
    check-cast v18, Landroid/hardware/camera2/CaptureRequest;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_280
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_16b

    nop

    nop

    :goto_281
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_187

    nop

    nop

    nop

    :goto_282
    const-string v7, "The previous high speed request and the current high speed request do not have the same video stream use case. Previous request contains video stream use case: "

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    :goto_283
    iget-object v0, v0, Lpv;->b:Lpn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_284
    invoke-virtual {v0, v12}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto/32 :goto_191

    nop

    nop

    :goto_285
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_286
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_287
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_288
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_b7

    nop

    nop

    :goto_289
    move v2, v13

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    :goto_28a
    if-nez v0, :cond_47

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_47
    goto/32 :goto_24

    nop

    nop

    :goto_28b
    iget-wide v13, v13, Lqh;->a:J

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    :goto_28c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_28d
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_99

    nop

    nop

    :goto_28e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v25

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v13

    nop

    nop

    nop

    :try_start_5
    invoke-static {v12}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v12, v11

    nop

    nop

    nop

    check-cast v12, Lqu;

    nop

    nop

    iget-object v12, v12, Lqu;->b:Ljava/lang/String;

    nop

    nop

    nop

    move-object v9, v11

    nop

    nop

    nop

    check-cast v9, Lqu;

    nop

    nop

    iget-object v9, v9, Lqu;->c:Lezz;

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    check-cast v11, Lqu;

    nop

    nop

    nop

    nop

    iget-object v11, v11, Lqu;->a:Landroid/hardware/camera2/CameraDevice;

    nop

    invoke-virtual {v11, v0}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_290
    iget-object v15, v13, Lvk;->f:Lqh;

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_291
    move-object/from16 v14, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_292
    move-object v14, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    nop

    :goto_293
    move-object/from16 v23, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_294
    iget-object v0, v6, Lqk;->e:Lpv;

    nop

    goto/32 :goto_283

    nop

    nop

    :goto_295
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_296
    move-object v14, v6

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

    :goto_297
    if-nez v0, :cond_48

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_48
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_298
    const-wide/16 v9, 0x1

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_299
    iget v10, v10, Lqq;->a:I

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_29a
    move-object/from16 v22, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_29b
    move-object/from16 v17, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29c
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_29d
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const-string v1, "Camera2CaptureSequenceProcessor-"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    iget p0, p0, Lrv;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_a

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

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method
