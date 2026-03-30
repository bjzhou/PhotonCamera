.class public Lisv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Limn;


# static fields
.field public static final b:Lsdb;


# instance fields
.field public final c:Lisq;

.field public final d:Ljava/util/concurrent/atomic/AtomicLong;

.field public final e:Z

.field public final f:Ljava/util/Map;

.field public final g:Lins;

.field public final h:Lkog;

.field public final i:Llyv;

.field public final j:Lidi;

.field public final k:Lhoh;

.field private final l:Lrss;


# direct methods
.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Llko;)Lisu;
    .locals 9

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lisv;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    iget-object v0, p1, Llko;->d:Ljava/lang/Object;

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

    :goto_2
    goto/32 :goto_1c

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v8, v1, Llwl;->c:Lrss;

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

    :goto_8
    check-cast v1, Llwl;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

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

    :goto_a
    move-object v3, p0

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

    :goto_b
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_d
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-interface {v0}, Llxa;->u()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v4, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v5, p1, Llko;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v2 .. v8}, Lisu;-><init>(Lisv;Llxa;Lktr;Lrss;Ljava/util/UUID;Lrss;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    nop

    nop

    :goto_14
    move-object v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    move-object v2, p1

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

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p1, Lisu;

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

    :goto_18
    goto/32 :goto_3

    nop

    nop

    :goto_19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Lisu;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v1

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    iget-object v6, p0, Lisv;->l:Lrss;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lisv;->f:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    const-string v0, "isv"

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

    :goto_2
    sput-object v0, Lisv;->b:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public constructor <init>(Lrss;Lkog;Lisq;Lhoh;Llyv;ZLins;Lidi;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lisv;->h:Lkog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lisv;->l:Lrss;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

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
    const v0, 0x14

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    iput-boolean p6, p0, Lisv;->e:Z

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

    :goto_7
    iput-object p8, p0, Lisv;->j:Lidi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    iput-object p5, p0, Lisv;->i:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v1, 0x0

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    :goto_10
    iput-object p4, p0, Lisv;->k:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    iput-object p1, p0, Lisv;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iput-object v0, p0, Lisv;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xd

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    iput-object p7, p0, Lisv;->g:Lins;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_16
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    iput-object p3, p0, Lisv;->c:Lisq;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public static e(Lsui;)Lcom/google/googlex/gcam/InterleavedImageU16;
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Lcom/google/googlex/gcam/InterleavedImageU16;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v1, 0x4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto :goto_e

    nop

    nop

    :catch_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    const-wide/16 v1, 0x64

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, v2, v0}, Lsui;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    check-cast p0, Lcom/google/googlex/gcam/InterleavedImageU16;

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>()V

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p0, Lcom/google/googlex/gcam/InterleavedImageU16;

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

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Lcom/google/googlex/gcam/InterleavedImageU16;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;)Lksk;
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-direct {p0, p1}, Lisv;->7ecc92917e9c4556cc19f457ddc41af8m(Llko;)Lisu;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final synthetic b(Llko;)Lksk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lisv;->7ecc92917e9c4556cc19f457ddc41af8m(Llko;)Lisu;

    move-result-object p0

    nop

    nop

    nop

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

    nop
.end method

.method public final c(Llko;)Limo;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lisv;->7ecc92917e9c4556cc19f457ddc41af8m(Llko;)Lisu;

    move-result-object p0

    nop

    nop

    nop

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

    nop
.end method

.method public final d(Llko;Lioy;)Limo;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lisv;->7ecc92917e9c4556cc19f457ddc41af8m(Llko;)Lisu;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method
