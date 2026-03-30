.class public final Lgiq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyd;


# instance fields
.field private final a:Loyd;


# direct methods
.method public constructor <init>(Loyd;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgiq;->a:Loyd;

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v0, 0x12

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgiq;->a:Loyd;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

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

    :goto_b
    invoke-direct {v0, p1, v1}, Lgfs;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    :goto_d
    new-instance v0, Lgfs;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-interface {p0, v0, p2}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final cM()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0}, Loyd;->cM()Ljava/lang/Object;

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

    :goto_1
    iget-object p0, p0, Lgiq;->a:Loyd;

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

    :goto_2
    return-object p0

    nop

    nop
.end method
