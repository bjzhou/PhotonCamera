.class public final Ldao;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldao;->a:Loiw;

    iput-object p2, p0, Ldao;->b:Loiw;

    iput-object p3, p0, Ldao;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldan;
    .locals 4

    iget-object v0, p0, Ldao;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldao;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrz;

    iget-object v2, p0, Ldao;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    new-instance v3, Ldan;

    invoke-direct {v3, v0, v1, v2}, Ldan;-><init>(Landroid/content/Context;Lhrz;Ldhi;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldao;->a()Ldan;

    move-result-object v0

    return-object v0
.end method
