.class public final synthetic Lpuv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loqv;


# instance fields
.field public final synthetic a:Lopx;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Lopx;Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lpuv;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lpuv;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lpuv;->a:Lopx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lpuv;->a:Lopx;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget-object p0, p0, Lpuv;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v1, v0, v2}, Lnts;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpuv;->b:Ljava/lang/String;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    check-cast p1, Ljava/lang/Void;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-boolean p1, Lpuw;->a:Z

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

    :goto_a
    const v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, p0, v1}, Loqy;->k(Ljava/util/concurrent/Executor;Loqu;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v1, Lnts;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Lopx;->l(Ljava/lang/String;)Loqy;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
