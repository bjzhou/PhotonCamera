.class public final Ldji;
.super Landroid/database/ContentObserver;


# instance fields
.field public a:Z

.field public b:Lgoz;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldji;->c:Z

    iput-boolean v0, p0, Ldji;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Ldji;->c:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Ldji;->a:Z

    :cond_0
    return-void
.end method

.method public final onChange(Z)V
    .locals 0

    iget-boolean p1, p0, Ldji;->c:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ldji;->a:Z

    :cond_0
    return-void
.end method
