.class public final synthetic Lhhh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lmed;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhhh;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lhhh;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Bitmap;)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Lhej;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, p0, p1, v3, v1}, Lgow;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_b
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lhhi;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lhhh;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p0, Lhej;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_10
    goto/32 :goto_1f

    nop

    :goto_11
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v3, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0, p1, v2, v1}, Lhfx;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    new-instance v2, Lgow;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xd

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x20

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lhhi;->f:Lowu;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lhhh;->a:Ljava/lang/Object;

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

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lhej;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lhej;->c()V

    goto/32 :goto_0

    nop

    nop

    :goto_22
    iget v0, p0, Lhhh;->b:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    :goto_24
    new-instance v0, Lhfx;

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
