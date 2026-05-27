.class public final Lfzc;
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

    iput-object p1, p0, Lfzc;->a:Loiw;

    iput-object p2, p0, Lfzc;->b:Loiw;

    iput-object p3, p0, Lfzc;->c:Loiw;

    iput-object p4, p0, Lfzc;->d:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Lfzc;
    .locals 1

    new-instance v0, Lfzc;

    invoke-direct {v0, p0, p1, p2, p3}, Lfzc;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lfzb;
    .locals 5

    iget-object v0, p0, Lfzc;->a:Loiw;

    check-cast v0, Logo;

    invoke-virtual {v0}, Logo;->a()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lfzc;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnph;

    iget-object v2, p0, Lfzc;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lfzc;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkbc;

    new-instance v4, Lfzb;

    invoke-direct {v4, v0, v1, v2, v3}, Lfzb;-><init>(Ljava/util/Set;Lnph;Ljava/util/concurrent/Executor;Lkbc;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfzc;->b()Lfzb;

    move-result-object v0

    return-object v0
.end method
