.class public final Lgwz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgwz;->a:Loiw;

    iput-object p2, p0, Lgwz;->b:Loiw;

    iput-object p3, p0, Lgwz;->c:Loiw;

    iput-object p4, p0, Lgwz;->d:Loiw;

    iput-object p5, p0, Lgwz;->e:Loiw;

    iput-object p6, p0, Lgwz;->f:Loiw;

    iput-object p7, p0, Lgwz;->g:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Llij;
    .locals 11

    iget-object v1, p0, Lgwz;->a:Loiw;

    iget-object v2, p0, Lgwz;->b:Loiw;

    iget-object v3, p0, Lgwz;->c:Loiw;

    iget-object v4, p0, Lgwz;->d:Loiw;

    iget-object v5, p0, Lgwz;->e:Loiw;

    iget-object v6, p0, Lgwz;->f:Loiw;

    iget-object v7, p0, Lgwz;->g:Loiw;

    new-instance v10, Llij;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Llij;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V

    return-object v10
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgwz;->a()Llij;

    move-result-object v0

    return-object v0
.end method
