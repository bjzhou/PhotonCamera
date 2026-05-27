.class public final Lmbf;
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

.field private final i:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmbf;->a:Loiw;

    iput-object p2, p0, Lmbf;->b:Loiw;

    iput-object p3, p0, Lmbf;->c:Loiw;

    iput-object p4, p0, Lmbf;->d:Loiw;

    iput-object p5, p0, Lmbf;->e:Loiw;

    iput-object p6, p0, Lmbf;->f:Loiw;

    iput-object p7, p0, Lmbf;->g:Loiw;

    iput-object p8, p0, Lmbf;->h:Loiw;

    iput-object p9, p0, Lmbf;->i:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmbe;
    .locals 11

    iget-object v1, p0, Lmbf;->a:Loiw;

    iget-object v2, p0, Lmbf;->b:Loiw;

    iget-object v3, p0, Lmbf;->c:Loiw;

    iget-object v4, p0, Lmbf;->d:Loiw;

    iget-object v5, p0, Lmbf;->e:Loiw;

    iget-object v6, p0, Lmbf;->f:Loiw;

    iget-object v7, p0, Lmbf;->g:Loiw;

    iget-object v8, p0, Lmbf;->h:Loiw;

    iget-object v9, p0, Lmbf;->i:Loiw;

    new-instance v10, Lmbe;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lmbe;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v10
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lmbf;->a()Lmbe;

    move-result-object v0

    return-object v0
.end method
