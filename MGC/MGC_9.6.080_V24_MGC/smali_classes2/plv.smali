.class public final Lplv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpjv;


# instance fields
.field public final a:Lum;

.field private final b:Ljava/util/Map;

.field private final c:Luep;

.field private final d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lum;Ljava/util/Map;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    check-cast v1, Lphh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_1
    invoke-direct {v2, p2}, Lqq;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    :goto_4
    invoke-static {p2}, Lrkm;->R(I)I

    move-result p2

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

    :goto_5
    iget-object p2, p2, Ltxv;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p2, v2, v1}, Ltxv;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

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

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_24

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

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p2, Lph;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    sget-object p1, Luer;->a:Luer;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_f
    iput-object v0, p0, Lplv;->d:Ljava/util/Map;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    :goto_15
    iput-object p2, p0, Lplv;->b:Ljava/util/Map;

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

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lplv;->c:Luep;

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

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p2, Ltxv;

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

    :goto_1c
    iget-object v1, p2, Ltxv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    iget p2, p2, Lph;->a:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Luep;

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

    :goto_20
    invoke-static {p2, v1}, Lucd;->h(II)I

    move-result p2

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

    :goto_21
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p1}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result p2

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

    :goto_23
    const/16 v1, 0x10

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p1, p0, Lplv;->a:Lum;

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

    :goto_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_26
    goto :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v0, v1, v2, p1}, Luep;-><init>(JLucu;)V

    goto/32 :goto_18

    nop

    nop

    :goto_29
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2a
    new-instance v2, Lqq;

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

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    check-cast p2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_30
    sget-object p1, Luep;->a:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

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
.end method


# virtual methods
.method public final a()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lprg;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_b

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

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    :try_start_0
    new-instance v0, Lplr;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v1, v2}, Lplr;-><init>(Lplv;Ltzy;I)V

    invoke-static {v0}, Lucd;->w(Lubo;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    new-instance v0, Lprg;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop
.end method

.method public final b(Lpjz;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_9

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
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    :try_start_0
    new-instance v0, Ltq;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    const/16 v2, 0x10

    nop

    nop

    invoke-direct {v0, p0, p1, v1, v2}, Ltq;-><init>(Lplv;Lpjz;Ltzy;I)V

    invoke-static {v0}, Lucd;->w(Lubo;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

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
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Lpfi;

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_9

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v1, 0x7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    :try_start_0
    new-instance v0, Lplr;

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v2, v1, v2}, Lplr;-><init>(Lplv;Ltzy;I[B)V

    invoke-static {v0}, Lucd;->w(Lubo;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    new-instance v0, Lpfi;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public final d(Lpjz;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Lprw;->h(Lprs;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, p1, p0}, Lplu;-><init>(Lpjz;Lplv;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p1, Lpjz;->e:Lrss;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    new-instance v1, Lplu;

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

    :goto_a
    invoke-virtual {p0, p1}, Lplv;->e(Ljava/util/List;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p1, Lpjz;->e:Lrss;

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

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_10
    check-cast v0, Lpgx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    :goto_12
    const v1, 0x19

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lrss;->h()Z

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

    nop

    :goto_14
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    iget-object v0, v0, Lpgx;->a:Lprw;

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

.method public final e(Ljava/util/List;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Lpfi;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    :try_start_0
    new-instance v0, Ltq;

    nop

    const/4 v1, 0x0

    nop

    const/16 v2, 0x11

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, v1, v2}, Ltq;-><init>(Lplv;Ljava/util/List;Ltzy;I)V

    invoke-static {v0}, Lucd;->w(Lubo;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    new-instance p1, Lpfi;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final f(Ljava/util/List;)Ljava/util/List;
    .locals 17

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v7, v6}, Lqq;-><init>(I)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1
    move-object v7, v8

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

    nop

    :goto_2
    move-object v9, v3

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

    :goto_3
    if-nez v6, :cond_0

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v6, Lpha;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, v6, Lpha;->a:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_6
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v6, v6, Lpha;->b:Ljava/lang/Object;

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

    :goto_9
    iget-object v3, v3, Lpjz;->e:Lrss;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

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

    :goto_c
    new-instance v7, Lqq;

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    nop

    :goto_e
    invoke-static {v9}, Lrkm;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

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

    :goto_f
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-nez v6, :cond_2

    nop

    goto/32 :goto_7c

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    check-cast v6, Lphh;

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
    sget-object v11, Ltyw;->a:Ltyw;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v15, 0x0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v6}, Lpuq;->bp(Lprd;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v8, v9

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {v3}, Lpro;->b()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-class v10, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1f
    new-instance v8, Lwa;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "Cannot unwrap input image metadata!"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v9, v4}, Lqm;-><init>(I)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_24
    invoke-direct {v8, v6}, Lwa;-><init>(Landroid/media/Image;)V

    goto/32 :goto_6d

    nop

    nop

    :goto_25
    new-instance v9, Lqm;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    move-object v6, v7

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_27
    iget-object v7, v0, Lplv;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_28
    check-cast v6, Landroid/hardware/camera2/TotalCaptureResult;

    nop

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

    :goto_29
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_79

    nop

    :goto_2a
    iget-object v4, v3, Lpjz;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct/range {v4 .. v10}, Lqk;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lqm;Lpv;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2e
    check-cast v3, Lpjz;

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2f
    goto/32 :goto_7a

    nop

    nop

    :goto_30
    check-cast v3, Lpgx;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_31
    iget-object v4, v3, Lpjz;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v16, 0x3e

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_35
    return-object v1

    nop

    :goto_36
    goto/32 :goto_2f

    nop

    nop

    :goto_37
    const/16 v8, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_38
    invoke-direct {v3, v6}, Lplo;-><init>(Landroid/hardware/camera2/TotalCaptureResult;)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_39
    invoke-direct/range {v10 .. v16}, Lqk;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/util/List;Lqm;Lpv;I)V

    goto/32 :goto_28

    nop

    nop

    :goto_3a
    goto/16 :goto_17

    nop

    nop

    :goto_3b
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v11, Lqk;

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

    :goto_3e
    invoke-direct {v6, v8, v3}, Lpv;-><init>(Lwf;Lpn;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_3f
    check-cast v6, Landroid/media/Image;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    :goto_42
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_43
    new-instance v7, Ljava/util/LinkedHashMap;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-nez v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_1b

    nop

    :goto_48
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v6, v3, Lpjz;->e:Lrss;

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

    :goto_4a
    iget v6, v6, Lph;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    :goto_4c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_4e
    invoke-static {v6}, Lrkm;->R(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4f
    if-nez v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-instance v6, Lpv;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v4, v3, Lpjz;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_55
    move-object v4, v11

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

    :goto_56
    invoke-static {v6, v8}, Lucd;->h(II)I

    move-result v6

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_78

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v4}, Lpgl;->a(Ljava/util/Collection;)Lpuq;

    move-result-object v4

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

    nop

    :goto_5a
    const-string v1, "CameraId cannot be null!"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v6, v10}, Lpro;->dy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v6, v0, Lplv;->d:Ljava/util/Map;

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

    :goto_5d
    const v1, 0x1b

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    throw v0

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_34

    nop

    nop

    :goto_60
    new-instance v9, Lplz;

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

    :goto_61
    invoke-static {v3}, Loz;->b(Ljava/lang/String;)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_62
    const v0, 0x3

    nop

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

    :goto_63
    const/4 v12, 0x0

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_64
    iget-object v6, v3, Lpgx;->a:Lprw;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v8, v0, Lplv;->c:Luep;

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

    nop

    :goto_66
    const/4 v10, 0x4

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast v6, Lph;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v3, v3, Lpgx;->b:Lpro;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_69
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3f

    nop

    nop

    :goto_6d
    iget-object v6, v3, Lpgx;->b:Lpro;

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

    :goto_6e
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {v9, v4, v6, v8}, Lplz;-><init>(Lpuq;Ljava/util/Map;Luep;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_70
    new-instance v3, Lplo;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_71
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_72
    iget-object v4, v3, Lpjz;->b:Ljava/util/Set;

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

    :goto_73
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

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

    :goto_74
    invoke-direct {v7, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_75
    new-instance v5, Ljava/util/ArrayList;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_76
    invoke-static {v4}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_77
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v10, Lqk;

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
.end method
