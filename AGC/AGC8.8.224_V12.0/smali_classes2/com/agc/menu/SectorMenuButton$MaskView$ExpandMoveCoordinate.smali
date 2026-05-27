.class Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/menu/SectorMenuButton$MaskView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandMoveCoordinate"
.end annotation


# instance fields
.field moveX:F

.field moveY:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveX:F

    iput p2, p0, Lcom/agc/menu/SectorMenuButton$MaskView$ExpandMoveCoordinate;->moveY:F

    return-void
.end method
