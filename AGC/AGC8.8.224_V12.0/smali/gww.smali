.class public final Lgww;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgww;->a:Loiw;

    iput-object p2, p0, Lgww;->b:Loiw;

    iput-object p3, p0, Lgww;->c:Loiw;

    iput-object p4, p0, Lgww;->d:Loiw;

    iput-object p5, p0, Lgww;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldqx;
    .locals 9

    iget-object v1, p0, Lgww;->a:Loiw;

    iget-object v2, p0, Lgww;->b:Loiw;

    iget-object v3, p0, Lgww;->c:Loiw;

    iget-object v4, p0, Lgww;->d:Loiw;

    iget-object v5, p0, Lgww;->e:Loiw;

    new-instance v8, Ldqx;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ldqx;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V

    return-object v8
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgww;->a()Ldqx;

    move-result-object v0

    return-object v0
.end method
