.class public final Lkhi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkjh;


# instance fields
.field public final synthetic a:Lkhm;

.field public final synthetic b:Lkhq;


# direct methods
.method public constructor <init>(Lkhq;Lkhm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lkhi;->a:Lkhm;

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
    iput-object p1, p0, Lkhi;->b:Lkhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v1}, Lkev;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lkev;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x12

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

    :goto_d
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lkhi;->b:Lkhq;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const/16 v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final b(J)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

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

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    iget-object p0, p0, Lkhq;->n:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lkhi;->b:Lkhq;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p1, p2, v1}, Lhpv;-><init>(Ljava/lang/Object;JI)V

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lhpv;

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

    :goto_e
    const v0, 0x18

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

    :goto_f
    goto/32 :goto_c

    nop
.end method
