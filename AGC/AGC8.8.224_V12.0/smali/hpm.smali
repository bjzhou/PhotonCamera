.class final Lhpm;
.super Ljava/lang/Object;

# interfaces
.implements Lenz;


# instance fields
.field final synthetic a:Litm;

.field final synthetic b:Lhpq;


# direct methods
.method public constructor <init>(Lhpq;Litm;)V
    .locals 0

    iput-object p1, p0, Lhpm;->b:Lhpq;

    iput-object p2, p0, Lhpm;->a:Litm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic b(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lhpm;->b:Lhpq;

    iget-object p1, p1, Lhpq;->V:Ljes;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljes;->b()V

    :cond_0
    return-void
.end method

.method public final e(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhpm;->a:Litm;

    invoke-interface {p1}, Litm;->S()V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhpm;->a:Litm;

    invoke-interface {p1}, Litm;->T()V

    :cond_0
    return-void
.end method
