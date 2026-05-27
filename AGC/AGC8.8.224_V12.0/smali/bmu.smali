.class public final Lbmu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# static fields
.field public static final synthetic b:I


# instance fields
.field public final a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmu;->c:Landroid/os/Handler;

    iput-object p2, p0, Lbmu;->a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method


# virtual methods
.method public final onShutter()V
    .locals 3

    iget-object v0, p0, Lbmu;->c:Landroid/os/Handler;

    new-instance v1, Lazo;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lazo;-><init>(Lbmu;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
