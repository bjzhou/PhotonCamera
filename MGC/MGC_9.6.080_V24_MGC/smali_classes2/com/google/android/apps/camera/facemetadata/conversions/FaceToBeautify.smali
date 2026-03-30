.class public abstract Lcom/google/android/apps/camera/facemetadata/conversions/FaceToBeautify;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(Landroid/graphics/Rect;)Lhxl;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lhxl;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p0, v0, Lhxl;->a:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lhxl;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public abstract bounds()Landroid/graphics/Rect;
.end method

.method public abstract confidence()Ljava/lang/Float;
.end method

.method public abstract faceAttributes()[F
.end method

.method public abstract index()Ljava/lang/Integer;
.end method

.method public abstract leftEarTragion()Landroid/graphics/Point;
.end method

.method public abstract leftEye()Landroid/graphics/Point;
.end method

.method public abstract mouthCenter()Landroid/graphics/Point;
.end method

.method public abstract noseTip()Landroid/graphics/Point;
.end method

.method public abstract panAngleDegrees()Ljava/lang/Float;
.end method

.method public abstract rightEarTragion()Landroid/graphics/Point;
.end method

.method public abstract rightEye()Landroid/graphics/Point;
.end method
