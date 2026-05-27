.class public final Lmos;
.super Ljava/lang/Object;

# interfaces
.implements Lmox;


# instance fields
.field public a:Lj$/util/Optional;

.field private final b:Lj$/util/Optional;

.field private final c:I


# direct methods
.method public constructor <init>(ILj$/util/Optional;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lmos;->a:Lj$/util/Optional;

    iput p1, p0, Lmos;->c:I

    iput-object p2, p0, Lmos;->b:Lj$/util/Optional;

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 3

    iget v0, p0, Lmos;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmos;->b:Lj$/util/Optional;

    new-instance v1, Licl;

    const/16 v2, 0x8

    invoke-direct {v1, p1, v2}, Licl;-><init>([BI)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_0
    iget-object v0, p0, Lmos;->a:Lj$/util/Optional;

    new-instance v1, Licl;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Licl;-><init>([BI)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lmos;->b:Lj$/util/Optional;

    new-instance v1, Lmor;

    invoke-direct {v1, p1}, Lmor;-><init>(I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget v0, p0, Lmos;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmos;->b:Lj$/util/Optional;

    new-instance v1, Lmoq;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lmoq;-><init>(I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    iget v0, p0, Lmos;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmos;->b:Lj$/util/Optional;

    new-instance v1, Lmoq;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lmoq;-><init>(I)V

    invoke-virtual {v0, v1}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method
