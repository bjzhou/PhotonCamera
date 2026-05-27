.class public final Lgxf;
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

    iput-object p1, p0, Lgxf;->a:Loiw;

    iput-object p2, p0, Lgxf;->b:Loiw;

    iput-object p3, p0, Lgxf;->c:Loiw;

    iput-object p4, p0, Lgxf;->d:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkte;
    .locals 7

    iget-object v1, p0, Lgxf;->a:Loiw;

    iget-object v2, p0, Lgxf;->b:Loiw;

    iget-object v3, p0, Lgxf;->c:Loiw;

    iget-object v4, p0, Lgxf;->d:Loiw;

    new-instance v6, Lkte;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lkte;-><init>(Loiw;Loiw;Loiw;Loiw;[C)V

    return-object v6
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgxf;->a()Lkte;

    move-result-object v0

    return-object v0
.end method
