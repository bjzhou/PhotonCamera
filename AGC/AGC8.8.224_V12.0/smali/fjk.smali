.class public final Lfjk;
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

    iput-object p1, p0, Lfjk;->a:Loiw;

    iput-object p2, p0, Lfjk;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lfgj;
    .locals 2

    iget-object v0, p0, Lfjk;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfjk;->b:Loiw;

    check-cast v1, Lfii;

    invoke-virtual {v1}, Lfii;->a()Lfgh;

    sget-object v1, Ldhv;->m:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lfgj;->b:Lfgj;

    goto :goto_0

    :cond_0
    sget-object v0, Lfgj;->a:Lfgj;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfjk;->a()Lfgj;

    move-result-object v0

    return-object v0
.end method
