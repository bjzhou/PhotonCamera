.class public final Lgkn;
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

    iput-object p1, p0, Lgkn;->a:Loiw;

    iput-object p2, p0, Lgkn;->b:Loiw;

    iput-object p3, p0, Lgkn;->c:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Lgkn;
    .locals 1

    new-instance v0, Lgkn;

    invoke-direct {v0, p0, p1, p2}, Lgkn;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lva;
    .locals 4

    iget-object v0, p0, Lgkn;->a:Loiw;

    iget-object v1, p0, Lgkn;->b:Loiw;

    iget-object v2, p0, Lgkn;->c:Loiw;

    new-instance v3, Lva;

    invoke-direct {v3, v0, v1, v2}, Lva;-><init>(Loiw;Loiw;Loiw;)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgkn;->b()Lva;

    move-result-object v0

    return-object v0
.end method
