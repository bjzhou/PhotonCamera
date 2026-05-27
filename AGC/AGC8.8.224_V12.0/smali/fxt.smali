.class public final Lfxt;
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

    iput-object p1, p0, Lfxt;->a:Loiw;

    iput-object p2, p0, Lfxt;->b:Loiw;

    iput-object p3, p0, Lfxt;->c:Loiw;

    iput-object p4, p0, Lfxt;->d:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;)Lfxt;
    .locals 1

    new-instance v0, Lfxt;

    invoke-direct {v0, p0, p1, p2, p3}, Lfxt;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lfxs;
    .locals 9

    iget-object v0, p0, Lfxt;->a:Loiw;

    check-cast v0, Lceb;

    invoke-virtual {v0}, Lceb;->a()Lcea;

    move-result-object v2

    iget-object v0, p0, Lfxt;->b:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgqh;

    iget-object v0, p0, Lfxt;->c:Loiw;

    check-cast v0, Lgdf;

    invoke-virtual {v0}, Lgdf;->a()Lgdd;

    move-result-object v4

    iget-object v0, p0, Lfxt;->d:Loiw;

    check-cast v0, Lfyp;

    invoke-virtual {v0}, Lfyp;->b()Lbkb;

    move-result-object v5

    new-instance v0, Lfxs;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lfxs;-><init>(Lcea;Lgqh;Lgdd;Lbkb;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfxt;->a()Lfxs;

    move-result-object v0

    return-object v0
.end method
