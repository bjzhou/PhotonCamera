.class public final synthetic Lhcv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lpog;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lhif;


# direct methods
.method public synthetic constructor <init>(Lhif;Lpog;III)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput p4, p0, Lhcv;->d:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iput-object p2, p0, Lhcv;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    iput p5, p0, Lhcv;->b:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Lhcv;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhcv;->e:Lhif;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget-object v1, p0, Lhcv;->e:Lhif;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {v1 .. v6}, Lhif;->b(Lpog;IIII)V

    goto/32 :goto_12

    nop

    nop

    :goto_2
    sget v0, Lfxi;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, p0, Lhcv;->c:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    const/4 v6, 0x5

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

    :goto_6
    iget-object v2, p0, Lhcv;->a:Lpog;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    iget v4, p0, Lhcv;->d:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v5, p0, Lhcv;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v1, Lhif;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v0}, Lfxi;->b(Landroid/content/Context;Landroid/app/Activity;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Landroid/app/Activity;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method
