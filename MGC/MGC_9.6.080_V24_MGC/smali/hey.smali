.class final Lhey;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private a:J

.field private b:Lryb;

.field private c:B


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
.end method


# virtual methods
.method public final a()Lhez;
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v1

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v1, v2, v3, v0}, Lhez;-><init>(JLryb;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    iget-byte v0, p0, Lhey;->c:B

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lhey;->b:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    new-instance v1, Lhez;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_14
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v2, p0, Lhey;->a:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhey;->b:Lryb;

    nop

    goto/32 :goto_1

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
    invoke-static {p1}, Lryb;->j(Ljava/util/Collection;)Lryb;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final c(J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x1

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
    iput-wide p1, p0, Lhey;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-byte p1, p0, Lhey;->c:B

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method
