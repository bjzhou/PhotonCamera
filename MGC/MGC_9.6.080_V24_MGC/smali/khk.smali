.class public final Lkhk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjb;


# instance fields
.field public final synthetic a:Lkho;

.field public final synthetic b:Lkhq;


# direct methods
.method public constructor <init>(Lkhq;Lkho;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lkhk;->a:Lkho;

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
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x19

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x13

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

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    const/16 v1, 0x13

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    iget-object p0, p0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lkev;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_4

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

    :goto_2
    invoke-direct {p1, p0, v0}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lkhk;->b:Lkhq;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v0, 0x12

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance p1, Lkev;

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final c(Lprw;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, v0, v0}, Lkhk;->d(Lprw;ZZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lprw;ZZ)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    move v3, p2

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    iget-object p0, p0, Lkhk;->b:Lkhq;

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

    :goto_7
    const v0, 0x9

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

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    :goto_b
    new-instance v6, Lkhj;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    move v4, p3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    move-object v2, p1

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

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct/range {v0 .. v5}, Lkhj;-><init>(Lkhk;Lprw;ZZI)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method
