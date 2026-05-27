.class public final Lids;
.super Ljava/lang/Object;

# interfaces
.implements Lidr;


# instance fields
.field private final a:Lidr;


# direct methods
.method public constructor <init>(Lidr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lids;->a:Lidr;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0}, Lidr;->a()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0}, Lidr;->b()I

    move-result v0

    return v0
.end method

.method public final c(Limc;)Lmqp;
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0, p1}, Lidr;->c(Limc;)Lmqp;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lnou;
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0}, Lidr;->d()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lnou;
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0}, Lidr;->e()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0}, Lidr;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0}, Lidr;->g()V

    return-void
.end method

.method public final h(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 1

    iget-object v0, p0, Lids;->a:Lidr;

    invoke-interface {v0, p1}, Lidr;->h(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
