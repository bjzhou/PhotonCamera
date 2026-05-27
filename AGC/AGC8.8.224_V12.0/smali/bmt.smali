.class public final Lbmt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public final a:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final b:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmt;->b:Landroid/os/Handler;

    iput-object p2, p0, Lbmt;->a:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method

.method public static a(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;)Lbmt;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lbmt;

    invoke-direct {v1, p0, p1, v0}, Lbmt;-><init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientMode$AmbientController;[B)V

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object p2, p0, Lbmt;->b:Landroid/os/Handler;

    new-instance v0, Lbem;

    const/4 v1, 0x6

    invoke-direct {v0, p0, p1, v1}, Lbem;-><init>(Lbmt;[BI)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
