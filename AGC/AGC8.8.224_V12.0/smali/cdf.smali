.class public final Lcdf;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcdf;->a:Loiw;

    iput-object p2, p0, Lcdf;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldne;
    .locals 4

    iget-object v0, p0, Lcdf;->a:Loiw;

    check-cast v0, Lera;

    invoke-virtual {v0}, Lera;->a()Lbkc;

    move-result-object v0

    iget-object v1, p0, Lcdf;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzn;

    new-instance v2, Ldne;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3, v3}, Ldne;-><init>(Lbkc;Lgzn;[B[B)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcdf;->a()Ldne;

    move-result-object v0

    return-object v0
.end method
