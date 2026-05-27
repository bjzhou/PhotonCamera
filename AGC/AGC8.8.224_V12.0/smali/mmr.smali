.class final Lmmr;
.super Lmmk;


# instance fields
.field final synthetic a:Lmms;


# direct methods
.method public constructor <init>(Lmms;)V
    .locals 0

    iput-object p1, p0, Lmmr;->a:Lmms;

    invoke-direct {p0}, Lmmk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lmmr;->a:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    check-cast v0, Lmmt;

    iget-object v1, v0, Lmmt;->k:Landroid/os/IInterface;

    check-cast v1, Lcbe;

    iget-object v1, v1, Lcbe;->a:Landroid/os/IBinder;

    iget-object v0, v0, Lmmt;->h:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lmmr;->a:Lmms;

    iget-object v0, v0, Lmms;->a:Ljava/lang/Object;

    check-cast v0, Lmmt;

    const/4 v1, 0x0

    iput-object v1, v0, Lmmt;->k:Landroid/os/IInterface;

    invoke-static {v0}, Lmmt;->d(Lmmt;)V

    return-void
.end method
