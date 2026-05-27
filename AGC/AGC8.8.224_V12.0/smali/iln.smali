.class public final Liln;
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

    iput-object p1, p0, Liln;->a:Loiw;

    iput-object p2, p0, Liln;->b:Loiw;

    iput-object p3, p0, Liln;->c:Loiw;

    iput-object p4, p0, Liln;->d:Loiw;

    iput-object p5, p0, Liln;->e:Loiw;

    iput-object p6, p0, Liln;->f:Loiw;

    iput-object p7, p0, Liln;->g:Loiw;

    iput-object p8, p0, Liln;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lilm;
    .locals 10

    iget-object v1, p0, Liln;->a:Loiw;

    iget-object v2, p0, Liln;->b:Loiw;

    iget-object v0, p0, Liln;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lgzm;

    iget-object v0, p0, Liln;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lgzn;

    iget-object v0, p0, Liln;->e:Loiw;

    check-cast v0, Limf;

    invoke-virtual {v0}, Limf;->a()Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v0, p0, Liln;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljuh;

    iget-object v0, p0, Liln;->g:Loiw;

    check-cast v0, Leqy;

    invoke-virtual {v0}, Leqy;->a()Lezx;

    move-result-object v7

    iget-object v0, p0, Liln;->h:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lfbz;

    new-instance v9, Lilm;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lilm;-><init>(Loiw;Loiw;Lgzm;Lgzn;Landroid/content/pm/PackageInfo;Ljuh;Lezx;Lfbz;)V

    return-object v9
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Liln;->a()Lilm;

    move-result-object v0

    return-object v0
.end method
