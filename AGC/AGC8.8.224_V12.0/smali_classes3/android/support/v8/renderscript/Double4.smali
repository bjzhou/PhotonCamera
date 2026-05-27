.class public Landroid/support/v8/renderscript/Double4;
.super Ljava/lang/Object;


# instance fields
.field public w:D

.field public x:D

.field public y:D

.field public z:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/support/v8/renderscript/Double4;->x:D

    iput-wide p3, p0, Landroid/support/v8/renderscript/Double4;->y:D

    iput-wide p5, p0, Landroid/support/v8/renderscript/Double4;->z:D

    iput-wide p7, p0, Landroid/support/v8/renderscript/Double4;->w:D

    return-void
.end method
