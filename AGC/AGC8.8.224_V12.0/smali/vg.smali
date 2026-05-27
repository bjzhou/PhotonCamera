.class public final Lvg;
.super Ljava/lang/Object;

# interfaces
.implements Lvb;


# instance fields
.field public final a:Lvg;

.field public final b:Loiw;

.field public final c:Loiw;

.field public final d:Loiw;

.field public final e:Loiw;

.field public final f:Loiw;

.field public final g:Loiw;

.field public final h:Loiw;

.field public final i:Loiw;

.field public final j:Loiw;

.field public final k:Loiw;

.field public final l:Loiw;

.field public final m:Loiw;

.field public final n:Loiw;

.field public final o:Loxq;

.field public final p:Lbkb;


# direct methods
.method public constructor <init>(Lbkb;Loxq;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Lvg;->a:Lvg;

    iput-object p1, p0, Lvg;->p:Lbkb;

    iput-object p2, p0, Lvg;->o:Loxq;

    new-instance p1, Lvf;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->b:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logp;->a(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->c:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->d:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x7

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->e:Loiw;

    new-instance p1, Lvf;

    const/16 p2, 0x8

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->f:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->g:Loiw;

    new-instance p1, Lvf;

    const/16 p2, 0xa

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logp;->a(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->h:Loiw;

    new-instance p1, Lvf;

    const/16 p2, 0x9

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->i:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    iput-object p1, p0, Lvg;->j:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->k:Loiw;

    new-instance p1, Lvf;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->l:Loiw;

    new-instance p1, Lvf;

    const/16 p2, 0xb

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->m:Loiw;

    new-instance p1, Lvf;

    const/16 p2, 0xc

    invoke-direct {p1, p0, p2}, Lvf;-><init>(Lvg;I)V

    invoke-static {p1}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lvg;->n:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lvg;->p:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Lrf;

    iget-object v0, v0, Lrf;->a:Landroid/content/Context;

    return-object v0
.end method
