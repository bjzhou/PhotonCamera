.class public final Lggf;
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

    iput-object p1, p0, Lggf;->a:Loiw;

    iput-object p2, p0, Lggf;->b:Loiw;

    iput-object p3, p0, Lggf;->c:Loiw;

    iput-object p4, p0, Lggf;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgkr;
    .locals 7

    iget-object v1, p0, Lggf;->a:Loiw;

    iget-object v2, p0, Lggf;->b:Loiw;

    iget-object v3, p0, Lggf;->c:Loiw;

    iget-object v4, p0, Lggf;->d:Loiw;

    new-instance v6, Lgkr;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lgkr;-><init>(Loiw;Loiw;Loiw;Loiw;[B)V

    return-object v6
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lggf;->a()Lgkr;

    move-result-object v0

    return-object v0
.end method
