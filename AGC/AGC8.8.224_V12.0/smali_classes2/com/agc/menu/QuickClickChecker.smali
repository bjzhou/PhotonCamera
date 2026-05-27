.class public Lcom/agc/menu/QuickClickChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastClickTime:J

.field private threshold:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/agc/menu/QuickClickChecker;->lastClickTime:J

    iput p1, p0, Lcom/agc/menu/QuickClickChecker;->threshold:I

    return-void
.end method


# virtual methods
.method public isQuick()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/agc/menu/QuickClickChecker;->lastClickTime:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/agc/menu/QuickClickChecker;->threshold:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/agc/menu/QuickClickChecker;->lastClickTime:J

    return v0
.end method
