.class public final Lcft;
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

    iput-object p1, p0, Lcft;->a:Loiw;

    iput-object p2, p0, Lcft;->b:Loiw;

    iput-object p3, p0, Lcft;->c:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcgi;
    .locals 4

    iget-object v0, p0, Lcft;->a:Loiw;

    iget-object v1, p0, Lcft;->b:Loiw;

    iget-object v2, p0, Lcft;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    sget-object v3, Ldho;->bX:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgi;

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgi;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcft;->a()Lcgi;

    move-result-object v0

    return-object v0
.end method
