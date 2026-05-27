.class public final Lexg;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public final b:Lexs;

.field public c:J

.field public d:Lext;

.field public final e:Landroid/graphics/Point;

.field public f:I

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexs;II)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lexg;->f:I

    iput-boolean v0, p0, Lexg;->g:Z

    iput-boolean v0, p0, Lexg;->h:Z

    iput-boolean v0, p0, Lexg;->i:Z

    :try_start_0
    new-instance v1, Lext;

    invoke-direct {v1}, Lext;-><init>()V

    iput-object v1, p0, Lexg;->d:Lext;
    :try_end_0
    .catch Lewi; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lewi;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lexg;->a:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lexg;->a:Ljava/util/ArrayList;

    :cond_0
    const v1, 0x7f080192

    const v2, 0x7f080193

    const v3, 0x7f080194

    const v4, 0x7f080191

    filled-new-array {v3, v4, v1, v2, v3}, [I

    move-result-object v1

    iget-object v2, p0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lexg;->a:Ljava/util/ArrayList;

    new-instance v4, Lewl;

    invoke-direct {v4}, Lewl;-><init>()V

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v3, p0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lewl;

    aget v4, v1, v2

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {v3, p1, v4, v5}, Lewl;->g(Landroid/content/Context;IF)V

    iget-object v3, p0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lewl;

    iget-object v4, p0, Lexg;->d:Lext;

    iput-object v4, v3, Lewh;->e:Lewj;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iput-object p2, p0, Lexg;->b:Lexs;

    iget-object p1, p0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lewl;

    iget-object p1, p1, Lewl;->g:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    iget-object p2, p0, Lexg;->a:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lewl;

    iget-object p2, p2, Lewl;->g:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->y:I

    div-int/lit8 p3, p3, 0x2

    div-int/lit8 p1, p1, 0x2

    div-int/lit8 p4, p4, 0x2

    div-int/lit8 p2, p2, 0x2

    new-instance v1, Landroid/graphics/Point;

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    invoke-direct {v1, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lexg;->e:Landroid/graphics/Point;

    iput-boolean v0, p0, Lexg;->h:Z

    iput-boolean v0, p0, Lexg;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lexg;->i:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lexg;->f:I

    iget-boolean v1, p0, Lexg;->g:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lexg;->b:Lexs;

    iget v2, v1, Lexs;->i:I

    invoke-virtual {v1}, Lexs;->e()[F

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    iget-wide v5, p0, Lexg;->c:J

    sub-long/2addr v3, v5

    sget-object v5, Lewr;->a:Ljava/lang/Object;

    long-to-double v3, v3

    const-wide v5, 0x412e848000000000L    # 1000000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v1, v2, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->EndGyroCalibration([FII)[F

    iput-boolean v0, p0, Lexg;->g:Z

    return-void
.end method
