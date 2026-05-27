.class public final Lklt;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lklt;->a:Loiw;

    iput-object p2, p0, Lklt;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkls;
    .locals 3

    iget-object v0, p0, Lklt;->a:Loiw;

    check-cast v0, Lemb;

    invoke-virtual {v0}, Lemb;->a()Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lklt;->b:Loiw;

    check-cast v1, Lkao;

    invoke-virtual {v1}, Lkao;->a()Lkaq;

    move-result-object v1

    new-instance v2, Lkls;

    invoke-direct {v2, v0, v1}, Lkls;-><init>(Landroid/hardware/camera2/CameraManager;Lkaq;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lklt;->a()Lkls;

    move-result-object v0

    return-object v0
.end method
