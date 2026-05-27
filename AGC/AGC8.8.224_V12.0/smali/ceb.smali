.class public final Lceb;
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

    iput-object p1, p0, Lceb;->a:Loiw;

    iput-object p2, p0, Lceb;->b:Loiw;

    iput-object p3, p0, Lceb;->c:Loiw;

    iput-object p4, p0, Lceb;->d:Loiw;

    iput-object p5, p0, Lceb;->e:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;)Lceb;
    .locals 7

    new-instance v6, Lceb;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lceb;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v6
.end method


# virtual methods
.method public final a()Lcea;
    .locals 9

    iget-object v0, p0, Lceb;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lknz;

    iget-object v0, p0, Lceb;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Limq;

    iget-object v0, p0, Lceb;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkli;

    iget-object v1, p0, Lceb;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ldhi;

    iget-object v1, p0, Lceb;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljvs;

    new-instance v8, Lcea;

    invoke-interface {v0}, Lkli;->f()I

    move-result v5

    invoke-interface {v0}, Lkli;->k()Lklv;

    move-result-object v0

    sget-object v1, Lklv;->a:Lklv;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_0
    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcea;-><init>(Lknz;Limq;Ldhi;IZLjvs;)V

    return-object v8
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lceb;->a()Lcea;

    move-result-object v0

    return-object v0
.end method
