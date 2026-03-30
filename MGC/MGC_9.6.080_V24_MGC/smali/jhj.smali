.class public final synthetic Ljhj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lghk;


# instance fields
.field public final synthetic a:Ljhk;


# direct methods
.method public synthetic constructor <init>(Ljhk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljhj;->a:Ljhk;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final synthetic a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final b()Lsui;
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Linn;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljhj;->a:Ljhk;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    const/16 v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ljhk;->a:Lsui;

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

    :goto_8
    invoke-static {p0, v0, v1}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

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

    :goto_9
    invoke-direct {v0, v1}, Linn;-><init>(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const v0, 0x13

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lhhg;->L(Lghk;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method
