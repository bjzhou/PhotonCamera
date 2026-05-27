.class public final Lgsk;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgsk;->a:F

    iput p2, p0, Lgsk;->b:F

    return-void
.end method

.method public constructor <init>(FF[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lgsk;->b:F

    iput p2, p0, Lgsk;->a:F

    return-void
.end method
