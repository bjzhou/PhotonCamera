.class public final Lilu;
.super Lpuq;
.source "PG"


# instance fields
.field public volatile a:Lpro;

.field private final b:Lkon;

.field private final c:Lkwq;


# direct methods
.method public constructor <init>(Lkon;Lkwq;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lilu;->b:Lkon;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lilu;->c:Lkwq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 1

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    if-nez v0, :cond_0

    nop

    goto :goto_0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lilu;->b:Lkon;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lkon;->a(Lpro;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lilu;->c:Lkwq;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lkwq;->a(Lpro;)V

    iput-object p1, p0, Lilu;->a:Lpro;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    goto/32 :goto_1

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

    nop
.end method
