.class public final Lfdw;
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

    iput-object p1, p0, Lfdw;->a:Loiw;

    iput-object p2, p0, Lfdw;->b:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgxb;
    .locals 3

    iget-object v0, p0, Lfdw;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lknc;

    iget-object v1, p0, Lfdw;->b:Loiw;

    check-cast v1, Lgdf;

    invoke-virtual {v1}, Lgdf;->a()Lgdd;

    move-result-object v1

    new-instance v2, Lgxb;

    invoke-direct {v2, v0, v1}, Lgxb;-><init>(Lknc;Lgdd;)V

    return-object v2
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lfdw;->a()Lgxb;

    move-result-object v0

    return-object v0
.end method
