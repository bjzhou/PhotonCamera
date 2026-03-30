.class public final synthetic Lncd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# instance fields
.field public final synthetic a:Lnch;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lnch;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lncd;->b:Landroid/graphics/Bitmap;

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
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lncd;->a:Lnch;

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
.method public final onAvailabilityStatusFetched(I)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v0, p1, v2}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    new-instance p1, Lncg;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7
    check-cast p0, Lowu;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lncd;->a:Lnch;

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

    :goto_9
    invoke-virtual {v0}, Lnch;->a()Lcom/google/lens/sdk/LensApi;

    move-result-object p0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a
    const/16 v2, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lmiv;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, v0, Lnch;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_14
    invoke-virtual {p0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_11

    nop

    nop

    :goto_15
    invoke-direct {p1, v0, p0}, Lncg;-><init>(Lnch;Landroid/graphics/Bitmap;)V

    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lncd;->b:Landroid/graphics/Bitmap;

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
