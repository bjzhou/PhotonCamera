.class public final Lrpw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcom/google/ar/core/ArCoreApk$ICheckAvailabilityCallback;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field final synthetic b:Lrpx;


# direct methods
.method public constructor <init>(Lrpx;Ljava/util/function/Consumer;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lrpw;->a:Ljava/util/function/Consumer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrpw;->b:Lrpx;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onResult(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0, p1}, Lcom/google/ar/core/ArCoreApkImpl$3$$ExternalSyntheticLambda0;-><init>(Lrpw;Lcom/google/ar/core/ArCoreApk$Availability;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/ArCoreApkImpl$3$$ExternalSyntheticLambda0;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    iget-object p0, p0, Lrpx;->b:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lrpw;->b:Lrpx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method
