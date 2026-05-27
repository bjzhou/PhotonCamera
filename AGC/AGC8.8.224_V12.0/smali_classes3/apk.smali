.class public final Lapk;
.super Lonf;

# interfaces
.implements Lomk;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Lsw;I)V
    .locals 0

    iput p3, p0, Lapk;->c:I

    iput-object p1, p0, Lapk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lapk;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/CancellationSignal;Lora;I)V
    .locals 0

    iput p3, p0, Lapk;->c:I

    iput-object p1, p0, Lapk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lapk;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Losd;Ljava/lang/Runnable;I)V
    .locals 0

    iput p3, p0, Lapk;->c:I

    iput-object p1, p0, Lapk;->b:Ljava/lang/Object;

    iput-object p2, p0, Lapk;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lapk;->c:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lapk;->b:Ljava/lang/Object;

    check-cast p1, Losd;

    iget-object p1, p1, Losd;->c:Landroid/os/Handler;

    iget-object v0, p0, Lapk;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lapk;->a:Ljava/lang/Object;

    iget-object v0, p0, Lapk;->b:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, Lapk;->a:Ljava/lang/Object;

    check-cast p1, Landroid/os/CancellationSignal;

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    iget-object p1, p0, Lapk;->b:Ljava/lang/Object;

    invoke-static {p1}, Lopx;->k(Lora;)V

    sget-object p1, Lojk;->a:Lojk;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
