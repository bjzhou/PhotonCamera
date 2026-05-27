.class public final Lexb;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:D

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lexb;->a:F

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lexb;->b:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lexb;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-wide v0, p0, Lexb;->b:D

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    const v5, 0x3e23d70b    # 0.16000001f

    cmpl-double v6, v0, v2

    if-lez v6, :cond_2

    const-wide v2, 0x3f9999999999999aL    # 0.025

    cmpl-double v6, v0, v2

    if-lez v6, :cond_0

    const v5, 0x3b23d70b    # 0.0025000002f

    goto :goto_0

    :cond_0
    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v6, v0, v2

    if-gez v6, :cond_2

    iget-boolean v0, p0, Lexb;->c:Z

    if-eq v4, v0, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const v5, 0x3c23d70b    # 0.010000001f

    goto :goto_0

    :cond_2
    :goto_0
    iget v0, p0, Lexb;->a:F

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    sget-object v0, Lewr;->a:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->SetSensorMovementTooFast(Z)V

    return-void
.end method
