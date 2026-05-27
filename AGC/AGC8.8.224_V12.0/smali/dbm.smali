.class public final Ldbm;
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

.field private final h:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldbm;->a:Loiw;

    iput-object p2, p0, Ldbm;->b:Loiw;

    iput-object p3, p0, Ldbm;->c:Loiw;

    iput-object p4, p0, Ldbm;->d:Loiw;

    iput-object p5, p0, Ldbm;->e:Loiw;

    iput-object p6, p0, Ldbm;->f:Loiw;

    iput-object p7, p0, Ldbm;->g:Loiw;

    iput-object p8, p0, Ldbm;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhdk;
    .locals 12

    iget-object v1, p0, Ldbm;->a:Loiw;

    iget-object v2, p0, Ldbm;->b:Loiw;

    iget-object v3, p0, Ldbm;->c:Loiw;

    iget-object v4, p0, Ldbm;->d:Loiw;

    iget-object v5, p0, Ldbm;->e:Loiw;

    iget-object v6, p0, Ldbm;->f:Loiw;

    iget-object v7, p0, Ldbm;->g:Loiw;

    iget-object v8, p0, Ldbm;->h:Loiw;

    new-instance v11, Lhdk;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lhdk;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V

    return-object v11
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldbm;->a()Lhdk;

    move-result-object v0

    return-object v0
.end method
