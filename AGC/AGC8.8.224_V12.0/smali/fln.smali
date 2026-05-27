.class public final Lfln;
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

    iput-object p1, p0, Lfln;->a:Loiw;

    iput-object p2, p0, Lfln;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgxb;
    .locals 7

    iget-object v0, p0, Lfln;->a:Loiw;

    check-cast v0, Lfli;

    invoke-virtual {v0}, Lfli;->a()Lgkr;

    move-result-object v2

    iget-object v0, p0, Lfln;->b:Loiw;

    check-cast v0, Ldjw;

    invoke-virtual {v0}, Ldjw;->a()Lkap;

    move-result-object v3

    new-instance v0, Lgxb;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgxb;-><init>(Lgkr;Lkap;[B[B[B)V

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfln;->a()Lgxb;

    move-result-object v0

    return-object v0
.end method
