.class public final Lfow;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x3f79999a    # -4.2f

    iput v0, p0, Lfow;->a:F

    new-instance v0, Laio;

    invoke-direct {v0}, Laio;-><init>()V

    iput-object v0, p0, Lfow;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgsl;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfow;->c:Ljava/lang/Object;

    iget v0, p1, Lgsl;->b:F

    iget v1, p1, Lgsl;->f:F

    const/high16 v2, -0x3b860000    # -1000.0f

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_0

    iget-boolean v4, p1, Lgsl;->n:Z

    if-nez v4, :cond_2

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    iget-boolean p1, p1, Lgsl;->o:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_0
    add-float/2addr v0, v2

    iput v0, p0, Lfow;->a:F

    iput v0, p0, Lfow;->b:F

    return-void
.end method


# virtual methods
.method public final a(F)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lfow;->b:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
