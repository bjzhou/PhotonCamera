.class public final Lncf;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "PG"


# instance fields
.field final synthetic a:Lnch;


# direct methods
.method public constructor <init>(Lnch;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lncf;->a:Lnch;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onDismissSucceeded()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    iget-object p0, p0, Lnch;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lncf;->a:Lnch;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Lnce;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lncf;->a:Lnch;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lnch;->a()Lcom/google/lens/sdk/LensApi;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p0, v1}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;Lcom/google/lens/sdk/LensApi$LensLaunchStatusCallback;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    check-cast p0, Landroid/app/Activity;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    new-instance v1, Lnce;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
