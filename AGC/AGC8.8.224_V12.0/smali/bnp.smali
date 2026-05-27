.class public Lbnp;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lboc;


# instance fields
.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field protected final d:Ljava/util/TreeSet;

.field protected final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;

.field protected final g:Ljava/util/TreeSet;

.field public final h:Ljava/util/EnumSet;

.field protected final i:Ljava/util/EnumSet;

.field protected final j:Ljava/util/EnumSet;

.field protected final k:Ljava/util/EnumSet;

.field protected final l:Ljava/util/EnumSet;

.field protected m:Lbob;

.field protected n:I

.field protected o:I

.field protected p:F

.field protected q:I

.field protected r:I

.field protected s:I

.field protected t:F

.field public u:F

.field protected v:F

.field public final w:Lbze;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lboc;

    const-string v1, "CamCapabs"

    invoke-direct {v0, v1}, Lboc;-><init>(Ljava/lang/String;)V

    sput-object v0, Lbnp;->a:Lboc;

    return-void
.end method

.method public constructor <init>(Lbnp;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbnp;->b:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbnp;->c:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    iput-object v2, p0, Lbnp;->d:Ljava/util/TreeSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lbnp;->e:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lbnp;->f:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    iput-object v5, p0, Lbnp;->g:Ljava/util/TreeSet;

    const-class v6, Lbnn;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    iput-object v6, p0, Lbnp;->h:Ljava/util/EnumSet;

    const-class v7, Lbnl;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v7

    iput-object v7, p0, Lbnp;->i:Ljava/util/EnumSet;

    const-class v8, Lbnm;

    invoke-static {v8}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    iput-object v8, p0, Lbnp;->j:Ljava/util/EnumSet;

    const-class v9, Lbno;

    invoke-static {v9}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v9

    iput-object v9, p0, Lbnp;->k:Ljava/util/EnumSet;

    const-class v10, Lbnk;

    invoke-static {v10}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v10

    iput-object v10, p0, Lbnp;->l:Ljava/util/EnumSet;

    iget-object v11, p1, Lbnp;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->d:Ljava/util/TreeSet;

    invoke-virtual {v2, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->g:Ljava/util/TreeSet;

    invoke-virtual {v5, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->h:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->i:Ljava/util/EnumSet;

    invoke-virtual {v7, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->j:Ljava/util/EnumSet;

    invoke-virtual {v8, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->k:Ljava/util/EnumSet;

    invoke-virtual {v9, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->l:Ljava/util/EnumSet;

    invoke-virtual {v10, v0}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lbnp;->m:Lbob;

    iput-object v0, p0, Lbnp;->m:Lbob;

    iget v0, p1, Lbnp;->o:I

    iput v0, p0, Lbnp;->o:I

    iget v0, p1, Lbnp;->n:I

    iput v0, p0, Lbnp;->n:I

    iget v0, p1, Lbnp;->p:F

    iput v0, p0, Lbnp;->p:F

    iget v0, p1, Lbnp;->q:I

    iput v0, p0, Lbnp;->q:I

    iget v0, p1, Lbnp;->r:I

    iput v0, p0, Lbnp;->r:I

    iget v0, p1, Lbnp;->s:I

    iput v0, p0, Lbnp;->s:I

    iget v0, p1, Lbnp;->t:F

    iput v0, p0, Lbnp;->t:F

    iget v0, p1, Lbnp;->u:F

    iput v0, p0, Lbnp;->u:F

    iget v0, p1, Lbnp;->v:F

    iput v0, p0, Lbnp;->v:F

    iget-object p1, p1, Lbnp;->w:Lbze;

    iput-object p1, p0, Lbnp;->w:Lbze;

    return-void
.end method

.method public constructor <init>(Lbze;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbnp;->b:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbnp;->c:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Lbnp;->d:Ljava/util/TreeSet;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbnp;->e:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lbnp;->f:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    iput-object p2, p0, Lbnp;->g:Ljava/util/TreeSet;

    const-class p2, Lbnn;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lbnp;->h:Ljava/util/EnumSet;

    const-class p2, Lbnl;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lbnp;->i:Ljava/util/EnumSet;

    const-class p2, Lbnm;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lbnp;->j:Ljava/util/EnumSet;

    const-class p2, Lbno;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lbnp;->k:Ljava/util/EnumSet;

    const-class p2, Lbnk;

    invoke-static {p2}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p2

    iput-object p2, p0, Lbnp;->l:Ljava/util/EnumSet;

    iput-object p1, p0, Lbnp;->w:Lbze;

    return-void
.end method


# virtual methods
.method public final d(Lbnk;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbnp;->l:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lbnl;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbnp;->i:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f(Lbnm;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbnp;->j:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
