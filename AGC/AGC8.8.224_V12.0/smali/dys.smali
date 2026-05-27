.class public final Ldys;
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

    iput-object p1, p0, Ldys;->a:Loiw;

    iput-object p2, p0, Ldys;->b:Loiw;

    iput-object p3, p0, Ldys;->c:Loiw;

    iput-object p4, p0, Ldys;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lgkr;
    .locals 5

    iget-object v0, p0, Ldys;->a:Loiw;

    check-cast v0, Ldyt;

    invoke-virtual {v0}, Ldyt;->a()Landroid/content/UriMatcher;

    move-result-object v0

    iget-object v1, p0, Ldys;->b:Loiw;

    check-cast v1, Ldyv;

    invoke-virtual {v1}, Ldyv;->a()Ldyu;

    move-result-object v1

    iget-object v2, p0, Ldys;->c:Loiw;

    check-cast v2, Ldyx;

    invoke-virtual {v2}, Ldyx;->a()Ldyw;

    move-result-object v2

    iget-object v3, p0, Ldys;->d:Loiw;

    check-cast v3, Ldyq;

    invoke-virtual {v3}, Ldyq;->a()Ldyp;

    move-result-object v3

    new-instance v4, Lgkr;

    invoke-direct {v4, v0, v1, v2, v3}, Lgkr;-><init>(Landroid/content/UriMatcher;Ldyr;Ldyr;Ldyr;)V

    return-object v4
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldys;->a()Lgkr;

    move-result-object v0

    return-object v0
.end method
