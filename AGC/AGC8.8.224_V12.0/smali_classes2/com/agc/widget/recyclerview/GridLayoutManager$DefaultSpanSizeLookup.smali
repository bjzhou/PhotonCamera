.class public final Lcom/agc/widget/recyclerview/GridLayoutManager$DefaultSpanSizeLookup;
.super Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/widget/recyclerview/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultSpanSizeLookup"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/widget/recyclerview/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanIndex(II)I
    .locals 0

    rem-int/2addr p1, p2

    return p1
.end method

.method public getSpanSize(I)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
