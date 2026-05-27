.class public final Ldat;
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

    iput-object p1, p0, Ldat;->a:Loiw;

    iput-object p2, p0, Ldat;->b:Loiw;

    iput-object p3, p0, Ldat;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldas;
    .locals 4

    iget-object v0, p0, Ldat;->a:Loiw;

    check-cast v0, Ldwh;

    invoke-virtual {v0}, Ldwh;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldat;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    iget-object v2, p0, Ldat;->c:Loiw;

    check-cast v2, Ldaq;

    invoke-virtual {v2}, Ldaq;->a()Lict;

    move-result-object v2

    new-instance v3, Ldas;

    invoke-direct {v3, v0, v1, v2}, Ldas;-><init>(Landroid/content/Context;Ldhi;Lict;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldat;->a()Ldas;

    move-result-object v0

    return-object v0
.end method
