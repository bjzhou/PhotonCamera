.class public Liot;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Limm;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ltud;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Lpdf;

.field public final e:Lpck;

.field public final f:Ljava/util/concurrent/atomic/AtomicLong;

.field public final g:Ljava/util/Map;

.field public final h:Lkqj;

.field public final i:Lkog;

.field public final j:Lidi;

.field public final k:Lhoh;

.field private final l:Lrss;

.field private final m:Lrss;

.field private final n:Lj$/util/Optional;

.field private final o:Lije;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const-string v0, "iot"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Liot;->a:Lsdb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrss;Lrss;Lj$/util/Optional;Lkog;Lije;Ltud;Lidi;Ljava/util/concurrent/Executor;Lhoh;Lpdf;Lkxj;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljava/util/HashMap;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    iput-object p8, p0, Liot;->c:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Liot;->m:Lrss;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Liot;->g:Ljava/util/Map;

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p6, p0, Liot;->b:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    const v1, 0x5

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Lkqj;-><init>(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_10
    iput-object p7, p0, Liot;->j:Lidi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lkqj;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Liot;->e:Lpck;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x19

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Liot;->f:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    iput-object p1, p0, Liot;->l:Lrss;

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
    iput-object p3, p0, Liot;->n:Lj$/util/Optional;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p9, p0, Liot;->k:Lhoh;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p11, Lkxj;->b:Lpck;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p5, p0, Liot;->o:Lije;

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

    :goto_1f
    iput-object p4, p0, Liot;->i:Lkog;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v0, p0, Liot;->h:Lkqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_21
    iput-object p10, p0, Liot;->d:Lpdf;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Llko;)Lksk;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sget-object p1, Lcom/google/android/build/data/ERtJ/cVlffQDuQRSSY;->GDBlkZuluvS:Ljava/lang/String;

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

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic b(Llko;)Lksk;
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-virtual {p0, p1}, Liot;->c(Llko;)Limo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Llko;)Limo;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const-string p1, "Method not supported"

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

    :goto_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop
.end method

.method public final d(Llko;Lioy;)Limo;
    .locals 8

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Lrrf;->x(Z)V

    goto/32 :goto_3a

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lioy;->a()I

    move-result v1

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

    :goto_2
    goto/32 :goto_b

    nop

    nop

    :goto_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "Unsupported fusion mode: "

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    :goto_7
    add-int/lit8 v0, p2, -0x1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

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

    nop

    :goto_d
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2d

    nop

    nop

    :goto_f
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

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

    :goto_10
    invoke-static {v1}, Lrrf;->x(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_12
    check-cast v1, Liox;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    new-instance v1, Lios;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Liot;->n:Lj$/util/Optional;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Liot;->l:Lrss;

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

    :goto_16
    iget-object v1, p0, Liot;->g:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Llxa;->j()Llxm;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0}, Llxa;->u()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_19
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Liot;->o:Lije;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1c
    invoke-direct/range {v2 .. v7}, Lios;-><init>(Liot;Llko;Lijd;Liox;Lioy;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1}, Lj$/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1e
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1f
    iget-object v1, p0, Liot;->m:Lrss;

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

    :goto_20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Lios;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object v7, p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lije;->a()Lijd;

    move-result-object v5

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

    :goto_25
    invoke-virtual {p2}, Lioy;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    move-object v4, p1

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

    :goto_27
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_29
    move-object v6, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2c
    const/4 v2, 0x2

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

    :goto_2d
    invoke-virtual {p2}, Lioy;->a()I

    move-result v1

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

    :goto_2e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Lioy;->a()I

    move-result p2

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

    :goto_31
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v3, p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v2, 0x4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    if-eq v1, v2, :cond_1

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Liot;->m:Lrss;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v1, p0, Liot;->l:Lrss;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_3d
    throw p0

    nop

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq v1, v2, :cond_3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Liot;->g:Ljava/util/Map;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_43
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_45
    const-string v0, " for session "

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v1, Liox;

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
    iget-object v0, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_48
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4a
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_3e

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_4b
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2

    nop

    :goto_4c
    goto/16 :goto_3e

    nop

    :goto_4d
    goto/32 :goto_44

    nop

    nop

    :goto_4e
    check-cast v1, Liox;

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_50
    new-instance p2, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
