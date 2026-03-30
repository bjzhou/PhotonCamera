.class abstract Lfme;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/Queue;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v1, 0x14

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lfme;->a:Ljava/util/Queue;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    :goto_b
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

    nop

    :goto_c
    const v1, 0xd

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
    const v0, 0x12

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public abstract a()Lfmp;
.end method

.method final b()Lfmp;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1
    check-cast v0, Lfmp;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfme;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lfme;->a()Lfmp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final c(Lfmp;)V
    .locals 2

    goto/32 :goto_6

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x14

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

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    const v0, 0x12

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_3

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_b
    iget-object v0, p0, Lfme;->a:Ljava/util/Queue;

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

    nop

    :goto_c
    const v1, 0x14

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {p0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
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

    nop

    :goto_10
    iget-object p0, p0, Lfme;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method
