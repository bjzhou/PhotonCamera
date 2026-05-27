.class public final Lfnp;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfnp;->a:Loiw;

    iput-object p2, p0, Lfnp;->b:Loiw;

    iput-object p3, p0, Lfnp;->c:Loiw;

    iput-object p4, p0, Lfnp;->d:Loiw;

    iput-object p5, p0, Lfnp;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldqx;
    .locals 7

    iget-object v0, p0, Lfnp;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ldbf;

    iget-object v0, p0, Lfnp;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldna;

    iget-object v0, p0, Lfnp;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ldhi;

    iget-object v0, p0, Lfnp;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lklx;

    iget-object v0, p0, Lfnp;->e:Loiw;

    check-cast v0, Lelq;

    invoke-virtual {v0}, Lelq;->a()Landroid/view/WindowManager;

    move-result-object v6

    new-instance v0, Ldqx;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Ldqx;-><init>(Ldbf;Ldna;Ldhi;Lklx;Landroid/view/WindowManager;)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfnp;->a()Ldqx;

    move-result-object v0

    return-object v0
.end method
