.class public final Ldmu;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkcs;

.field public final b:Landroid/os/Handler;

.field public c:Lkad;

.field public d:Lkad;


# direct methods
.method public constructor <init>(Lkcs;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldmu;->a:Lkcs;

    iput-object p2, p0, Ldmu;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldmu;->d:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Ldmu;->d:Lkad;

    :cond_0
    return-void
.end method
