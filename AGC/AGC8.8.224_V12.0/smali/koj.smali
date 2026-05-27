.class public final Lkoj;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Point;

.field public final e:Landroid/graphics/Point;

.field public final f:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkoj;->c:Landroid/graphics/Rect;

    iput p3, p0, Lkoj;->b:I

    iput-object p4, p0, Lkoj;->d:Landroid/graphics/Point;

    iput-object p5, p0, Lkoj;->e:Landroid/graphics/Point;

    iput-object p6, p0, Lkoj;->f:Landroid/graphics/Point;

    iput p1, p0, Lkoj;->a:I

    return-void
.end method

.method public static a(Landroid/hardware/camera2/params/Face;)Lkoj;
    .locals 8

    new-instance v7, Lkoj;

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v3

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v4

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {p0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lkoj;-><init>(ILandroid/graphics/Rect;ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V

    return-object v7
.end method
