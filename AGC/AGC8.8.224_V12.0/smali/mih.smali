.class public final Lmih;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmih;->a:I

    iput p2, p0, Lmih;->b:I

    iput p3, p0, Lmih;->c:I

    iput p4, p0, Lmih;->d:I

    return-void
.end method

.method public constructor <init>(Lmih;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lmih;->a:I

    iput v0, p0, Lmih;->a:I

    iget v0, p1, Lmih;->b:I

    iput v0, p0, Lmih;->b:I

    iget v0, p1, Lmih;->c:I

    iput v0, p0, Lmih;->c:I

    iget p1, p1, Lmih;->d:I

    iput p1, p0, Lmih;->d:I

    return-void
.end method
