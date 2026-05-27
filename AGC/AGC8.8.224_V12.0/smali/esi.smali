.class public final Lesi;
.super Ljava/lang/Object;

# interfaces
.implements Ldix;


# instance fields
.field private final a:Lesh;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;

.field private final l:Loiw;

.field private final m:Loiw;

.field private final n:Loiw;


# direct methods
.method public constructor <init>(Lesh;Ldja;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lesi;->a:Lesh;

    new-instance v1, Ldjc;

    invoke-direct {v1, p2}, Ldjc;-><init>(Ldja;)V

    iput-object v1, p0, Lesi;->b:Loiw;

    new-instance v2, Ldwh;

    const/4 v0, 0x1

    invoke-direct {v2, p2, v0}, Ldwh;-><init>(Ldja;I)V

    iput-object v2, p0, Lesi;->c:Loiw;

    new-instance v0, Ldjb;

    const/4 v3, 0x0

    invoke-direct {v0, p2, v3}, Ldjb;-><init>(Ldja;I)V

    iput-object v0, p0, Lesi;->d:Loiw;

    new-instance v6, Ldyt;

    invoke-direct {v6, v0}, Ldyt;-><init>(Loiw;)V

    iput-object v6, p0, Lesi;->e:Loiw;

    iget-object p2, p1, Lesh;->bj:Loiw;

    new-instance v3, Ldyv;

    invoke-direct {v3, p2}, Ldyv;-><init>(Loiw;)V

    iput-object v3, p0, Lesi;->f:Loiw;

    new-instance v4, Ldyx;

    invoke-direct {v4, v2, v0}, Ldyx;-><init>(Loiw;Loiw;)V

    iput-object v4, p0, Lesi;->g:Loiw;

    iget-object v0, p1, Lesh;->bk:Loiw;

    new-instance v5, Ldyq;

    invoke-direct {v5, v0, v6, p2}, Ldyq;-><init>(Loiw;Loiw;Loiw;)V

    iput-object v5, p0, Lesi;->h:Loiw;

    new-instance p2, Ldys;

    invoke-direct {p2, v6, v3, v4, v5}, Ldys;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    iput-object p2, p0, Lesi;->i:Loiw;

    new-instance v4, Ldiy;

    invoke-direct {v4, v2}, Ldiy;-><init>(Loiw;)V

    iput-object v4, p0, Lesi;->j:Loiw;

    new-instance v3, Lduq;

    const/16 v5, 0xd

    invoke-direct {v3, v5}, Lduq;-><init>(I)V

    iput-object v3, p0, Lesi;->k:Loiw;

    new-instance v5, Lduq;

    const/16 v7, 0xc

    invoke-direct {v5, v7}, Lduq;-><init>(I)V

    iput-object v5, p0, Lesi;->l:Loiw;

    iget-object v7, p1, Lesh;->h:Loiw;

    new-instance p1, Ldzm;

    invoke-direct {p1, v0, v7, v3, v5}, Ldzm;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    iput-object p1, p0, Lesi;->m:Loiw;

    new-instance v10, Lcqi;

    const/16 v8, 0xb

    const/4 v9, 0x0

    move-object v0, v10

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcqi;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;I[[Z)V

    invoke-static {v10}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lesi;->n:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhjm;
    .locals 1

    iget-object v0, p0, Lesi;->a:Lesh;

    iget-object v0, v0, Lesh;->B:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhjm;

    return-object v0
.end method

.method public final b()Llij;
    .locals 1

    iget-object v0, p0, Lesi;->n:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llij;

    return-object v0
.end method
