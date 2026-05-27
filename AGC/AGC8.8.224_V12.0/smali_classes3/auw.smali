.class public final Lauw;
.super Ljava/lang/Object;


# instance fields
.field public a:F

.field public b:F

.field public c:F


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget v0, p0, Lauw;->a:F

    iget v1, p0, Lauw;->b:F

    add-float/2addr v0, v1

    iget v1, p0, Lauw;->c:F

    add-float/2addr v0, v1

    return v0
.end method
