.class public final Leov;
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

    iput-object p1, p0, Leov;->a:Loiw;

    iput-object p2, p0, Leov;->b:Loiw;

    iput-object p3, p0, Leov;->c:Loiw;

    iput-object p4, p0, Leov;->d:Loiw;

    iput-object p5, p0, Leov;->e:Loiw;

    iput-object p6, p0, Leov;->f:Loiw;

    iput-object p7, p0, Leov;->g:Loiw;

    iput-object p8, p0, Leov;->h:Loiw;

    iput-object p9, p0, Leov;->i:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmbe;
    .locals 13

    iget-object v1, p0, Leov;->a:Loiw;

    iget-object v2, p0, Leov;->b:Loiw;

    iget-object v3, p0, Leov;->c:Loiw;

    iget-object v4, p0, Leov;->d:Loiw;

    iget-object v5, p0, Leov;->e:Loiw;

    iget-object v6, p0, Leov;->f:Loiw;

    iget-object v7, p0, Leov;->g:Loiw;

    iget-object v8, p0, Leov;->h:Loiw;

    iget-object v9, p0, Leov;->i:Loiw;

    new-instance v12, Lmbe;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lmbe;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;[B[B)V

    return-object v12
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leov;->a()Lmbe;

    move-result-object v0

    return-object v0
.end method
