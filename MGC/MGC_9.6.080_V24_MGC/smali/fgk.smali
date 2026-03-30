.class public final Lfgk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfgk;->b:Landroid/os/Handler;

    nop

    goto/32 :goto_3

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
    iput-object p2, p0, Lfgk;->a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Lfgk;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfgk;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, p0, p1}, Lfgk;-><init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p2, p0, p1, v0}, Less;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lfgk;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    new-instance p2, Less;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
