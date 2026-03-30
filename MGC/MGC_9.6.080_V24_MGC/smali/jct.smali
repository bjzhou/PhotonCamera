.class public Ljct;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lilq;
.implements Likm;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Ljava/util/Map;

.field private final c:Lije;

.field private final d:Lijo;

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:I

.field private final g:Ljcq;

.field private h:I

.field private i:Z

.field private final j:Lhoh;

.field private final k:Liof;

.field private final l:Lmhz;


# direct methods
.method private final 51550bab6b6440a4fd45f825c221b363m(Linb;Ljava/lang/String;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Ljcs;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Ljcq;->a(Linb;)V

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast v0, Ljcs;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljct;->g:Ljcq;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1, p2}, Ljct;->d(Linb;Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljct;->a:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-string v0, "jct"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ljct;->b:Lsdb;

    nop

    goto/32 :goto_3

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

    nop

    nop

    nop
.end method

.method public constructor <init>(Lije;Lijo;Liof;Ljcq;Lmhz;Lhoh;Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ljct;->f:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Ljct;->k:Liof;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    sget-object p1, Lhmu;->r:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const p2, 0x249f0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p5, p0, Ljct;->l:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Ljct;->j:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    const/16 p2, 0xf

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

    :goto_c
    invoke-virtual {p6, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Ljct;->a:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_11
    invoke-virtual {p6, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    iput-object p7, p0, Ljct;->e:Ljava/util/concurrent/Executor;

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

    :goto_14
    iput-object p4, p0, Ljct;->g:Ljcq;

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

    nop

    :goto_15
    iput p1, p0, Ljct;->h:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    sget-object p1, Lhmu;->t:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_18
    iput-object p2, p0, Ljct;->d:Lijo;

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

    :goto_19
    iput-object p1, p0, Ljct;->c:Lije;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

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
.end method

.method public static final f(Linb;)I
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    invoke-interface {v0, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const-string v0, "Error getting the shot ID."

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    const-string v2, "KeplerProcessorImpl"

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

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Ljct;->b:Lsdb;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Lsed;->a:Lsdr;

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

    :goto_e
    return p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    :try_start_0
    invoke-virtual {p0}, Linb;->a()I

    move-result p0

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_e

    nop

    nop

    :goto_12
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x83d

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lscz;

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

    :goto_15
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_17
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llxm;)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

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
    if-nez v1, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_19

    nop

    nop

    :goto_3
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    nop

    :goto_9
    const v1, 0x9

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

    :goto_a
    invoke-direct {p0, v1, p1}, Ljct;->51550bab6b6440a4fd45f825c221b363m(Linb;Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Ljct;->a:Ljava/util/Map;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

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

    :goto_e
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

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

    nop

    :goto_11
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v1, Linb;

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

    :goto_13
    const-string p1, "Shot aborted."

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

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    const v0, 0x5

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

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1f
    iget v0, p1, Llxm;->a:I

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

    :goto_20
    if-lez v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_21
    iget-object v2, v1, Linb;->w:Llko;

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

.method public final b(Linb;Lpge;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    :try_start_0
    iget-object v0, p0, Ljct;->a:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Ljcs;

    nop

    iget-object v0, p0, Ljct;->d:Lijo;

    nop

    nop

    invoke-virtual {v0}, Lijo;->o()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, p1, Ljcs;->a:Llhz;

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Llhz;->r:I

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Ljct;->h:I

    nop

    nop

    nop

    nop

    nop

    if-ge v0, v1, :cond_3

    nop

    nop

    invoke-interface {p2}, Lpge;->a()Lpge;

    move-result-object v0

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    iget-object v1, p1, Ljcs;->a:Llhz;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Llhz;->c(Lpge;)V

    iget-boolean v0, p0, Ljct;->i:Z

    nop

    iget-object v1, p0, Ljct;->j:Lhoh;

    nop

    sget-object v2, Lhmu;->aM:Lhmn;

    nop

    nop

    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    iget-object v1, p1, Ljcs;->a:Llhz;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Llhz;->r:I

    nop

    nop

    iget v3, p0, Ljct;->h:I

    nop

    nop

    nop

    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    nop

    move v1, v2

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    and-int/2addr v0, v1

    nop

    :cond_1
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    iget-object v0, p1, Ljcs;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    if-nez v0, :cond_2

    nop

    nop

    new-instance v0, Lsuu;

    nop

    invoke-direct {v0}, Lsuu;-><init>()V

    iget-object v1, p0, Ljct;->g:Ljcq;

    nop

    nop

    nop

    nop

    iget-object v2, p1, Ljcs;->b:Linb;

    nop

    nop

    iget-object v3, p1, Ljcs;->a:Llhz;

    nop

    iget v4, p0, Ljct;->h:I

    nop

    nop

    nop

    nop

    iget-object v5, p1, Ljcs;->d:Ljcx;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v5, Ljcx;->a:Llxc;

    nop

    nop

    nop

    nop

    iget-object v6, v6, Llxc;->b:Lpsf;

    nop

    invoke-virtual {v5, v6}, Ljcx;->a(Lpsf;)V

    iget-object v5, v5, Ljcx;->a:Llxc;

    nop

    iget-object v5, v5, Llxc;->b:Lpsf;

    nop

    nop

    nop

    nop

    nop

    move-object v6, v0

    nop

    invoke-virtual/range {v1 .. v6}, Ljcq;->c(Linb;Llhz;ILpsf;Lsuu;)V

    new-instance v1, Litv;

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, p1, v2, v3}, Litv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object v2, p0, Ljct;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :cond_2
    iget-object p0, p0, Ljct;->g:Ljcq;

    nop

    nop

    nop

    nop

    iget-object p1, p1, Ljcs;->b:Linb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljcq;->d(Linb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    const v0, 0x17

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_8
    return-void

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

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    goto/32 :goto_1

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-interface {p2}, Lpge;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p2}, Lpge;->close()V

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    iget p2, p0, Ljct;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    iget-object v2, v2, Lmhz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v3, v3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    new-instance v5, Llhz;

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
    if-nez p2, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v5, p1, p3, v4}, Ljcs;-><init>(Llhz;Linb;Ljava/util/concurrent/atomic/AtomicBoolean;Ljcx;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

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

    :goto_8
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    new-instance v3, Ljcs;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    invoke-direct {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Lije;->a()Lijd;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-interface {v3}, Llxa;->ag()Lmjn;

    move-result-object v3

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

    :goto_10
    new-instance v4, Ljcx;

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

    :goto_11
    iget-object v1, p0, Ljct;->c:Lije;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_12
    check-cast v2, Lnch;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_14
    iget-object v0, p0, Ljct;->a:Ljava/util/Map;

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

    :goto_15
    iget-object v3, p1, Linb;->w:Llko;

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

    :goto_16
    iget-object v5, v2, Lmhz;->b:Ljava/lang/Object;

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

    :goto_17
    iput p1, p0, Ljct;->h:I

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v5, Lidi;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x9

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Ljct;->d:Lijo;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_21
    const v1, 0x6

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v5, v2, v1, p2, p3}, Llhz;-><init>(Llko;Lijd;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    iget-object v0, p0, Ljct;->a:Ljava/util/Map;

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

    :goto_26
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v2, p1, Linb;->w:Llko;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Lijo;->o()Z

    move-result v0

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

    :goto_29
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v4, v2, v5, v3}, Ljcx;-><init>(Lnch;Lidi;Lmjn;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, p0, Ljct;->l:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop
.end method

.method public final d(Linb;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_27

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

    :goto_2
    iget-object p0, p0, Ljcs;->d:Ljcx;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Ljct;->b:Lsdb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Ljcs;->a:Llhz;

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
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x841

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmjn;->w:Lsuu;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    check-cast p0, Ljcs;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-interface {v0, v2, v1, p2}, Lscz;->y(Ljava/lang/String;ILjava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    const-string p2, "Unknown"

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Ljcx;->a:Llxc;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Ljcx;->b:Llxg;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    const-string v2, "Shot cancelled. Shot id: %d. Reason: %s"

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    const v1, 0x16

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Llhz;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ljct;->a:Ljava/util/Map;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Llxg;->e()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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
    invoke-interface {v0, v1, v2}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x17

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1}, Ljct;->f(Linb;)I

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Llxc;->a()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    const-string v2, "KeplerProcessorImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Ljcx;->c:Lmjn;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_25
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dm(Linb;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljct;->a(Llxm;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

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
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Ljct;->i:Z

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

    :goto_6
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final dn(Linb;Lilk;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljct;->51550bab6b6440a4fd45f825c221b363m(Linb;Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lilk;->getMessage()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljct;->i:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public final synthetic do(Linb;Lmjq;Lscn;)V
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

.method public final declared-synchronized e(J)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    :goto_1
    const v0, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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
    monitor-exit p0

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

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

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

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lsed;->a:Lsdr;

    nop

    iget v0, p0, Ljct;->f:I

    nop

    nop

    nop

    nop

    int-to-long v0, v0

    nop

    nop

    cmp-long p1, p1, v0

    nop

    nop

    nop

    if-ltz p1, :cond_1

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    iput-boolean p1, p0, Ljct;->i:Z

    nop

    nop

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

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    return-void

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

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop
.end method

.method public final g(Llxm;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Linc;->f(Lilq;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljct;->k:Liof;

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
    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final h(Linb;)Z
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Ljcs;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

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

    :goto_3
    const-string v0, "Kepler was never initiated."

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    if-lt v1, v2, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Ljcs;

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
    goto/16 :goto_1b

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    iget v2, p0, Ljct;->h:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljct;->f(Linb;)I

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_e
    if-nez v1, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    :goto_10
    iget-object v1, v0, Ljcs;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_11
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    :goto_12
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Kelper not produced since not enough frames."

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_14
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, v0, Ljcs;->a:Llhz;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    :goto_19
    const v1, 0xd

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

    :goto_1a
    invoke-virtual {p0, p1, v0}, Ljct;->d(Linb;Ljava/lang/String;)V

    :goto_1b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Ljct;->a:Ljava/util/Map;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    iget v1, v1, Llhz;->r:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Lsed;->a:Lsdr;

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

    :goto_21
    invoke-direct {p0, p1, v0}, Ljct;->51550bab6b6440a4fd45f825c221b363m(Linb;Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop
.end method

.method public final synthetic i(Linb;)Z
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

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
