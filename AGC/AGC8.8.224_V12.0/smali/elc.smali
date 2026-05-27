.class public final Lelc;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lelc;->a:Loiw;

    iput-object p2, p0, Lelc;->b:Loiw;

    iput-object p3, p0, Lelc;->c:Loiw;

    iput-object p4, p0, Lelc;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lehx;
    .locals 8

    iget-object v0, p0, Lelc;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lelc;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lhlc;

    iget-object v0, p0, Lelc;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ligo;

    iget-object v1, p0, Lelc;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/Set;

    invoke-virtual {v0, v3}, Ligo;->E(Lhlc;)Ljew;

    move-result-object v4

    new-instance v0, Lehx;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lehx;-><init>(Landroid/content/Context;Lhlc;Ljew;Ljava/util/Set;[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lelc;->a()Lehx;

    move-result-object v0

    return-object v0
.end method
