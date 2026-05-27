.class public abstract Landroidx/recyclerview/widget/AsyncListUtil$ViewCallback;
.super Ljava/lang/Object;
.source "AsyncListUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/AsyncListUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewCallback"
.end annotation


# static fields
.field public static final HINT_SCROLL_ASC:I = 0x2

.field public static final HINT_SCROLL_DESC:I = 0x1

.field public static final HINT_SCROLL_NONE:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public extendRangeInto([I[II)V
    .locals 5

    const/4 p0, 0x1

    .line 577
    aget v0, p1, p0

    const/4 v1, 0x0

    aget v2, p1, v1

    sub-int/2addr v0, v2

    add-int/2addr v0, p0

    .line 578
    div-int/lit8 v2, v0, 0x2

    .line 579
    aget v3, p1, v1

    if-ne p3, p0, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    sub-int/2addr v3, v4

    aput v3, p2, v1

    .line 580
    aget p1, p1, p0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    add-int/2addr p1, v0

    aput p1, p2, p0

    return-void
.end method

.method public abstract getItemRangeInto([I)V
.end method

.method public abstract onDataRefresh()V
.end method

.method public abstract onItemLoaded(I)V
.end method
