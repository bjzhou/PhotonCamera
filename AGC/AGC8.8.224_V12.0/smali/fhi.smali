.class final Lfhi;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# instance fields
.field final synthetic a:Lkxv;

.field final synthetic b:Lnph;


# direct methods
.method public constructor <init>(Lkxv;Lnph;)V
    .locals 0

    iput-object p1, p0, Lfhi;->a:Lkxv;

    iput-object p2, p0, Lfhi;->b:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkxy;
    .locals 1

    iget-object v0, p0, Lfhi;->a:Lkxv;

    invoke-interface {v0}, Lkxv;->a()Lkxy;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lfhi;->b:Lnph;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfhi;->a:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lfhi;->a:Lkxv;

    invoke-interface {v0}, Lkxv;->d()V

    return-void
.end method
