.class public Ljfe;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljfc;

.field public final c:Ljfg;

.field public final d:Loxv;

.field public final e:Lpdf;

.field public final f:Ljfp;

.field public final g:F

.field public final h:I

.field public final i:Ljava/util/Map;

.field public final j:Ljava/util/concurrent/atomic/AtomicReference;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final l:Ljava/util/Map;

.field private final m:Loyd;

.field private final n:Lcom/google/googlex/gcam/Gcam;

.field private final o:Ljava/util/concurrent/Executor;

.field private final p:Lows;

.field private final q:Loyd;

.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final s:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    sput-object v0, Ljfe;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "jfe"

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ljfc;Ljfg;Ljava/util/concurrent/Executor;Loxv;Ljava/util/Map;Loyd;Lmhz;Lcom/google/googlex/gcam/Gcam;Lpdf;Lhoh;Ljfp;Llyv;Lows;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Ljfe;->h:I

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    invoke-direct {p2, p10, p3}, Limd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    iput-object p13, p0, Ljfe;->p:Lows;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p6, p0, Ljfe;->m:Loyd;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Ljfe;->b:Ljfc;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p1, Llyr;->aE:Llzf;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    goto/32 :goto_1

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

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_a
    const/4 p2, 0x7

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_d
    sget-object p1, Lhnb;->b:Lhmo;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Ljava/lang/Integer;

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
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    const v0, 0x7

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

    :goto_11
    invoke-virtual {p12, p1}, Llyv;->a(Llyp;)Loyn;

    move-result-object p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    iput-object p1, p0, Ljfe;->q:Loyd;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_16
    iput-object p4, p0, Ljfe;->d:Loxv;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_18
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p5, p0, Ljfe;->l:Ljava/util/Map;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_35

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v1, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_20
    iput-object p9, p0, Ljfe;->e:Lpdf;

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

    :goto_21
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_22
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p1, Lhnb;->c:Lhmo;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p1, p2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p10, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_29
    iput-object v0, p0, Ljfe;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2a
    const/16 p2, 0x10

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

    :goto_2b
    new-instance v0, Ljava/util/HashMap;

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

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p11, p0, Ljfe;->f:Ljfp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    iput-object p2, p0, Ljfe;->c:Ljfg;

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

    :goto_2f
    iput-object p8, p0, Ljfe;->n:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_30
    iput-object v0, p0, Ljfe;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_31
    iput p1, p0, Ljfe;->g:F

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p10, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1c

    nop

    :goto_34
    return-void

    nop

    :goto_35
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object p3, p0, Ljfe;->o:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance p2, Limd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_38
    iput-object v0, p0, Ljfe;->i:Ljava/util/Map;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    iput-object p7, p0, Ljfe;->s:Lmhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v0, p0, Ljfe;->j:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3b
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/16 p3, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 6

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v2, Ljeo;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    aput-object v2, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ljfe;->l:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v3}, Loyi;->a([Loyd;)Loyd;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6
    aput-object v2, v3, v1

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

    :goto_7
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    sget-object v4, Llhv;->y:Lryy;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1, v2, p0}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ljfe;->p:Lows;

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

    :goto_18
    invoke-direct {v2, p0, v3}, Ljeo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2e

    nop

    nop

    :goto_19
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v3, v4, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    new-array v3, v3, [Loyd;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v3, :cond_1

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
    goto/32 :goto_1

    nop

    nop

    :goto_22
    invoke-virtual {v4, v3}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v4, 0x8a1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, p0, Ljfe;->q:Loyd;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v2, Ljava/util/Map$Entry;

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

    :goto_26
    sget-object v3, Ljfe;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_27
    check-cast v2, Lpnx;

    nop

    :try_start_0
    iget-object v3, p0, Ljfe;->s:Lmhz;

    nop

    nop

    nop

    iget-object v4, v3, Lmhz;->b:Ljava/lang/Object;

    nop

    invoke-interface {v4, v2}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ltbt;->o(Lpnu;)Lsyi;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v3, v4}, Likv;->b(Lsyi;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Ljfe;->n:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v3

    nop

    iget-object v4, p0, Ljfe;->i:Ljava/util/Map;

    nop

    nop

    nop

    nop

    iget-object v5, v2, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

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

    :goto_2b
    check-cast v3, Llhv;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_2d
    if-lez v0, :cond_3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_2e
    iget-object p0, p0, Ljfe;->o:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x1

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

    :goto_30
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    const-string v4, "Invalid camera ID: %s."

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    invoke-static {v1}, Loxz;->a(Loyd;)Loyd;

    move-result-object v1

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

    :goto_33
    const v0, 0xc

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

    :goto_34
    iget-object v0, p0, Ljfe;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, p0, Ljfe;->m:Loyd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_36
    goto/16 :goto_11

    nop

    :catch_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method
