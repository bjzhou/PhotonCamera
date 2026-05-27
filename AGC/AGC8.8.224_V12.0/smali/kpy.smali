.class public final Lkpy;
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

    iput-object p1, p0, Lkpy;->a:Loiw;

    iput-object p2, p0, Lkpy;->b:Loiw;

    iput-object p3, p0, Lkpy;->c:Loiw;

    iput-object p4, p0, Lkpy;->d:Loiw;

    iput-object p5, p0, Lkpy;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Ldqx;
    .locals 8

    iget-object v1, p0, Lkpy;->a:Loiw;

    iget-object v2, p0, Lkpy;->b:Loiw;

    iget-object v3, p0, Lkpy;->c:Loiw;

    iget-object v4, p0, Lkpy;->d:Loiw;

    iget-object v5, p0, Lkpy;->e:Loiw;

    new-instance v7, Ldqx;

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ldqx;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;[S)V

    return-object v7
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkpy;->a()Ldqx;

    move-result-object v0

    return-object v0
.end method
