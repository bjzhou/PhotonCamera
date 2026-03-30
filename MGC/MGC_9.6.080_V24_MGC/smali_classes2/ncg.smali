.class final Lncg;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "PG"


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lnch;


# direct methods
.method public constructor <init>(Lnch;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lncg;->a:Landroid/graphics/Bitmap;

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

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lncg;->b:Lnch;

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
.method public final onDismissCancelled()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lnch;->a()Lcom/google/lens/sdk/LensApi;

    move-result-object p0

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

    :goto_2
    iget-object p0, p0, Lncg;->b:Lnch;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onDismissError()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lncg;->b:Lnch;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnch;->a()Lcom/google/lens/sdk/LensApi;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onDismissSucceeded()V
    .locals 9

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast v1, Landroid/app/Activity;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    const v0, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lcom/google/lens/sdk/LensApi;->b:Landroid/app/KeyguardManager;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v0, v7, v8, v3}, Lqxm;-><init>(Lcom/google/lens/sdk/LensApi;Ljava/lang/Object;Ltii;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, v3, v2}, Lcom/google/lens/sdk/LensApi;->b(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;Ljava/lang/Runnable;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lncg;->b:Lnch;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_9
    move-object v1, v8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v7, p0, Lncg;->a:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Lnch;->a()Lcom/google/lens/sdk/LensApi;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v8, Ltii;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_11
    iget-object p0, p0, Lncg;->b:Lnch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
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

    :goto_13
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    :goto_19
    const/4 v3, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v7, v8}, Lcom/google/lens/sdk/LensApi;->a(Landroid/graphics/Bitmap;Ltii;)V

    :goto_1b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v5, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lncg;->b:Lnch;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v2, Lqxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    goto :goto_1b

    nop

    :goto_22
    goto/32 :goto_1a

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lnch;->a()Lcom/google/lens/sdk/LensApi;

    move-result-object p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    goto/32 :goto_e

    nop

    nop

    :goto_25
    iget-object v1, v1, Lnch;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_26
    move-object v3, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct/range {v1 .. v6}, Ltii;-><init>(Landroid/net/Uri;Landroid/graphics/Bitmap;Ljava/lang/Long;Ltib;Ljava/lang/Integer;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method
