.class public final Lgih;
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

    iput-object p1, p0, Lgih;->a:Loiw;

    iput-object p2, p0, Lgih;->b:Loiw;

    iput-object p3, p0, Lgih;->c:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;)Lgih;
    .locals 1

    new-instance v0, Lgih;

    invoke-direct {v0, p0, p1, p2}, Lgih;-><init>(Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lva;
    .locals 5

    iget-object v0, p0, Lgih;->a:Loiw;

    iget-object v1, p0, Lgih;->b:Loiw;

    iget-object v2, p0, Lgih;->c:Loiw;

    new-instance v3, Lva;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lva;-><init>(Loiw;Loiw;Loiw;[B)V

    return-object v3
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgih;->b()Lva;

    move-result-object v0

    return-object v0
.end method
