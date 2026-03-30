.class public final Loyp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loyd;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private final b:Loyj;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    iput-object p1, p0, Loyp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

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

    :goto_3
    const v0, 0x3

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    iput-object p1, p0, Loyp;->b:Loyj;

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

    :goto_5
    const/16 v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Loyj;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, v0}, Loyj;-><init>(Lrtm;)V

    goto/32 :goto_4

    nop

    nop

    :goto_d
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

    :goto_e
    new-instance v0, Lhdh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0, v1}, Lhdh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loyp;->b:Loyj;

    nop

    goto/32 :goto_2

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

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Loyj;->a()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Loyj;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loyp;->b:Loyj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final cM()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Loyp;->b:Loyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Loyj;->cM()Ljava/lang/Object;

    move-result-object p0

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
    return-object p0

    nop

    nop
.end method
