.class public final synthetic Lsja;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lsje;

.field public final synthetic b:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor <init>(Lsje;Ljava/util/function/BiFunction;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lsja;->b:Ljava/util/function/BiFunction;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lsja;->a:Lsje;

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
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v0, v1, v2, p0}, Lsjc;-><init>(Lsjd;JLjava/util/function/BiFunction;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    iget-object v1, v0, Lsjd;->c:Lj$/util/Spliterator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object v1, p0, Lsja;->a:Lsje;

    nop

    nop

    nop

    goto/32 :goto_13

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

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    iget-object v2, v0, Lsjd;->d:Lj$/util/Spliterator;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lsja;->b:Ljava/util/function/BiFunction;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v2}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lsjd;

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

    nop

    :goto_9
    return-object v3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    invoke-interface {v1}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    new-instance v3, Lsjc;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    const v1, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1}, Lsjd;-><init>(Lsje;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xd

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
.end method
