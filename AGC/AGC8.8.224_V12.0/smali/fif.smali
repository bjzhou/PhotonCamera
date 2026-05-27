.class public final Lfif;
.super Ljava/lang/Object;

# interfaces
.implements Lkxv;


# instance fields
.field public final a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final b:Lkxv;


# direct methods
.method public constructor <init>(Lkxv;Landroidx/wear/ambient/AmbientModeSupport$AmbientController;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfif;->b:Lkxv;

    iput-object p2, p0, Lfif;->a:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method


# virtual methods
.method public final a()Lkxy;
    .locals 2

    iget-object v0, p0, Lfif;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->a()Lkxy;

    move-result-object v0

    new-instance v1, Lfie;

    invoke-direct {v1, p0, v0}, Lfie;-><init>(Lfif;Lkxy;)V

    return-object v1
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lfif;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->b()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfif;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lfif;->b:Lkxv;

    invoke-interface {v0}, Lkxv;->d()V

    return-void
.end method
