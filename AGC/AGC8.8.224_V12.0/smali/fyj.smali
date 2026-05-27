.class public final Lfyj;
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

    iput-object p1, p0, Lfyj;->a:Loiw;

    iput-object p2, p0, Lfyj;->b:Loiw;

    iput-object p3, p0, Lfyj;->c:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Lfyj;
    .locals 1

    new-instance v0, Lfyj;

    invoke-direct {v0, p0, p1, p2}, Lfyj;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lgkr;
    .locals 5

    iget-object v0, p0, Lfyj;->a:Loiw;

    check-cast v0, Ldjw;

    invoke-virtual {v0}, Ldjw;->a()Lkap;

    move-result-object v0

    iget-object v1, p0, Lfyj;->b:Loiw;

    check-cast v1, Logo;

    invoke-virtual {v1}, Logo;->a()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lfyj;->c:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljuh;

    invoke-static {}, Lduq;->a()Ldin;

    move-result-object v3

    new-instance v4, Lgkr;

    invoke-direct {v4, v0, v1, v2, v3}, Lgkr;-><init>(Lkap;Ljava/util/Set;Ljuh;Ldin;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfyj;->b()Lgkr;

    move-result-object v0

    return-object v0
.end method
