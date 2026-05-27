.class public final Lczr;
.super Liab;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lhpu;

.field public final c:Ljwb;

.field public final d:Ljwb;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ldhi;

.field public final h:Ljava/util/LinkedHashMap;

.field public final i:Ljvk;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lhpu;Ljvk;Ljwb;Ljwb;Ldhi;)V
    .locals 5

    invoke-direct {p0}, Liab;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lczr;->h:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lczr;->a:Landroid/content/Context;

    iput-object p2, p0, Lczr;->b:Lhpu;

    iput-object p3, p0, Lczr;->i:Ljvk;

    iput-object p4, p0, Lczr;->c:Ljwb;

    iput-object p5, p0, Lczr;->d:Ljwb;

    iput-object p6, p0, Lczr;->g:Ldhi;

    new-instance p2, Liac;

    sget-object p3, Lika;->f:Lika;

    sget-object p4, Lika;->f:Lika;

    invoke-static {p4}, Lijy;->b(Lika;)Lijy;

    move-result-object p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p4, p5}, Lijy;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p4

    sget-object p5, Lika;->f:Lika;

    invoke-static {p5}, Lijy;->b(Lika;)Lijy;

    move-result-object p5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p5, v1}, Lijy;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p5

    const/4 v1, 0x0

    invoke-direct {p2, p3, p4, p5, v1}, Liac;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p3, Liac;

    sget-object p4, Lika;->c:Lika;

    const p5, 0x7f14058a

    invoke-virtual {p1, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    const v2, 0x7f140050

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, p4, p5, v2}, Liac;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Liac;

    sget-object p5, Lika;->n:Lika;

    invoke-static {p5}, Lijy;->b(Lika;)Lijy;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lijy;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lika;->n:Lika;

    invoke-static {v3}, Lijy;->b(Lika;)Lijy;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v4}, Lijy;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p4, p5, v2, v3}, Liac;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p5, Ldho;->aV:Ldhj;

    invoke-interface {p6, p5}, Ldhi;->l(Ldhj;)Z

    move-result p5

    if-eqz p5, :cond_0

    iget-object p5, p0, Lczr;->j:Ljava/util/List;

    invoke-interface {p5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p5, p0, Lczr;->j:Ljava/util/List;

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p5, p0, Lczr;->j:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p5, Lika;->f:Lika;

    invoke-virtual {v0, p5, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lika;->c:Lika;

    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lika;->n:Lika;

    invoke-virtual {v0, p2, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x2

    new-array p3, p2, [Ljava/lang/Object;

    const/4 p4, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    aput-object p5, p3, v1

    const/4 p6, 0x4

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    aput-object p6, p3, p4

    const p6, 0x7f14020c

    invoke-virtual {p1, p6, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lczr;->e:Ljava/lang/String;

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p5, p2, v1

    const/16 p3, 0x8

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, p4

    invoke-virtual {p1, p6, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lczr;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lika;)V
    .locals 2

    iget-object v0, p0, Lczr;->h:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unsupported mode: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
