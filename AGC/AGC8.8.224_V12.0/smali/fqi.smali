.class public final Lfqi;
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

    iput-object p1, p0, Lfqi;->a:Loiw;

    iput-object p2, p0, Lfqi;->b:Loiw;

    iput-object p3, p0, Lfqi;->c:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Lfqi;
    .locals 1

    new-instance v0, Lfqi;

    invoke-direct {v0, p0, p1, p2}, Lfqi;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lfqq;
    .locals 4

    iget-object v0, p0, Lfqi;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfqi;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfqr;

    iget-object v2, p0, Lfqi;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfrt;

    sget-object v3, Ldhw;->y:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfqi;->b()Lfqq;

    move-result-object v0

    return-object v0
.end method
