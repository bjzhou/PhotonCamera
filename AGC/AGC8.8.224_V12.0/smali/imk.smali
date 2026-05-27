.class public final Limk;
.super Ljava/lang/Object;


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Limk;)V
    .locals 2

    iget-wide v0, p1, Limk;->a:D

    iput-wide v0, p0, Limk;->a:D

    iget-wide v0, p1, Limk;->b:D

    iput-wide v0, p0, Limk;->b:D

    iget-wide v0, p1, Limk;->c:D

    iput-wide v0, p0, Limk;->c:D

    iget-wide v0, p1, Limk;->d:D

    iput-wide v0, p0, Limk;->d:D

    return-void
.end method

.method public final b([F)V
    .locals 13

    iget-wide v0, p0, Limk;->a:D

    double-to-float v0, v0

    iget-wide v1, p0, Limk;->b:D

    double-to-float v1, v1

    iget-wide v2, p0, Limk;->c:D

    double-to-float v2, v2

    iget-wide v3, p0, Limk;->d:D

    double-to-float v3, v3

    add-float v4, v2, v2

    add-float v5, v1, v1

    mul-float v6, v5, v1

    mul-float v2, v2, v4

    add-float v7, v6, v2

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v7, v8, v7

    const/4 v9, 0x0

    aput v7, p1, v9

    mul-float v7, v5, v0

    mul-float v9, v4, v3

    const/4 v10, 0x1

    add-float v11, v7, v9

    aput v11, p1, v10

    mul-float v10, v4, v0

    mul-float v5, v5, v3

    const/4 v11, 0x2

    sub-float v12, v10, v5

    aput v12, p1, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, p1, v11

    const/4 v11, 0x4

    sub-float/2addr v7, v9

    aput v7, p1, v11

    add-float v7, v0, v0

    mul-float v0, v0, v7

    add-float/2addr v2, v0

    sub-float v2, v8, v2

    const/4 v9, 0x5

    aput v2, p1, v9

    mul-float v4, v4, v1

    mul-float v7, v7, v3

    const/4 v1, 0x6

    add-float v2, v4, v7

    aput v2, p1, v1

    const/4 v1, 0x7

    aput v12, p1, v1

    const/16 v1, 0x8

    add-float/2addr v10, v5

    aput v10, p1, v1

    const/16 v1, 0x9

    sub-float/2addr v4, v7

    aput v4, p1, v1

    add-float/2addr v0, v6

    sub-float v0, v8, v0

    const/16 v1, 0xa

    aput v0, p1, v1

    const/16 v0, 0xb

    aput v12, p1, v0

    const/16 v0, 0xc

    aput v12, p1, v0

    const/16 v0, 0xd

    aput v12, p1, v0

    const/16 v0, 0xe

    aput v12, p1, v0

    const/16 v0, 0xf

    aput v8, p1, v0

    return-void
.end method
