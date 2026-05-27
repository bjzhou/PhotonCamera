.class public final Liov;
.super Ljava/lang/Object;

# interfaces
.implements Lipc;


# instance fields
.field private a:Lipc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Liov;->a:Lipc;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Liov;->a:Lipc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lipc;->a(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Liov;->a:Lipc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lipc;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Liov;->a:Lipc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lipc;->c()V

    return-void
.end method

.method public final d(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Liov;->a:Lipc;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lipc;->d(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Liov;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Liov;->a:Lipc;

    return-void
.end method

.method public final f(Lipc;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Liov;->a:Lipc;

    return-void
.end method
