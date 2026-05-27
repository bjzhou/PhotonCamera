.class public final Lgin;
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

    iput-object p1, p0, Lgin;->a:Loiw;

    iput-object p2, p0, Lgin;->b:Loiw;

    iput-object p3, p0, Lgin;->c:Loiw;

    iput-object p4, p0, Lgin;->d:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Lgin;
    .locals 1

    new-instance v0, Lgin;

    invoke-direct {v0, p0, p1, p2, p3}, Lgin;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lgkr;
    .locals 5

    iget-object v0, p0, Lgin;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lken;

    iget-object v1, p0, Lgin;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    iget-object v2, p0, Lgin;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkgq;

    iget-object v3, p0, Lgin;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfyz;

    new-instance v4, Lgkr;

    invoke-direct {v4, v0, v1, v2, v3}, Lgkr;-><init>(Lken;Lkfj;Lkgq;Lfyz;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgin;->b()Lgkr;

    move-result-object v0

    return-object v0
.end method
