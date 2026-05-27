.class public final Llby;
.super Ljava/lang/Object;


# static fields
.field public static a:I


# instance fields
.field public final b:I

.field public final c:Lldh;

.field public final d:Llck;

.field public final e:Ljava/util/Map;

.field public final f:Ljava/util/Map;

.field public final g:Ljava/util/List;

.field public h:[I

.field public final i:Ljava/util/List;

.field public j:Z

.field public final k:Lldc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Llby;->a:I

    return-void
.end method

.method public constructor <init>(ILldh;Llck;Lldc;[B)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Llby;->e:Ljava/util/Map;

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    iput-object p5, p0, Llby;->f:Ljava/util/Map;

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Llby;->g:Ljava/util/List;

    const/4 p5, 0x0

    iput-object p5, p0, Llby;->h:[I

    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    iput-object p5, p0, Llby;->i:Ljava/util/List;

    const/4 p5, 0x1

    iput-boolean p5, p0, Llby;->j:Z

    iget-object v0, p2, Lldh;->a:Llax;

    iget-object v0, v0, Llbk;->b:Llbd;

    iget-object v1, p4, Llbk;->b:Llbd;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    if-eqz p3, :cond_2

    iget-object v0, p3, Llck;->a:Llax;

    iget-object v0, v0, Llbk;->b:Llbd;

    iget-object v1, p4, Llbk;->b:Llbd;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p5, 0x0

    goto :goto_1

    :cond_2
    :goto_1
    invoke-static {p5}, Lmoz;->e(Z)V

    iput p1, p0, Llby;->b:I

    iput-object p2, p0, Llby;->c:Lldh;

    iput-object p3, p0, Llby;->d:Llck;

    iput-object p4, p0, Llby;->k:Lldc;

    return-void
.end method

.method public static i(Lldh;)Llpu;
    .locals 3

    iget v0, p0, Lldh;->c:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v0, Llpu;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Llpu;-><init>(ILldh;Llck;)V

    return-object v0
.end method

.method public static j(Lldh;Llck;)Llpu;
    .locals 2

    iget v0, p1, Llck;->b:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    new-instance v0, Llpu;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p1}, Llpu;-><init>(ILldh;Llck;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Llby;->c:Lldh;

    iget-object v0, v0, Lldh;->b:[Llad;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Llby;->f:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Llcd;)V
    .locals 3

    iget-object v0, p1, Llbk;->b:Llbd;

    iget-object v1, p0, Llby;->k:Lldc;

    iget-object v1, v1, Llbk;->b:Llbd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Llby;->g:Ljava/util/List;

    new-instance v1, Llbw;

    const-string v2, "uImgTex"

    invoke-direct {v1, p0, p1, v2}, Llbw;-><init>(Llby;Llbi;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Llde;)V
    .locals 2

    iget-object v0, p2, Llbk;->b:Llbd;

    iget-object v1, p0, Llby;->k:Lldc;

    iget-object v1, v1, Llbk;->b:Llbd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Llby;->g:Ljava/util/List;

    new-instance v1, Llbw;

    invoke-direct {v1, p0, p2, p1}, Llbw;-><init>(Llby;Llbi;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Ljava/lang/String;F)V
    .locals 2

    iget-object v0, p0, Llby;->e:Ljava/util/Map;

    new-instance v1, Llbs;

    invoke-direct {v1, p1, p2}, Llbs;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final e(Ljava/lang/String;[F)V
    .locals 3

    iget-object v0, p0, Llby;->e:Ljava/util/Map;

    new-instance v1, Llbp;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Llbp;-><init>(Ljava/lang/String;[FI)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(I)V
    .locals 2

    iget-object v0, p0, Llby;->e:Ljava/util/Map;

    new-instance v1, Llbr;

    invoke-direct {v1, p1}, Llbr;-><init>(I)V

    const-string p1, "weightLen"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final g([F)V
    .locals 3

    iget-object v0, p0, Llby;->e:Ljava/util/Map;

    new-instance v1, Llbp;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Llbp;-><init>([FI)V

    const-string p1, "uTransform"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final h(Ljava/lang/String;FF)V
    .locals 2

    iget-object v0, p0, Llby;->e:Ljava/util/Map;

    new-instance v1, Llbt;

    invoke-direct {v1, p1, p2, p3}, Llbt;-><init>(Ljava/lang/String;FF)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final k(Lldc;)V
    .locals 2

    iget-object v0, p1, Llbk;->b:Llbd;

    iget-object v1, p0, Llby;->k:Lldc;

    iget-object v1, v1, Llbk;->b:Llbd;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->e(Z)V

    sget-object v0, Lfrj;->h:Lfrj;

    new-instance v1, Llbq;

    invoke-direct {v1, p0}, Llbq;-><init>(Llby;)V

    invoke-virtual {p1, v0, v1}, Llbk;->e(Llcj;Lkye;)Lkzc;

    move-result-object p1

    sget-object v0, Lkyo;->a:Lkyo;

    invoke-interface {p1, v0}, Lkzc;->h(Lkyo;)V

    return-void
.end method
