.class public final Ljzl;
.super Ljava/lang/Object;

# interfaces
.implements Lsd;


# instance fields
.field public final a:Lrd;


# direct methods
.method public constructor <init>(Lrd;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljzl;->a:Lrd;

    new-instance p1, Lpo;

    const/16 v0, 0xc

    invoke-direct {p1, p0, v0}, Lpo;-><init>(Ljzl;I)V

    invoke-static {p1}, Lljr;->aP(Lolz;)Loja;

    return-void
.end method


# virtual methods
.method public final a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ljzl;->a:Lrd;

    invoke-interface {v0, p1}, Lrd;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lonx;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
