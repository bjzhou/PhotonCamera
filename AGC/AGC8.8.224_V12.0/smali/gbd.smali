.class public final Lgbd;
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

    iput-object p1, p0, Lgbd;->a:Loiw;

    iput-object p2, p0, Lgbd;->b:Loiw;

    iput-object p3, p0, Lgbd;->c:Loiw;

    iput-object p4, p0, Lgbd;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lggd;
    .locals 4

    iget-object v0, p0, Lgbd;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lgbd;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmrl;

    iget-object v2, p0, Lgbd;->c:Loiw;

    check-cast v2, Lggr;

    invoke-virtual {v2}, Lggr;->a()Lggq;

    move-result-object v2

    iget-object v3, p0, Lgbd;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lggm;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Ldhq;->D:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgbd;->a()Lggd;

    move-result-object v0

    return-object v0
.end method
