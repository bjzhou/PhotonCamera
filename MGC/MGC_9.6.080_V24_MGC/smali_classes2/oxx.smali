.class public final Loxx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyd;


# instance fields
.field private final a:Loyd;


# direct methods
.method private constructor <init>(Loyd;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Loxx;->a:Loyd;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static a(Loyd;)Loyd;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {v0}, Loxz;->a(Loyd;)Loyd;

    move-result-object p0

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

    :goto_1
    new-instance v0, Loxx;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Loxx;-><init>(Loyd;)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    new-instance v2, Loxw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x16

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

    nop

    :goto_2
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Loyo;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Loxx;->a:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, p1, p2, v0}, Loxw;-><init>(Lpcm;Ljava/util/concurrent/Executor;Lows;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Lows;->d(Lpci;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    return-object v0

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v2, v1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1}, Loyo;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final cM()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast p0, Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

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

    :goto_3
    iget-object p0, p0, Loxx;->a:Loyd;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxx;->a:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Lrsr;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v1, "DerefObs"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lrsr;

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

    :goto_c
    invoke-virtual {v0, p0}, Lrsr;->a(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x11

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
