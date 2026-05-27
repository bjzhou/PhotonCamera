.class public final Lejk;
.super Ldgf;


# static fields
.field private static final d:Lmwa;


# instance fields
.field public final c:Lflf;

.field private final e:Landroid/content/res/Resources;

.field private final f:Lcmo;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v6, "/m/01bqvp"

    const-string v4, "/m/0brn2d"

    const-string v2, "/m/06cnp"

    const-string v0, "/m/04h4w"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object v1, v7

    move-object v3, v7

    move-object v5, v7

    invoke-static/range {v0 .. v7}, Lmwa;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmwa;

    move-result-object v0

    sput-object v0, Lejk;->d:Lmwa;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lflf;Ljew;Lcmo;[B[B[B[B)V
    .locals 7

    const-string v2, "imax_smarts_chip"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Ldgf;-><init>(Ljew;Ljava/lang/String;[B[B[B[B)V

    iput-object p1, p0, Lejk;->e:Landroid/content/res/Resources;

    iput-object p2, p0, Lejk;->c:Lflf;

    iput-object p4, p0, Lejk;->f:Lcmo;

    return-void
.end method


# virtual methods
.method public final bz()Ljava/util/Map;
    .locals 1

    sget-object v0, Lejk;->d:Lmwa;

    return-object v0
.end method

.method protected final c()Ldge;
    .locals 5

    invoke-static {}, Ldge;->a()Lllz;

    move-result-object v0

    invoke-static {}, Lheb;->a()Lhea;

    move-result-object v1

    iget-object v2, p0, Lejk;->e:Landroid/content/res/Resources;

    const v3, 0x7f140233

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lhea;->a:Ljava/lang/String;

    iget-object v2, p0, Lejk;->e:Landroid/content/res/Resources;

    const v3, 0x7f0803a0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, v1, Lhea;->b:Landroid/graphics/drawable/Drawable;

    new-instance v2, Leer;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Leer;-><init>(Lejk;I)V

    iput-object v2, v1, Lhea;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1b58

    invoke-virtual {v1, v2, v3}, Lhea;->e(J)V

    invoke-virtual {v1}, Lhea;->a()Lheb;

    move-result-object v1

    iput-object v1, v0, Lllz;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lllz;->f()Ldge;

    move-result-object v0

    return-object v0
.end method

.method protected final e(Ljava/util/Map;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    sget-object v2, Lejk;->d:Lmwa;

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lmwa;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lejk;->f:Lcmo;

    sget-object v1, Lika;->d:Lika;

    invoke-interface {v0, v1}, Lcmo;->f(Lika;)V

    :cond_2
    return p1
.end method
